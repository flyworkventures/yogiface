import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yogiface/Models/auth_model.dart';
import 'package:yogiface/Repositories/user_repository.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/utils/print.dart';

class UserNotifier extends StateNotifier<AsyncValue<AuthResponse?>> {
  UserNotifier(this.ref) : super(const AsyncValue.loading()) {
    refreshUser();
  }

  final Ref ref;

  UserRepository get _repository =>
      ref.read(AllProviders.userRepositoryProvider);

  Future<void> refreshUser() async {
    try {
      state = const AsyncValue.loading();
      final response = await _repository.getUserProfile();

      if (response.statusCode == 200 && response.data != null) {
        // Backend returns { success: true, data: { user: {...}, profile: {...} } }
        // We wrap this into AuthResponse to process 'data'
        Print.info(response.data, tag: 'user');
        final authResponse = AuthResponse.fromJson(response.data);
        state = AsyncValue.data(authResponse);

        // After we successfully refreshed user (meaning user is logged in),
        // try to process any pending OneSignal/player id or notification prefs
        await retryPendingOneSignalId();
        await processPendingNotificationPref();
      } else if (response.statusCode == 401 || response.statusCode == 404) {
        // Unauthorized or not found - user not logged in or token expired
        Print.info('User not authenticated (${response.statusCode})');
        state = const AsyncValue.data(null);
      } else {
        // Other HTTP errors - log and set null state to prevent error UI
        Print.error('HTTP ${response.statusCode} error fetching user profile');
        state = const AsyncValue.data(null);
      }
    } catch (e, stack) {
      Print.error('Error fetching user profile: $e');

      // Check if it's a network/timeout error vs parsing error
      final errorMessage = e.toString().toLowerCase();
      if (errorMessage.contains('socket') ||
          errorMessage.contains('timeout') ||
          errorMessage.contains('failed host lookup')) {
        Print.info('Network error detected - will retry on next refresh');
      }

      // Still set error state so UI can show retry option
      state = AsyncValue.error(e, stack);
    }
  }

  Future<bool> updateProfile(Map<String, dynamic> data) async {
    try {
      final response = await _repository.updateUserProfile(data);
      if (response.statusCode == 200) {
        // Refresh user data after successful update
        await refreshUser();
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
        await refreshUser();
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
        state = const AsyncValue.data(null);
        return true;
      }
      return false;
    } catch (e) {
      Print.error('Error deleting account: $e');
      return false;
    }
  }
}
