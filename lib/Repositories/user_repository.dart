import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yogiface/Services/dio_service.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';

class UserRepository {
  UserRepository(this.ref);
  final Ref ref;

  DioService get _dioService => ref.read(AllProviders.dioServiceProvider);

  /// Get user profile
  /// GET /api/user/profile
  Future<Response> getUserProfile() async {
    return await _dioService.get('user/profile');
  }

  /// Update user profile
  /// PUT /api/user/profile
  Future<Response> updateUserProfile(Map<String, dynamic> data) async {
    return await _dioService.put('user/profile', data: data);
  }

  /// Save OneSignal player ID
  /// POST /api/user/onesignal
  Future<Response> saveOneSignalPlayerId(String playerId) async {
    return await _dioService.post(
      'user/onesignal',
      data: {'player_id': playerId},
    );
  }

  /// Delete user account
  /// DELETE /api/user/account
  Future<Response> deleteAccount() async {
    return await _dioService.delete('user/account');
  }

  /// Upload profile picture
  /// POST /api/user/profile-picture
  Future<Response> uploadProfilePicture(String filePath) async {
    final formData = FormData.fromMap({
      'photo': await MultipartFile.fromFile(filePath),
    });
    return await _dioService.postForm('user/profile/photo', formData: formData);
  }
}
