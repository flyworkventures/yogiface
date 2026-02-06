import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:yogiface/utils/print.dart';

class SecureStorageService {
  // Storage keys
  static const String _accessTokenKey = 'access_token';
  static const String _refreshTokenKey = 'refresh_token';
  static const String _userIdKey = 'user_id';
  static const String _isGuestKey = 'is_guest';
  static const String _languageKey = 'app_language';

  // Pending auth credentials (used during onboarding)
  static const String _pendingAuthMethodKey = 'pending_auth_method';
  static const String _pendingGoogleIdTokenKey = 'pending_google_id_token';
  static const String _pendingFacebookTokenKey = 'pending_facebook_token';
  static const String _pendingAppleIdTokenKey = 'pending_apple_id_token';
  static const String _pendingAppleUserInfoKey = 'pending_apple_user_info';

  // Flutter Secure Storage instance
  final FlutterSecureStorage _storage = const FlutterSecureStorage(
    aOptions: AndroidOptions(),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock,
    ),
  );

  /// Save access token
  Future<void> saveAccessToken(String token) async {
    try {
      await _storage.write(key: _accessTokenKey, value: token);
      Print.info('Access token saved securely');
    } catch (e) {
      Print.error('Error saving access token: $e');
      rethrow;
    }
  }

  /// Get access token
  Future<String?> getAccessToken() async {
    try {
      return await _storage.read(key: _accessTokenKey);
    } catch (e) {
      Print.error('Error getting access token: $e');
      return null;
    }
  }

  /// Save refresh token
  Future<void> saveRefreshToken(String token) async {
    try {
      await _storage.write(key: _refreshTokenKey, value: token);
      Print.info('Refresh token saved securely');
    } catch (e) {
      Print.error('Error saving refresh token: $e');
      rethrow;
    }
  }

  /// Get refresh token
  Future<String?> getRefreshToken() async {
    try {
      return await _storage.read(key: _refreshTokenKey);
    } catch (e) {
      Print.error('Error getting refresh token: $e');
      return null;
    }
  }

  /// Save tokens (both access and refresh)
  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    await saveAccessToken(accessToken);
    await saveRefreshToken(refreshToken);
  }

  /// Save user ID
  Future<void> saveUserId(int userId) async {
    try {
      await _storage.write(key: _userIdKey, value: userId.toString());
      Print.info('User ID saved securely');
    } catch (e) {
      Print.error('Error saving user ID: $e');
      rethrow;
    }
  }

  /// Get user ID
  Future<int?> getUserId() async {
    try {
      final value = await _storage.read(key: _userIdKey);
      return value != null ? int.tryParse(value) : null;
    } catch (e) {
      Print.error('Error getting user ID: $e');
      return null;
    }
  }

  /// Save guest status
  Future<void> saveIsGuest(bool isGuest) async {
    try {
      await _storage.write(key: _isGuestKey, value: isGuest.toString());
      Print.info('Guest status saved securely: $isGuest');
    } catch (e) {
      Print.error('Error saving guest status: $e');
      rethrow;
    }
  }

  /// Get guest status
  Future<bool> getIsGuest() async {
    try {
      final value = await _storage.read(key: _isGuestKey);
      return value == 'true';
    } catch (e) {
      Print.error('Error getting guest status: $e');
      return false;
    }
  }

  /// Save app language
  Future<void> saveAppLanguage(String languageCode) async {
    try {
      await _storage.write(key: _languageKey, value: languageCode);
      Print.info('App language saved: $languageCode');
    } catch (e) {
      Print.error('Error saving app language: $e');
      rethrow;
    }
  }

  /// Get app language
  Future<String?> getAppLanguage() async {
    try {
      return await _storage.read(key: _languageKey);
    } catch (e) {
      Print.error('Error getting app language: $e');
      return null;
    }
  }

  /// Check if user is logged in
  Future<bool> isLoggedIn() async {
    final accessToken = await getAccessToken();
    return accessToken != null && accessToken.isNotEmpty;
  }

  /// Clear all stored data
  Future<void> clearAll() async {
    try {
      await _storage.deleteAll();
      Print.info('All secure storage cleared');
    } catch (e) {
      Print.error('Error clearing storage: $e');
      rethrow;
    }
  }

  /// Clear auth tokens only
  Future<void> clearTokens() async {
    try {
      await _storage.delete(key: _accessTokenKey);
      await _storage.delete(key: _refreshTokenKey);
      Print.info('Tokens cleared from secure storage');
    } catch (e) {
      Print.error('Error clearing tokens: $e');
      rethrow;
    }
  }

  /// Get all keys (for debugging - use carefully)
  Future<Map<String, String>> getAllData() async {
    try {
      return await _storage.readAll();
    } catch (e) {
      Print.error('Error reading all data: $e');
      return {};
    }
  }

  // ==================== Pending Auth Credentials Methods ====================

  /// Save pending auth method
  Future<void> savePendingAuthMethod(String method) async {
    try {
      await _storage.write(key: _pendingAuthMethodKey, value: method);
      Print.info('Pending auth method saved: $method');
    } catch (e) {
      Print.error('Error saving pending auth method: $e');
      rethrow;
    }
  }

  /// Get pending auth method
  Future<String?> getPendingAuthMethod() async {
    try {
      return await _storage.read(key: _pendingAuthMethodKey);
    } catch (e) {
      Print.error('Error getting pending auth method: $e');
      return null;
    }
  }

  /// Save pending Google ID token
  Future<void> savePendingGoogleIdToken(String idToken) async {
    try {
      await _storage.write(key: _pendingGoogleIdTokenKey, value: idToken);
      Print.info('Pending Google ID token saved');
    } catch (e) {
      Print.error('Error saving pending Google ID token: $e');
      rethrow;
    }
  }

  /// Get pending Google ID token
  Future<String?> getPendingGoogleIdToken() async {
    try {
      return await _storage.read(key: _pendingGoogleIdTokenKey);
    } catch (e) {
      Print.error('Error getting pending Google ID token: $e');
      return null;
    }
  }

  /// Save pending Facebook access token
  Future<void> savePendingFacebookToken(String accessToken) async {
    try {
      await _storage.write(key: _pendingFacebookTokenKey, value: accessToken);
      Print.info('Pending Facebook token saved');
    } catch (e) {
      Print.error('Error saving pending Facebook token: $e');
      rethrow;
    }
  }

  /// Get pending Facebook access token
  Future<String?> getPendingFacebookToken() async {
    try {
      return await _storage.read(key: _pendingFacebookTokenKey);
    } catch (e) {
      Print.error('Error getting pending Facebook token: $e');
      return null;
    }
  }

  /// Save pending Apple identity token
  Future<void> savePendingAppleIdToken(String identityToken) async {
    try {
      await _storage.write(key: _pendingAppleIdTokenKey, value: identityToken);
      Print.info('Pending Apple ID token saved');
    } catch (e) {
      Print.error('Error saving pending Apple ID token: $e');
      rethrow;
    }
  }

  /// Get pending Apple identity token
  Future<String?> getPendingAppleIdToken() async {
    try {
      return await _storage.read(key: _pendingAppleIdTokenKey);
    } catch (e) {
      Print.error('Error getting pending Apple ID token: $e');
      return null;
    }
  }

  /// Save pending Apple user info (JSON string)
  Future<void> savePendingAppleUserInfo(String userInfoJson) async {
    try {
      await _storage.write(key: _pendingAppleUserInfoKey, value: userInfoJson);
      Print.info('Pending Apple user info saved');
    } catch (e) {
      Print.error('Error saving pending Apple user info: $e');
      rethrow;
    }
  }

  /// Get pending Apple user info (JSON string)
  Future<String?> getPendingAppleUserInfo() async {
    try {
      return await _storage.read(key: _pendingAppleUserInfoKey);
    } catch (e) {
      Print.error('Error getting pending Apple user info: $e');
      return null;
    }
  }

  /// Clear all pending auth credentials
  Future<void> clearPendingAuthCredentials() async {
    try {
      await _storage.delete(key: _pendingAuthMethodKey);
      await _storage.delete(key: _pendingGoogleIdTokenKey);
      await _storage.delete(key: _pendingFacebookTokenKey);
      await _storage.delete(key: _pendingAppleIdTokenKey);
      await _storage.delete(key: _pendingAppleUserInfoKey);
      Print.info('Pending auth credentials cleared');
    } catch (e) {
      Print.error('Error clearing pending auth credentials: $e');
      rethrow;
    }
  }

  /// Check if a key exists
  Future<bool> containsKey(String key) async {
    try {
      return await _storage.containsKey(key: key);
    } catch (e) {
      Print.error('Error checking key existence: $e');
      return false;
    }
  }

  Future<void> saveLanguage(String languageCode) async {
    try {
      await _storage.write(key: _languageKey, value: languageCode);
      Print.info('Language saved securely: $languageCode');
    } catch (e) {
      Print.error('Error saving language: $e');
      rethrow;
    }
  }

  /// Get saved app language
  Future<String?> getLanguage() async {
    try {
      return await _storage.read(key: _languageKey);
    } catch (e) {
      Print.error('Error getting language: $e');
      return null;
    }
  }
}
