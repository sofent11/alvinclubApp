import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/error/api_error.dart';
import '../api/swagger_client.dart';

class HomeRepository {
  HomeRepository(this._ref);

  final Ref _ref;

  static const String _configInstanceId = 'en_US';
  static const String _homeConfigKey = 'app_home_page_config';
  static const String _premiumDupeConfigKey = 'app_premium_dupe_config';
  static const String _homeTopNavKey = '04_home_top_nav';
  static const String _homeAlbumKey = 'app_home_album';
  static const String _premiumInspiredKey = '04_premium_inspired';

  ApiError _createApiError(String message, Object? raw) {
    return ApiError(status: 400, message: message, raw: raw);
  }

  Future<Map<String, dynamic>> getHomeConfig() async {
    return _getConfig(_homeConfigKey);
  }

  Future<Map<String, dynamic>> getHomeTopNavConfig() async {
    return _getConfig(_homeTopNavKey);
  }

  Future<Map<String, dynamic>> getHomeAlbumConfig() async {
    return _getConfig(_homeAlbumKey);
  }

  Future<Map<String, dynamic>> getPremiumDupeConfig() async {
    return _getConfig(_premiumDupeConfigKey);
  }

  Future<Map<String, dynamic>> getPremiumInspiredConfig() async {
    return _getConfig(_premiumInspiredKey);
  }

  Future<Map<String, dynamic>> _getConfig(String key) async {
    final api = _ref.read(swaggerConfigApiProvider);

    final response = await api.configServiceUserConfigNoAuthInstanceGet(
      configKey: key,
      instanceId: _configInstanceId,
    );

    if (!response.isSuccessful) {
      throw _createApiError(
        'Failed to load config: $key',
        response.error ?? response.bodyString,
      );
    }

    final body = response.body;
    if (body != null) {
      final code = _parseInt(body.code);
      if (code != 0) {
        throw _createApiError(
          body.message ?? 'Failed to load config: $key',
          body,
        );
      }
      return _parseConfigData(body.data);
    }

    final rawBody = response.bodyString;
    if (rawBody != null && rawBody.isNotEmpty) {
      try {
        final decoded = jsonDecode(rawBody);
        if (decoded is Map<String, dynamic>) {
          final code = _parseInt(decoded['code']);
          if (code != 0) {
            throw _createApiError(
              decoded['message']?.toString() ?? 'Failed to load config: $key',
              decoded,
            );
          }
          return _parseConfigData(decoded['data']);
        }
      } catch (_) {}
    }

    return {};
  }
}

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  return HomeRepository(ref);
});

Map<String, dynamic> _parseConfigData(Object? value) {
  if (value == null) return {};
  if (value is String && value.isNotEmpty) {
    try {
      final decoded = jsonDecode(value);
      if (decoded is Map<String, dynamic>) {
        return decoded;
      }
      if (decoded is List) {
        return {'list': decoded};
      }
    } catch (_) {
      return {};
    }
  }
  if (value is Map<String, dynamic>) {
    return value;
  }
  if (value is List) {
    return {'list': value};
  }
  return {};
}

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
