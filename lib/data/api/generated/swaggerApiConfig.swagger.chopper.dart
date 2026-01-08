// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'swaggerApiConfig.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$SwaggerApiConfig extends SwaggerApiConfig {
  _$SwaggerApiConfig([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = SwaggerApiConfig;

  @override
  Future<Response<ConfigServiceUserConfigPost$Response>>
  _configServiceUserConfigPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '保存用户配置',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/config-service/user/config');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      ConfigServiceUserConfigPost$Response,
      ConfigServiceUserConfigPost$Response
    >($request);
  }

  @override
  Future<Response<ConfigServiceUserConfigGet$Response>>
  _configServiceUserConfigGet({
    required String? key,
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '拉取用户配置',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/config-service/user/config');
    final Map<String, dynamic> $params = <String, dynamic>{'key': key};
    final $body = root;
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      ConfigServiceUserConfigGet$Response,
      ConfigServiceUserConfigGet$Response
    >($request);
  }

  @override
  Future<Response<ConfigServiceUserConfigNoAuthInstanceGet$Response>>
  _configServiceUserConfigNoAuthInstanceGet({
    String? configKey,
    required String? instanceId,
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '拉取通用配置',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["公共分类"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/config-service/user/config/no-auth/instance');
    final Map<String, dynamic> $params = <String, dynamic>{
      'configKey': configKey,
      'instanceId': instanceId,
    };
    final $body = root;
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      ConfigServiceUserConfigNoAuthInstanceGet$Response,
      ConfigServiceUserConfigNoAuthInstanceGet$Response
    >($request);
  }
}
