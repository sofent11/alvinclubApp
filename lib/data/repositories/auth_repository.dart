import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/auth/auth_store.dart';
import '../../core/error/api_error.dart';
import '../api/swagger_client.dart';

class SignInInitPayload {
  SignInInitPayload({required this.email});

  final String email;
}

class SignInInitResponse {
  SignInInitResponse({required this.expiresIn, required this.otpLength});

  final int expiresIn;
  final int otpLength;
}

class SignInVerifyPayload {
  SignInVerifyPayload({
    required this.email,
    required this.code,
    this.requestId,
    this.portalCode,
  });

  final String email;
  final String code;
  final String? requestId;
  final String? portalCode;
}

class GoogleSignInPayload {
  GoogleSignInPayload({
    required this.email,
    required this.token,
    required this.portalCode,
  });

  final String email;
  final String token;
  final String portalCode;
}

class SignInTokens {
  SignInTokens({
    required this.accessToken,
    required this.refreshToken,
    required this.expiresIn,
  });

  final String accessToken;
  final String refreshToken;
  final int expiresIn;
}

class SignInVerifyResponse {
  SignInVerifyResponse({required this.user, required this.tokens});

  final AuthUser user;
  final SignInTokens tokens;
}

class AuthRepository {
  AuthRepository(this._ref);

  static const int _otpDefaultLength = 6;
  static const int _otpDefaultExpires = 60;
  static const int _defaultSource = 0;
  static const int _emailAuthWay = 8;
  static const String _emailAuthWayString = '8';
  static const String _googleAuthWayString = '8';

  final Ref _ref;

  ApiError _createApiError(String message, Object? raw) {
    return ApiError(status: 400, message: message, raw: raw);
  }

  Future<SignInInitResponse> initSignIn(SignInInitPayload payload) async {
    final api = _ref.read(swaggerUserApiProvider);
    final response = await api.userServiceSignInInitPost(
      root: {
        'loginName': payload.email,
        'authWay': _emailAuthWay,
        'source': _defaultSource,
      },
    );

    final body = response.body;
    final code = body?.code?.toInt();
    if (code != 0) {
      throw _createApiError(body?.message ?? '验证码发送失败，请稍后再试', body);
    }

    return SignInInitResponse(
      expiresIn: _otpDefaultExpires,
      otpLength: _otpDefaultLength,
    );
  }

  Future<SignInVerifyResponse> verifySignIn(SignInVerifyPayload payload) async {
    final api = _ref.read(swaggerUserApiProvider);
    final response = await api.userServiceSignInVerifyPost(
      root: {
        'loginName': payload.email,
        'authWay': _emailAuthWayString,
        'code': payload.code,
        'source': _defaultSource,
        'portalCode': payload.portalCode,
      },
    );

    final body = response.body;
    final code = body?.code?.toInt();
    if (code != 0) {
      throw _createApiError(body?.message ?? '登录失败，请检查验证码', body);
    }

    final data = body?.data;
    final accessToken = data?.accessToken;
    if (accessToken == null || accessToken.isEmpty) {
      throw _createApiError('登录失败，未返回访问令牌', body);
    }

    return SignInVerifyResponse(
      user: AuthUser(
        id: data?.userId ?? 'unknown-user',
        name: data?.nickname,
        avatar: data?.photo,
        email: data?.email ?? payload.email,
        phone: data?.phoneNumber,
        portalCode: data?.portalCode,
        currency: data?.currency,
      ),
      tokens: SignInTokens(
        accessToken: accessToken,
        refreshToken: data?.refreshToken ?? '',
        expiresIn: data?.expiresIn?.toInt() ?? 60 * 60,
      ),
    );
  }

  Future<SignInVerifyResponse> verifyGoogleSignIn(GoogleSignInPayload payload) async {
    final api = _ref.read(swaggerUserApiProvider);
    final response = await api.userServiceSignInVerifyPost(
      root: {
        'loginName': payload.email,
        'authWay': _googleAuthWayString,
        'code': payload.token,
        'source': _defaultSource,
        'portalCode': payload.portalCode,
      },
    );

    final body = response.body;
    final code = body?.code?.toInt();
    if (code != 0) {
      throw _createApiError(body?.message ?? 'Google 登录失败', body);
    }

    final data = body?.data;
    final accessToken = data?.accessToken;
    if (accessToken == null || accessToken.isEmpty) {
      throw _createApiError('登录失败，未返回访问令牌', body);
    }

    return SignInVerifyResponse(
      user: AuthUser(
        id: data?.userId ?? 'unknown-user',
        name: data?.nickname,
        avatar: data?.photo,
        email: data?.email ?? payload.email,
        phone: data?.phoneNumber,
        portalCode: data?.portalCode,
        currency: data?.currency,
      ),
      tokens: SignInTokens(
        accessToken: accessToken,
        refreshToken: data?.refreshToken ?? '',
        expiresIn: data?.expiresIn?.toInt() ?? 60 * 60,
      ),
    );
  }

  Future<void> signOut() async {
    final api = _ref.read(swaggerUserApiProvider);
    await api.userServiceSignOutPost();
  }
}

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(ref);
});
