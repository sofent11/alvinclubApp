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
  static const String _homeTopNavKey = '04_home_top_nav_v2';
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
    final code = (body?.code ?? -1).toInt();
    if (code != 0) {
      throw _createApiError(
        body?.message?.toString() ?? 'Failed to load config: $key',
        body ?? response.bodyString,
      );
    }
    return _parseConfigData(body?.data);
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
