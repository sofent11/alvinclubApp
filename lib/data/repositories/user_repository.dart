import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/auth/auth_store.dart';
import '../../core/error/api_error.dart';
import '../api/swagger_client.dart';

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

    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
      throw _createApiError(body?['message']?.toString() ?? '获取用户信息失败', body);
    }

    final data = _toMap(body['data']);
    return UserProfile(
      id: data?['userId']?.toString() ?? '',
      nickname: data?['nickname']?.toString(),
      avatar: data?['photo']?.toString(),
      email: data?['email']?.toString(),
      phone: data?['phoneNumber']?.toString(),
      gender: _parseOptionalInt(data?['gender']),
      birthday: data?['birthday']?.toString(),
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
      root: {
        'nickname': nickname,
        'photo': photo,
        'gender': gender,
        'birthday': birthday,
      },
    );

    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
      throw _createApiError(body?['message']?.toString() ?? '更新用户信息失败', body);
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

Map<String, dynamic>? _toMap(Object? value) {
  if (value == null) return null;
  if (value is Map<String, dynamic>) return value;
  try {
    final encoded = jsonEncode(value);
    final decoded = jsonDecode(encoded);
    if (decoded is Map<String, dynamic>) {
      return decoded;
    }
  } catch (_) {
    return null;
  }
  return null;
}
