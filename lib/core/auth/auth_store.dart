import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../storage/secure_storage.dart';

typedef JsonMap = Map<String, dynamic>;

class AuthTokens {
  const AuthTokens({this.accessToken, this.refreshToken, this.expiresAt});

  final String? accessToken;
  final String? refreshToken;
  final int? expiresAt;

  AuthTokens copyWith({
    String? accessToken,
    String? refreshToken,
    int? expiresAt,
  }) {
    return AuthTokens(
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      expiresAt: expiresAt ?? this.expiresAt,
    );
  }

  JsonMap toJson() => {
    'accessToken': accessToken,
    'refreshToken': refreshToken,
    'expiresAt': expiresAt,
  };

  factory AuthTokens.fromJson(JsonMap json) {
    final expiresAtRaw = json['expiresAt'];
    return AuthTokens(
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      expiresAt: expiresAtRaw is int
          ? expiresAtRaw
          : int.tryParse('$expiresAtRaw'),
    );
  }

  static const empty = AuthTokens(
    accessToken: null,
    refreshToken: null,
    expiresAt: null,
  );
}

class AuthUser {
  const AuthUser({
    required this.id,
    this.name,
    this.avatar,
    this.email,
    this.phone,
    this.description,
    this.gender,
    this.birthday,
    this.portalCode,
    this.currency,
    this.inviteCode,
    this.inviteCount,
  });

  final String id;
  final String? name;
  final String? avatar;
  final String? email;
  final String? phone;
  final String? description;
  final int? gender;
  final String? birthday;
  final String? portalCode;
  final String? currency;
  final String? inviteCode;
  final String? inviteCount;

  JsonMap toJson() => {
    'id': id,
    'name': name,
    'avatar': avatar,
    'email': email,
    'phone': phone,
    'description': description,
    'gender': gender,
    'birthday': birthday,
    'portalCode': portalCode,
    'currency': currency,
    'inviteCode': inviteCode,
    'inviteCount': inviteCount,
  };

  factory AuthUser.fromJson(JsonMap json) {
    final genderRaw = json['gender'];
    return AuthUser(
      id: json['id']?.toString() ?? '',
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      description: json['description'] as String?,
      gender: genderRaw is int ? genderRaw : int.tryParse('$genderRaw'),
      birthday: json['birthday'] as String?,
      portalCode: json['portalCode'] as String?,
      currency: json['currency'] as String?,
      inviteCode: json['inviteCode'] as String?,
      inviteCount: json['inviteCount'] as String?,
    );
  }
}

enum AuthStatus { idle, authenticated, anonymous }

class AuthState {
  const AuthState({
    required this.tokens,
    required this.user,
    required this.status,
  });

  final AuthTokens tokens;
  final AuthUser? user;
  final AuthStatus status;

  AuthState copyWith({AuthTokens? tokens, AuthUser? user, AuthStatus? status}) {
    return AuthState(
      tokens: tokens ?? this.tokens,
      user: user ?? this.user,
      status: status ?? this.status,
    );
  }

  JsonMap toJson() => {
    'tokens': tokens.toJson(),
    'user': user?.toJson(),
    'status': status.name,
  };

  factory AuthState.fromJson(JsonMap json) {
    final statusRaw = json['status'] as String?;
    final status = AuthStatus.values.firstWhere(
      (value) => value.name == statusRaw,
      orElse: () => AuthStatus.anonymous,
    );

    final tokensJson = json['tokens'];
    final userJson = json['user'];

    return AuthState(
      tokens: tokensJson is JsonMap
          ? AuthTokens.fromJson(tokensJson)
          : AuthTokens.empty,
      user: userJson is JsonMap ? AuthUser.fromJson(userJson) : null,
      status: status,
    );
  }

  static const initial = AuthState(
    tokens: AuthTokens.empty,
    user: null,
    status: AuthStatus.idle,
  );
}

class AuthController extends StateNotifier<AuthState> {
  AuthController(this._storage) : super(AuthState.initial);

  static const _storageKey = 'w2c-auth-store';
  final SecureStorage _storage;

  Future<void> hydrate() async {
    final stored = await _storage.getItem(_storageKey);
    if (stored == null || stored.isEmpty) {
      state = const AuthState(
        tokens: AuthTokens.empty,
        user: null,
        status: AuthStatus.anonymous,
      );
      return;
    }

    try {
      final decoded = jsonDecode(stored);
      if (decoded is JsonMap) {
        final restored = AuthState.fromJson(decoded);
        final hasToken = restored.tokens.accessToken?.isNotEmpty ?? false;
        state = restored.copyWith(
          status: hasToken ? AuthStatus.authenticated : AuthStatus.anonymous,
        );
        return;
      }
    } catch (_) {
      // Ignore and reset.
    }

    state = const AuthState(
      tokens: AuthTokens.empty,
      user: null,
      status: AuthStatus.anonymous,
    );
  }

  Future<void> _persist() async {
    final payload = jsonEncode(state.toJson());
    await _storage.setItem(_storageKey, payload);
  }

  Future<void> setTokens({
    String? accessToken,
    String? refreshToken,
    int? expiresAt,
  }) async {
    final nextTokens = state.tokens.copyWith(
      accessToken: accessToken ?? state.tokens.accessToken,
      refreshToken: refreshToken ?? state.tokens.refreshToken,
      expiresAt: expiresAt ?? state.tokens.expiresAt,
    );
    final isAuthenticated = nextTokens.accessToken?.isNotEmpty ?? false;
    state = state.copyWith(
      tokens: nextTokens,
      status: isAuthenticated ? AuthStatus.authenticated : AuthStatus.anonymous,
    );
    await _persist();
  }

  Future<void> setUser(AuthUser? user) async {
    state = state.copyWith(
      user: user,
      status: user == null ? AuthStatus.anonymous : AuthStatus.authenticated,
    );
    await _persist();
  }

  Future<void> clearSession() async {
    state = const AuthState(
      tokens: AuthTokens.empty,
      user: null,
      status: AuthStatus.anonymous,
    );
    await _storage.removeItem(_storageKey);
  }
}

final secureStorageProvider = Provider<SecureStorage>((ref) => SecureStorage());
final authControllerProvider = StateNotifierProvider<AuthController, AuthState>(
  (ref) => AuthController(ref.read(secureStorageProvider)),
);

String? getAccessToken(Ref ref) =>
    ref.read(authControllerProvider).tokens.accessToken;
