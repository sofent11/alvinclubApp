import 'dart:convert';

import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GoogleAuthResult {
  const GoogleAuthResult({
    required this.email,
    required this.idToken,
  });

  final String email;
  final String idToken;
}

class GoogleAuthService {
  GoogleAuthService({FlutterAppAuth? appAuth}) : _appAuth = appAuth ?? FlutterAppAuth();

  static const _clientId =
      '743295184995-7eqfn8t1brdhmmkt83f2kg8b4qscpokt.apps.googleusercontent.com';
  static const _redirectUrl = 'w2capp:/oauthredirect';
  static const _discoveryUrl = 'https://accounts.google.com/.well-known/openid-configuration';
  static const _scopes = ['openid', 'profile', 'email'];

  final FlutterAppAuth _appAuth;

  Future<GoogleAuthResult> signIn() async {
    final result = await _appAuth.authorizeAndExchangeCode(
      AuthorizationTokenRequest(
        _clientId,
        _redirectUrl,
        discoveryUrl: _discoveryUrl,
        scopes: _scopes,
        promptValues: const ['consent'],
        additionalParameters: const {
          'access_type': 'offline',
        },
      ),
    );

    final idToken = result?.idToken;
    if (idToken == null || idToken.isEmpty) {
      throw Exception('Missing ID token');
    }

    final payload = _parseJwt(idToken);
    final email = payload['email']?.toString();
    if (email == null || email.isEmpty) {
      throw Exception('Missing email in ID token');
    }

    return GoogleAuthResult(email: email, idToken: idToken);
  }
}

final googleAuthServiceProvider = Provider<GoogleAuthService>((ref) {
  return GoogleAuthService();
});

Map<String, dynamic> _parseJwt(String token) {
  final parts = token.split('.');
  if (parts.length != 3) {
    throw Exception('Invalid ID token');
  }

  final payload = parts[1];
  final normalized = base64Url.normalize(payload);
  final decoded = utf8.decode(base64Url.decode(normalized));
  final json = jsonDecode(decoded);
  if (json is! Map<String, dynamic>) {
    throw Exception('Invalid ID token payload');
  }
  return json;
}
