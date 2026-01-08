// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swaggerApiUser.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressUpdatePost$Response _$AddressUpdatePost$ResponseFromJson(
  Map<String, dynamic> json,
) => AddressUpdatePost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: (json['data'] as num?)?.toDouble(),
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$AddressUpdatePost$ResponseToJson(
  AddressUpdatePost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'success': instance.success,
};

AddressDeleteDelete$Response _$AddressDeleteDelete$ResponseFromJson(
  Map<String, dynamic> json,
) => AddressDeleteDelete$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: (json['data'] as num?)?.toDouble(),
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$AddressDeleteDelete$ResponseToJson(
  AddressDeleteDelete$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'success': instance.success,
};

AddressQueryGet$Response _$AddressQueryGet$ResponseFromJson(
  Map<String, dynamic> json,
) => AddressQueryGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) => AddressQueryGet$Response$Data$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$AddressQueryGet$ResponseToJson(
  AddressQueryGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

NoAuthSupportCountryGet$Response _$NoAuthSupportCountryGet$ResponseFromJson(
  Map<String, dynamic> json,
) => NoAuthSupportCountryGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data:
      (json['data'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
  placeholder: json['placeholder'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$NoAuthSupportCountryGet$ResponseToJson(
  NoAuthSupportCountryGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

AddressListGet$Response _$AddressListGet$ResponseFromJson(
  Map<String, dynamic> json,
) => AddressListGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) => AddressListGet$Response$Data$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$AddressListGet$ResponseToJson(
  AddressListGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

GetShippingAddressByCountryGet$Response
_$GetShippingAddressByCountryGet$ResponseFromJson(Map<String, dynamic> json) =>
    GetShippingAddressByCountryGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : GetShippingAddressByCountryGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      placeholder: json['placeholder'],
      traceId: json['traceId'] as String?,
    );

Map<String, dynamic> _$GetShippingAddressByCountryGet$ResponseToJson(
  GetShippingAddressByCountryGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

AddressAddPost$Response _$AddressAddPost$ResponseFromJson(
  Map<String, dynamic> json,
) => AddressAddPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: (json['data'] as num?)?.toDouble(),
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$AddressAddPost$ResponseToJson(
  AddressAddPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'success': instance.success,
};

GetDefaultShippingAddressGet$Response
_$GetDefaultShippingAddressGet$ResponseFromJson(Map<String, dynamic> json) =>
    GetDefaultShippingAddressGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : GetDefaultShippingAddressGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      placeholder: json['placeholder'],
      traceId: json['traceId'] as String?,
    );

Map<String, dynamic> _$GetDefaultShippingAddressGet$ResponseToJson(
  GetDefaultShippingAddressGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

AddressCountryGet$Response _$AddressCountryGet$ResponseFromJson(
  Map<String, dynamic> json,
) => AddressCountryGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) => AddressCountryGet$Response$Data$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  placeholder: json['placeholder'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$AddressCountryGet$ResponseToJson(
  AddressCountryGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

AddressQueryByZipCodeGet$Response _$AddressQueryByZipCodeGet$ResponseFromJson(
  Map<String, dynamic> json,
) => AddressQueryByZipCodeGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) => AddressQueryByZipCodeGet$Response$Data$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$AddressQueryByZipCodeGet$ResponseToJson(
  AddressQueryByZipCodeGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

UserInnerUpdUserLevelPost$Response _$UserInnerUpdUserLevelPost$ResponseFromJson(
  Map<String, dynamic> json,
) => UserInnerUpdUserLevelPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'],
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$UserInnerUpdUserLevelPost$ResponseToJson(
  UserInnerUpdUserLevelPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'success': instance.success,
};

SigninSwitchPortalPost$Response _$SigninSwitchPortalPost$ResponseFromJson(
  Map<String, dynamic> json,
) => SigninSwitchPortalPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : SigninSwitchPortalPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'] as String?,
  success: json['success'] as bool?,
  url: json['url'] as String?,
);

Map<String, dynamic> _$SigninSwitchPortalPost$ResponseToJson(
  SigninSwitchPortalPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
  'url': instance.url,
};

SignInInitPost$Response _$SignInInitPost$ResponseFromJson(
  Map<String, dynamic> json,
) => SignInInitPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : SignInInitPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'],
);

Map<String, dynamic> _$SignInInitPost$ResponseToJson(
  SignInInitPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
};

OtpApplyPost$Response _$OtpApplyPost$ResponseFromJson(
  Map<String, dynamic> json,
) => OtpApplyPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] as String?,
  traceId: json['traceId'],
);

Map<String, dynamic> _$OtpApplyPost$ResponseToJson(
  OtpApplyPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
};

SignInVerifyPost$Response _$SignInVerifyPost$ResponseFromJson(
  Map<String, dynamic> json,
) => SignInVerifyPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : SignInVerifyPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'] as String?,
  success: json['success'] as bool?,
  url: json['url'] as String?,
);

Map<String, dynamic> _$SignInVerifyPost$ResponseToJson(
  SignInVerifyPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
  'url': instance.url,
};

SignInCallPost$Response _$SignInCallPost$ResponseFromJson(
  Map<String, dynamic> json,
) => SignInCallPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : SignInCallPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'] as String?,
  success: json['success'] as bool?,
  url: json['url'] as String?,
);

Map<String, dynamic> _$SignInCallPost$ResponseToJson(
  SignInCallPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
  'url': instance.url,
};

NoAuthOtpVerifyPost$Response _$NoAuthOtpVerifyPost$ResponseFromJson(
  Map<String, dynamic> json,
) => NoAuthOtpVerifyPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : NoAuthOtpVerifyPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'] as String?,
  success: json['success'] as bool?,
  url: json['url'] as String?,
);

Map<String, dynamic> _$NoAuthOtpVerifyPost$ResponseToJson(
  NoAuthOtpVerifyPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
  'url': instance.url,
};

NoAuthCommonConfigDefaultSettingGet$Response
_$NoAuthCommonConfigDefaultSettingGet$ResponseFromJson(
  Map<String, dynamic> json,
) => NoAuthCommonConfigDefaultSettingGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : NoAuthCommonConfigDefaultSettingGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  placeholder: json['placeholder'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$NoAuthCommonConfigDefaultSettingGet$ResponseToJson(
  NoAuthCommonConfigDefaultSettingGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

FileImUploadPost$Response _$FileImUploadPost$ResponseFromJson(
  Map<String, dynamic> json,
) => FileImUploadPost$Response(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  data: (json['data'] as List<dynamic>)
      .map(
        (e) => FileImUploadPost$Response$Data$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$FileImUploadPost$ResponseToJson(
  FileImUploadPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.map((e) => e.toJson()).toList(),
};

FileLogoUploadPost$Response _$FileLogoUploadPost$ResponseFromJson(
  Map<String, dynamic> json,
) => FileLogoUploadPost$Response(
  code: json['code'] as String?,
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : FileLogoUploadPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$FileLogoUploadPost$ResponseToJson(
  FileLogoUploadPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
};

UserCouponCountGet$Response _$UserCouponCountGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserCouponCountGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserCouponCountGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$UserCouponCountGet$ResponseToJson(
  UserCouponCountGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

UserCouponActivityInfoGet$Response _$UserCouponActivityInfoGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserCouponActivityInfoGet$Response(
  success: json['success'] as bool?,
  data: json['data'] == null
      ? null
      : UserCouponActivityInfoGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$UserCouponActivityInfoGet$ResponseToJson(
  UserCouponActivityInfoGet$Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data?.toJson(),
};

UserCouponCode2CouponGet$Response _$UserCouponCode2CouponGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserCouponCode2CouponGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserCouponCode2CouponGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$UserCouponCode2CouponGet$ResponseToJson(
  UserCouponCode2CouponGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

UserCouponActivityInfosGet$Response
_$UserCouponActivityInfosGet$ResponseFromJson(Map<String, dynamic> json) =>
    UserCouponActivityInfosGet$Response(
      success: json['success'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map(
            (e) => UserCouponActivityInfosGet$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    );

Map<String, dynamic> _$UserCouponActivityInfosGet$ResponseToJson(
  UserCouponActivityInfosGet$Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data?.map((e) => e.toJson()).toList(),
};

UserCouponGetActivitiesGet$Response
_$UserCouponGetActivitiesGet$ResponseFromJson(Map<String, dynamic> json) =>
    UserCouponGetActivitiesGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data:
          (json['data'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          [],
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$UserCouponGetActivitiesGet$ResponseToJson(
  UserCouponGetActivitiesGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

UserCouponGetListGet$Response _$UserCouponGetListGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserCouponGetListGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) => UserCouponGetListGet$Response$Data$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$UserCouponGetListGet$ResponseToJson(
  UserCouponGetListGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

UserCouponGetUserCouponByActivityPost$Response
_$UserCouponGetUserCouponByActivityPost$ResponseFromJson(
  Map<String, dynamic> json,
) => UserCouponGetUserCouponByActivityPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] as bool?,
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$UserCouponGetUserCouponByActivityPost$ResponseToJson(
  UserCouponGetUserCouponByActivityPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

UserCouponSaveGet$Response _$UserCouponSaveGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserCouponSaveGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] as String?,
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$UserCouponSaveGet$ResponseToJson(
  UserCouponSaveGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

UserCouponNoAuthActivityInfoGet$Response
_$UserCouponNoAuthActivityInfoGet$ResponseFromJson(Map<String, dynamic> json) =>
    UserCouponNoAuthActivityInfoGet$Response(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : UserCouponNoAuthActivityInfoGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$UserCouponNoAuthActivityInfoGet$ResponseToJson(
  UserCouponNoAuthActivityInfoGet$Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data?.toJson(),
};

UserCouponGetCouponByActivityPost$Response
_$UserCouponGetCouponByActivityPost$ResponseFromJson(
  Map<String, dynamic> json,
) => UserCouponGetCouponByActivityPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) => UserCouponGetCouponByActivityPost$Response$Data$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$UserCouponGetCouponByActivityPost$ResponseToJson(
  UserCouponGetCouponByActivityPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

UserCouponGetGet$Response _$UserCouponGetGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserCouponGetGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) => UserCouponGetGet$Response$Data$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$UserCouponGetGet$ResponseToJson(
  UserCouponGetGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ImGetInfoPost$Response _$ImGetInfoPost$ResponseFromJson(
  Map<String, dynamic> json,
) => ImGetInfoPost$Response(
  data: json['data'] == null
      ? null
      : ImGetInfoPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  message: json['message'] as String?,
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$ImGetInfoPost$ResponseToJson(
  ImGetInfoPost$Response instance,
) => <String, dynamic>{
  'data': instance.data?.toJson(),
  'message': instance.message,
  'traceId': instance.traceId,
};

UserShareListGet$Response _$UserShareListGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserShareListGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) => UserShareListGet$Response$Data$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  placeholder: json['placeholder'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$UserShareListGet$ResponseToJson(
  UserShareListGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserShareRewardInfoGet$Response _$UserShareRewardInfoGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserShareRewardInfoGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserShareRewardInfoGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  placeholder: json['placeholder'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$UserShareRewardInfoGet$ResponseToJson(
  UserShareRewardInfoGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserShareSubmitPost$Response _$UserShareSubmitPost$ResponseFromJson(
  Map<String, dynamic> json,
) => UserShareSubmitPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] as String?,
  placeholder: json['placeholder'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$UserShareSubmitPost$ResponseToJson(
  UserShareSubmitPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserDeleteGet$Response _$UserDeleteGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserDeleteGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserDeleteGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  placeholder: json['placeholder'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$UserDeleteGet$ResponseToJson(
  UserDeleteGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserDeleteConfirmGet$Response _$UserDeleteConfirmGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserDeleteConfirmGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] as bool?,
  placeholder: json['placeholder'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$UserDeleteConfirmGet$ResponseToJson(
  UserDeleteConfirmGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserGetGet$Response _$UserGetGet$ResponseFromJson(Map<String, dynamic> json) =>
    UserGetGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserGetGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      placeholder: json['placeholder'],
      traceId: json['traceId'] as String?,
    );

Map<String, dynamic> _$UserGetGet$ResponseToJson(
  UserGetGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserUserCommissionGet$Response _$UserUserCommissionGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserUserCommissionGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserUserCommissionGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  placeholder: json['placeholder'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$UserUserCommissionGet$ResponseToJson(
  UserUserCommissionGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserConfigureSettingGet$Response _$UserConfigureSettingGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserConfigureSettingGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserConfigureSettingGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  placeholder: json['placeholder'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$UserConfigureSettingGet$ResponseToJson(
  UserConfigureSettingGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserInviteCountGet$Response _$UserInviteCountGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserInviteCountGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: (json['data'] as num?)?.toInt(),
  placeholder: json['placeholder'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$UserInviteCountGet$ResponseToJson(
  UserInviteCountGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserInviteNumGet$Response _$UserInviteNumGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserInviteNumGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserInviteNumGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  placeholder: json['placeholder'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$UserInviteNumGet$ResponseToJson(
  UserInviteNumGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserShareUpdatePost$Response _$UserShareUpdatePost$ResponseFromJson(
  Map<String, dynamic> json,
) => UserShareUpdatePost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] as String?,
  placeholder: json['placeholder'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$UserShareUpdatePost$ResponseToJson(
  UserShareUpdatePost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserUserRewardGet$Response _$UserUserRewardGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserUserRewardGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] as bool?,
  placeholder: json['placeholder'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$UserUserRewardGet$ResponseToJson(
  UserUserRewardGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserTagPortraitAiToPortraitPost$Response
_$UserTagPortraitAiToPortraitPost$ResponseFromJson(Map<String, dynamic> json) =>
    UserTagPortraitAiToPortraitPost$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserTagPortraitAiToPortraitPost$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$UserTagPortraitAiToPortraitPost$ResponseToJson(
  UserTagPortraitAiToPortraitPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'success': instance.success,
};

UserTagPortraitAiToPortraitV2Post$Response
_$UserTagPortraitAiToPortraitV2Post$ResponseFromJson(
  Map<String, dynamic> json,
) => UserTagPortraitAiToPortraitV2Post$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserTagPortraitAiToPortraitV2Post$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$UserTagPortraitAiToPortraitV2Post$ResponseToJson(
  UserTagPortraitAiToPortraitV2Post$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'success': instance.success,
};

UserTagPortraitUpdatePortraitPost$Response
_$UserTagPortraitUpdatePortraitPost$ResponseFromJson(
  Map<String, dynamic> json,
) => UserTagPortraitUpdatePortraitPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] as bool?,
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$UserTagPortraitUpdatePortraitPost$ResponseToJson(
  UserTagPortraitUpdatePortraitPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'success': instance.success,
};

UserTagPortraitGetPortraitGet$Response
_$UserTagPortraitGetPortraitGet$ResponseFromJson(Map<String, dynamic> json) =>
    UserTagPortraitGetPortraitGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserTagPortraitGetPortraitGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$UserTagPortraitGetPortraitGet$ResponseToJson(
  UserTagPortraitGetPortraitGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'success': instance.success,
};

UserCouponAppHomeActivityPost$Response
_$UserCouponAppHomeActivityPost$ResponseFromJson(Map<String, dynamic> json) =>
    UserCouponAppHomeActivityPost$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map(
            (e) => UserCouponAppHomeActivityPost$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$UserCouponAppHomeActivityPost$ResponseToJson(
  UserCouponAppHomeActivityPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

AddressQueryGet$Response$Data$Item _$AddressQueryGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => AddressQueryGet$Response$Data$Item(
  apartment: json['apartment'] as String?,
  street: json['street'] as String?,
  city: json['city'] as String?,
  cityCode: json['cityCode'] as String?,
  state: json['state'] as String?,
  stateCode: json['stateCode'] as String?,
  country: json['country'] as String?,
  countryCode: json['countryCode'] as String?,
  address: json['address'] as String?,
  zipCode: json['zipCode'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
);

Map<String, dynamic> _$AddressQueryGet$Response$Data$ItemToJson(
  AddressQueryGet$Response$Data$Item instance,
) => <String, dynamic>{
  'apartment': instance.apartment,
  'street': instance.street,
  'city': instance.city,
  'cityCode': instance.cityCode,
  'state': instance.state,
  'stateCode': instance.stateCode,
  'country': instance.country,
  'countryCode': instance.countryCode,
  'address': instance.address,
  'zipCode': instance.zipCode,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};

AddressListGet$Response$Data$Item _$AddressListGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => AddressListGet$Response$Data$Item(
  id: (json['id'] as num).toDouble(),
  tenantCode: json['tenantCode'] as String,
  userId: json['userId'] as String,
  isDefault: (json['isDefault'] as num).toDouble(),
  country: json['country'] as String,
  countryCode: json['countryCode'] as String,
  state: json['state'] as String,
  stateCode: json['stateCode'] as String,
  city: json['city'] as String,
  cityCode: json['cityCode'] as String,
  street: json['street'] as String,
  apartment: json['apartment'] as String?,
  address: json['address'] as String,
  coordinate: json['coordinate'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  phoneNumber: json['phoneNumber'] as String,
  zipCode: json['zipCode'] as String,
  deleted: (json['deleted'] as num).toDouble(),
  isDelivered: (json['isDelivered'] as num).toDouble(),
  gmtCreate: json['gmtCreate'] as String,
  gmtUpdate: json['gmtUpdate'] as String,
  tin: json['tin'] as String?,
);

Map<String, dynamic> _$AddressListGet$Response$Data$ItemToJson(
  AddressListGet$Response$Data$Item instance,
) => <String, dynamic>{
  'id': instance.id,
  'tenantCode': instance.tenantCode,
  'userId': instance.userId,
  'isDefault': instance.isDefault,
  'country': instance.country,
  'countryCode': instance.countryCode,
  'state': instance.state,
  'stateCode': instance.stateCode,
  'city': instance.city,
  'cityCode': instance.cityCode,
  'street': instance.street,
  'apartment': instance.apartment,
  'address': instance.address,
  'coordinate': instance.coordinate,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
  'zipCode': instance.zipCode,
  'deleted': instance.deleted,
  'isDelivered': instance.isDelivered,
  'gmtCreate': instance.gmtCreate,
  'gmtUpdate': instance.gmtUpdate,
  'tin': instance.tin,
};

GetShippingAddressByCountryGet$Response$Data
_$GetShippingAddressByCountryGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => GetShippingAddressByCountryGet$Response$Data(
  id: json['id'] as String,
  isDefault: json['isDefault'] as bool,
  country: json['country'] as String,
  countryCode: json['countryCode'] as String,
  state: json['state'] as String,
  stateCode: json['stateCode'] as String,
  simpleStateCode: json['simpleStateCode'] as String,
  city: json['city'] as String?,
  cityCode: json['cityCode'] as String,
  apartment: json['apartment'] as String?,
  address: json['address'] as String,
  coordinate: json['coordinate'] as String?,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  phoneNumber: json['phoneNumber'] as String,
);

Map<String, dynamic> _$GetShippingAddressByCountryGet$Response$DataToJson(
  GetShippingAddressByCountryGet$Response$Data instance,
) => <String, dynamic>{
  'id': instance.id,
  'isDefault': instance.isDefault,
  'country': instance.country,
  'countryCode': instance.countryCode,
  'state': instance.state,
  'stateCode': instance.stateCode,
  'simpleStateCode': instance.simpleStateCode,
  'city': instance.city,
  'cityCode': instance.cityCode,
  'apartment': instance.apartment,
  'address': instance.address,
  'coordinate': instance.coordinate,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
};

GetDefaultShippingAddressGet$Response$Data
_$GetDefaultShippingAddressGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => GetDefaultShippingAddressGet$Response$Data(
  id: json['id'] as String,
  isDefault: json['isDefault'] as bool,
  country: json['country'] as String,
  countryCode: json['countryCode'] as String,
  state: json['state'] as String,
  stateCode: json['stateCode'] as String,
  simpleStateCode: json['simpleStateCode'] as String,
  city: json['city'] as String?,
  cityCode: json['cityCode'] as String,
  apartment: json['apartment'] as String?,
  address: json['address'] as String,
  coordinate: json['coordinate'] as String?,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  phoneNumber: json['phoneNumber'] as String,
  street: json['street'] as String,
  zipCode: json['zipCode'] as String,
  email: json['email'] as String,
);

Map<String, dynamic> _$GetDefaultShippingAddressGet$Response$DataToJson(
  GetDefaultShippingAddressGet$Response$Data instance,
) => <String, dynamic>{
  'id': instance.id,
  'isDefault': instance.isDefault,
  'country': instance.country,
  'countryCode': instance.countryCode,
  'state': instance.state,
  'stateCode': instance.stateCode,
  'simpleStateCode': instance.simpleStateCode,
  'city': instance.city,
  'cityCode': instance.cityCode,
  'apartment': instance.apartment,
  'address': instance.address,
  'coordinate': instance.coordinate,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'phoneNumber': instance.phoneNumber,
  'street': instance.street,
  'zipCode': instance.zipCode,
  'email': instance.email,
};

AddressCountryGet$Response$Data$Item
_$AddressCountryGet$Response$Data$ItemFromJson(Map<String, dynamic> json) =>
    AddressCountryGet$Response$Data$Item(
      areaCode: json['areaCode'] as String,
      icon: json['icon'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$AddressCountryGet$Response$Data$ItemToJson(
  AddressCountryGet$Response$Data$Item instance,
) => <String, dynamic>{
  'areaCode': instance.areaCode,
  'icon': instance.icon,
  'name': instance.name,
};

AddressQueryByZipCodeGet$Response$Data$Item
_$AddressQueryByZipCodeGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => AddressQueryByZipCodeGet$Response$Data$Item(
  apartment: json['apartment'] as Object,
  street: json['street'] as String,
  city: json['city'] as String,
  cityCode: json['cityCode'] as String,
  state: json['state'] as String,
  stateCode: json['stateCode'] as String,
  country: json['country'] as String,
  countryCode: json['countryCode'] as String,
  address: json['address'] as Object,
  zipCode: json['zipCode'] as String,
  latitude: json['latitude'] as Object,
  longitude: json['longitude'] as Object,
);

Map<String, dynamic> _$AddressQueryByZipCodeGet$Response$Data$ItemToJson(
  AddressQueryByZipCodeGet$Response$Data$Item instance,
) => <String, dynamic>{
  'apartment': instance.apartment,
  'street': instance.street,
  'city': instance.city,
  'cityCode': instance.cityCode,
  'state': instance.state,
  'stateCode': instance.stateCode,
  'country': instance.country,
  'countryCode': instance.countryCode,
  'address': instance.address,
  'zipCode': instance.zipCode,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};

SigninSwitchPortalPost$Response$Data
_$SigninSwitchPortalPost$Response$DataFromJson(Map<String, dynamic> json) =>
    SigninSwitchPortalPost$Response$Data(
      tenantCode: json['tenantCode'] as String?,
      userId: json['userId'] as String?,
      nickname: json['nickname'] as String?,
      email: json['email'] as String?,
      photo: json['photo'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      signUpType: json['signUpType'] as String?,
      signUpName: json['signUpName'] as String?,
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      expiresIn: (json['expiresIn'] as num?)?.toDouble(),
      tokenType: json['tokenType'] as String?,
      authWay: json['authWay'] as String?,
      remainTimes: json['remainTimes'] as String?,
      lockTime: json['lockTime'] as String?,
      loginStatus: (json['loginStatus'] as num?)?.toDouble(),
      timestamp: (json['timestamp'] as num?)?.toDouble(),
      success: json['success'] as bool?,
      portalCode: json['portalCode'] as String?,
      source: json['source'] as String?,
      newUser: json['newUser'] as bool?,
      compliance: json['compliance'] as String?,
      finalSuccess: (json['finalSuccess'] as num?)?.toDouble(),
      message: json['message'] as String?,
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$SigninSwitchPortalPost$Response$DataToJson(
  SigninSwitchPortalPost$Response$Data instance,
) => <String, dynamic>{
  'tenantCode': instance.tenantCode,
  'userId': instance.userId,
  'nickname': instance.nickname,
  'email': instance.email,
  'photo': instance.photo,
  'phoneNumber': instance.phoneNumber,
  'signUpType': instance.signUpType,
  'signUpName': instance.signUpName,
  'accessToken': instance.accessToken,
  'refreshToken': instance.refreshToken,
  'expiresIn': instance.expiresIn,
  'tokenType': instance.tokenType,
  'authWay': instance.authWay,
  'remainTimes': instance.remainTimes,
  'lockTime': instance.lockTime,
  'loginStatus': instance.loginStatus,
  'timestamp': instance.timestamp,
  'success': instance.success,
  'portalCode': instance.portalCode,
  'source': instance.source,
  'newUser': instance.newUser,
  'compliance': instance.compliance,
  'finalSuccess': instance.finalSuccess,
  'message': instance.message,
  'currency': instance.currency,
};

SignInInitPost$Response$Data _$SignInInitPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => SignInInitPost$Response$Data(
  authWay: json['authWay'] as String,
  code: json['code'] as String,
  jumpUrl: json['jumpUrl'] as String,
);

Map<String, dynamic> _$SignInInitPost$Response$DataToJson(
  SignInInitPost$Response$Data instance,
) => <String, dynamic>{
  'authWay': instance.authWay,
  'code': instance.code,
  'jumpUrl': instance.jumpUrl,
};

SignInVerifyPost$Response$Data _$SignInVerifyPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => SignInVerifyPost$Response$Data(
  tenantCode: json['tenantCode'] as String?,
  userId: json['userId'] as String?,
  nickname: json['nickname'] as String?,
  email: json['email'] as String?,
  photo: json['photo'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  signUpType: json['signUpType'] as String?,
  signUpName: json['signUpName'] as String?,
  accessToken: json['accessToken'] as String?,
  refreshToken: json['refreshToken'] as String?,
  expiresIn: (json['expiresIn'] as num?)?.toDouble(),
  tokenType: json['tokenType'] as String?,
  authWay: json['authWay'] as String?,
  remainTimes: json['remainTimes'] as String?,
  lockTime: json['lockTime'] as String?,
  loginStatus: (json['loginStatus'] as num?)?.toDouble(),
  timestamp: (json['timestamp'] as num?)?.toDouble(),
  success: json['success'] as bool?,
  portalCode: json['portalCode'] as String?,
  source: json['source'] as String?,
  newUser: json['newUser'] as bool?,
  compliance: json['compliance'] as String?,
  finalSuccess: (json['finalSuccess'] as num?)?.toDouble(),
  message: json['message'] as String?,
  currency: json['currency'] as String?,
);

Map<String, dynamic> _$SignInVerifyPost$Response$DataToJson(
  SignInVerifyPost$Response$Data instance,
) => <String, dynamic>{
  'tenantCode': instance.tenantCode,
  'userId': instance.userId,
  'nickname': instance.nickname,
  'email': instance.email,
  'photo': instance.photo,
  'phoneNumber': instance.phoneNumber,
  'signUpType': instance.signUpType,
  'signUpName': instance.signUpName,
  'accessToken': instance.accessToken,
  'refreshToken': instance.refreshToken,
  'expiresIn': instance.expiresIn,
  'tokenType': instance.tokenType,
  'authWay': instance.authWay,
  'remainTimes': instance.remainTimes,
  'lockTime': instance.lockTime,
  'loginStatus': instance.loginStatus,
  'timestamp': instance.timestamp,
  'success': instance.success,
  'portalCode': instance.portalCode,
  'source': instance.source,
  'newUser': instance.newUser,
  'compliance': instance.compliance,
  'finalSuccess': instance.finalSuccess,
  'message': instance.message,
  'currency': instance.currency,
};

SignInCallPost$Response$Data _$SignInCallPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => SignInCallPost$Response$Data(
  tenantCode: json['tenantCode'] as String?,
  userId: json['userId'] as String?,
  nickname: json['nickname'] as String?,
  email: json['email'] as String?,
  photo: json['photo'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  signUpType: json['signUpType'] as String?,
  signUpName: json['signUpName'] as String?,
  accessToken: json['accessToken'] as String?,
  refreshToken: json['refreshToken'] as String?,
  expiresIn: (json['expiresIn'] as num?)?.toDouble(),
  tokenType: json['tokenType'] as String?,
  authWay: json['authWay'] as String?,
  remainTimes: json['remainTimes'] as String?,
  lockTime: json['lockTime'] as String?,
  loginStatus: (json['loginStatus'] as num?)?.toDouble(),
  timestamp: (json['timestamp'] as num?)?.toDouble(),
  success: json['success'] as bool?,
  portalCode: json['portalCode'] as String?,
  source: json['source'] as String?,
  newUser: json['newUser'] as bool?,
  compliance: json['compliance'] as String?,
  finalSuccess: (json['finalSuccess'] as num?)?.toDouble(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$SignInCallPost$Response$DataToJson(
  SignInCallPost$Response$Data instance,
) => <String, dynamic>{
  'tenantCode': instance.tenantCode,
  'userId': instance.userId,
  'nickname': instance.nickname,
  'email': instance.email,
  'photo': instance.photo,
  'phoneNumber': instance.phoneNumber,
  'signUpType': instance.signUpType,
  'signUpName': instance.signUpName,
  'accessToken': instance.accessToken,
  'refreshToken': instance.refreshToken,
  'expiresIn': instance.expiresIn,
  'tokenType': instance.tokenType,
  'authWay': instance.authWay,
  'remainTimes': instance.remainTimes,
  'lockTime': instance.lockTime,
  'loginStatus': instance.loginStatus,
  'timestamp': instance.timestamp,
  'success': instance.success,
  'portalCode': instance.portalCode,
  'source': instance.source,
  'newUser': instance.newUser,
  'compliance': instance.compliance,
  'finalSuccess': instance.finalSuccess,
  'message': instance.message,
};

NoAuthOtpVerifyPost$Response$Data _$NoAuthOtpVerifyPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => NoAuthOtpVerifyPost$Response$Data(
  tenantCode: json['tenantCode'] as String?,
  userId: json['userId'] as String?,
  nickname: json['nickname'] as String?,
  email: json['email'] as String?,
  photo: json['photo'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  signUpType: json['signUpType'] as String?,
  signUpName: json['signUpName'] as String?,
  accessToken: json['accessToken'] as String?,
  refreshToken: json['refreshToken'] as String?,
  expiresIn: (json['expiresIn'] as num?)?.toDouble(),
  tokenType: json['tokenType'] as String?,
  authWay: json['authWay'] as String?,
  remainTimes: json['remainTimes'] as String?,
  lockTime: json['lockTime'] as String?,
  loginStatus: (json['loginStatus'] as num?)?.toDouble(),
  timestamp: (json['timestamp'] as num?)?.toDouble(),
  success: json['success'] as bool?,
  portalCode: json['portalCode'] as String?,
  source: json['source'] as String?,
  newUser: json['newUser'] as bool?,
  compliance: json['compliance'] as String?,
  finalSuccess: (json['finalSuccess'] as num?)?.toDouble(),
  message: json['message'] as String?,
  currency: json['currency'] as String?,
);

Map<String, dynamic> _$NoAuthOtpVerifyPost$Response$DataToJson(
  NoAuthOtpVerifyPost$Response$Data instance,
) => <String, dynamic>{
  'tenantCode': instance.tenantCode,
  'userId': instance.userId,
  'nickname': instance.nickname,
  'email': instance.email,
  'photo': instance.photo,
  'phoneNumber': instance.phoneNumber,
  'signUpType': instance.signUpType,
  'signUpName': instance.signUpName,
  'accessToken': instance.accessToken,
  'refreshToken': instance.refreshToken,
  'expiresIn': instance.expiresIn,
  'tokenType': instance.tokenType,
  'authWay': instance.authWay,
  'remainTimes': instance.remainTimes,
  'lockTime': instance.lockTime,
  'loginStatus': instance.loginStatus,
  'timestamp': instance.timestamp,
  'success': instance.success,
  'portalCode': instance.portalCode,
  'source': instance.source,
  'newUser': instance.newUser,
  'compliance': instance.compliance,
  'finalSuccess': instance.finalSuccess,
  'message': instance.message,
  'currency': instance.currency,
};

NoAuthCommonConfigDefaultSettingGet$Response$Data
_$NoAuthCommonConfigDefaultSettingGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => NoAuthCommonConfigDefaultSettingGet$Response$Data(
  countryCode: json['countryCode'] as String?,
  lang: json['lang'] as String?,
  currency: json['currency'] as String?,
);

Map<String, dynamic> _$NoAuthCommonConfigDefaultSettingGet$Response$DataToJson(
  NoAuthCommonConfigDefaultSettingGet$Response$Data instance,
) => <String, dynamic>{
  'countryCode': instance.countryCode,
  'lang': instance.lang,
  'currency': instance.currency,
};

FileImUploadPost$Response$Data$Item
_$FileImUploadPost$Response$Data$ItemFromJson(Map<String, dynamic> json) =>
    FileImUploadPost$Response$Data$Item(
      url: json['url'] as String,
      fileId: json['fileId'] as String,
    );

Map<String, dynamic> _$FileImUploadPost$Response$Data$ItemToJson(
  FileImUploadPost$Response$Data$Item instance,
) => <String, dynamic>{'url': instance.url, 'fileId': instance.fileId};

FileLogoUploadPost$Response$Data _$FileLogoUploadPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => FileLogoUploadPost$Response$Data(
  url: json['url'] as String?,
  fileId: json['fileId'] as String?,
);

Map<String, dynamic> _$FileLogoUploadPost$Response$DataToJson(
  FileLogoUploadPost$Response$Data instance,
) => <String, dynamic>{'url': instance.url, 'fileId': instance.fileId};

UserCouponCountGet$Response$Data _$UserCouponCountGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserCouponCountGet$Response$Data(
  total: json['total'] as String?,
  unUsed: json['unUsed'] as String?,
  locked: json['locked'] as String?,
  used: json['used'] as String?,
  invalid: json['invalid'] as String?,
);

Map<String, dynamic> _$UserCouponCountGet$Response$DataToJson(
  UserCouponCountGet$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'unUsed': instance.unUsed,
  'locked': instance.locked,
  'used': instance.used,
  'invalid': instance.invalid,
};

UserCouponActivityInfoGet$Response$Data
_$UserCouponActivityInfoGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserCouponActivityInfoGet$Response$Data(
  couponList: (json['couponList'] as List<dynamic>?)
      ?.map(
        (e) => UserCouponActivityInfoGet$Response$Data$CouponList$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  received: json['received'] as bool?,
);

Map<String, dynamic> _$UserCouponActivityInfoGet$Response$DataToJson(
  UserCouponActivityInfoGet$Response$Data instance,
) => <String, dynamic>{
  'couponList': instance.couponList?.map((e) => e.toJson()).toList(),
  'received': instance.received,
};

UserCouponCode2CouponGet$Response$Data
_$UserCouponCode2CouponGet$Response$DataFromJson(Map<String, dynamic> json) =>
    UserCouponCode2CouponGet$Response$Data(
      userId: json['userId'] as String?,
      tenantCode: json['tenantCode'] as String?,
      couponCode: json['couponCode'] as String?,
      couponTitle: json['couponTitle'] as String?,
      isUsed: (json['isUsed'] as num?)?.toDouble(),
      gmtInvalid: json['gmtInvalid'] as String?,
      type: (json['type'] as num?)?.toDouble(),
      discount: json['discount'] as String?,
      limitAmount: json['limitAmount'] as String?,
      currency: json['currency'] as String?,
      discountTarget: json['discountTarget'] as String?,
      limitAmountTarget: json['limitAmountTarget'] as String?,
      currencyTarget: json['currencyTarget'] as String?,
      couponImage: json['couponImage'] as String?,
    );

Map<String, dynamic> _$UserCouponCode2CouponGet$Response$DataToJson(
  UserCouponCode2CouponGet$Response$Data instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'tenantCode': instance.tenantCode,
  'couponCode': instance.couponCode,
  'couponTitle': instance.couponTitle,
  'isUsed': instance.isUsed,
  'gmtInvalid': instance.gmtInvalid,
  'type': instance.type,
  'discount': instance.discount,
  'limitAmount': instance.limitAmount,
  'currency': instance.currency,
  'discountTarget': instance.discountTarget,
  'limitAmountTarget': instance.limitAmountTarget,
  'currencyTarget': instance.currencyTarget,
  'couponImage': instance.couponImage,
};

UserCouponActivityInfosGet$Response$Data$Item
_$UserCouponActivityInfosGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => UserCouponActivityInfosGet$Response$Data$Item(
  sourceCode: json['sourceCode'] as String?,
  received: json['received'] as bool?,
  couponList: (json['couponList'] as List<dynamic>?)
      ?.map(
        (e) =>
            UserCouponActivityInfosGet$Response$Data$Item$CouponList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$UserCouponActivityInfosGet$Response$Data$ItemToJson(
  UserCouponActivityInfosGet$Response$Data$Item instance,
) => <String, dynamic>{
  'sourceCode': instance.sourceCode,
  'received': instance.received,
  'couponList': instance.couponList?.map((e) => e.toJson()).toList(),
};

UserCouponGetListGet$Response$Data$Item
_$UserCouponGetListGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => UserCouponGetListGet$Response$Data$Item(
  sourceCode: json['sourceCode'] as String?,
  userCouponDtos: (json['userCouponDtos'] as List<dynamic>?)
      ?.map(
        (e) =>
            UserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$UserCouponGetListGet$Response$Data$ItemToJson(
  UserCouponGetListGet$Response$Data$Item instance,
) => <String, dynamic>{
  'sourceCode': instance.sourceCode,
  'userCouponDtos': instance.userCouponDtos?.map((e) => e.toJson()).toList(),
};

UserCouponNoAuthActivityInfoGet$Response$Data
_$UserCouponNoAuthActivityInfoGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserCouponNoAuthActivityInfoGet$Response$Data(
  couponList: (json['couponList'] as List<dynamic>?)
      ?.map(
        (e) =>
            UserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  received: json['received'] as bool?,
);

Map<String, dynamic> _$UserCouponNoAuthActivityInfoGet$Response$DataToJson(
  UserCouponNoAuthActivityInfoGet$Response$Data instance,
) => <String, dynamic>{
  'couponList': instance.couponList?.map((e) => e.toJson()).toList(),
  'received': instance.received,
};

UserCouponGetCouponByActivityPost$Response$Data$Item
_$UserCouponGetCouponByActivityPost$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => UserCouponGetCouponByActivityPost$Response$Data$Item(
  userId: json['userId'] as String?,
  tenantCode: json['tenantCode'] as String?,
  couponCode: json['couponCode'] as String?,
  couponTitle: json['couponTitle'] as String?,
  isUsed: (json['isUsed'] as num?)?.toDouble(),
  gmtInvalid: json['gmtInvalid'] as String?,
  type: (json['type'] as num?)?.toDouble(),
  discount: json['discount'] as String?,
  limitAmount: json['limitAmount'] as String?,
  currency: json['currency'] as String?,
  discountTarget: json['discountTarget'] as String?,
  limitAmountTarget: json['limitAmountTarget'] as String?,
  currencyTarget: json['currencyTarget'] as String?,
  couponImage: json['couponImage'] as String?,
);

Map<String, dynamic>
_$UserCouponGetCouponByActivityPost$Response$Data$ItemToJson(
  UserCouponGetCouponByActivityPost$Response$Data$Item instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'tenantCode': instance.tenantCode,
  'couponCode': instance.couponCode,
  'couponTitle': instance.couponTitle,
  'isUsed': instance.isUsed,
  'gmtInvalid': instance.gmtInvalid,
  'type': instance.type,
  'discount': instance.discount,
  'limitAmount': instance.limitAmount,
  'currency': instance.currency,
  'discountTarget': instance.discountTarget,
  'limitAmountTarget': instance.limitAmountTarget,
  'currencyTarget': instance.currencyTarget,
  'couponImage': instance.couponImage,
};

UserCouponGetGet$Response$Data$Item
_$UserCouponGetGet$Response$Data$ItemFromJson(Map<String, dynamic> json) =>
    UserCouponGetGet$Response$Data$Item(
      userId: json['userId'] as String,
      tenantCode: json['tenantCode'] as String,
      couponCode: json['couponCode'] as String,
      couponTitle: json['couponTitle'] as String?,
      isUsed: (json['isUsed'] as num?)?.toDouble(),
      gmtInvalid: json['gmtInvalid'] as String?,
      type: (json['type'] as num?)?.toDouble(),
      discount: json['discount'] as String?,
      limitAmount: json['limitAmount'] as String?,
      currency: json['currency'] as String?,
      discountTarget: json['discountTarget'] as String?,
      limitAmountTarget: json['limitAmountTarget'] as String?,
      currencyTarget: json['currencyTarget'] as String?,
      couponImage: json['couponImage'] as String?,
      couponStatus: json['couponStatus'] as String,
      msgInfo: json['msgInfo'] == null
          ? null
          : UserCouponGetGet$Response$Data$Item$MsgInfo.fromJson(
              json['msgInfo'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$UserCouponGetGet$Response$Data$ItemToJson(
  UserCouponGetGet$Response$Data$Item instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'tenantCode': instance.tenantCode,
  'couponCode': instance.couponCode,
  'couponTitle': instance.couponTitle,
  'isUsed': instance.isUsed,
  'gmtInvalid': instance.gmtInvalid,
  'type': instance.type,
  'discount': instance.discount,
  'limitAmount': instance.limitAmount,
  'currency': instance.currency,
  'discountTarget': instance.discountTarget,
  'limitAmountTarget': instance.limitAmountTarget,
  'currencyTarget': instance.currencyTarget,
  'couponImage': instance.couponImage,
  'couponStatus': instance.couponStatus,
  'msgInfo': instance.msgInfo?.toJson(),
};

ImGetInfoPost$Response$Data _$ImGetInfoPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => ImGetInfoPost$Response$Data(
  api: json['api'] as String,
  longConnectApi: json['longConnectApi'] as String,
  wsApi: json['wsApi'] as String,
  longConnectKeep: json['longConnectKeep'] as bool,
  whiteList: (json['whiteList'] as List<dynamic>)
      .map(
        (e) => ImGetInfoPost$Response$Data$WhiteList$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  uid: json['uid'] as String,
  appId: json['app_id'] as String?,
  name: json['name'] as String?,
  username: json['username'] as String?,
  sex: (json['sex'] as num?)?.toDouble(),
  category: json['category'] as String?,
  shortNo: json['short_no'] as String?,
  zone: json['zone'] as String?,
  phone: json['phone'] as String?,
  token: json['token'] as String,
  chatPwd: json['chat_pwd'] as String?,
  lockScreenPwd: json['lock_screen_pwd'] as String?,
  lockAfterMinute: (json['lock_after_minute'] as num?)?.toDouble(),
  setting: json['setting'] == null
      ? null
      : ImGetInfoPost$Response$Data$Setting.fromJson(
          json['setting'] as Map<String, dynamic>,
        ),
  rsaPublicKey: json['rsa_public_key'] as String?,
  shortStatus: (json['short_status'] as num?)?.toDouble(),
  msgExpireSecond: (json['msg_expire_second'] as num?)?.toDouble(),
  showStatus: (json['showStatus'] as num).toDouble(),
);

Map<String, dynamic> _$ImGetInfoPost$Response$DataToJson(
  ImGetInfoPost$Response$Data instance,
) => <String, dynamic>{
  'api': instance.api,
  'longConnectApi': instance.longConnectApi,
  'wsApi': instance.wsApi,
  'longConnectKeep': instance.longConnectKeep,
  'whiteList': instance.whiteList.map((e) => e.toJson()).toList(),
  'uid': instance.uid,
  'app_id': instance.appId,
  'name': instance.name,
  'username': instance.username,
  'sex': instance.sex,
  'category': instance.category,
  'short_no': instance.shortNo,
  'zone': instance.zone,
  'phone': instance.phone,
  'token': instance.token,
  'chat_pwd': instance.chatPwd,
  'lock_screen_pwd': instance.lockScreenPwd,
  'lock_after_minute': instance.lockAfterMinute,
  'setting': instance.setting?.toJson(),
  'rsa_public_key': instance.rsaPublicKey,
  'short_status': instance.shortStatus,
  'msg_expire_second': instance.msgExpireSecond,
  'showStatus': instance.showStatus,
};

UserShareListGet$Response$Data$Item
_$UserShareListGet$Response$Data$ItemFromJson(Map<String, dynamic> json) =>
    UserShareListGet$Response$Data$Item(
      rewardId: json['rewardId'] as String?,
      tenantCode: json['tenantCode'] as String?,
      userId: json['userId'] as String?,
      content: json['content'] as String?,
      auditStatus: (json['auditStatus'] as num?)?.toInt(),
      auditTime: json['auditTime'] as String?,
      rewardAmount: (json['rewardAmount'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
      rewardType: (json['rewardType'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserShareListGet$Response$Data$ItemToJson(
  UserShareListGet$Response$Data$Item instance,
) => <String, dynamic>{
  'rewardId': instance.rewardId,
  'tenantCode': instance.tenantCode,
  'userId': instance.userId,
  'content': instance.content,
  'auditStatus': instance.auditStatus,
  'auditTime': instance.auditTime,
  'rewardAmount': instance.rewardAmount,
  'currency': instance.currency,
  'rewardType': instance.rewardType,
};

UserShareRewardInfoGet$Response$Data
_$UserShareRewardInfoGet$Response$DataFromJson(Map<String, dynamic> json) =>
    UserShareRewardInfoGet$Response$Data(
      rewardId: json['rewardId'] as String?,
      tenantCode: json['tenantCode'] as String?,
      userId: json['userId'] as String?,
      content: json['content'] as String?,
      auditStatus: (json['auditStatus'] as num?)?.toInt(),
      auditTime: json['auditTime'] as String?,
      rewardAmount: (json['rewardAmount'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
      rewardType: (json['rewardType'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserShareRewardInfoGet$Response$DataToJson(
  UserShareRewardInfoGet$Response$Data instance,
) => <String, dynamic>{
  'rewardId': instance.rewardId,
  'tenantCode': instance.tenantCode,
  'userId': instance.userId,
  'content': instance.content,
  'auditStatus': instance.auditStatus,
  'auditTime': instance.auditTime,
  'rewardAmount': instance.rewardAmount,
  'currency': instance.currency,
  'rewardType': instance.rewardType,
};

UserDeleteGet$Response$Data _$UserDeleteGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserDeleteGet$Response$Data(authWay: json['authWay'] as String?);

Map<String, dynamic> _$UserDeleteGet$Response$DataToJson(
  UserDeleteGet$Response$Data instance,
) => <String, dynamic>{'authWay': instance.authWay};

UserGetGet$Response$Data _$UserGetGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserGetGet$Response$Data(
  userId: json['userId'] as String?,
  nickname: json['nickname'] as String?,
  description: json['description'] as String?,
  gender: (json['gender'] as num?)?.toDouble(),
  birthday: json['birthday'] as String?,
  photo: json['photo'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  email: json['email'] as String?,
  signUpType: (json['signUpType'] as num?)?.toDouble(),
  platform: json['platform'] as String?,
  createTime: json['createTime'] as String?,
  inviteCode: json['inviteCode'] as String?,
  inviteCount: json['inviteCount'] as String?,
  portalCode: json['portalCode'] as String?,
  currency: json['currency'] as String?,
  thirdAccount: json['thirdAccount'] as String?,
  imUid: json['imUid'] as String?,
  imUsername: json['imUsername'] as String?,
);

Map<String, dynamic> _$UserGetGet$Response$DataToJson(
  UserGetGet$Response$Data instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'nickname': instance.nickname,
  'description': instance.description,
  'gender': instance.gender,
  'birthday': instance.birthday,
  'photo': instance.photo,
  'phoneNumber': instance.phoneNumber,
  'email': instance.email,
  'signUpType': instance.signUpType,
  'platform': instance.platform,
  'createTime': instance.createTime,
  'inviteCode': instance.inviteCode,
  'inviteCount': instance.inviteCount,
  'portalCode': instance.portalCode,
  'currency': instance.currency,
  'thirdAccount': instance.thirdAccount,
  'imUid': instance.imUid,
  'imUsername': instance.imUsername,
};

UserUserCommissionGet$Response$Data
_$UserUserCommissionGet$Response$DataFromJson(Map<String, dynamic> json) =>
    UserUserCommissionGet$Response$Data(
      currentUserLevel: (json['currentUserLevel'] as num?)?.toInt(),
      nextUserLevel: (json['nextUserLevel'] as num?)?.toInt(),
      nextUserLevelPoints: (json['nextUserLevelPoints'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserUserCommissionGet$Response$DataToJson(
  UserUserCommissionGet$Response$Data instance,
) => <String, dynamic>{
  'currentUserLevel': instance.currentUserLevel,
  'nextUserLevel': instance.nextUserLevel,
  'nextUserLevelPoints': instance.nextUserLevelPoints,
};

UserConfigureSettingGet$Response$Data
_$UserConfigureSettingGet$Response$DataFromJson(Map<String, dynamic> json) =>
    UserConfigureSettingGet$Response$Data(
      showGiveawayGift: (json['showGiveawayGift'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserConfigureSettingGet$Response$DataToJson(
  UserConfigureSettingGet$Response$Data instance,
) => <String, dynamic>{'showGiveawayGift': instance.showGiveawayGift};

UserInviteNumGet$Response$Data _$UserInviteNumGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserInviteNumGet$Response$Data(
  inviteTotalNum: (json['inviteTotalNum'] as num?)?.toDouble(),
  inviteNum: (json['inviteNum'] as num?)?.toDouble(),
  subInviteNum: (json['subInviteNum'] as num?)?.toDouble(),
);

Map<String, dynamic> _$UserInviteNumGet$Response$DataToJson(
  UserInviteNumGet$Response$Data instance,
) => <String, dynamic>{
  'inviteTotalNum': instance.inviteTotalNum,
  'inviteNum': instance.inviteNum,
  'subInviteNum': instance.subInviteNum,
};

UserTagPortraitAiToPortraitPost$Response$Data
_$UserTagPortraitAiToPortraitPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserTagPortraitAiToPortraitPost$Response$Data(
  age: (json['age'] as num?)?.toDouble(),
  sex: (json['sex'] as num?)?.toDouble(),
  birthday: (json['birthday'] as num?)?.toDouble(),
  nickname: json['nickname'] as String?,
  favoriteShoppingPlatforms:
      (json['favoriteShoppingPlatforms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  favoriteBrands: json['favoriteBrands'] as String?,
);

Map<String, dynamic> _$UserTagPortraitAiToPortraitPost$Response$DataToJson(
  UserTagPortraitAiToPortraitPost$Response$Data instance,
) => <String, dynamic>{
  'age': instance.age,
  'sex': instance.sex,
  'birthday': instance.birthday,
  'nickname': instance.nickname,
  'favoriteShoppingPlatforms': instance.favoriteShoppingPlatforms,
  'favoriteBrands': instance.favoriteBrands,
};

UserTagPortraitAiToPortraitV2Post$Response$Data
_$UserTagPortraitAiToPortraitV2Post$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserTagPortraitAiToPortraitV2Post$Response$Data(
  age: (json['age'] as num?)?.toDouble(),
  sex: (json['sex'] as num?)?.toDouble(),
  birthday: (json['birthday'] as num?)?.toDouble(),
  nickname: json['nickname'] as String?,
  favoriteShoppingPlatforms:
      (json['favoriteShoppingPlatforms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  favoriteBrands: json['favoriteBrands'] as String?,
);

Map<String, dynamic> _$UserTagPortraitAiToPortraitV2Post$Response$DataToJson(
  UserTagPortraitAiToPortraitV2Post$Response$Data instance,
) => <String, dynamic>{
  'age': instance.age,
  'sex': instance.sex,
  'birthday': instance.birthday,
  'nickname': instance.nickname,
  'favoriteShoppingPlatforms': instance.favoriteShoppingPlatforms,
  'favoriteBrands': instance.favoriteBrands,
};

UserTagPortraitGetPortraitGet$Response$Data
_$UserTagPortraitGetPortraitGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserTagPortraitGetPortraitGet$Response$Data(
  age: (json['age'] as num?)?.toDouble(),
  sex: (json['sex'] as num?)?.toDouble(),
  birthday: (json['birthday'] as num?)?.toDouble(),
  nickname: json['nickname'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
  favoriteShoppingPlatforms:
      (json['favoriteShoppingPlatforms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  favoriteBrands: json['favoriteBrands'] as String?,
);

Map<String, dynamic> _$UserTagPortraitGetPortraitGet$Response$DataToJson(
  UserTagPortraitGetPortraitGet$Response$Data instance,
) => <String, dynamic>{
  'age': instance.age,
  'sex': instance.sex,
  'birthday': instance.birthday,
  'nickname': instance.nickname,
  'avatarUrl': instance.avatarUrl,
  'favoriteShoppingPlatforms': instance.favoriteShoppingPlatforms,
  'favoriteBrands': instance.favoriteBrands,
};

UserCouponAppHomeActivityPost$Response$Data$Item
_$UserCouponAppHomeActivityPost$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => UserCouponAppHomeActivityPost$Response$Data$Item(
  userId: json['userId'] as String?,
  tenantCode: json['tenantCode'] as String?,
  couponCode: json['couponCode'] as String?,
  couponTitle: json['couponTitle'] as String?,
  isUsed: (json['isUsed'] as num?)?.toDouble(),
  gmtInvalid: json['gmtInvalid'] as String?,
  type: (json['type'] as num?)?.toDouble(),
  discount: json['discount'] as String?,
  limitAmount: json['limitAmount'] as String?,
  currency: json['currency'] as String?,
  discountTarget: json['discountTarget'] as String?,
  limitAmountTarget: json['limitAmountTarget'] as String?,
  currencyTarget: json['currencyTarget'] as String?,
  couponImage: json['couponImage'] as String?,
  msgInfo: json['msgInfo'] == null
      ? null
      : UserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo.fromJson(
          json['msgInfo'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$UserCouponAppHomeActivityPost$Response$Data$ItemToJson(
  UserCouponAppHomeActivityPost$Response$Data$Item instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'tenantCode': instance.tenantCode,
  'couponCode': instance.couponCode,
  'couponTitle': instance.couponTitle,
  'isUsed': instance.isUsed,
  'gmtInvalid': instance.gmtInvalid,
  'type': instance.type,
  'discount': instance.discount,
  'limitAmount': instance.limitAmount,
  'currency': instance.currency,
  'discountTarget': instance.discountTarget,
  'limitAmountTarget': instance.limitAmountTarget,
  'currencyTarget': instance.currencyTarget,
  'couponImage': instance.couponImage,
  'msgInfo': instance.msgInfo?.toJson(),
};

UserCouponActivityInfoGet$Response$Data$CouponList$Item
_$UserCouponActivityInfoGet$Response$Data$CouponList$ItemFromJson(
  Map<String, dynamic> json,
) => UserCouponActivityInfoGet$Response$Data$CouponList$Item(
  currencySymbol: json['currencySymbol'] as String,
  discountType: (json['discountType'] as num).toDouble(),
  discountInfo: (json['discountInfo'] as num).toDouble(),
  limitAmount: (json['limitAmount'] as num).toDouble(),
  invalidPeriod: (json['invalidPeriod'] as num?)?.toDouble(),
  userCouponCode: json['userCouponCode'] as String?,
);

Map<String, dynamic>
_$UserCouponActivityInfoGet$Response$Data$CouponList$ItemToJson(
  UserCouponActivityInfoGet$Response$Data$CouponList$Item instance,
) => <String, dynamic>{
  'currencySymbol': instance.currencySymbol,
  'discountType': instance.discountType,
  'discountInfo': instance.discountInfo,
  'limitAmount': instance.limitAmount,
  'invalidPeriod': instance.invalidPeriod,
  'userCouponCode': instance.userCouponCode,
};

UserCouponActivityInfosGet$Response$Data$Item$CouponList$Item
_$UserCouponActivityInfosGet$Response$Data$Item$CouponList$ItemFromJson(
  Map<String, dynamic> json,
) => UserCouponActivityInfosGet$Response$Data$Item$CouponList$Item(
  couponCode: json['couponCode'] as String?,
  invalidPeriod: (json['invalidPeriod'] as num?)?.toDouble(),
  currencySymbol: json['currencySymbol'] as String?,
  discountType: (json['discountType'] as num?)?.toInt(),
  discountInfo: (json['discountInfo'] as num?)?.toDouble(),
  limitAmount: (json['limitAmount'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$UserCouponActivityInfosGet$Response$Data$Item$CouponList$ItemToJson(
  UserCouponActivityInfosGet$Response$Data$Item$CouponList$Item instance,
) => <String, dynamic>{
  'couponCode': instance.couponCode,
  'invalidPeriod': instance.invalidPeriod,
  'currencySymbol': instance.currencySymbol,
  'discountType': instance.discountType,
  'discountInfo': instance.discountInfo,
  'limitAmount': instance.limitAmount,
};

UserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item
_$UserCouponGetListGet$Response$Data$Item$UserCouponDtos$ItemFromJson(
  Map<String, dynamic> json,
) => UserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item(
  userId: json['userId'] as String?,
  tenantCode: json['tenantCode'] as String?,
  couponCode: json['couponCode'] as String?,
  couponTitle: json['couponTitle'] as String?,
  isUsed: (json['isUsed'] as num?)?.toDouble(),
  gmtInvalid: json['gmtInvalid'] as String?,
  type: (json['type'] as num?)?.toDouble(),
  discount: json['discount'] as String?,
  limitAmount: json['limitAmount'] as String?,
  currency: json['currency'] as String?,
  discountTarget: json['discountTarget'] as String?,
  limitAmountTarget: json['limitAmountTarget'] as String?,
  currencyTarget: json['currencyTarget'] as String?,
  couponImage: json['couponImage'] as String?,
  invalidPeriod: (json['invalidPeriod'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$UserCouponGetListGet$Response$Data$Item$UserCouponDtos$ItemToJson(
  UserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'tenantCode': instance.tenantCode,
  'couponCode': instance.couponCode,
  'couponTitle': instance.couponTitle,
  'isUsed': instance.isUsed,
  'gmtInvalid': instance.gmtInvalid,
  'type': instance.type,
  'discount': instance.discount,
  'limitAmount': instance.limitAmount,
  'currency': instance.currency,
  'discountTarget': instance.discountTarget,
  'limitAmountTarget': instance.limitAmountTarget,
  'currencyTarget': instance.currencyTarget,
  'couponImage': instance.couponImage,
  'invalidPeriod': instance.invalidPeriod,
};

UserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item
_$UserCouponNoAuthActivityInfoGet$Response$Data$CouponList$ItemFromJson(
  Map<String, dynamic> json,
) => UserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item(
  currencySymbol: json['currencySymbol'] as String,
  discountType: (json['discountType'] as num).toDouble(),
  discountInfo: (json['discountInfo'] as num).toDouble(),
  limitAmount: (json['limitAmount'] as num).toDouble(),
);

Map<String, dynamic>
_$UserCouponNoAuthActivityInfoGet$Response$Data$CouponList$ItemToJson(
  UserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item instance,
) => <String, dynamic>{
  'currencySymbol': instance.currencySymbol,
  'discountType': instance.discountType,
  'discountInfo': instance.discountInfo,
  'limitAmount': instance.limitAmount,
};

UserCouponGetGet$Response$Data$Item$MsgInfo
_$UserCouponGetGet$Response$Data$Item$MsgInfoFromJson(
  Map<String, dynamic> json,
) => UserCouponGetGet$Response$Data$Item$MsgInfo(
  name: json['name'] as String?,
  limit: json['limit'] as String?,
  usage: json['usage'] as String?,
  discountStr: json['discountStr'] as String,
  discountUnit: json['discountUnit'] as String,
);

Map<String, dynamic> _$UserCouponGetGet$Response$Data$Item$MsgInfoToJson(
  UserCouponGetGet$Response$Data$Item$MsgInfo instance,
) => <String, dynamic>{
  'name': instance.name,
  'limit': instance.limit,
  'usage': instance.usage,
  'discountStr': instance.discountStr,
  'discountUnit': instance.discountUnit,
};

ImGetInfoPost$Response$Data$WhiteList$Item
_$ImGetInfoPost$Response$Data$WhiteList$ItemFromJson(
  Map<String, dynamic> json,
) => ImGetInfoPost$Response$Data$WhiteList$Item(
  channelId: json['channelId'] as String,
  channelType: json['channelType'] as String,
);

Map<String, dynamic> _$ImGetInfoPost$Response$Data$WhiteList$ItemToJson(
  ImGetInfoPost$Response$Data$WhiteList$Item instance,
) => <String, dynamic>{
  'channelId': instance.channelId,
  'channelType': instance.channelType,
};

ImGetInfoPost$Response$Data$Setting
_$ImGetInfoPost$Response$Data$SettingFromJson(Map<String, dynamic> json) =>
    ImGetInfoPost$Response$Data$Setting(
      searchByPhone: (json['search_by_phone'] as num?)?.toDouble(),
      searchByShort: (json['search_by_short'] as num?)?.toDouble(),
      newMsgNotice: (json['new_msg_notice'] as num?)?.toDouble(),
      msgShowDetail: (json['msg_show_detail'] as num?)?.toDouble(),
      voiceOn: (json['voice_on'] as num?)?.toDouble(),
      shockOn: (json['shock_on'] as num?)?.toDouble(),
      offlineProtection: (json['offline_protection'] as num?)?.toDouble(),
      deviceLock: (json['device_lock'] as num?)?.toDouble(),
      muteOfApp: (json['mute_of_app'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ImGetInfoPost$Response$Data$SettingToJson(
  ImGetInfoPost$Response$Data$Setting instance,
) => <String, dynamic>{
  'search_by_phone': instance.searchByPhone,
  'search_by_short': instance.searchByShort,
  'new_msg_notice': instance.newMsgNotice,
  'msg_show_detail': instance.msgShowDetail,
  'voice_on': instance.voiceOn,
  'shock_on': instance.shockOn,
  'offline_protection': instance.offlineProtection,
  'device_lock': instance.deviceLock,
  'mute_of_app': instance.muteOfApp,
};

UserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo
_$UserCouponAppHomeActivityPost$Response$Data$Item$MsgInfoFromJson(
  Map<String, dynamic> json,
) => UserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo(
  name: json['name'] as String?,
  usage: json['usage'] as String?,
);

Map<String, dynamic>
_$UserCouponAppHomeActivityPost$Response$Data$Item$MsgInfoToJson(
  UserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo instance,
) => <String, dynamic>{'name': instance.name, 'usage': instance.usage};
