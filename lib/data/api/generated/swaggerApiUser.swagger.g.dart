// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swaggerApiUser.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserServiceAddressUpdatePost$Response
_$UserServiceAddressUpdatePost$ResponseFromJson(Map<String, dynamic> json) =>
    UserServiceAddressUpdatePost$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: (json['data'] as num?)?.toDouble(),
      traceId: json['traceId'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$UserServiceAddressUpdatePost$ResponseToJson(
  UserServiceAddressUpdatePost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'success': instance.success,
};

UserServiceAddressDeleteDelete$Response
_$UserServiceAddressDeleteDelete$ResponseFromJson(Map<String, dynamic> json) =>
    UserServiceAddressDeleteDelete$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: (json['data'] as num?)?.toDouble(),
      traceId: json['traceId'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$UserServiceAddressDeleteDelete$ResponseToJson(
  UserServiceAddressDeleteDelete$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'success': instance.success,
};

UserServiceAddressQueryGet$Response
_$UserServiceAddressQueryGet$ResponseFromJson(Map<String, dynamic> json) =>
    UserServiceAddressQueryGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map(
            (e) => UserServiceAddressQueryGet$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$UserServiceAddressQueryGet$ResponseToJson(
  UserServiceAddressQueryGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

UserServiceNoAuthSupportCountryGet$Response
_$UserServiceNoAuthSupportCountryGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceNoAuthSupportCountryGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data:
      (json['data'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
  placeholder: json['placeholder'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$UserServiceNoAuthSupportCountryGet$ResponseToJson(
  UserServiceNoAuthSupportCountryGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserServiceAddressListGet$Response _$UserServiceAddressListGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceAddressListGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) => UserServiceAddressListGet$Response$Data$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$UserServiceAddressListGet$ResponseToJson(
  UserServiceAddressListGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

UserServiceGetShippingAddressByCountryGet$Response
_$UserServiceGetShippingAddressByCountryGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceGetShippingAddressByCountryGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserServiceGetShippingAddressByCountryGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  placeholder: json['placeholder'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$UserServiceGetShippingAddressByCountryGet$ResponseToJson(
  UserServiceGetShippingAddressByCountryGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserServiceAddressAddPost$Response _$UserServiceAddressAddPost$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceAddressAddPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: (json['data'] as num?)?.toDouble(),
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$UserServiceAddressAddPost$ResponseToJson(
  UserServiceAddressAddPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'success': instance.success,
};

UserServiceGetDefaultShippingAddressGet$Response
_$UserServiceGetDefaultShippingAddressGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceGetDefaultShippingAddressGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserServiceGetDefaultShippingAddressGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  placeholder: json['placeholder'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$UserServiceGetDefaultShippingAddressGet$ResponseToJson(
  UserServiceGetDefaultShippingAddressGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserServiceAddressCountryGet$Response
_$UserServiceAddressCountryGet$ResponseFromJson(Map<String, dynamic> json) =>
    UserServiceAddressCountryGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map(
            (e) => UserServiceAddressCountryGet$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      placeholder: json['placeholder'],
      traceId: json['traceId'] as String?,
    );

Map<String, dynamic> _$UserServiceAddressCountryGet$ResponseToJson(
  UserServiceAddressCountryGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserServiceAddressQueryByZipCodeGet$Response
_$UserServiceAddressQueryByZipCodeGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceAddressQueryByZipCodeGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) => UserServiceAddressQueryByZipCodeGet$Response$Data$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$UserServiceAddressQueryByZipCodeGet$ResponseToJson(
  UserServiceAddressQueryByZipCodeGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

UserServiceUserInnerUpdUserLevelPost$Response
_$UserServiceUserInnerUpdUserLevelPost$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceUserInnerUpdUserLevelPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'],
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$UserServiceUserInnerUpdUserLevelPost$ResponseToJson(
  UserServiceUserInnerUpdUserLevelPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'success': instance.success,
};

UserServiceSigninSwitchPortalPost$Response
_$UserServiceSigninSwitchPortalPost$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceSigninSwitchPortalPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserServiceSigninSwitchPortalPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'] as String?,
  success: json['success'] as bool?,
  url: json['url'] as String?,
);

Map<String, dynamic> _$UserServiceSigninSwitchPortalPost$ResponseToJson(
  UserServiceSigninSwitchPortalPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
  'url': instance.url,
};

UserServiceSignInInitPost$Response _$UserServiceSignInInitPost$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceSignInInitPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserServiceSignInInitPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'],
);

Map<String, dynamic> _$UserServiceSignInInitPost$ResponseToJson(
  UserServiceSignInInitPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
};

UserServiceOtpApplyPost$Response _$UserServiceOtpApplyPost$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceOtpApplyPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] as String?,
  traceId: json['traceId'],
);

Map<String, dynamic> _$UserServiceOtpApplyPost$ResponseToJson(
  UserServiceOtpApplyPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
};

UserServiceSignInVerifyPost$Response
_$UserServiceSignInVerifyPost$ResponseFromJson(Map<String, dynamic> json) =>
    UserServiceSignInVerifyPost$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserServiceSignInVerifyPost$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'] as String?,
      success: json['success'] as bool?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$UserServiceSignInVerifyPost$ResponseToJson(
  UserServiceSignInVerifyPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
  'url': instance.url,
};

UserServiceSignInCallPost$Response _$UserServiceSignInCallPost$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceSignInCallPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserServiceSignInCallPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'] as String?,
  success: json['success'] as bool?,
  url: json['url'] as String?,
);

Map<String, dynamic> _$UserServiceSignInCallPost$ResponseToJson(
  UserServiceSignInCallPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
  'url': instance.url,
};

UserServiceNoAuthOtpVerifyPost$Response
_$UserServiceNoAuthOtpVerifyPost$ResponseFromJson(Map<String, dynamic> json) =>
    UserServiceNoAuthOtpVerifyPost$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserServiceNoAuthOtpVerifyPost$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'] as String?,
      success: json['success'] as bool?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$UserServiceNoAuthOtpVerifyPost$ResponseToJson(
  UserServiceNoAuthOtpVerifyPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
  'url': instance.url,
};

UserServiceNoAuthCommonConfigDefaultSettingGet$Response
_$UserServiceNoAuthCommonConfigDefaultSettingGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceNoAuthCommonConfigDefaultSettingGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserServiceNoAuthCommonConfigDefaultSettingGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  placeholder: json['placeholder'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic>
_$UserServiceNoAuthCommonConfigDefaultSettingGet$ResponseToJson(
  UserServiceNoAuthCommonConfigDefaultSettingGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserServiceFileImUploadPost$Response
_$UserServiceFileImUploadPost$ResponseFromJson(Map<String, dynamic> json) =>
    UserServiceFileImUploadPost$Response(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map(
            (e) => UserServiceFileImUploadPost$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    );

Map<String, dynamic> _$UserServiceFileImUploadPost$ResponseToJson(
  UserServiceFileImUploadPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
};

UserServiceFileLogoUploadPost$Response
_$UserServiceFileLogoUploadPost$ResponseFromJson(Map<String, dynamic> json) =>
    UserServiceFileLogoUploadPost$Response(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserServiceFileLogoUploadPost$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$UserServiceFileLogoUploadPost$ResponseToJson(
  UserServiceFileLogoUploadPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
};

UserServiceUserCouponCountGet$Response
_$UserServiceUserCouponCountGet$ResponseFromJson(Map<String, dynamic> json) =>
    UserServiceUserCouponCountGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserServiceUserCouponCountGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$UserServiceUserCouponCountGet$ResponseToJson(
  UserServiceUserCouponCountGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

UserServiceUserCouponActivityInfoGet$Response
_$UserServiceUserCouponActivityInfoGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceUserCouponActivityInfoGet$Response(
  success: json['success'] as bool?,
  data: json['data'] == null
      ? null
      : UserServiceUserCouponActivityInfoGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$UserServiceUserCouponActivityInfoGet$ResponseToJson(
  UserServiceUserCouponActivityInfoGet$Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data?.toJson(),
};

UserServiceUserCouponCode2CouponGet$Response
_$UserServiceUserCouponCode2CouponGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceUserCouponCode2CouponGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserServiceUserCouponCode2CouponGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$UserServiceUserCouponCode2CouponGet$ResponseToJson(
  UserServiceUserCouponCode2CouponGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

UserServiceUserCouponActivityInfosGet$Response
_$UserServiceUserCouponActivityInfosGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceUserCouponActivityInfosGet$Response(
  success: json['success'] as bool?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) =>
            UserServiceUserCouponActivityInfosGet$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$UserServiceUserCouponActivityInfosGet$ResponseToJson(
  UserServiceUserCouponActivityInfosGet$Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data?.map((e) => e.toJson()).toList(),
};

UserServiceUserCouponGetActivitiesGet$Response
_$UserServiceUserCouponGetActivitiesGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceUserCouponGetActivitiesGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data:
      (json['data'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$UserServiceUserCouponGetActivitiesGet$ResponseToJson(
  UserServiceUserCouponGetActivitiesGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

UserServiceUserCouponGetListGet$Response
_$UserServiceUserCouponGetListGet$ResponseFromJson(Map<String, dynamic> json) =>
    UserServiceUserCouponGetListGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map(
            (e) => UserServiceUserCouponGetListGet$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$UserServiceUserCouponGetListGet$ResponseToJson(
  UserServiceUserCouponGetListGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

UserServiceUserCouponGetUserCouponByActivityPost$Response
_$UserServiceUserCouponGetUserCouponByActivityPost$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceUserCouponGetUserCouponByActivityPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] as bool?,
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic>
_$UserServiceUserCouponGetUserCouponByActivityPost$ResponseToJson(
  UserServiceUserCouponGetUserCouponByActivityPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

UserServiceUserCouponSaveGet$Response
_$UserServiceUserCouponSaveGet$ResponseFromJson(Map<String, dynamic> json) =>
    UserServiceUserCouponSaveGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] as String?,
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$UserServiceUserCouponSaveGet$ResponseToJson(
  UserServiceUserCouponSaveGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

UserServiceUserCouponNoAuthActivityInfoGet$Response
_$UserServiceUserCouponNoAuthActivityInfoGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceUserCouponNoAuthActivityInfoGet$Response(
  success: json['success'] as bool?,
  data: json['data'] == null
      ? null
      : UserServiceUserCouponNoAuthActivityInfoGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$UserServiceUserCouponNoAuthActivityInfoGet$ResponseToJson(
  UserServiceUserCouponNoAuthActivityInfoGet$Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data?.toJson(),
};

UserServiceUserCouponGetCouponByActivityPost$Response
_$UserServiceUserCouponGetCouponByActivityPost$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceUserCouponGetCouponByActivityPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) =>
            UserServiceUserCouponGetCouponByActivityPost$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic>
_$UserServiceUserCouponGetCouponByActivityPost$ResponseToJson(
  UserServiceUserCouponGetCouponByActivityPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

UserServiceUserCouponGetGet$Response
_$UserServiceUserCouponGetGet$ResponseFromJson(Map<String, dynamic> json) =>
    UserServiceUserCouponGetGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map(
            (e) => UserServiceUserCouponGetGet$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$UserServiceUserCouponGetGet$ResponseToJson(
  UserServiceUserCouponGetGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

UserServiceImGetInfoPost$Response _$UserServiceImGetInfoPost$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceImGetInfoPost$Response(
  data: json['data'] == null
      ? null
      : UserServiceImGetInfoPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  message: json['message'] as String?,
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$UserServiceImGetInfoPost$ResponseToJson(
  UserServiceImGetInfoPost$Response instance,
) => <String, dynamic>{
  'data': instance.data?.toJson(),
  'message': instance.message,
  'traceId': instance.traceId,
};

UserServiceUserShareListGet$Response
_$UserServiceUserShareListGet$ResponseFromJson(Map<String, dynamic> json) =>
    UserServiceUserShareListGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map(
            (e) => UserServiceUserShareListGet$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      placeholder: json['placeholder'],
      traceId: json['traceId'] as String?,
    );

Map<String, dynamic> _$UserServiceUserShareListGet$ResponseToJson(
  UserServiceUserShareListGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserServiceUserShareRewardInfoGet$Response
_$UserServiceUserShareRewardInfoGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceUserShareRewardInfoGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserServiceUserShareRewardInfoGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  placeholder: json['placeholder'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$UserServiceUserShareRewardInfoGet$ResponseToJson(
  UserServiceUserShareRewardInfoGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserServiceUserShareSubmitPost$Response
_$UserServiceUserShareSubmitPost$ResponseFromJson(Map<String, dynamic> json) =>
    UserServiceUserShareSubmitPost$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] as String?,
      placeholder: json['placeholder'],
      traceId: json['traceId'] as String?,
    );

Map<String, dynamic> _$UserServiceUserShareSubmitPost$ResponseToJson(
  UserServiceUserShareSubmitPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserServiceUserDeleteGet$Response _$UserServiceUserDeleteGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceUserDeleteGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserServiceUserDeleteGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  placeholder: json['placeholder'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$UserServiceUserDeleteGet$ResponseToJson(
  UserServiceUserDeleteGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserServiceUserDeleteConfirmGet$Response
_$UserServiceUserDeleteConfirmGet$ResponseFromJson(Map<String, dynamic> json) =>
    UserServiceUserDeleteConfirmGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] as bool?,
      placeholder: json['placeholder'],
      traceId: json['traceId'] as String?,
    );

Map<String, dynamic> _$UserServiceUserDeleteConfirmGet$ResponseToJson(
  UserServiceUserDeleteConfirmGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserServiceUserGetGet$Response _$UserServiceUserGetGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceUserGetGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserServiceUserGetGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  placeholder: json['placeholder'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$UserServiceUserGetGet$ResponseToJson(
  UserServiceUserGetGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserServiceUserUserCommissionGet$Response
_$UserServiceUserUserCommissionGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceUserUserCommissionGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserServiceUserUserCommissionGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  placeholder: json['placeholder'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$UserServiceUserUserCommissionGet$ResponseToJson(
  UserServiceUserUserCommissionGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserServiceUserConfigureSettingGet$Response
_$UserServiceUserConfigureSettingGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceUserConfigureSettingGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserServiceUserConfigureSettingGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  placeholder: json['placeholder'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$UserServiceUserConfigureSettingGet$ResponseToJson(
  UserServiceUserConfigureSettingGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserServiceUserInviteCountGet$Response
_$UserServiceUserInviteCountGet$ResponseFromJson(Map<String, dynamic> json) =>
    UserServiceUserInviteCountGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: (json['data'] as num?)?.toInt(),
      placeholder: json['placeholder'],
      traceId: json['traceId'] as String?,
    );

Map<String, dynamic> _$UserServiceUserInviteCountGet$ResponseToJson(
  UserServiceUserInviteCountGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserServiceUserInviteNumGet$Response
_$UserServiceUserInviteNumGet$ResponseFromJson(Map<String, dynamic> json) =>
    UserServiceUserInviteNumGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserServiceUserInviteNumGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      placeholder: json['placeholder'],
      traceId: json['traceId'] as String?,
    );

Map<String, dynamic> _$UserServiceUserInviteNumGet$ResponseToJson(
  UserServiceUserInviteNumGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserServiceUserShareUpdatePost$Response
_$UserServiceUserShareUpdatePost$ResponseFromJson(Map<String, dynamic> json) =>
    UserServiceUserShareUpdatePost$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] as String?,
      placeholder: json['placeholder'],
      traceId: json['traceId'] as String?,
    );

Map<String, dynamic> _$UserServiceUserShareUpdatePost$ResponseToJson(
  UserServiceUserShareUpdatePost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserServiceUserUserRewardGet$Response
_$UserServiceUserUserRewardGet$ResponseFromJson(Map<String, dynamic> json) =>
    UserServiceUserUserRewardGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] as bool?,
      placeholder: json['placeholder'],
      traceId: json['traceId'] as String?,
    );

Map<String, dynamic> _$UserServiceUserUserRewardGet$ResponseToJson(
  UserServiceUserUserRewardGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'placeholder': instance.placeholder,
  'traceId': instance.traceId,
};

UserServiceUserTagPortraitAiToPortraitPost$Response
_$UserServiceUserTagPortraitAiToPortraitPost$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceUserTagPortraitAiToPortraitPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserServiceUserTagPortraitAiToPortraitPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic>
_$UserServiceUserTagPortraitAiToPortraitPost$ResponseToJson(
  UserServiceUserTagPortraitAiToPortraitPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'success': instance.success,
};

UserServiceUserTagPortraitAiToPortraitV2Post$Response
_$UserServiceUserTagPortraitAiToPortraitV2Post$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceUserTagPortraitAiToPortraitV2Post$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserServiceUserTagPortraitAiToPortraitV2Post$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic>
_$UserServiceUserTagPortraitAiToPortraitV2Post$ResponseToJson(
  UserServiceUserTagPortraitAiToPortraitV2Post$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'success': instance.success,
};

UserServiceUserTagPortraitUpdatePortraitPost$Response
_$UserServiceUserTagPortraitUpdatePortraitPost$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceUserTagPortraitUpdatePortraitPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] as bool?,
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic>
_$UserServiceUserTagPortraitUpdatePortraitPost$ResponseToJson(
  UserServiceUserTagPortraitUpdatePortraitPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'success': instance.success,
};

UserServiceUserTagPortraitGetPortraitGet$Response
_$UserServiceUserTagPortraitGetPortraitGet$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceUserTagPortraitGetPortraitGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserServiceUserTagPortraitGetPortraitGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$UserServiceUserTagPortraitGetPortraitGet$ResponseToJson(
  UserServiceUserTagPortraitGetPortraitGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'success': instance.success,
};

UserServiceUserCouponAppHomeActivityPost$Response
_$UserServiceUserCouponAppHomeActivityPost$ResponseFromJson(
  Map<String, dynamic> json,
) => UserServiceUserCouponAppHomeActivityPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) =>
            UserServiceUserCouponAppHomeActivityPost$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$UserServiceUserCouponAppHomeActivityPost$ResponseToJson(
  UserServiceUserCouponAppHomeActivityPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

UserServiceAddressQueryGet$Response$Data$Item
_$UserServiceAddressQueryGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => UserServiceAddressQueryGet$Response$Data$Item(
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

Map<String, dynamic> _$UserServiceAddressQueryGet$Response$Data$ItemToJson(
  UserServiceAddressQueryGet$Response$Data$Item instance,
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

UserServiceAddressListGet$Response$Data$Item
_$UserServiceAddressListGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => UserServiceAddressListGet$Response$Data$Item(
  id: (json['id'] as num?)?.toDouble(),
  tenantCode: json['tenantCode'] as String?,
  userId: json['userId'] as String?,
  isDefault: (json['isDefault'] as num?)?.toDouble(),
  country: json['country'] as String?,
  countryCode: json['countryCode'] as String?,
  state: json['state'] as String?,
  stateCode: json['stateCode'] as String?,
  city: json['city'] as String?,
  cityCode: json['cityCode'] as String?,
  street: json['street'] as String?,
  apartment: json['apartment'] as String?,
  address: json['address'] as String?,
  coordinate: json['coordinate'] as String?,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  zipCode: json['zipCode'] as String?,
  deleted: (json['deleted'] as num?)?.toDouble(),
  isDelivered: (json['isDelivered'] as num?)?.toDouble(),
  gmtCreate: json['gmtCreate'] as String?,
  gmtUpdate: json['gmtUpdate'] as String?,
  tin: json['tin'] as String?,
);

Map<String, dynamic> _$UserServiceAddressListGet$Response$Data$ItemToJson(
  UserServiceAddressListGet$Response$Data$Item instance,
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

UserServiceGetShippingAddressByCountryGet$Response$Data
_$UserServiceGetShippingAddressByCountryGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserServiceGetShippingAddressByCountryGet$Response$Data(
  id: json['id'] as String?,
  isDefault: json['isDefault'] as bool?,
  country: json['country'] as String?,
  countryCode: json['countryCode'] as String?,
  state: json['state'] as String?,
  stateCode: json['stateCode'] as String?,
  simpleStateCode: json['simpleStateCode'] as String?,
  city: json['city'] as String?,
  cityCode: json['cityCode'] as String?,
  apartment: json['apartment'] as String?,
  address: json['address'] as String?,
  coordinate: json['coordinate'] as String?,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
);

Map<String, dynamic>
_$UserServiceGetShippingAddressByCountryGet$Response$DataToJson(
  UserServiceGetShippingAddressByCountryGet$Response$Data instance,
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

UserServiceGetDefaultShippingAddressGet$Response$Data
_$UserServiceGetDefaultShippingAddressGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserServiceGetDefaultShippingAddressGet$Response$Data(
  id: json['id'] as String?,
  isDefault: json['isDefault'] as bool?,
  country: json['country'] as String?,
  countryCode: json['countryCode'] as String?,
  state: json['state'] as String?,
  stateCode: json['stateCode'] as String?,
  simpleStateCode: json['simpleStateCode'] as String?,
  city: json['city'] as String?,
  cityCode: json['cityCode'] as String?,
  apartment: json['apartment'] as String?,
  address: json['address'] as String?,
  coordinate: json['coordinate'] as String?,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  street: json['street'] as String?,
  zipCode: json['zipCode'] as String?,
  email: json['email'] as String?,
);

Map<String, dynamic>
_$UserServiceGetDefaultShippingAddressGet$Response$DataToJson(
  UserServiceGetDefaultShippingAddressGet$Response$Data instance,
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

UserServiceAddressCountryGet$Response$Data$Item
_$UserServiceAddressCountryGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => UserServiceAddressCountryGet$Response$Data$Item(
  areaCode: json['areaCode'] as String?,
  icon: json['icon'] as String?,
  name: json['name'] as String?,
);

Map<String, dynamic> _$UserServiceAddressCountryGet$Response$Data$ItemToJson(
  UserServiceAddressCountryGet$Response$Data$Item instance,
) => <String, dynamic>{
  'areaCode': instance.areaCode,
  'icon': instance.icon,
  'name': instance.name,
};

UserServiceAddressQueryByZipCodeGet$Response$Data$Item
_$UserServiceAddressQueryByZipCodeGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => UserServiceAddressQueryByZipCodeGet$Response$Data$Item(
  apartment: json['apartment'],
  street: json['street'] as String?,
  city: json['city'] as String?,
  cityCode: json['cityCode'] as String?,
  state: json['state'] as String?,
  stateCode: json['stateCode'] as String?,
  country: json['country'] as String?,
  countryCode: json['countryCode'] as String?,
  address: json['address'],
  zipCode: json['zipCode'] as String?,
  latitude: json['latitude'],
  longitude: json['longitude'],
);

Map<String, dynamic>
_$UserServiceAddressQueryByZipCodeGet$Response$Data$ItemToJson(
  UserServiceAddressQueryByZipCodeGet$Response$Data$Item instance,
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

UserServiceSigninSwitchPortalPost$Response$Data
_$UserServiceSigninSwitchPortalPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserServiceSigninSwitchPortalPost$Response$Data(
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

Map<String, dynamic> _$UserServiceSigninSwitchPortalPost$Response$DataToJson(
  UserServiceSigninSwitchPortalPost$Response$Data instance,
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

UserServiceSignInInitPost$Response$Data
_$UserServiceSignInInitPost$Response$DataFromJson(Map<String, dynamic> json) =>
    UserServiceSignInInitPost$Response$Data(
      authWay: json['authWay'] as String?,
      code: json['code'] as String?,
      jumpUrl: json['jumpUrl'] as String?,
    );

Map<String, dynamic> _$UserServiceSignInInitPost$Response$DataToJson(
  UserServiceSignInInitPost$Response$Data instance,
) => <String, dynamic>{
  'authWay': instance.authWay,
  'code': instance.code,
  'jumpUrl': instance.jumpUrl,
};

UserServiceSignInVerifyPost$Response$Data
_$UserServiceSignInVerifyPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserServiceSignInVerifyPost$Response$Data(
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

Map<String, dynamic> _$UserServiceSignInVerifyPost$Response$DataToJson(
  UserServiceSignInVerifyPost$Response$Data instance,
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

UserServiceSignInCallPost$Response$Data
_$UserServiceSignInCallPost$Response$DataFromJson(Map<String, dynamic> json) =>
    UserServiceSignInCallPost$Response$Data(
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

Map<String, dynamic> _$UserServiceSignInCallPost$Response$DataToJson(
  UserServiceSignInCallPost$Response$Data instance,
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

UserServiceNoAuthOtpVerifyPost$Response$Data
_$UserServiceNoAuthOtpVerifyPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserServiceNoAuthOtpVerifyPost$Response$Data(
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

Map<String, dynamic> _$UserServiceNoAuthOtpVerifyPost$Response$DataToJson(
  UserServiceNoAuthOtpVerifyPost$Response$Data instance,
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

UserServiceNoAuthCommonConfigDefaultSettingGet$Response$Data
_$UserServiceNoAuthCommonConfigDefaultSettingGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserServiceNoAuthCommonConfigDefaultSettingGet$Response$Data(
  countryCode: json['countryCode'] as String?,
  lang: json['lang'] as String?,
  currency: json['currency'] as String?,
);

Map<String, dynamic>
_$UserServiceNoAuthCommonConfigDefaultSettingGet$Response$DataToJson(
  UserServiceNoAuthCommonConfigDefaultSettingGet$Response$Data instance,
) => <String, dynamic>{
  'countryCode': instance.countryCode,
  'lang': instance.lang,
  'currency': instance.currency,
};

UserServiceFileImUploadPost$Response$Data$Item
_$UserServiceFileImUploadPost$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => UserServiceFileImUploadPost$Response$Data$Item(
  url: json['url'] as String?,
  fileId: json['fileId'] as String?,
);

Map<String, dynamic> _$UserServiceFileImUploadPost$Response$Data$ItemToJson(
  UserServiceFileImUploadPost$Response$Data$Item instance,
) => <String, dynamic>{'url': instance.url, 'fileId': instance.fileId};

UserServiceFileLogoUploadPost$Response$Data
_$UserServiceFileLogoUploadPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserServiceFileLogoUploadPost$Response$Data(
  url: json['url'] as String?,
  fileId: json['fileId'] as String?,
);

Map<String, dynamic> _$UserServiceFileLogoUploadPost$Response$DataToJson(
  UserServiceFileLogoUploadPost$Response$Data instance,
) => <String, dynamic>{'url': instance.url, 'fileId': instance.fileId};

UserServiceUserCouponCountGet$Response$Data
_$UserServiceUserCouponCountGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserServiceUserCouponCountGet$Response$Data(
  total: json['total'] as String?,
  unUsed: json['unUsed'] as String?,
  locked: json['locked'] as String?,
  used: json['used'] as String?,
  invalid: json['invalid'] as String?,
);

Map<String, dynamic> _$UserServiceUserCouponCountGet$Response$DataToJson(
  UserServiceUserCouponCountGet$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'unUsed': instance.unUsed,
  'locked': instance.locked,
  'used': instance.used,
  'invalid': instance.invalid,
};

UserServiceUserCouponActivityInfoGet$Response$Data
_$UserServiceUserCouponActivityInfoGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserServiceUserCouponActivityInfoGet$Response$Data(
  couponList: (json['couponList'] as List<dynamic>?)
      ?.map(
        (e) =>
            UserServiceUserCouponActivityInfoGet$Response$Data$CouponList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  received: json['received'] as bool?,
);

Map<String, dynamic> _$UserServiceUserCouponActivityInfoGet$Response$DataToJson(
  UserServiceUserCouponActivityInfoGet$Response$Data instance,
) => <String, dynamic>{
  'couponList': instance.couponList?.map((e) => e.toJson()).toList(),
  'received': instance.received,
};

UserServiceUserCouponCode2CouponGet$Response$Data
_$UserServiceUserCouponCode2CouponGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserServiceUserCouponCode2CouponGet$Response$Data(
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

Map<String, dynamic> _$UserServiceUserCouponCode2CouponGet$Response$DataToJson(
  UserServiceUserCouponCode2CouponGet$Response$Data instance,
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

UserServiceUserCouponActivityInfosGet$Response$Data$Item
_$UserServiceUserCouponActivityInfosGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => UserServiceUserCouponActivityInfosGet$Response$Data$Item(
  sourceCode: json['sourceCode'] as String?,
  received: json['received'] as bool?,
  couponList: (json['couponList'] as List<dynamic>?)
      ?.map(
        (e) =>
            UserServiceUserCouponActivityInfosGet$Response$Data$Item$CouponList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$UserServiceUserCouponActivityInfosGet$Response$Data$ItemToJson(
  UserServiceUserCouponActivityInfosGet$Response$Data$Item instance,
) => <String, dynamic>{
  'sourceCode': instance.sourceCode,
  'received': instance.received,
  'couponList': instance.couponList?.map((e) => e.toJson()).toList(),
};

UserServiceUserCouponGetListGet$Response$Data$Item
_$UserServiceUserCouponGetListGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => UserServiceUserCouponGetListGet$Response$Data$Item(
  sourceCode: json['sourceCode'] as String?,
  userCouponDtos: (json['userCouponDtos'] as List<dynamic>?)
      ?.map(
        (e) =>
            UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$UserServiceUserCouponGetListGet$Response$Data$ItemToJson(
  UserServiceUserCouponGetListGet$Response$Data$Item instance,
) => <String, dynamic>{
  'sourceCode': instance.sourceCode,
  'userCouponDtos': instance.userCouponDtos?.map((e) => e.toJson()).toList(),
};

UserServiceUserCouponNoAuthActivityInfoGet$Response$Data
_$UserServiceUserCouponNoAuthActivityInfoGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserServiceUserCouponNoAuthActivityInfoGet$Response$Data(
  couponList: (json['couponList'] as List<dynamic>?)
      ?.map(
        (e) =>
            UserServiceUserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  received: json['received'] as bool?,
);

Map<String, dynamic>
_$UserServiceUserCouponNoAuthActivityInfoGet$Response$DataToJson(
  UserServiceUserCouponNoAuthActivityInfoGet$Response$Data instance,
) => <String, dynamic>{
  'couponList': instance.couponList?.map((e) => e.toJson()).toList(),
  'received': instance.received,
};

UserServiceUserCouponGetCouponByActivityPost$Response$Data$Item
_$UserServiceUserCouponGetCouponByActivityPost$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => UserServiceUserCouponGetCouponByActivityPost$Response$Data$Item(
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
_$UserServiceUserCouponGetCouponByActivityPost$Response$Data$ItemToJson(
  UserServiceUserCouponGetCouponByActivityPost$Response$Data$Item instance,
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

UserServiceUserCouponGetGet$Response$Data$Item
_$UserServiceUserCouponGetGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => UserServiceUserCouponGetGet$Response$Data$Item(
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
  couponStatus: json['couponStatus'] as String?,
  msgInfo: json['msgInfo'] == null
      ? null
      : UserServiceUserCouponGetGet$Response$Data$Item$MsgInfo.fromJson(
          json['msgInfo'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$UserServiceUserCouponGetGet$Response$Data$ItemToJson(
  UserServiceUserCouponGetGet$Response$Data$Item instance,
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

UserServiceImGetInfoPost$Response$Data
_$UserServiceImGetInfoPost$Response$DataFromJson(Map<String, dynamic> json) =>
    UserServiceImGetInfoPost$Response$Data(
      api: json['api'] as String?,
      longConnectApi: json['longConnectApi'] as String?,
      wsApi: json['wsApi'] as String?,
      longConnectKeep: json['longConnectKeep'] as bool?,
      whiteList: (json['whiteList'] as List<dynamic>?)
          ?.map(
            (e) =>
                UserServiceImGetInfoPost$Response$Data$WhiteList$Item.fromJson(
                  e as Map<String, dynamic>,
                ),
          )
          .toList(),
      uid: json['uid'] as String?,
      appId: json['app_id'] as String?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      sex: (json['sex'] as num?)?.toDouble(),
      category: json['category'] as String?,
      shortNo: json['short_no'] as String?,
      zone: json['zone'] as String?,
      phone: json['phone'] as String?,
      token: json['token'] as String?,
      chatPwd: json['chat_pwd'] as String?,
      lockScreenPwd: json['lock_screen_pwd'] as String?,
      lockAfterMinute: (json['lock_after_minute'] as num?)?.toDouble(),
      setting: json['setting'] == null
          ? null
          : UserServiceImGetInfoPost$Response$Data$Setting.fromJson(
              json['setting'] as Map<String, dynamic>,
            ),
      rsaPublicKey: json['rsa_public_key'] as String?,
      shortStatus: (json['short_status'] as num?)?.toDouble(),
      msgExpireSecond: (json['msg_expire_second'] as num?)?.toDouble(),
      showStatus: (json['showStatus'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UserServiceImGetInfoPost$Response$DataToJson(
  UserServiceImGetInfoPost$Response$Data instance,
) => <String, dynamic>{
  'api': instance.api,
  'longConnectApi': instance.longConnectApi,
  'wsApi': instance.wsApi,
  'longConnectKeep': instance.longConnectKeep,
  'whiteList': instance.whiteList?.map((e) => e.toJson()).toList(),
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

UserServiceUserShareListGet$Response$Data$Item
_$UserServiceUserShareListGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => UserServiceUserShareListGet$Response$Data$Item(
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

Map<String, dynamic> _$UserServiceUserShareListGet$Response$Data$ItemToJson(
  UserServiceUserShareListGet$Response$Data$Item instance,
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

UserServiceUserShareRewardInfoGet$Response$Data
_$UserServiceUserShareRewardInfoGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserServiceUserShareRewardInfoGet$Response$Data(
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

Map<String, dynamic> _$UserServiceUserShareRewardInfoGet$Response$DataToJson(
  UserServiceUserShareRewardInfoGet$Response$Data instance,
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

UserServiceUserDeleteGet$Response$Data
_$UserServiceUserDeleteGet$Response$DataFromJson(Map<String, dynamic> json) =>
    UserServiceUserDeleteGet$Response$Data(authWay: json['authWay'] as String?);

Map<String, dynamic> _$UserServiceUserDeleteGet$Response$DataToJson(
  UserServiceUserDeleteGet$Response$Data instance,
) => <String, dynamic>{'authWay': instance.authWay};

UserServiceUserGetGet$Response$Data
_$UserServiceUserGetGet$Response$DataFromJson(Map<String, dynamic> json) =>
    UserServiceUserGetGet$Response$Data(
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

Map<String, dynamic> _$UserServiceUserGetGet$Response$DataToJson(
  UserServiceUserGetGet$Response$Data instance,
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

UserServiceUserUserCommissionGet$Response$Data
_$UserServiceUserUserCommissionGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserServiceUserUserCommissionGet$Response$Data(
  currentUserLevel: (json['currentUserLevel'] as num?)?.toInt(),
  nextUserLevel: (json['nextUserLevel'] as num?)?.toInt(),
  nextUserLevelPoints: (json['nextUserLevelPoints'] as num?)?.toInt(),
);

Map<String, dynamic> _$UserServiceUserUserCommissionGet$Response$DataToJson(
  UserServiceUserUserCommissionGet$Response$Data instance,
) => <String, dynamic>{
  'currentUserLevel': instance.currentUserLevel,
  'nextUserLevel': instance.nextUserLevel,
  'nextUserLevelPoints': instance.nextUserLevelPoints,
};

UserServiceUserConfigureSettingGet$Response$Data
_$UserServiceUserConfigureSettingGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserServiceUserConfigureSettingGet$Response$Data(
  showGiveawayGift: (json['showGiveawayGift'] as num?)?.toInt(),
);

Map<String, dynamic> _$UserServiceUserConfigureSettingGet$Response$DataToJson(
  UserServiceUserConfigureSettingGet$Response$Data instance,
) => <String, dynamic>{'showGiveawayGift': instance.showGiveawayGift};

UserServiceUserInviteNumGet$Response$Data
_$UserServiceUserInviteNumGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserServiceUserInviteNumGet$Response$Data(
  inviteTotalNum: (json['inviteTotalNum'] as num?)?.toDouble(),
  inviteNum: (json['inviteNum'] as num?)?.toDouble(),
  subInviteNum: (json['subInviteNum'] as num?)?.toDouble(),
);

Map<String, dynamic> _$UserServiceUserInviteNumGet$Response$DataToJson(
  UserServiceUserInviteNumGet$Response$Data instance,
) => <String, dynamic>{
  'inviteTotalNum': instance.inviteTotalNum,
  'inviteNum': instance.inviteNum,
  'subInviteNum': instance.subInviteNum,
};

UserServiceUserTagPortraitAiToPortraitPost$Response$Data
_$UserServiceUserTagPortraitAiToPortraitPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserServiceUserTagPortraitAiToPortraitPost$Response$Data(
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

Map<String, dynamic>
_$UserServiceUserTagPortraitAiToPortraitPost$Response$DataToJson(
  UserServiceUserTagPortraitAiToPortraitPost$Response$Data instance,
) => <String, dynamic>{
  'age': instance.age,
  'sex': instance.sex,
  'birthday': instance.birthday,
  'nickname': instance.nickname,
  'favoriteShoppingPlatforms': instance.favoriteShoppingPlatforms,
  'favoriteBrands': instance.favoriteBrands,
};

UserServiceUserTagPortraitAiToPortraitV2Post$Response$Data
_$UserServiceUserTagPortraitAiToPortraitV2Post$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserServiceUserTagPortraitAiToPortraitV2Post$Response$Data(
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

Map<String, dynamic>
_$UserServiceUserTagPortraitAiToPortraitV2Post$Response$DataToJson(
  UserServiceUserTagPortraitAiToPortraitV2Post$Response$Data instance,
) => <String, dynamic>{
  'age': instance.age,
  'sex': instance.sex,
  'birthday': instance.birthday,
  'nickname': instance.nickname,
  'favoriteShoppingPlatforms': instance.favoriteShoppingPlatforms,
  'favoriteBrands': instance.favoriteBrands,
};

UserServiceUserTagPortraitGetPortraitGet$Response$Data
_$UserServiceUserTagPortraitGetPortraitGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => UserServiceUserTagPortraitGetPortraitGet$Response$Data(
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

Map<String, dynamic>
_$UserServiceUserTagPortraitGetPortraitGet$Response$DataToJson(
  UserServiceUserTagPortraitGetPortraitGet$Response$Data instance,
) => <String, dynamic>{
  'age': instance.age,
  'sex': instance.sex,
  'birthday': instance.birthday,
  'nickname': instance.nickname,
  'avatarUrl': instance.avatarUrl,
  'favoriteShoppingPlatforms': instance.favoriteShoppingPlatforms,
  'favoriteBrands': instance.favoriteBrands,
};

UserServiceUserCouponAppHomeActivityPost$Response$Data$Item
_$UserServiceUserCouponAppHomeActivityPost$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => UserServiceUserCouponAppHomeActivityPost$Response$Data$Item(
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
      : UserServiceUserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo.fromJson(
          json['msgInfo'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$UserServiceUserCouponAppHomeActivityPost$Response$Data$ItemToJson(
  UserServiceUserCouponAppHomeActivityPost$Response$Data$Item instance,
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

UserServiceUserCouponActivityInfoGet$Response$Data$CouponList$Item
_$UserServiceUserCouponActivityInfoGet$Response$Data$CouponList$ItemFromJson(
  Map<String, dynamic> json,
) => UserServiceUserCouponActivityInfoGet$Response$Data$CouponList$Item(
  currencySymbol: json['currencySymbol'] as String?,
  discountType: (json['discountType'] as num?)?.toDouble(),
  discountInfo: (json['discountInfo'] as num?)?.toDouble(),
  limitAmount: (json['limitAmount'] as num?)?.toDouble(),
  invalidPeriod: (json['invalidPeriod'] as num?)?.toDouble(),
  userCouponCode: json['userCouponCode'] as String?,
);

Map<String, dynamic>
_$UserServiceUserCouponActivityInfoGet$Response$Data$CouponList$ItemToJson(
  UserServiceUserCouponActivityInfoGet$Response$Data$CouponList$Item instance,
) => <String, dynamic>{
  'currencySymbol': instance.currencySymbol,
  'discountType': instance.discountType,
  'discountInfo': instance.discountInfo,
  'limitAmount': instance.limitAmount,
  'invalidPeriod': instance.invalidPeriod,
  'userCouponCode': instance.userCouponCode,
};

UserServiceUserCouponActivityInfosGet$Response$Data$Item$CouponList$Item
_$UserServiceUserCouponActivityInfosGet$Response$Data$Item$CouponList$ItemFromJson(
  Map<String, dynamic> json,
) => UserServiceUserCouponActivityInfosGet$Response$Data$Item$CouponList$Item(
  couponCode: json['couponCode'] as String?,
  invalidPeriod: (json['invalidPeriod'] as num?)?.toDouble(),
  currencySymbol: json['currencySymbol'] as String?,
  discountType: (json['discountType'] as num?)?.toInt(),
  discountInfo: (json['discountInfo'] as num?)?.toDouble(),
  limitAmount: (json['limitAmount'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$UserServiceUserCouponActivityInfosGet$Response$Data$Item$CouponList$ItemToJson(
  UserServiceUserCouponActivityInfosGet$Response$Data$Item$CouponList$Item
  instance,
) => <String, dynamic>{
  'couponCode': instance.couponCode,
  'invalidPeriod': instance.invalidPeriod,
  'currencySymbol': instance.currencySymbol,
  'discountType': instance.discountType,
  'discountInfo': instance.discountInfo,
  'limitAmount': instance.limitAmount,
};

UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item
_$UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$ItemFromJson(
  Map<String, dynamic> json,
) => UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item(
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
_$UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$ItemToJson(
  UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item
  instance,
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

UserServiceUserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item
_$UserServiceUserCouponNoAuthActivityInfoGet$Response$Data$CouponList$ItemFromJson(
  Map<String, dynamic> json,
) => UserServiceUserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item(
  currencySymbol: json['currencySymbol'] as String?,
  discountType: (json['discountType'] as num?)?.toDouble(),
  discountInfo: (json['discountInfo'] as num?)?.toDouble(),
  limitAmount: (json['limitAmount'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$UserServiceUserCouponNoAuthActivityInfoGet$Response$Data$CouponList$ItemToJson(
  UserServiceUserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item
  instance,
) => <String, dynamic>{
  'currencySymbol': instance.currencySymbol,
  'discountType': instance.discountType,
  'discountInfo': instance.discountInfo,
  'limitAmount': instance.limitAmount,
};

UserServiceUserCouponGetGet$Response$Data$Item$MsgInfo
_$UserServiceUserCouponGetGet$Response$Data$Item$MsgInfoFromJson(
  Map<String, dynamic> json,
) => UserServiceUserCouponGetGet$Response$Data$Item$MsgInfo(
  name: json['name'] as String?,
  limit: json['limit'] as String?,
  usage: json['usage'] as String?,
  discountStr: json['discountStr'] as String?,
  discountUnit: json['discountUnit'] as String?,
);

Map<String, dynamic>
_$UserServiceUserCouponGetGet$Response$Data$Item$MsgInfoToJson(
  UserServiceUserCouponGetGet$Response$Data$Item$MsgInfo instance,
) => <String, dynamic>{
  'name': instance.name,
  'limit': instance.limit,
  'usage': instance.usage,
  'discountStr': instance.discountStr,
  'discountUnit': instance.discountUnit,
};

UserServiceImGetInfoPost$Response$Data$WhiteList$Item
_$UserServiceImGetInfoPost$Response$Data$WhiteList$ItemFromJson(
  Map<String, dynamic> json,
) => UserServiceImGetInfoPost$Response$Data$WhiteList$Item(
  channelId: json['channelId'] as String?,
  channelType: json['channelType'] as String?,
);

Map<String, dynamic>
_$UserServiceImGetInfoPost$Response$Data$WhiteList$ItemToJson(
  UserServiceImGetInfoPost$Response$Data$WhiteList$Item instance,
) => <String, dynamic>{
  'channelId': instance.channelId,
  'channelType': instance.channelType,
};

UserServiceImGetInfoPost$Response$Data$Setting
_$UserServiceImGetInfoPost$Response$Data$SettingFromJson(
  Map<String, dynamic> json,
) => UserServiceImGetInfoPost$Response$Data$Setting(
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

Map<String, dynamic> _$UserServiceImGetInfoPost$Response$Data$SettingToJson(
  UserServiceImGetInfoPost$Response$Data$Setting instance,
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

UserServiceUserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo
_$UserServiceUserCouponAppHomeActivityPost$Response$Data$Item$MsgInfoFromJson(
  Map<String, dynamic> json,
) => UserServiceUserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo(
  name: json['name'] as String?,
  usage: json['usage'] as String?,
);

Map<String, dynamic>
_$UserServiceUserCouponAppHomeActivityPost$Response$Data$Item$MsgInfoToJson(
  UserServiceUserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo instance,
) => <String, dynamic>{'name': instance.name, 'usage': instance.usage};
