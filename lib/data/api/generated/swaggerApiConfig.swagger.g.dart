// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swaggerApiConfig.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserConfigPost$Response _$UserConfigPost$ResponseFromJson(
  Map<String, dynamic> json,
) => UserConfigPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] as bool?,
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$UserConfigPost$ResponseToJson(
  UserConfigPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

UserConfigGet$Response _$UserConfigGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserConfigGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserConfigGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$UserConfigGet$ResponseToJson(
  UserConfigGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

UserConfigNoAuthInstanceGet$Response
_$UserConfigNoAuthInstanceGet$ResponseFromJson(Map<String, dynamic> json) =>
    UserConfigNoAuthInstanceGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      data: json['data'] as String?,
      message: json['message'] as String?,
      success: json['success'] as bool?,
      traceId: json['traceId'] as String?,
    );

Map<String, dynamic> _$UserConfigNoAuthInstanceGet$ResponseToJson(
  UserConfigNoAuthInstanceGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'data': instance.data,
  'message': instance.message,
  'success': instance.success,
  'traceId': instance.traceId,
};

UserConfigGet$Response$Data _$UserConfigGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserConfigGet$Response$Data(
  key: json['key'] as String?,
  value: json['value'] as String?,
);

Map<String, dynamic> _$UserConfigGet$Response$DataToJson(
  UserConfigGet$Response$Data instance,
) => <String, dynamic>{'key': instance.key, 'value': instance.value};
