// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swaggerApiConfig.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfigServiceUserConfigPost$Response
_$ConfigServiceUserConfigPost$ResponseFromJson(Map<String, dynamic> json) =>
    ConfigServiceUserConfigPost$Response(
      code: JsonCoerce.asDouble(json['code']),
      message: JsonCoerce.asString(json['message']),
      data: JsonCoerce.asBool(json['data']),
      traceId: JsonCoerce.asString(json['traceId']),
      placeholder: json['placeholder'],
      success: JsonCoerce.asBool(json['success']),
    );

Map<String, dynamic> _$ConfigServiceUserConfigPost$ResponseToJson(
  ConfigServiceUserConfigPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ConfigServiceUserConfigGet$Response
_$ConfigServiceUserConfigGet$ResponseFromJson(Map<String, dynamic> json) =>
    ConfigServiceUserConfigGet$Response(
      code: JsonCoerce.asDouble(json['code']),
      message: JsonCoerce.asString(json['message']),
      data: json['data'] == null
          ? null
          : ConfigServiceUserConfigGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: JsonCoerce.asString(json['traceId']),
      placeholder: json['placeholder'],
      success: JsonCoerce.asBool(json['success']),
    );

Map<String, dynamic> _$ConfigServiceUserConfigGet$ResponseToJson(
  ConfigServiceUserConfigGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ConfigServiceUserConfigNoAuthInstanceGet$Response
_$ConfigServiceUserConfigNoAuthInstanceGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ConfigServiceUserConfigNoAuthInstanceGet$Response(
  code: JsonCoerce.asDouble(json['code']),
  data: JsonCoerce.asString(json['data']),
  message: JsonCoerce.asString(json['message']),
  success: JsonCoerce.asBool(json['success']),
  traceId: JsonCoerce.asString(json['traceId']),
);

Map<String, dynamic> _$ConfigServiceUserConfigNoAuthInstanceGet$ResponseToJson(
  ConfigServiceUserConfigNoAuthInstanceGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'data': instance.data,
  'message': instance.message,
  'success': instance.success,
  'traceId': instance.traceId,
};

ConfigServiceUserConfigGet$Response$Data
_$ConfigServiceUserConfigGet$Response$DataFromJson(Map<String, dynamic> json) =>
    ConfigServiceUserConfigGet$Response$Data(
      key: JsonCoerce.asString(json['key']),
      value: JsonCoerce.asString(json['value']),
    );

Map<String, dynamic> _$ConfigServiceUserConfigGet$Response$DataToJson(
  ConfigServiceUserConfigGet$Response$Data instance,
) => <String, dynamic>{'key': instance.key, 'value': instance.value};
