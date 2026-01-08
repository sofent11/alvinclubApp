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
  Future<Response<UserConfigPost$Response>> _userConfigPost({
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
    final Uri $url = Uri.parse('/user/config');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<UserConfigPost$Response, UserConfigPost$Response>(
      $request,
    );
  }

  @override
  Future<Response<UserConfigGet$Response>> _userConfigGet({
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
    final Uri $url = Uri.parse('/user/config');
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
    return client.send<UserConfigGet$Response, UserConfigGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<UserConfigNoAuthInstanceGet$Response>>
  _userConfigNoAuthInstanceGet({
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
    final Uri $url = Uri.parse('/user/config/no-auth/instance');
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
      UserConfigNoAuthInstanceGet$Response,
      UserConfigNoAuthInstanceGet$Response
    >($request);
  }
}
