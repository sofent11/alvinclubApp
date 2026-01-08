import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/auth/auth_store.dart';
import '../../core/env/env_config.dart';
import 'generated/swaggerApiCombo.swagger.dart' as combo;
import 'generated/swaggerApiConfig.swagger.dart' as config;
import 'generated/swaggerApiOrder.swagger.dart' as order;
import 'generated/swaggerApiPay.swagger.dart' as pay;
import 'generated/swaggerApiProduct.swagger.dart' as product;
import 'generated/swaggerApiUser.swagger.dart' as user;

class ApiInterceptor implements Interceptor {
  ApiInterceptor(this._ref);

  final Ref _ref;

  @override
  Future<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) async {
    final authState = _ref.read(authControllerProvider);
    final userInfo = authState.user;

    final headers = Map<String, String>.from(chain.request.headers);
    headers['Accept-Language'] = EnvConfig.current.defaultLocale;
    headers['Referer'] = EnvConfig.current.referer;
    headers['X-VIEW-URI'] = EnvConfig.current.referer;
    headers['PortalCode'] = userInfo?.portalCode ?? 'US';
    headers['Currency'] = userInfo?.currency ?? 'USD';

    final token = authState.tokens.accessToken;
    if (token != null && token.isNotEmpty) {
      headers['Authorization'] = token;
    }

    final request = chain.request.copyWith(headers: headers);

    if (kDebugMode) {
      debugPrint('🚀 API Request (curl): ${_toCurl(request)}');
    }

    final response = await chain.proceed(request);

    if (kDebugMode) {
      debugPrint(
        '✅ API Response: ${request.method} ${request.url} ${response.statusCode}',
      );
    }

    if (response.statusCode == 401) {
      await _ref.read(authControllerProvider.notifier).clearSession();
    }

    return response;
  }
}

String _toCurl(Request request) {
  final buffer = StringBuffer('curl -X ${request.method} "${request.url}"');

  request.headers.forEach((key, value) {
    buffer.write(' -H "$key: $value"');
  });

  final body = request.body;
  if (body != null && request.method.toUpperCase() != 'GET') {
    final encoded = body is String ? body : _encodeJson(body);
    final escaped = encoded.replaceAll("'", "\\'");
    buffer.write(" -d '$escaped'");
  }

  return buffer.toString();
}

String _encodeJson(Object? body) {
  try {
    return jsonEncode(body);
  } catch (_) {
    return body.toString();
  }
}

final chopperClientProvider = Provider<ChopperClient>((ref) {
  return ChopperClient(
    baseUrl: Uri.parse(EnvConfig.current.apiBaseUrl),
    converter: user.$JsonSerializableConverter(),
    interceptors: [ApiInterceptor(ref)],
  );
});

final swaggerUserApiProvider = Provider<user.SwaggerApiUser>((ref) {
  return user.SwaggerApiUser.create(client: ref.read(chopperClientProvider));
});

final swaggerProductApiProvider = Provider<product.SwaggerApiProduct>((ref) {
  return product.SwaggerApiProduct.create(client: ref.read(chopperClientProvider));
});

final swaggerOrderApiProvider = Provider<order.SwaggerApiOrder>((ref) {
  return order.SwaggerApiOrder.create(client: ref.read(chopperClientProvider));
});

final swaggerPayApiProvider = Provider<pay.SwaggerApiPay>((ref) {
  return pay.SwaggerApiPay.create(client: ref.read(chopperClientProvider));
});

final swaggerConfigApiProvider = Provider<config.SwaggerApiConfig>((ref) {
  return config.SwaggerApiConfig.create(client: ref.read(chopperClientProvider));
});

final swaggerComboApiProvider = Provider<combo.SwaggerApiCombo>((ref) {
  return combo.SwaggerApiCombo.create(client: ref.read(chopperClientProvider));
});
