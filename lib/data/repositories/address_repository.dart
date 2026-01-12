import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/error/api_error.dart';
import '../api/swagger_client.dart';
import '../api/generated/swaggerApiUser.swagger.dart' as user;

class ShippingAddress {
  const ShippingAddress({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.email,
    required this.country,
    required this.province,
    required this.city,
    required this.district,
    required this.addressLine1,
    this.addressLine2,
    required this.zipCode,
    required this.isDefault,
  });

  final String id;
  final String firstName;
  final String lastName;
  final String phone;
  final String email;
  final String country;
  final String province;
  final String city;
  final String district;
  final String addressLine1;
  final String? addressLine2;
  final String zipCode;
  final bool isDefault;
}

class AddressRepository {
  AddressRepository(this._ref);

  final Ref _ref;

  ApiError _createApiError(String message, Object? raw) {
    return ApiError(status: 400, message: message, raw: raw);
  }

  Future<List<ShippingAddress>> listShippingAddresses() async {
    final api = _ref.read(swaggerUserApiProvider);
    final response = await api.userServiceAddressListGet();

    final body = response.body;
    if (body == null) {
      throw _createApiError('获取地址列表失败', response.error);
    }
    if (_parseInt(body.code) != 0) {
      throw _createApiError(body.message ?? '获取地址列表失败', body);
    }

    final list = body.data ?? const [];
    return list.map(_mapAddressFromListItem).toList();
  }

  Future<void> createShippingAddress(ShippingAddress address) async {
    final api = _ref.read(swaggerUserApiProvider);
    final response = await api.userServiceAddressAddPost(
      root: _addressToMap(address),
    );

    final body = response.body;
    if (body == null || _parseInt(body.code) != 0) {
      throw _createApiError(body?.message ?? '添加地址失败', body);
    }
  }

  Future<void> updateShippingAddress(ShippingAddress address) async {
    final api = _ref.read(swaggerUserApiProvider);
    final response = await api.userServiceAddressUpdatePost(
      root: _addressToMap(address),
    );

    final body = response.body;
    if (body == null || _parseInt(body.code) != 0) {
      throw _createApiError(body?.message ?? '更新地址失败', body);
    }
  }

  Future<void> deleteShippingAddress(String id) async {
    final api = _ref.read(swaggerUserApiProvider);
    final response = await api.userServiceAddressDeleteDelete(id: id);

    final body = response.body;
    if (body == null || _parseInt(body.code) != 0) {
      throw _createApiError(body?.message ?? '删除地址失败', body);
    }
  }

  Future<ShippingAddress?> getDefaultShippingAddress() async {
    final api = _ref.read(swaggerUserApiProvider);
    final response = await api.userServiceGetDefaultShippingAddressGet();

    final body = response.body;
    if (body == null || _parseInt(body.code) != 0) {
      return null;
    }

    final data = body.data;
    if (data == null) return null;
    return _mapAddressFromDefault(data);
  }

  Future<List<String>> getSupportCountries() async {
    final api = _ref.read(swaggerUserApiProvider);
    final response = await api.userServiceNoAuthSupportCountryGet();

    final body = response.body;
    if (body == null || _parseInt(body.code) != 0) {
      return ['United States', 'Canada', 'United Kingdom']; // Fallback
    }

    return body.data ?? const [];
  }

  ShippingAddress _mapAddressFromListItem(
    user.UserServiceAddressListGet$Response$Data$Item item,
  ) {
    return ShippingAddress(
      id: item.id?.toInt().toString() ?? '',
      firstName: item.firstName ?? '',
      lastName: item.lastName ?? '',
      phone: item.phoneNumber ?? '',
      email: '',
      country: item.country ?? '',
      province: item.state ?? '',
      city: item.city ?? '',
      district: '',
      addressLine1: item.street ?? item.address ?? '',
      addressLine2: item.apartment,
      zipCode: item.zipCode ?? '',
      isDefault: (item.isDefault ?? 0) != 0,
    );
  }

  ShippingAddress _mapAddressFromDefault(
    user.UserServiceGetDefaultShippingAddressGet$Response$Data data,
  ) {
    return ShippingAddress(
      id: data.id ?? '',
      firstName: data.firstName ?? '',
      lastName: data.lastName ?? '',
      phone: data.phoneNumber ?? '',
      email: data.email ?? '',
      country: data.country ?? '',
      province: data.state ?? '',
      city: data.city ?? '',
      district: '',
      addressLine1: data.street ?? data.address ?? '',
      addressLine2: data.apartment,
      zipCode: data.zipCode ?? '',
      isDefault: data.isDefault ?? false,
    );
  }

  Map<String, dynamic> _addressToMap(ShippingAddress address) {
    return {
      'id': int.tryParse(address.id),
      'firstName': address.firstName,
      'lastName': address.lastName,
      'phone': address.phone,
      'email': address.email,
      'country': address.country,
      'province': address.province,
      'city': address.city,
      'district': address.district,
      'addressLine1': address.addressLine1,
      'addressLine2': address.addressLine2,
      'zipCode': address.zipCode,
      'isDefault': address.isDefault,
    };
  }
}

final addressRepositoryProvider = Provider<AddressRepository>((ref) {
  return AddressRepository(ref);
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
