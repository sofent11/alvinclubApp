import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/error/api_error.dart';
import '../api/swagger_client.dart';
import '../api/generated/swaggerApiUser.swagger.dart' as user;

class UserProfile {
  const UserProfile({
    required this.id,
    this.nickname,
    this.avatar,
    this.email,
    this.phone,
    this.gender,
    this.birthday,
  });

  final String id;
  final String? nickname;
  final String? avatar;
  final String? email;
  final String? phone;
  final int? gender;
  final String? birthday;
}

class UserRepository {
  UserRepository(this._ref);

  final Ref _ref;

  ApiError _createApiError(String message, Object? raw) {
    return ApiError(status: 400, message: message, raw: raw);
  }

  Future<UserProfile> getUserProfile() async {
    final api = _ref.read(swaggerUserApiProvider);
    final response = await api.userServiceUserGetGet();

    final body = response.body;
    if (body == null) {
      throw _createApiError('获取用户信息失败', response.error);
    }
    if (_parseInt(body.code) != 0) {
      throw _createApiError(body.message ?? '获取用户信息失败', body);
    }

    final data = body.data;
    return UserProfile(
      id: data?.userId ?? '',
      nickname: data?.nickname,
      avatar: data?.photo,
      email: data?.email,
      phone: data?.phoneNumber,
      gender: _parseOptionalInt(data?.gender),
      birthday: data?.birthday,
    );
  }

  Future<void> updateUserProfile({
    String? nickname,
    String? photo,
    int? gender,
    String? birthday,
  }) async {
    final api = _ref.read(swaggerUserApiProvider);
    final response = await api.userServiceUserUpdatePost(
      root: user.UserServiceUserUpdatePostRequest(
        nickname: nickname,
        photo: photo,
        gender: gender,
        birthday: birthday,
      ),
    );

    if (!response.isSuccessful) {
      throw _createApiError('更新用户信息失败', response.error);
    }
  }
}

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepository(ref);
});

int _parseInt(Object? value, {int fallback = 0}) {
  if (value == null || value == '') {
    return fallback;
  }
  if (value is int) {
    return value;
  }
  if (value is num) {
    return value.toInt();
  }
  return int.tryParse(value.toString()) ?? fallback;
}

int? _parseOptionalInt(Object? value) {
  if (value == null || value == '') {
    return null;
  }
  if (value is int) {
    return value;
  }
  if (value is num) {
    return value.toInt();
  }
  return int.tryParse(value.toString());
}
