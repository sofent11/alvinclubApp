import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/error/api_error.dart';
import '../api/swagger_client.dart';

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

    final body = _toMap(response.body);
    if (body == null) {
      throw _createApiError('获取地址列表失败', body);
    }
    if (_parseInt(body['code']) != 0) {
      throw _createApiError(body['message']?.toString() ?? '获取地址列表失败', body);
    }

    final data = _toMap(body['data']);
    final list = _toList(data?['list'] ?? body['data']); // Adjust based on actual structure

    return list.map((itemRaw) {
      final item = _toMap(itemRaw);
      if (item == null) return null;
      return _mapAddress(item);
    }).whereType<ShippingAddress>().toList();
  }

  Future<void> createShippingAddress(ShippingAddress address) async {
    final api = _ref.read(swaggerUserApiProvider);
    final response = await api.userServiceAddressAddPost(
      root: _addressToMap(address),
    );

    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
      throw _createApiError(body?['message']?.toString() ?? '添加地址失败', body);
    }
  }

  Future<void> updateShippingAddress(ShippingAddress address) async {
    final api = _ref.read(swaggerUserApiProvider);
    final response = await api.userServiceAddressUpdatePost(
      root: _addressToMap(address),
    );

    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
      throw _createApiError(body?['message']?.toString() ?? '更新地址失败', body);
    }
  }

  Future<void> deleteShippingAddress(String id) async {
    final api = _ref.read(swaggerUserApiProvider);
    final response = await api.userServiceAddressDeleteDelete(
      id: id,
    );

    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
      throw _createApiError('删除地址失败', body);
    }
  }

  Future<ShippingAddress?> getDefaultShippingAddress() async {
    final api = _ref.read(swaggerUserApiProvider);
    final response = await api.userServiceGetDefaultShippingAddressGet();

    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
      return null;
    }

    final data = _toMap(body['data']);
    if (data == null) return null;
    return _mapAddress(data);
  }

  Future<List<String>> getSupportCountries() async {


    final api = _ref.read(swaggerUserApiProvider);
    final response = await api.userServiceNoAuthSupportCountryGet();

    final body = _toMap(response.body);
    if (body == null || _parseInt(body['code']) != 0) {
      return ['United States', 'Canada', 'United Kingdom']; // Fallback
    }

    final data = _toList(body['data']);
    return data.map((item) {
      if (item is String) return item;
      final map = _toMap(item);
      return map?['countryName']?.toString() ?? map?['country']?.toString();
    }).whereType<String>().toList();
  }

  ShippingAddress? _mapAddress(Map<String, dynamic> data) {
    // The API might return address fields nested in 'address' string or directly.
    // Based on generated code 'address' is a String.
    // If 'address' is a JSON string, we parse it.
    
    Map<String, dynamic> fields = data;
    if (data['address'] is String) {
      try {
        final parsed = jsonDecode(data['address']);
        if (parsed is Map<String, dynamic>) {
          fields = parsed;
          // Merge top-level ID/default status if they are outside
          if (data.containsKey('id')) fields['id'] = data['id'];
          if (data.containsKey('isDefault')) fields['isDefault'] = data['isDefault'];
        }
      } catch (_) {}
    }

    return ShippingAddress(
      id: fields['id']?.toString() ?? '',
      firstName: fields['firstName']?.toString() ?? '',
      lastName: fields['lastName']?.toString() ?? '',
      phone: fields['phone']?.toString() ?? '',
      email: fields['email']?.toString() ?? '',
      country: fields['country']?.toString() ?? '',
      province: fields['province']?.toString() ?? '',
      city: fields['city']?.toString() ?? '',
      district: fields['district']?.toString() ?? '',
      addressLine1: fields['addressLine1']?.toString() ?? '',
      addressLine2: fields['addressLine2']?.toString(),
      zipCode: fields['zipCode']?.toString() ?? '',
      isDefault: _parseBool(fields['isDefault']),
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

bool _parseBool(Object? value) {
  if (value == null) return false;
  if (value is bool) return value;
  if (value is num) return value != 0;
  if (value is String) return value.toLowerCase() == 'true' || value == '1';
  return false;
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
