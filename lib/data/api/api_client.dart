import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/auth/auth_store.dart';
import '../../core/device/device_id_service.dart';
import '../../core/env/env_config.dart';

import '../../core/error/api_error.dart';
import '../../core/logging/logger.dart';

String _toCurl(RequestOptions options) {
  final method = options.method.toUpperCase();
  final uri = options.uri;
  final buffer = StringBuffer('curl -X $method "$uri"');

  options.headers.forEach((key, value) {
    if (value == null) return;
    if (value is Map || value is List) return;
    buffer.write(' -H "$key: $value"');
  });

  if (options.data != null && method != 'GET') {
    final body = options.data is String
        ? options.data.toString()
        : jsonEncode(options.data);
    final escaped = body.replaceAll("'", "\\'");
    buffer.write(" -d '$escaped'");
  }

  return buffer.toString();
}

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: EnvConfig.current.apiBaseUrl,
      responseType: ResponseType.json,
    ),
  );

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        final authState = ref.read(authControllerProvider);
        final token = authState.tokens.accessToken;
        final user = authState.user;

        options.headers['Accept-Language'] = EnvConfig.current.defaultLocale;
        options.headers['Referer'] = EnvConfig.current.referer;
        options.headers['X-VIEW-URI'] = EnvConfig.current.referer;

        options.headers['PortalCode'] = user?.portalCode ?? 'US';
        options.headers['Currency'] = user?.currency ?? 'USD';

        final deviceIdService = ref.read(deviceIdServiceProvider);
        options.headers['DeviceId'] = deviceIdService.deviceId;
        options.headers['Platform'] = deviceIdService.platform;

        if (token != null && token.isNotEmpty) {
          options.headers['Authorization'] = token;
        }

        logDebug('🚀 API Request (curl): ${_toCurl(options)}');

        handler.next(options);
      },
      onResponse: (response, handler) {
        logDebug(
          '✅ API Response: ${response.requestOptions.method.toUpperCase()} ${response.requestOptions.path}',
        );
        handler.next(response);
      },
      onError: (error, handler) {
        final normalized = normalizeApiError(error);

        logDebug('❌ API Error: ${normalized.status} ${normalized.message}');

        if (normalized.status == 401) {
          ref.read(authControllerProvider.notifier).clearSession();
        }

        handler.reject(
          DioException(
            requestOptions: error.requestOptions,
            response: error.response,
            type: error.type,
            error: normalized,
          ),
        );
      },
    ),
  );

  return dio;
});
