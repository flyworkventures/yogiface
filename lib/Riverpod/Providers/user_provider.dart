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
      } else {
        // If 404 or other error, might mean not logged in or error
        state = const AsyncValue.data(null);
      }
    } catch (e, stack) {
      Print.error('Error fetching user profile: $e');
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
      await _repository.saveOneSignalPlayerId(playerId);
    } catch (e) {
      Print.error('Error saving OneSignal ID: $e');
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
