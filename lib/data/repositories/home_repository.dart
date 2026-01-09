import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/portal/portals.dart';
import '../../core/error/api_error.dart';
import '../api/swagger_client.dart';

class HomeRepository {
  HomeRepository(this._ref);

  final Ref _ref;

  static const String _homeConfigKey = 'app_home_page_config';
  static const String _premiumDupeConfigKey = 'app_premium_dupe_config';

  ApiError _createApiError(String message, Object? raw) {
    return ApiError(status: 400, message: message, raw: raw);
  }

  Future<Map<String, dynamic>> getHomeConfig() async {
    return _getConfig(_homeConfigKey);
  }

  Future<Map<String, dynamic>> getPremiumDupeConfig() async {
    return _getConfig(_premiumDupeConfigKey);
  }

  Future<Map<String, dynamic>> _getConfig(String key) async {
    final api = _ref.read(swaggerConfigApiProvider);
    
    // Use raw client call to bypass brittle generated converter
    final response = await api.client.get<Map<String, dynamic>, Map<String, dynamic>>(
      Uri.parse('/config-service/user-config/no-auth/instance'),
      parameters: {
        'configKey': key,
        'instanceId': defaultPortal.id.toString(),
      },
    );

    final body = response.body;
    final code = _parseInt(body?['code']);
    if (code != 0) {
      throw _createApiError(body?['message']?.toString() ?? 'Failed to load config: $key', body);
    }

    final data = _toMap(body?['data']);
    // The value might be a JSON string that needs parsing.
    final value = data?['value'];
    if (value is String) {
      try {
        final decoded = jsonDecode(value);
        if (decoded is Map<String, dynamic>) {
          return decoded;
        }
      } catch (_) {
        // Fallback or ignore
      }
    }
    
    if (value is Map<String, dynamic>) {
      return value;
    }

    return {};
  }
}

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  return HomeRepository(ref);
});

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
