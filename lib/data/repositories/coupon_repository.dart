import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/error/api_error.dart';
import '../api/swagger_client.dart';

class UserCoupon {
  const UserCoupon({
    required this.code,
    required this.title,
    this.image,
    this.status,
    this.description,
    this.startTime,
    this.endTime,
    this.minSpend,
    this.discountAmount,
    this.currency,
  });

  final String code;
  final String title;
  final String? image;
  final int? status; // 0: usable, 1: used, 2: expired
  final String? description;
  final String? startTime;
  final String? endTime;
  final double? minSpend;
  final double? discountAmount;
  final String? currency;
}

class CouponRepository {
  CouponRepository(this._ref);

  final Ref _ref;

  ApiError _createApiError(String message, Object? raw) {
    return ApiError(status: 400, message: message, raw: raw);
  }

  Future<List<UserCoupon>> getUserCoupons({String status = '0'}) async {
    final api = _ref.read(swaggerUserApiProvider);
    final response = await api.userServiceUserCouponGetListGet(userCouponState: status);

    final body = _toMap(response.body);
    if (body == null) {
      throw _createApiError('获取优惠券列表失败', body);
    }
    if (_parseInt(body['code']) != 0) {
      throw _createApiError(body['message']?.toString() ?? '获取优惠券列表失败', body);
    }

    final data = _toMap(body['data']);
    // The structure seems to be data -> list of items -> userCouponDtos -> list of coupons
    // Based on generated code: UserCouponGetListGet$Response$Data$Item has userCouponDtos list
    final items = _toList(data?['list'] ?? body['data']); // Adjust based on actual structure
    if (items.isEmpty) return [];

    // Assuming it returns a list of categories/groups, each containing coupons?
    // Or maybe the list IS the list of coupons.
    // Generated code: UserCouponGetListGet$Response$Data$Item contains userCouponDtos.
    // So it might be grouped. I'll flatten it.

    final allCoupons = <UserCoupon>[];
    for (final itemRaw in items) {
      final item = _toMap(itemRaw);
      final dtos = _toList(item?['userCouponDtos']);
      for (final dtoRaw in dtos) {
        final dto = _toMap(dtoRaw);
        if (dto != null) {
          allCoupons.add(_mapCoupon(dto));
        }
      }
    }
    return allCoupons;
  }

  Future<void> redeemCoupon(String activityCode) async {
    final api = _ref.read(swaggerUserApiProvider);
    // userCouponSaveGet or userCouponGetCouponByActivityPost?
    // The plan says "redeemCoupon", usually implies 'save' or 'receive'.
    // Generated code has `userCouponSaveGet` taking `couponActivityCode`.
    final response = await api.userServiceUserCouponSaveGet(couponActivityCode: activityCode);

    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
      throw _createApiError(body?['message']?.toString() ?? '领取优惠券失败', body);
    }
  }

  UserCoupon _mapCoupon(Map<String, dynamic> data) {
    return UserCoupon(
      code: data['couponCode']?.toString() ?? '',
      title: data['couponTitle']?.toString() ?? '',
      image: data['couponImage']?.toString(),
      status: _parseInt(data['status'] ?? data['userCouponState']),
      description: data['couponDesc']?.toString(),
      startTime: data['startTime']?.toString(),
      endTime: data['endTime']?.toString(),
      minSpend: _parseDouble(data['minSpendAmount']),
      discountAmount: _parseDouble(data['discountAmount']),
      currency: data['currency']?.toString(),
    );
  }
}

final couponRepositoryProvider = Provider<CouponRepository>((ref) {
  return CouponRepository(ref);
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

double _parseDouble(Object? value, {double fallback = 0}) {
  if (value == null || value == '') {
    return fallback;
  }
  if (value is num) {
    return value.toDouble();
  }
  return double.tryParse(value.toString()) ?? fallback;
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

List<dynamic> _toList(Object? value) {
  if (value == null) return [];
  if (value is List) return value;
  try {
    final encoded = jsonEncode(value);
    final decoded = jsonDecode(encoded);
    if (decoded is List) {
      return decoded;
    }
  } catch (_) {
    return [];
  }
  return [];
}
