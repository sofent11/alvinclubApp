// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element_parameter

import 'package:json_annotation/json_annotation.dart';
import 'package:json_annotation/json_annotation.dart' as json;
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
import 'swaggerApiConfig.metadata.swagger.dart';

part 'swaggerApiConfig.swagger.chopper.dart';
part 'swaggerApiConfig.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class SwaggerApiConfig extends ChopperService {
  static SwaggerApiConfig create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    List<Interceptor>? interceptors,
  }) {
    if (client != null) {
      return _$SwaggerApiConfig(client);
    }

    final newClient = ChopperClient(
      services: [_$SwaggerApiConfig()],
      converter: converter ?? $JsonSerializableConverter(),
      interceptors: interceptors ?? [],
      client: httpClient,
      authenticator: authenticator,
      errorConverter: errorConverter,
      baseUrl: baseUrl ?? Uri.parse('http:///config-service'),
    );
    return _$SwaggerApiConfig(newClient);
  }

  ///保存用户配置
  ///@param root
  Future<chopper.Response<UserConfigPost$Response>> userConfigPost({
    Object? root,
  }) {
    generatedMapping.putIfAbsent(
      UserConfigPost$Response,
      () => UserConfigPost$Response.fromJsonFactory,
    );

    return _userConfigPost(root: root);
  }

  ///保存用户配置
  ///@param root
  @POST(path: '/user/config')
  Future<chopper.Response<UserConfigPost$Response>> _userConfigPost({
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///拉取用户配置
  ///@param key
  ///@param root
  Future<chopper.Response<UserConfigGet$Response>> userConfigGet({
    required String? key,
    Object? root,
  }) {
    generatedMapping.putIfAbsent(
      UserConfigGet$Response,
      () => UserConfigGet$Response.fromJsonFactory,
    );

    return _userConfigGet(key: key, root: root);
  }

  ///拉取用户配置
  ///@param key
  ///@param root
  @GET(path: '/user/config')
  Future<chopper.Response<UserConfigGet$Response>> _userConfigGet({
    @Query('key') required String? key,
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///拉取通用配置
  ///@param configKey
  ///@param instanceId
  ///@param root
  Future<chopper.Response<UserConfigNoAuthInstanceGet$Response>>
  userConfigNoAuthInstanceGet({
    String? configKey,
    required String? instanceId,
    Object? root,
  }) {
    generatedMapping.putIfAbsent(
      UserConfigNoAuthInstanceGet$Response,
      () => UserConfigNoAuthInstanceGet$Response.fromJsonFactory,
    );

    return _userConfigNoAuthInstanceGet(
      configKey: configKey,
      instanceId: instanceId,
      root: root,
    );
  }

  ///拉取通用配置
  ///@param configKey
  ///@param instanceId
  ///@param root
  @GET(path: '/user/config/no-auth/instance')
  Future<chopper.Response<UserConfigNoAuthInstanceGet$Response>>
  _userConfigNoAuthInstanceGet({
    @Query('configKey') String? configKey,
    @Query('instanceId') required String? instanceId,
    @Body() Object? root,
    @chopper.Tag()
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
  });
}

@JsonSerializable(explicitToJson: true)
class UserConfigPost$Response {
  const UserConfigPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory UserConfigPost$Response.fromJson(Map<String, dynamic> json) =>
      _$UserConfigPost$ResponseFromJson(json);

  static const toJsonFactory = _$UserConfigPost$ResponseToJson;
  Map<String, dynamic> toJson() => _$UserConfigPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final bool? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$UserConfigPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserConfigPost$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(
                  other.traceId,
                  traceId,
                )) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(success) ^
      runtimeType.hashCode;
}

extension $UserConfigPost$ResponseExtension on UserConfigPost$Response {
  UserConfigPost$Response copyWith({
    double? code,
    String? message,
    bool? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return UserConfigPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  UserConfigPost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<bool?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return UserConfigPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserConfigGet$Response {
  const UserConfigGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory UserConfigGet$Response.fromJson(Map<String, dynamic> json) =>
      _$UserConfigGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserConfigGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$UserConfigGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final UserConfigGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$UserConfigGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserConfigGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(
                  other.traceId,
                  traceId,
                )) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(success) ^
      runtimeType.hashCode;
}

extension $UserConfigGet$ResponseExtension on UserConfigGet$Response {
  UserConfigGet$Response copyWith({
    double? code,
    String? message,
    UserConfigGet$Response$Data? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return UserConfigGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  UserConfigGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<UserConfigGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return UserConfigGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserConfigNoAuthInstanceGet$Response {
  const UserConfigNoAuthInstanceGet$Response({
    this.code,
    this.data,
    this.message,
    this.success,
    this.traceId,
  });

  factory UserConfigNoAuthInstanceGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserConfigNoAuthInstanceGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserConfigNoAuthInstanceGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserConfigNoAuthInstanceGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'data')
  final String? data;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'traceId')
  final String? traceId;
  static const fromJsonFactory = _$UserConfigNoAuthInstanceGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserConfigNoAuthInstanceGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(
                  other.success,
                  success,
                )) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $UserConfigNoAuthInstanceGet$ResponseExtension
    on UserConfigNoAuthInstanceGet$Response {
  UserConfigNoAuthInstanceGet$Response copyWith({
    double? code,
    String? data,
    String? message,
    bool? success,
    String? traceId,
  }) {
    return UserConfigNoAuthInstanceGet$Response(
      code: code ?? this.code,
      data: data ?? this.data,
      message: message ?? this.message,
      success: success ?? this.success,
      traceId: traceId ?? this.traceId,
    );
  }

  UserConfigNoAuthInstanceGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? data,
    Wrapped<String?>? message,
    Wrapped<bool?>? success,
    Wrapped<String?>? traceId,
  }) {
    return UserConfigNoAuthInstanceGet$Response(
      code: (code != null ? code.value : this.code),
      data: (data != null ? data.value : this.data),
      message: (message != null ? message.value : this.message),
      success: (success != null ? success.value : this.success),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserConfigGet$Response$Data {
  const UserConfigGet$Response$Data({this.key, this.value});

  factory UserConfigGet$Response$Data.fromJson(Map<String, dynamic> json) =>
      _$UserConfigGet$Response$DataFromJson(json);

  static const toJsonFactory = _$UserConfigGet$Response$DataToJson;
  Map<String, dynamic> toJson() => _$UserConfigGet$Response$DataToJson(this);

  @JsonKey(name: 'key')
  final String? key;
  @JsonKey(name: 'value')
  final String? value;
  static const fromJsonFactory = _$UserConfigGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserConfigGet$Response$Data &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $UserConfigGet$Response$DataExtension on UserConfigGet$Response$Data {
  UserConfigGet$Response$Data copyWith({String? key, String? value}) {
    return UserConfigGet$Response$Data(
      key: key ?? this.key,
      value: value ?? this.value,
    );
  }

  UserConfigGet$Response$Data copyWithWrapped({
    Wrapped<String?>? key,
    Wrapped<String?>? value,
  }) {
    return UserConfigGet$Response$Data(
      key: (key != null ? key.value : this.key),
      value: (value != null ? value.value : this.value),
    );
  }
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
    chopper.Response response,
  ) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
        body:
            DateTime.parse((response.body as String).replaceAll('"', ''))
                as ResultType,
      );
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
      body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType,
    );
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
