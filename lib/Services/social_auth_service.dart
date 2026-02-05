import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:yogiface/utils/print.dart';

/// Provider for SocialAuthService
final socialAuthServiceProvider = Provider<SocialAuthService>((ref) {
  return SocialAuthService();
});

class SocialAuthService {
  /// Sign in with Google
  /// Returns the ID token needed for backend authentication
  Future<String?> signInWithGoogle() async {
    try {
      // Get GoogleSignIn instance (version 7.x uses singleton pattern)
      final googleSignIn = GoogleSignIn.instance;

      // Initialize Google Sign-In (call only once)
      // Client ID is configured in Info.plist (iOS) and google-services.json (Android)
      await googleSignIn.initialize(
          serverClientId:
              "643185133399-juee6bm3s0nb5bfcjvol2tcnb53s6vof.apps.googleusercontent.com");

      // If lightweight auth fails, show the interactive sign-in UI

      GoogleSignInAccount account = await googleSignIn.authenticate(
        scopeHint: ['email', 'profile'],
      );

      // Get authentication details directly from the account

      final GoogleSignInAuthentication auth = account.authentication;

      if (auth.idToken == null) {
        Print.error('Failed to get ID token from Google');
        throw Exception('Failed to get ID token from Google');
      }

      Print.info('Google sign-in successful for: ${account.email}');
      return auth.idToken;
    } catch (e) {
      Print.error('Error signing in with Google: $e');
      rethrow;
    }
  }

  /// Sign in with Facebook
  /// Returns the access token needed for backend authentication
  Future<String?> signInWithFacebook() async {
    try {
      // TODO: Implement Facebook Sign-In
      // You need to add flutter_facebook_auth package to pubspec.yaml
      // import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
      //
      // final LoginResult result = await FacebookAuth.instance.login(
      //   permissions: ['email', 'public_profile'],
      // );
      //
      // if (result.status == LoginStatus.success) {
      //   final AccessToken? accessToken = result.accessToken;
      //   return accessToken?.token;
      // } else {
      //   Print.error('Facebook sign-in failed: ${result.status}');
      //   return null;
      // }

      Print.error('Facebook Sign-In not implemented yet');
      throw UnimplementedError('Facebook Sign-In not implemented');
    } catch (e) {
      Print.error('Error signing in with Facebook: $e');
      rethrow;
    }
  }

  /// Sign in with Apple
  /// Returns the identity token and user info needed for backend authentication
  Future<Map<String, dynamic>?> signInWithApple() async {
    try {
      // Check if Apple Sign-In is available on this device
      final isAvailable = await SignInWithApple.isAvailable();

      if (!isAvailable) {
        Print.error('Apple Sign-In is not available on this device');
        throw UnsupportedError('Apple Sign-In is not available on this device');
      }

      // Request credentials from Apple
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      // Check if we got the identity token
      if (credential.identityToken == null) {
        Print.error('Failed to get identity token from Apple');
        throw Exception('Failed to get identity token from Apple');
      }

      // Build the response with identity token and user info
      final result = <String, dynamic>{
        'identityToken': credential.identityToken!,
      };

      // Add user info if available (only provided on first sign-in)
      if (credential.givenName != null || credential.familyName != null) {
        result['user'] = {
          'name': {
            'firstName': credential.givenName,
            'lastName': credential.familyName,
          }
        };
      }

      // Add email if available
      if (credential.email != null) {
        result['email'] = credential.email;
      }

      Print.info('Apple Sign-In successful');
      return result;
    } on SignInWithAppleAuthorizationException catch (e) {
      Print.error(
          'Apple Sign-In authorization error: ${e.code} - ${e.message}');

      // User cancelled or other authorization error
      if (e.code == AuthorizationErrorCode.canceled) {
        Print.info('User cancelled Apple Sign-In');
        return null;
      }

      rethrow;
    } catch (e) {
      Print.error('Error signing in with Apple: $e');
      rethrow;
    }
  }

  /// Sign out from Google
  Future<void> signOutGoogle() async {
    try {
      final googleSignIn = GoogleSignIn.instance;
      await googleSignIn.signOut();
      Print.info('Google sign-out successful');
    } catch (e) {
      Print.error('Error signing out from Google: $e');
    }
  }

  /// Sign out from Facebook
  Future<void> signOutFacebook() async {
    try {
      // TODO: Implement Facebook Sign-Out
      // await FacebookAuth.instance.logOut();
      Print.info('Facebook sign-out not implemented');
    } catch (e) {
      Print.error('Error signing out from Facebook: $e');
    }
  }
}
