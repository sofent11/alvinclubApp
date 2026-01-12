import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/error/api_error.dart';
import '../api/generated/swaggerApiUser.swagger.dart' as user;
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
    final response = await api.userServiceUserCouponGetListGet(
      userCouponState: status,
    );

    final body = response.body;
    if (body == null) {
      throw _createApiError('获取优惠券列表失败', response.error);
    }
    if (_parseInt(body.code) != 0) {
      throw _createApiError(body.message ?? '获取优惠券列表失败', body);
    }

    final groups = body.data ?? const [];
    final allCoupons = <UserCoupon>[];
    for (final group in groups) {
      final dtos = group.userCouponDtos ?? const [];
      for (final dto in dtos) {
        allCoupons.add(_mapCoupon(dto));
      }
    }
    return allCoupons;
  }

  Future<void> redeemCoupon(String activityCode) async {
    final api = _ref.read(swaggerUserApiProvider);
    // userCouponSaveGet or userCouponGetCouponByActivityPost?
    // The plan says "redeemCoupon", usually implies 'save' or 'receive'.
    // Generated code has `userCouponSaveGet` taking `couponActivityCode`.
    final response = await api.userServiceUserCouponSaveGet(
      couponActivityCode: activityCode,
    );

    final body = response.body;
    if (body == null || _parseInt(body.code) != 0) {
      throw _createApiError(body?.message ?? '领取优惠券失败', body);
    }
  }

  UserCoupon _mapCoupon(
    user.UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item
    data,
  ) {
    return UserCoupon(
      code: data.couponCode ?? '',
      title: data.couponTitle ?? '',
      image: data.couponImage,
      status: (data.isUsed ?? 0) != 0 ? 1 : 0,
      description: null,
      startTime: null,
      endTime: data.gmtInvalid,
      minSpend: _parseDouble(data.limitAmount),
      discountAmount: _parseDouble(data.discount),
      currency: data.currencyTarget ?? data.currency,
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
