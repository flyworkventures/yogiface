import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yogiface/Models/auth_model.dart';
import 'package:yogiface/Repositories/user_repository.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/utils/print.dart';

/// Enhanced user state with caching and defensive null handling
class UserState {
  final AsyncValue<AuthResponse?> asyncValue;
  final AuthResponse? lastKnownUser;
  final bool isRefreshing;
  final DateTime? lastUpdated;
  final int retryCount;

  const UserState({
    required this.asyncValue,
    this.lastKnownUser,
    this.isRefreshing = false,
    this.lastUpdated,
    this.retryCount = 0,
  });

  /// Whether we have valid user data (from current state or cache)
  bool get hasUser => lastKnownUser?.user != null;

  /// Whether user is authenticated
  bool get isAuthenticated => hasUser;

  /// Get current user data (from async value if available, otherwise from cache)
  AuthResponse? get currentUser {
    return asyncValue.valueOrNull ?? lastKnownUser;
  }

  /// Whether the cached data is stale (older than 5 minutes)
  bool get isStale {
    if (lastUpdated == null) return true;
    return DateTime.now().difference(lastUpdated!) > const Duration(minutes: 5);
  }

  UserState copyWith({
    AsyncValue<AuthResponse?>? asyncValue,
    AuthResponse? lastKnownUser,
    bool? isRefreshing,
    DateTime? lastUpdated,
    int? retryCount,
  }) {
    return UserState(
      asyncValue: asyncValue ?? this.asyncValue,
      lastKnownUser: lastKnownUser ?? this.lastKnownUser,
      isRefreshing: isRefreshing ?? this.isRefreshing,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      retryCount: retryCount ?? this.retryCount,
    );
  }
}

class UserNotifier extends StateNotifier<UserState> {
  UserNotifier(this.ref)
      : super(UserState(
          asyncValue: const AsyncValue.loading(),
          isRefreshing: false,
        )) {
    _initialize();
  }

  final Ref ref;

  UserRepository get _repository =>
      ref.read(AllProviders.userRepositoryProvider);

  /// Initialize user state - load from cache then refresh from API
  Future<void> _initialize() async {
    try {
      // First, try to load from cache for instant UI
      await _loadFromCache();

      // Then refresh from API in background
      await refreshUser(silent: true);
    } catch (e, stack) {
      Print.error('Error initializing user state: $e');
      // If initialization fails, set error state but keep any cached data
      state = state.copyWith(
        asyncValue: AsyncValue.error(e, stack),
      );
    }
  }

  /// Load user data from secure storage cache
  Future<void> _loadFromCache() async {
    try {
      final storage = ref.read(AllProviders.secureStorageServiceProvider);
      final cachedUserJson = await storage.getUserCache();

      if (cachedUserJson != null) {
        final cachedUser = AuthResponse.fromJson(cachedUserJson);
        Print.info('Loaded user from cache: ${cachedUser.user?.fullName}');

        state = state.copyWith(
          asyncValue: AsyncValue.data(cachedUser),
          lastKnownUser: cachedUser,
          lastUpdated: DateTime.now(),
        );
      }
    } catch (e) {
      Print.error('Error loading user from cache: $e');
      // Cache load failure is not critical, continue without cache
    }
  }

  /// Save user data to secure storage cache
  Future<void> _saveToCache(AuthResponse user) async {
    try {
      final storage = ref.read(AllProviders.secureStorageServiceProvider);
      await storage.saveUserCache(user.toJson());
      Print.info('Saved user to cache');
    } catch (e) {
      Print.error('Error saving user to cache: $e');
      // Cache save failure is not critical
    }
  }

  /// Clear user cache from storage
  Future<void> _clearCache() async {
    try {
      final storage = ref.read(AllProviders.secureStorageServiceProvider);
      await storage.clearUserCache();
      Print.info('Cleared user cache');
    } catch (e) {
      Print.error('Error clearing user cache: $e');
    }
  }

  /// Refresh user data from API
  /// @param silent - if true, keeps last known user visible during refresh
  Future<void> refreshUser({bool silent = true}) async {
    try {
      // If silent refresh, don't show loading spinner - keep last known data visible
      if (silent && state.lastKnownUser != null) {
        state = state.copyWith(isRefreshing: true);
      } else {
        // Initial load or explicit non-silent refresh
        state = state.copyWith(
          asyncValue: const AsyncValue.loading(),
          isRefreshing: true,
        );
      }

      final response = await _repository.getUserProfile();

      if (response.statusCode == 200 && response.data != null) {
        Print.info(response.data, tag: 'user');
        final authResponse = AuthResponse.fromJson(response.data);

        // Update state with new data
        state = state.copyWith(
          asyncValue: AsyncValue.data(authResponse),
          lastKnownUser: authResponse,
          lastUpdated: DateTime.now(),
          isRefreshing: false,
          retryCount: 0, // Reset retry count on success
        );

        // Save to cache for next app launch
        await _saveToCache(authResponse);

        // Process pending OneSignal/notification preferences
        await retryPendingOneSignalId();
        await processPendingNotificationPref();
      } else if (response.statusCode == 401 || response.statusCode == 404) {
        // Unauthorized or not found - user not logged in or token expired
        Print.info('User not authenticated (${response.statusCode})');

        // Clear cache since user is not authenticated
        await _clearCache();

        state = state.copyWith(
          asyncValue: const AsyncValue.data(null),
          lastKnownUser: null,
          isRefreshing: false,
          retryCount: 0,
        );
      } else {
        // Other HTTP errors - preserve last known state
        Print.error('HTTP ${response.statusCode} error fetching user profile');

        // Keep last known user if available, but set error state
        state = state.copyWith(
          asyncValue: state.lastKnownUser != null
              ? AsyncValue.data(state.lastKnownUser)
              : const AsyncValue.data(null),
          isRefreshing: false,
        );
      }
    } catch (e, stack) {
      Print.error('Error fetching user profile: $e');

      // Check if it's a network/timeout error for retry logic
      final errorMessage = e.toString().toLowerCase();
      final isNetworkError = errorMessage.contains('socket') ||
          errorMessage.contains('timeout') ||
          errorMessage.contains('failed host lookup');

      if (isNetworkError && state.retryCount < 3) {
        // Retry with exponential backoff
        final retryDelay =
            Duration(seconds: (1 << state.retryCount)); // 1s, 2s, 4s
        Print.info(
            'Network error detected - retrying in ${retryDelay.inSeconds}s (attempt ${state.retryCount + 1}/3)');

        state = state.copyWith(
          retryCount: state.retryCount + 1,
          isRefreshing: false,
        );

        await Future.delayed(retryDelay);
        return refreshUser(silent: silent);
      }

      // If we have cached data, keep it and just update error state
      if (state.lastKnownUser != null) {
        Print.info(
            'Keeping cached user data despite error (last updated: ${state.lastUpdated})');
        state = state.copyWith(
          asyncValue: AsyncValue.data(state.lastKnownUser),
          isRefreshing: false,
        );
      } else {
        // No cached data, set error state
        state = state.copyWith(
          asyncValue: AsyncValue.error(e, stack),
          isRefreshing: false,
        );
      }
    }
  }

  Future<bool> updateProfile(Map<String, dynamic> data) async {
    try {
      final response = await _repository.updateUserProfile(data);
      if (response.statusCode == 200) {
        // Refresh user data after successful update
        await refreshUser(silent: false);
        return true;
      }
      return false;
    } catch (e) {
      Print.error('Error updating profile: $e');
      return false;
    }
  }

  Future<void> saveOneSignalId(String playerId) async {
    try {
      final storage = ref.read(AllProviders.secureStorageServiceProvider);
      final loggedIn = await storage.isLoggedIn();

      // If user is not logged in yet, save pending id locally and return.
      if (!loggedIn) {
        await storage.savePendingOneSignalId(playerId);
        Print.info('User not logged in - saved pending OneSignal id locally');
        return;
      }

      await _repository.saveOneSignalPlayerId(playerId);

      // If backend accepted, persist locally and clear any pending
      await storage.saveOneSignalPlayerId(playerId);
      await storage.clearPendingOneSignalId();
      Print.info('OneSignal id saved on backend and locally');
    } catch (e) {
      // On any network error, save pending id so we can retry later
      try {
        final storage = ref.read(AllProviders.secureStorageServiceProvider);
        await storage.savePendingOneSignalId(playerId);
        Print.info('Saved pending OneSignal id for retry');
      } catch (_) {}
      Print.error('Error saving OneSignal ID: $e');
    }
  }

  /// Retry sending pending OneSignal player id (if any) to the backend.
  Future<void> retryPendingOneSignalId() async {
    try {
      final storage = ref.read(AllProviders.secureStorageServiceProvider);
      final pending = await storage.getPendingOneSignalId();
      if (pending == null) return;

      Print.info('Retrying pending OneSignal id: $pending');
      try {
        final response = await _repository.saveOneSignalPlayerId(pending);
        if (response.statusCode == 200) {
          await storage.saveOneSignalPlayerId(pending);
          await storage.clearPendingOneSignalId();
          Print.info('Pending OneSignal id successfully sent to backend');
        } else {
          Print.error(
              'Backend rejected pending OneSignal id, will retry later');
        }
      } catch (e) {
        Print.error('Retry failed for OneSignal id: $e');
      }
    } catch (e) {
      Print.error('Error in retryPendingOneSignalId: $e');
    }
  }

  /// Process any pending notification preference saved while user was logged out.
  Future<void> processPendingNotificationPref() async {
    try {
      final storage = ref.read(AllProviders.secureStorageServiceProvider);
      final pendingPref = await storage.getPendingNotificationPref();
      if (pendingPref == null) return;

      // If user turned notifications ON while logged out, ensure player's id is sent
      if (pendingPref) {
        final pendingId = await storage.getPendingOneSignalId();
        if (pendingId != null) {
          await saveOneSignalId(pendingId);
        } else {
          // Try to get locally saved id and send
          final localId = await storage.getOneSignalPlayerId();
          if (localId != null) {
            await saveOneSignalId(localId);
          }
        }
      } else {
        // User requested to disable notifications while logged out: remove on backend
        try {
          await _repository.saveOneSignalPlayerId('');
          await storage.clearOneSignalPlayerId();
          Print.info('Processed pending disable-notifications');
        } catch (e) {
          Print.error('Failed to process pending disable-notifications: $e');
        }
      }

      // Clear pending pref after processing
      await storage.clearPendingNotificationPref();
    } catch (e) {
      Print.error('Error processing pending notification pref: $e');
    }
  }

  /// Disable notifications for current user (remove player id on backend)
  Future<void> disableNotifications() async {
    try {
      final storage = ref.read(AllProviders.secureStorageServiceProvider);
      final loggedIn = await storage.isLoggedIn();
      if (!loggedIn) {
        await storage.savePendingNotificationPref(false);
        Print.info('User not logged in - saved pending disable-notifications');
        return;
      }

      await _repository.saveOneSignalPlayerId('');
      await storage.clearOneSignalPlayerId();
      Print.info('Notifications disabled on backend and locally');
    } catch (e) {
      // Save pending so it can be processed later
      try {
        final storage = ref.read(AllProviders.secureStorageServiceProvider);
        await storage.savePendingNotificationPref(false);
      } catch (_) {}
      Print.error('Error disabling notifications: $e');
    }
  }

  Future<bool> uploadProfileImage(String filePath) async {
    try {
      final response = await _repository.uploadProfilePicture(filePath);
      if (response.statusCode == 200) {
        await refreshUser(silent: false);
        return true;
      }
      return false;
    } catch (e) {
      Print.error('Error uploading profile image: $e');
      return false;
    }
  }

  Future<bool> deleteAccount() async {
    try {
      final response = await _repository.deleteAccount();
      if (response.statusCode == 200) {
        // Clear all user data
        await _clearCache();
        state = state.copyWith(
          asyncValue: const AsyncValue.data(null),
          lastKnownUser: null,
          retryCount: 0,
        );
        return true;
      }
      return false;
    } catch (e) {
      Print.error('Error deleting account: $e');
      return false;
    }
  }
}
