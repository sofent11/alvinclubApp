// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swaggerApiConfig.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfigServiceUserConfigPost$Response
_$ConfigServiceUserConfigPost$ResponseFromJson(Map<String, dynamic> json) =>
    ConfigServiceUserConfigPost$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] as bool?,
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'],
      success: json['success'] as bool?,
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
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ConfigServiceUserConfigGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'],
      success: json['success'] as bool?,
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
  code: (json['code'] as num?)?.toDouble(),
  data: json['data'] as String?,
  message: json['message'] as String?,
  success: json['success'] as bool?,
  traceId: json['traceId'] as String?,
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
      key: json['key'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$ConfigServiceUserConfigGet$Response$DataToJson(
  ConfigServiceUserConfigGet$Response$Data instance,
) => <String, dynamic>{'key': instance.key, 'value': instance.value};
