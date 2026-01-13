import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthResult {
  const GoogleAuthResult({required this.email, required this.idToken});

  final String email;
  final String idToken;
}

class GoogleAuthService {
  GoogleAuthService();

  // This Client ID was present in the previous AppAuth implementation.
  // We use it here as serverClientId to request an ID token that the backend can verify.
  static const _serverClientId =
      '743295184995-7eqfn8t1brdhmmkt83f2kg8b4qscpokt.apps.googleusercontent.com';

  static const _scopes = ['email', 'profile', 'openid'];

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: _scopes,
    serverClientId: _serverClientId,
  );

  Future<GoogleAuthResult> signIn() async {
    try {
      // Ensure previous session is cleared to force account selection if needed
      // or to prevent stale states.
      await _googleSignIn.signOut();

      final GoogleSignInAccount? account = await _googleSignIn.signIn();

      if (account == null) {
        // User cancelled the sign-in process
        throw Exception('Google sign-in cancelled');
      }

      final GoogleSignInAuthentication auth = await account.authentication;
      final String? idToken = auth.idToken;
      final String email = account.email;

      if (idToken == null || idToken.isEmpty) {
        throw Exception('Missing ID token from Google Sign-In');
      }

      return GoogleAuthResult(email: email, idToken: idToken);
    } catch (e) {
      if (e.toString().contains('sign_in_failed')) {
        throw Exception(
          'Sign in failed. Please check your network connection and try again.',
        );
      }
      throw Exception('Google Sign-In failed: $e');
    }
  }

  Future<void> signOut() => _googleSignIn.signOut();
}

final googleAuthServiceProvider = Provider<GoogleAuthService>((ref) {
  return GoogleAuthService();
});
