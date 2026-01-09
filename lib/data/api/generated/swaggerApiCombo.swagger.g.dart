// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swaggerApiCombo.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComboServiceNoAuthBizKolKolInfoGet$Response
_$ComboServiceNoAuthBizKolKolInfoGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceNoAuthBizKolKolInfoGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ComboServiceNoAuthBizKolKolInfoGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$ComboServiceNoAuthBizKolKolInfoGet$ResponseToJson(
  ComboServiceNoAuthBizKolKolInfoGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ComboServiceNoAuthPopupPromiseGet$Response
_$ComboServiceNoAuthPopupPromiseGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceNoAuthPopupPromiseGet$Response(
  code: json['code'] as String?,
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ComboServiceNoAuthPopupPromiseGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$ComboServiceNoAuthPopupPromiseGet$ResponseToJson(
  ComboServiceNoAuthPopupPromiseGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
};

ComboServiceNoAuthCommonAppConfigVersionCheckGet$Response
_$ComboServiceNoAuthCommonAppConfigVersionCheckGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceNoAuthCommonAppConfigVersionCheckGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ComboServiceNoAuthCommonAppConfigVersionCheckGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  success: json['success'] as bool?,
  traceId: json['traceId'] as String?,
);

Map<String, dynamic>
_$ComboServiceNoAuthCommonAppConfigVersionCheckGet$ResponseToJson(
  ComboServiceNoAuthCommonAppConfigVersionCheckGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'success': instance.success,
  'traceId': instance.traceId,
};

ComboServiceBizCommunityPostUnlikePost$Response
_$ComboServiceBizCommunityPostUnlikePost$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizCommunityPostUnlikePost$Response(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: json['data'] as bool?,
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$ComboServiceBizCommunityPostUnlikePost$ResponseToJson(
  ComboServiceBizCommunityPostUnlikePost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
};

ComboServiceBizCommunityPostLikedGet$Response
_$ComboServiceBizCommunityPostLikedGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizCommunityPostLikedGet$Response(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ComboServiceBizCommunityPostLikedGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$ComboServiceBizCommunityPostLikedGet$ResponseToJson(
  ComboServiceBizCommunityPostLikedGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
};

ComboServiceBizCommunityPostNoAuthListGet$Response
_$ComboServiceBizCommunityPostNoAuthListGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizCommunityPostNoAuthListGet$Response(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ComboServiceBizCommunityPostNoAuthListGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$ComboServiceBizCommunityPostNoAuthListGet$ResponseToJson(
  ComboServiceBizCommunityPostNoAuthListGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
};

ComboServiceBizCommunityPostLikePost$Response
_$ComboServiceBizCommunityPostLikePost$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizCommunityPostLikePost$Response(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: json['data'] as bool?,
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$ComboServiceBizCommunityPostLikePost$ResponseToJson(
  ComboServiceBizCommunityPostLikePost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
};

ComboServiceNoAuthBizImageTransTranslatePost$Response
_$ComboServiceNoAuthBizImageTransTranslatePost$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceNoAuthBizImageTransTranslatePost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] as String?,
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic>
_$ComboServiceNoAuthBizImageTransTranslatePost$ResponseToJson(
  ComboServiceNoAuthBizImageTransTranslatePost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ComboServiceBizUserOrderPendingGet$Response
_$ComboServiceBizUserOrderPendingGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizUserOrderPendingGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ComboServiceBizUserOrderPendingGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$ComboServiceBizUserOrderPendingGet$ResponseToJson(
  ComboServiceBizUserOrderPendingGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ComboServiceApiV1StyleOutfitsGenerateModelPost$Response
_$ComboServiceApiV1StyleOutfitsGenerateModelPost$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceApiV1StyleOutfitsGenerateModelPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
  data: json['data'] == null
      ? null
      : ComboServiceApiV1StyleOutfitsGenerateModelPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsGenerateModelPost$ResponseToJson(
  ComboServiceApiV1StyleOutfitsGenerateModelPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'traceId': instance.traceId,
  'success': instance.success,
  'data': instance.data?.toJson(),
};

ComboServiceBizAiFashionNoAuthBodyShapeGet$Response
_$ComboServiceBizAiFashionNoAuthBodyShapeGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionNoAuthBodyShapeGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  msg: json['msg'] as String?,
  data: json['data'] == null
      ? null
      : ComboServiceBizAiFashionNoAuthBodyShapeGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthBodyShapeGet$ResponseToJson(
  ComboServiceBizAiFashionNoAuthBodyShapeGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'msg': instance.msg,
  'data': instance.data?.toJson(),
};

ComboServiceBizAiFashionModelSavePost$Response
_$ComboServiceBizAiFashionModelSavePost$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionModelSavePost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  traceId: json['traceId'] as String?,
  data: json['data'] == null
      ? null
      : ComboServiceBizAiFashionModelSavePost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ComboServiceBizAiFashionModelSavePost$ResponseToJson(
  ComboServiceBizAiFashionModelSavePost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'traceId': instance.traceId,
  'data': instance.data?.toJson(),
};

ComboServiceApiV1StyleOutfitsResultPageGet$Response
_$ComboServiceApiV1StyleOutfitsResultPageGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceApiV1StyleOutfitsResultPageGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsResultPageGet$ResponseToJson(
  ComboServiceApiV1StyleOutfitsResultPageGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ComboServiceBizAiFashionModelRecentlyUsedGet$Response
_$ComboServiceBizAiFashionModelRecentlyUsedGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionModelRecentlyUsedGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
  data: json['data'] == null
      ? null
      : ComboServiceBizAiFashionModelRecentlyUsedGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ComboServiceBizAiFashionModelRecentlyUsedGet$ResponseToJson(
  ComboServiceBizAiFashionModelRecentlyUsedGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'traceId': instance.traceId,
  'success': instance.success,
  'data': instance.data?.toJson(),
};

ComboServiceApiV1StyleOutfitsModelIdStatusGet$Response
_$ComboServiceApiV1StyleOutfitsModelIdStatusGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceApiV1StyleOutfitsModelIdStatusGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
  data: json['data'] == null
      ? null
      : ComboServiceApiV1StyleOutfitsModelIdStatusGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsModelIdStatusGet$ResponseToJson(
  ComboServiceApiV1StyleOutfitsModelIdStatusGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'traceId': instance.traceId,
  'success': instance.success,
  'data': instance.data?.toJson(),
};

ComboServiceApiV1StyleOutfitsResultGet$Response
_$ComboServiceApiV1StyleOutfitsResultGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceApiV1StyleOutfitsResultGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
  data: json['data'] == null
      ? null
      : ComboServiceApiV1StyleOutfitsResultGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ComboServiceApiV1StyleOutfitsResultGet$ResponseToJson(
  ComboServiceApiV1StyleOutfitsResultGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'traceId': instance.traceId,
  'success': instance.success,
  'data': instance.data?.toJson(),
};

ComboServiceBizAiFashionModelModelIdGet$Response
_$ComboServiceBizAiFashionModelModelIdGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionModelModelIdGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ComboServiceBizAiFashionModelModelIdGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ComboServiceBizAiFashionModelModelIdGet$ResponseToJson(
  ComboServiceBizAiFashionModelModelIdGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
};

ComboServiceBizAiFashionModelListGet$Response
_$ComboServiceBizAiFashionModelListGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionModelListGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  traceId: json['traceId'] as String?,
  data: json['data'] == null
      ? null
      : ComboServiceBizAiFashionModelListGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ComboServiceBizAiFashionModelListGet$ResponseToJson(
  ComboServiceBizAiFashionModelListGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'traceId': instance.traceId,
  'data': instance.data?.toJson(),
};

ComboServiceApiV1StyleOutfitsGeneratePost$Response
_$ComboServiceApiV1StyleOutfitsGeneratePost$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceApiV1StyleOutfitsGeneratePost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
  data: json['data'] == null
      ? null
      : ComboServiceApiV1StyleOutfitsGeneratePost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ComboServiceApiV1StyleOutfitsGeneratePost$ResponseToJson(
  ComboServiceApiV1StyleOutfitsGeneratePost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'traceId': instance.traceId,
  'success': instance.success,
  'data': instance.data?.toJson(),
};

ComboServiceBizAiFashionNoAuthStylePresetGet$Response
_$ComboServiceBizAiFashionNoAuthStylePresetGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionNoAuthStylePresetGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ComboServiceBizAiFashionNoAuthStylePresetGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthStylePresetGet$ResponseToJson(
  ComboServiceBizAiFashionNoAuthStylePresetGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
};

ComboServiceBizAiFashionNoAuthPostListGet$Response
_$ComboServiceBizAiFashionNoAuthPostListGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionNoAuthPostListGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  traceId: json['traceId'] as String?,
  data: json['data'] == null
      ? null
      : ComboServiceBizAiFashionNoAuthPostListGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ComboServiceBizAiFashionNoAuthPostListGet$ResponseToJson(
  ComboServiceBizAiFashionNoAuthPostListGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'traceId': instance.traceId,
  'data': instance.data?.toJson(),
};

ComboServiceBizAiFashionNoAuthPostDetailGet$Response
_$ComboServiceBizAiFashionNoAuthPostDetailGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionNoAuthPostDetailGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  reasonCode: json['reasonCode'],
  traceId: json['traceId'] as String?,
);

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthPostDetailGet$ResponseToJson(
  ComboServiceBizAiFashionNoAuthPostDetailGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'reasonCode': instance.reasonCode,
  'traceId': instance.traceId,
};

ComboServiceBizAiFashionNoAuthSelectOptionGet$Response
_$ComboServiceBizAiFashionNoAuthSelectOptionGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionNoAuthSelectOptionGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  traceId: json['traceId'] as String?,
  data: json['data'] == null
      ? null
      : ComboServiceBizAiFashionNoAuthSelectOptionGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthSelectOptionGet$ResponseToJson(
  ComboServiceBizAiFashionNoAuthSelectOptionGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'traceId': instance.traceId,
  'data': instance.data?.toJson(),
};

ComboServiceApiV1StyleOutfitsGenerateModelRegeneratePost$Response
_$ComboServiceApiV1StyleOutfitsGenerateModelRegeneratePost$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceApiV1StyleOutfitsGenerateModelRegeneratePost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
  data: json['data'] == null
      ? null
      : ComboServiceApiV1StyleOutfitsGenerateModelRegeneratePost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsGenerateModelRegeneratePost$ResponseToJson(
  ComboServiceApiV1StyleOutfitsGenerateModelRegeneratePost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'traceId': instance.traceId,
  'success': instance.success,
  'data': instance.data?.toJson(),
};

ComboServiceApiV1StyleOutfitsGenerateRegeneratePost$Response
_$ComboServiceApiV1StyleOutfitsGenerateRegeneratePost$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceApiV1StyleOutfitsGenerateRegeneratePost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
  data: json['data'] == null
      ? null
      : ComboServiceApiV1StyleOutfitsGenerateRegeneratePost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsGenerateRegeneratePost$ResponseToJson(
  ComboServiceApiV1StyleOutfitsGenerateRegeneratePost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'traceId': instance.traceId,
  'success': instance.success,
  'data': instance.data?.toJson(),
};

ComboServiceBizUserShareRewardPageGet$Response
_$ComboServiceBizUserShareRewardPageGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizUserShareRewardPageGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ComboServiceBizUserShareRewardPageGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$ComboServiceBizUserShareRewardPageGet$ResponseToJson(
  ComboServiceBizUserShareRewardPageGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ComboServiceBizUserShareRewardPost$Response
_$ComboServiceBizUserShareRewardPost$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizUserShareRewardPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] as String?,
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$ComboServiceBizUserShareRewardPost$ResponseToJson(
  ComboServiceBizUserShareRewardPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ComboServiceNoAuthBizAlbumAlbumInfoGet$Response
_$ComboServiceNoAuthBizAlbumAlbumInfoGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ComboServiceNoAuthBizAlbumAlbumInfoGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$ComboServiceNoAuthBizAlbumAlbumInfoGet$ResponseToJson(
  ComboServiceNoAuthBizAlbumAlbumInfoGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ComboServiceNoAuthBizKolKolInfoGet$Response$Data
_$ComboServiceNoAuthBizKolKolInfoGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceNoAuthBizKolKolInfoGet$Response$Data(
  inviteCode: json['inviteCode'] as String?,
  tenantCode: json['tenantCode'] as String?,
  shareLink: json['shareLink'] as String?,
  excelLinks: (json['excelLinks'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceNoAuthBizKolKolInfoGet$Response$Data$ExcelLinks$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  jumpTo: json['jumpTo'] as String?,
);

Map<String, dynamic> _$ComboServiceNoAuthBizKolKolInfoGet$Response$DataToJson(
  ComboServiceNoAuthBizKolKolInfoGet$Response$Data instance,
) => <String, dynamic>{
  'inviteCode': instance.inviteCode,
  'tenantCode': instance.tenantCode,
  'shareLink': instance.shareLink,
  'excelLinks': instance.excelLinks?.map((e) => e.toJson()).toList(),
  'jumpTo': instance.jumpTo,
};

ComboServiceNoAuthPopupPromiseGet$Response$Data
_$ComboServiceNoAuthPopupPromiseGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceNoAuthPopupPromiseGet$Response$Data(
  content: (json['content'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceNoAuthPopupPromiseGet$Response$Data$Content$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$ComboServiceNoAuthPopupPromiseGet$Response$DataToJson(
  ComboServiceNoAuthPopupPromiseGet$Response$Data instance,
) => <String, dynamic>{
  'content': instance.content?.map((e) => e.toJson()).toList(),
};

ComboServiceNoAuthCommonAppConfigVersionCheckGet$Response$Data
_$ComboServiceNoAuthCommonAppConfigVersionCheckGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceNoAuthCommonAppConfigVersionCheckGet$Response$Data(
  allowClose: json['allowClose'] as bool?,
  storeUrl: json['storeUrl'] as String?,
  haveUpdate: json['haveUpdate'] as bool?,
);

Map<String, dynamic>
_$ComboServiceNoAuthCommonAppConfigVersionCheckGet$Response$DataToJson(
  ComboServiceNoAuthCommonAppConfigVersionCheckGet$Response$Data instance,
) => <String, dynamic>{
  'allowClose': instance.allowClose,
  'storeUrl': instance.storeUrl,
  'haveUpdate': instance.haveUpdate,
};

ComboServiceBizCommunityPostLikedGet$Response$Data
_$ComboServiceBizCommunityPostLikedGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizCommunityPostLikedGet$Response$Data(
  posts: (json['posts'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  nextCursor: json['nextCursor'] as String?,
  hasMore: json['hasMore'] as bool?,
);

Map<String, dynamic> _$ComboServiceBizCommunityPostLikedGet$Response$DataToJson(
  ComboServiceBizCommunityPostLikedGet$Response$Data instance,
) => <String, dynamic>{
  'posts': instance.posts?.map((e) => e.toJson()).toList(),
  'nextCursor': instance.nextCursor,
  'hasMore': instance.hasMore,
};

ComboServiceBizCommunityPostNoAuthListGet$Response$Data
_$ComboServiceBizCommunityPostNoAuthListGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizCommunityPostNoAuthListGet$Response$Data(
  posts: (json['posts'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  nextCursor: json['nextCursor'] as String?,
  hasMore: json['hasMore'] as bool?,
);

Map<String, dynamic>
_$ComboServiceBizCommunityPostNoAuthListGet$Response$DataToJson(
  ComboServiceBizCommunityPostNoAuthListGet$Response$Data instance,
) => <String, dynamic>{
  'posts': instance.posts?.map((e) => e.toJson()).toList(),
  'nextCursor': instance.nextCursor,
  'hasMore': instance.hasMore,
};

ComboServiceBizUserOrderPendingGet$Response$Data
_$ComboServiceBizUserOrderPendingGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizUserOrderPendingGet$Response$Data(
  pendingOrderCount: (json['pendingOrderCount'] as num?)?.toDouble(),
  totalOrderCount: (json['totalOrderCount'] as num?)?.toDouble(),
  pendingWarehouseItemCount: (json['pendingWarehouseItemCount'] as num?)
      ?.toDouble(),
  pendingPackageCount: (json['pendingPackageCount'] as num?)?.toDouble(),
  totalPackageCount: (json['totalPackageCount'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ComboServiceBizUserOrderPendingGet$Response$DataToJson(
  ComboServiceBizUserOrderPendingGet$Response$Data instance,
) => <String, dynamic>{
  'pendingOrderCount': instance.pendingOrderCount,
  'totalOrderCount': instance.totalOrderCount,
  'pendingWarehouseItemCount': instance.pendingWarehouseItemCount,
  'pendingPackageCount': instance.pendingPackageCount,
  'totalPackageCount': instance.totalPackageCount,
};

ComboServiceApiV1StyleOutfitsGenerateModelPost$Response$Data
_$ComboServiceApiV1StyleOutfitsGenerateModelPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceApiV1StyleOutfitsGenerateModelPost$Response$Data(
  taskId: json['taskId'] as String?,
  status: json['status'] as String?,
  estimatedTime: json['estimatedTime'] as String?,
);

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsGenerateModelPost$Response$DataToJson(
  ComboServiceApiV1StyleOutfitsGenerateModelPost$Response$Data instance,
) => <String, dynamic>{
  'taskId': instance.taskId,
  'status': instance.status,
  'estimatedTime': instance.estimatedTime,
};

ComboServiceBizAiFashionNoAuthBodyShapeGet$Response$Data
_$ComboServiceBizAiFashionNoAuthBodyShapeGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionNoAuthBodyShapeGet$Response$Data(
  female: (json['female'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizAiFashionNoAuthBodyShapeGet$Response$Data$Female$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  male: (json['male'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizAiFashionNoAuthBodyShapeGet$Response$Data$Male$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthBodyShapeGet$Response$DataToJson(
  ComboServiceBizAiFashionNoAuthBodyShapeGet$Response$Data instance,
) => <String, dynamic>{
  'female': instance.female?.map((e) => e.toJson()).toList(),
  'male': instance.male?.map((e) => e.toJson()).toList(),
};

ComboServiceBizAiFashionModelSavePost$Response$Data
_$ComboServiceBizAiFashionModelSavePost$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionModelSavePost$Response$Data(
  id: (json['id'] as num?)?.toDouble(),
  tenantCode: json['tenantCode'] as String?,
  userId: json['userId'] as String?,
  modelDesc: json['modelDesc'] as String?,
  modelId: json['modelId'] as String?,
  modelImage: json['modelImage'] as String?,
  ext: json['ext'],
  isDeleted: (json['isDeleted'] as num?)?.toDouble(),
  gmtCreate: json['gmtCreate'] as String?,
  gmtUpdate: json['gmtUpdate'] as String?,
  groupId: (json['groupId'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$ComboServiceBizAiFashionModelSavePost$Response$DataToJson(
  ComboServiceBizAiFashionModelSavePost$Response$Data instance,
) => <String, dynamic>{
  'id': instance.id,
  'tenantCode': instance.tenantCode,
  'userId': instance.userId,
  'modelDesc': instance.modelDesc,
  'modelId': instance.modelId,
  'modelImage': instance.modelImage,
  'ext': instance.ext,
  'isDeleted': instance.isDeleted,
  'gmtCreate': instance.gmtCreate,
  'gmtUpdate': instance.gmtUpdate,
  'groupId': instance.groupId,
};

ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data
_$ComboServiceApiV1StyleOutfitsResultPageGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data(
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  total: (json['total'] as num?)?.toDouble(),
  size: (json['size'] as num?)?.toDouble(),
  current: (json['current'] as num?)?.toDouble(),
  pages: (json['pages'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsResultPageGet$Response$DataToJson(
  ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data instance,
) => <String, dynamic>{
  'records': instance.records?.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'size': instance.size,
  'current': instance.current,
  'pages': instance.pages,
};

ComboServiceBizAiFashionModelRecentlyUsedGet$Response$Data
_$ComboServiceBizAiFashionModelRecentlyUsedGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionModelRecentlyUsedGet$Response$Data(
  id: (json['id'] as num?)?.toDouble(),
  tenantCode: json['tenantCode'] as String?,
  userId: json['userId'] as String?,
  modelDesc: json['modelDesc'] as String?,
  modelId: json['modelId'] as String?,
  modelImage: json['modelImage'] as String?,
  modelHeaderImage: json['modelHeaderImage'] as String?,
  ext: json['ext'],
  isDeleted: (json['isDeleted'] as num?)?.toDouble(),
  gmtCreate: json['gmtCreate'] as String?,
  gmtUpdate: json['gmtUpdate'] as String?,
  groupId: (json['groupId'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$ComboServiceBizAiFashionModelRecentlyUsedGet$Response$DataToJson(
  ComboServiceBizAiFashionModelRecentlyUsedGet$Response$Data instance,
) => <String, dynamic>{
  'id': instance.id,
  'tenantCode': instance.tenantCode,
  'userId': instance.userId,
  'modelDesc': instance.modelDesc,
  'modelId': instance.modelId,
  'modelImage': instance.modelImage,
  'modelHeaderImage': instance.modelHeaderImage,
  'ext': instance.ext,
  'isDeleted': instance.isDeleted,
  'gmtCreate': instance.gmtCreate,
  'gmtUpdate': instance.gmtUpdate,
  'groupId': instance.groupId,
};

ComboServiceApiV1StyleOutfitsModelIdStatusGet$Response$Data
_$ComboServiceApiV1StyleOutfitsModelIdStatusGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceApiV1StyleOutfitsModelIdStatusGet$Response$Data(
  taskId: json['taskId'] as String?,
  status: json['status'] as String?,
  totalCount: (json['totalCount'] as num?)?.toDouble(),
  completedCount: (json['completedCount'] as num?)?.toDouble(),
  selectedIndex: (json['selectedIndex'] as num?)?.toDouble(),
  originalImageUrl: json['originalImageUrl'] as String?,
  gender: (json['gender'] as num?)?.toDouble(),
  isDefault: json['isDefault'] as bool?,
  usageCount: (json['usageCount'] as num?)?.toDouble(),
  createdAt: json['createdAt'] as String?,
  error: json['error'],
  generatedModels: (json['generatedModels'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceApiV1StyleOutfitsModelIdStatusGet$Response$Data$GeneratedModels$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsModelIdStatusGet$Response$DataToJson(
  ComboServiceApiV1StyleOutfitsModelIdStatusGet$Response$Data instance,
) => <String, dynamic>{
  'taskId': instance.taskId,
  'status': instance.status,
  'totalCount': instance.totalCount,
  'completedCount': instance.completedCount,
  'selectedIndex': instance.selectedIndex,
  'originalImageUrl': instance.originalImageUrl,
  'gender': instance.gender,
  'isDefault': instance.isDefault,
  'usageCount': instance.usageCount,
  'createdAt': instance.createdAt,
  'error': instance.error,
  'generatedModels': instance.generatedModels?.map((e) => e.toJson()).toList(),
};

ComboServiceApiV1StyleOutfitsResultGet$Response$Data
_$ComboServiceApiV1StyleOutfitsResultGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceApiV1StyleOutfitsResultGet$Response$Data(
  taskId: json['taskId'] as String?,
  status: json['status'] as String?,
  count: (json['count'] as num?)?.toDouble(),
  createdAt: (json['createdAt'] as num?)?.toDouble(),
  completedAt: (json['completedAt'] as num?)?.toDouble(),
  totalDuration: (json['totalDuration'] as num?)?.toDouble(),
  requestParams: json['requestParams'] == null
      ? null
      : ComboServiceApiV1StyleOutfitsResultGet$Response$Data$RequestParams.fromJson(
          json['requestParams'] as Map<String, dynamic>,
        ),
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      [],
  aiSuggestionImage: json['aiSuggestionImage'] as String?,
  userModelImage: json['userModelImage'] as String?,
  regeneratedModelImage: json['regeneratedModelImage'] as String?,
  flattenedItemsImage: json['flattenedItemsImage'] as String?,
  finalOutfitImage: json['finalOutfitImage'] as String?,
  productLinks: (json['productLinks'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  generationTime: json['generationTime'] as String?,
  sharingImages: json['sharingImages'] == null
      ? null
      : ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages.fromJson(
          json['sharingImages'] as Map<String, dynamic>,
        ),
  sharingImagesStatus: json['sharingImagesStatus'] == null
      ? null
      : ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImagesStatus.fromJson(
          json['sharingImagesStatus'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsResultGet$Response$DataToJson(
  ComboServiceApiV1StyleOutfitsResultGet$Response$Data instance,
) => <String, dynamic>{
  'taskId': instance.taskId,
  'status': instance.status,
  'count': instance.count,
  'createdAt': instance.createdAt,
  'completedAt': instance.completedAt,
  'totalDuration': instance.totalDuration,
  'requestParams': instance.requestParams?.toJson(),
  'images': instance.images,
  'aiSuggestionImage': instance.aiSuggestionImage,
  'userModelImage': instance.userModelImage,
  'regeneratedModelImage': instance.regeneratedModelImage,
  'flattenedItemsImage': instance.flattenedItemsImage,
  'finalOutfitImage': instance.finalOutfitImage,
  'productLinks': instance.productLinks?.map((e) => e.toJson()).toList(),
  'generationTime': instance.generationTime,
  'sharingImages': instance.sharingImages?.toJson(),
  'sharingImagesStatus': instance.sharingImagesStatus?.toJson(),
};

ComboServiceBizAiFashionModelModelIdGet$Response$Data
_$ComboServiceBizAiFashionModelModelIdGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionModelModelIdGet$Response$Data(
  id: (json['id'] as num?)?.toDouble(),
  tenantCode: json['tenantCode'] as String?,
  userId: json['userId'] as String?,
  modelDesc: json['modelDesc'] as String?,
  modelId: json['modelId'] as String?,
  modelImage: json['modelImage'] as String?,
  modelHeaderImage: json['modelHeaderImage'] as String?,
  ext: json['ext'] as String?,
  isDeleted: (json['isDeleted'] as num?)?.toDouble(),
  gmtCreate: json['gmtCreate'] as String?,
  gmtUpdate: json['gmtUpdate'] as String?,
  groupId: (json['groupId'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$ComboServiceBizAiFashionModelModelIdGet$Response$DataToJson(
  ComboServiceBizAiFashionModelModelIdGet$Response$Data instance,
) => <String, dynamic>{
  'id': instance.id,
  'tenantCode': instance.tenantCode,
  'userId': instance.userId,
  'modelDesc': instance.modelDesc,
  'modelId': instance.modelId,
  'modelImage': instance.modelImage,
  'modelHeaderImage': instance.modelHeaderImage,
  'ext': instance.ext,
  'isDeleted': instance.isDeleted,
  'gmtCreate': instance.gmtCreate,
  'gmtUpdate': instance.gmtUpdate,
  'groupId': instance.groupId,
};

ComboServiceBizAiFashionModelListGet$Response$Data
_$ComboServiceBizAiFashionModelListGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionModelListGet$Response$Data(
  models: (json['models'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizAiFashionModelListGet$Response$Data$Models$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  fstModel: json['fstModel'] as bool?,
);

Map<String, dynamic> _$ComboServiceBizAiFashionModelListGet$Response$DataToJson(
  ComboServiceBizAiFashionModelListGet$Response$Data instance,
) => <String, dynamic>{
  'models': instance.models?.map((e) => e.toJson()).toList(),
  'fstModel': instance.fstModel,
};

ComboServiceApiV1StyleOutfitsGeneratePost$Response$Data
_$ComboServiceApiV1StyleOutfitsGeneratePost$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceApiV1StyleOutfitsGeneratePost$Response$Data(
  taskId: json['taskId'] as String?,
  status: json['status'] as String?,
  count: (json['count'] as num?)?.toDouble(),
  estimatedTime: json['estimatedTime'] as String?,
  createdAt: (json['createdAt'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsGeneratePost$Response$DataToJson(
  ComboServiceApiV1StyleOutfitsGeneratePost$Response$Data instance,
) => <String, dynamic>{
  'taskId': instance.taskId,
  'status': instance.status,
  'count': instance.count,
  'estimatedTime': instance.estimatedTime,
  'createdAt': instance.createdAt,
};

ComboServiceBizAiFashionNoAuthStylePresetGet$Response$Data
_$ComboServiceBizAiFashionNoAuthStylePresetGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionNoAuthStylePresetGet$Response$Data(
  referenceImages: (json['referenceImages'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizAiFashionNoAuthStylePresetGet$Response$Data$ReferenceImages$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  option: json['option'] == null
      ? null
      : ComboServiceBizAiFashionNoAuthStylePresetGet$Response$Data$Option.fromJson(
          json['option'] as Map<String, dynamic>,
        ),
  prompt: json['prompt'] as String?,
  modelInfo: json['modelInfo'] == null
      ? null
      : ComboServiceBizAiFashionNoAuthStylePresetGet$Response$Data$ModelInfo.fromJson(
          json['modelInfo'] as Map<String, dynamic>,
        ),
  templateId: (json['templateId'] as num?)?.toInt(),
);

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthStylePresetGet$Response$DataToJson(
  ComboServiceBizAiFashionNoAuthStylePresetGet$Response$Data instance,
) => <String, dynamic>{
  'referenceImages': instance.referenceImages?.map((e) => e.toJson()).toList(),
  'option': instance.option?.toJson(),
  'prompt': instance.prompt,
  'modelInfo': instance.modelInfo?.toJson(),
  'templateId': instance.templateId,
};

ComboServiceBizAiFashionNoAuthPostListGet$Response$Data
_$ComboServiceBizAiFashionNoAuthPostListGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionNoAuthPostListGet$Response$Data(
  posts: (json['posts'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizAiFashionNoAuthPostListGet$Response$Data$Posts$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  nextCursor: json['nextCursor'] as String?,
  hasMore: json['hasMore'] as bool?,
);

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthPostListGet$Response$DataToJson(
  ComboServiceBizAiFashionNoAuthPostListGet$Response$Data instance,
) => <String, dynamic>{
  'posts': instance.posts?.map((e) => e.toJson()).toList(),
  'nextCursor': instance.nextCursor,
  'hasMore': instance.hasMore,
};

ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data
_$ComboServiceBizAiFashionNoAuthPostDetailGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data(
  postId: (json['postId'] as num?)?.toDouble(),
  postTitle: json['postTitle'] as String?,
  frontImage: json['frontImage'] == null
      ? null
      : ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$FrontImage.fromJson(
          json['frontImage'] as Map<String, dynamic>,
        ),
  headerImage: json['headerImage'] == null
      ? null
      : ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$HeaderImage.fromJson(
          json['headerImage'] as Map<String, dynamic>,
        ),
  modelImage: json['modelImage'] == null
      ? null
      : ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$ModelImage.fromJson(
          json['modelImage'] as Map<String, dynamic>,
        ),
  images: (json['images'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$Images$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  footerImages: (json['footerImages'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$FooterImages$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  prompt: json['prompt'] as String?,
  option: json['option'] == null
      ? null
      : ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$Option.fromJson(
          json['option'] as Map<String, dynamic>,
        ),
  templateId: (json['templateId'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthPostDetailGet$Response$DataToJson(
  ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data instance,
) => <String, dynamic>{
  'postId': instance.postId,
  'postTitle': instance.postTitle,
  'frontImage': instance.frontImage?.toJson(),
  'headerImage': instance.headerImage?.toJson(),
  'modelImage': instance.modelImage?.toJson(),
  'images': instance.images?.map((e) => e.toJson()).toList(),
  'footerImages': instance.footerImages?.map((e) => e.toJson()).toList(),
  'prompt': instance.prompt,
  'option': instance.option?.toJson(),
  'templateId': instance.templateId,
};

ComboServiceBizAiFashionNoAuthSelectOptionGet$Response$Data
_$ComboServiceBizAiFashionNoAuthSelectOptionGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionNoAuthSelectOptionGet$Response$Data(
  selectionList: (json['selectionList'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthSelectOptionGet$Response$DataToJson(
  ComboServiceBizAiFashionNoAuthSelectOptionGet$Response$Data instance,
) => <String, dynamic>{
  'selectionList': instance.selectionList?.map((e) => e.toJson()).toList(),
};

ComboServiceApiV1StyleOutfitsGenerateModelRegeneratePost$Response$Data
_$ComboServiceApiV1StyleOutfitsGenerateModelRegeneratePost$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceApiV1StyleOutfitsGenerateModelRegeneratePost$Response$Data(
  modelId: json['modelId'] as String?,
  status: json['status'] as String?,
);

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsGenerateModelRegeneratePost$Response$DataToJson(
  ComboServiceApiV1StyleOutfitsGenerateModelRegeneratePost$Response$Data
  instance,
) => <String, dynamic>{'modelId': instance.modelId, 'status': instance.status};

ComboServiceApiV1StyleOutfitsGenerateRegeneratePost$Response$Data
_$ComboServiceApiV1StyleOutfitsGenerateRegeneratePost$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceApiV1StyleOutfitsGenerateRegeneratePost$Response$Data(
  taskId: json['taskId'] as String?,
  status: json['status'] as String?,
);

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsGenerateRegeneratePost$Response$DataToJson(
  ComboServiceApiV1StyleOutfitsGenerateRegeneratePost$Response$Data instance,
) => <String, dynamic>{'taskId': instance.taskId, 'status': instance.status};

ComboServiceBizUserShareRewardPageGet$Response$Data
_$ComboServiceBizUserShareRewardPageGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizUserShareRewardPageGet$Response$Data(
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizUserShareRewardPageGet$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  total: (json['total'] as num?)?.toDouble(),
  size: (json['size'] as num?)?.toDouble(),
  current: (json['current'] as num?)?.toDouble(),
  pages: (json['pages'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$ComboServiceBizUserShareRewardPageGet$Response$DataToJson(
  ComboServiceBizUserShareRewardPageGet$Response$Data instance,
) => <String, dynamic>{
  'records': instance.records?.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'size': instance.size,
  'current': instance.current,
  'pages': instance.pages,
};

ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data
_$ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data(
  albumCode: json['albumCode'] as String?,
  tenantCode: json['tenantCode'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  backImg: json['backImg'] as String?,
  pcImg: json['pcImg'] as String?,
  related: (json['related'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$Related$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  categoryTreeDto: json['categoryTreeDto'] == null
      ? null
      : ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto.fromJson(
          json['categoryTreeDto'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$DataToJson(
  ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data instance,
) => <String, dynamic>{
  'albumCode': instance.albumCode,
  'tenantCode': instance.tenantCode,
  'name': instance.name,
  'description': instance.description,
  'backImg': instance.backImg,
  'pcImg': instance.pcImg,
  'related': instance.related?.map((e) => e.toJson()).toList(),
  'categoryTreeDto': instance.categoryTreeDto?.toJson(),
};

ComboServiceNoAuthBizKolKolInfoGet$Response$Data$ExcelLinks$Item
_$ComboServiceNoAuthBizKolKolInfoGet$Response$Data$ExcelLinks$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceNoAuthBizKolKolInfoGet$Response$Data$ExcelLinks$Item(
  title: json['title'] as String?,
  excelLink: json['excelLink'] as String?,
  desc: json['desc'] as String?,
);

Map<String, dynamic>
_$ComboServiceNoAuthBizKolKolInfoGet$Response$Data$ExcelLinks$ItemToJson(
  ComboServiceNoAuthBizKolKolInfoGet$Response$Data$ExcelLinks$Item instance,
) => <String, dynamic>{
  'title': instance.title,
  'excelLink': instance.excelLink,
  'desc': instance.desc,
};

ComboServiceNoAuthPopupPromiseGet$Response$Data$Content$Item
_$ComboServiceNoAuthPopupPromiseGet$Response$Data$Content$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceNoAuthPopupPromiseGet$Response$Data$Content$Item(
  title: json['title'] as String?,
  icon: json['icon'] as String?,
  paragraphs:
      (json['paragraphs'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
  schema: json['schema'] as String?,
  schemaText: json['schemaText'] as String?,
);

Map<String, dynamic>
_$ComboServiceNoAuthPopupPromiseGet$Response$Data$Content$ItemToJson(
  ComboServiceNoAuthPopupPromiseGet$Response$Data$Content$Item instance,
) => <String, dynamic>{
  'title': instance.title,
  'icon': instance.icon,
  'paragraphs': instance.paragraphs,
  'images': instance.images,
  'schema': instance.schema,
  'schemaText': instance.schemaText,
};

ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item(
  postId: (json['postId'] as num?)?.toInt(),
  postCode: json['postCode'] as String?,
  tenantCode: json['tenantCode'] as String?,
  posterUserId: json['posterUserId'] as String?,
  title: json['title'] as String?,
  description: json['description'] as String?,
  translatedDescription: json['translatedDescription'] as String?,
  postImages:
      (json['postImages'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  relatedProductCodes:
      (json['relatedProductCodes'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  products: (json['products'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  likeCount: (json['likeCount'] as num?)?.toInt(),
  liked: json['liked'] as bool?,
  publishTime: json['publishTime'] == null
      ? null
      : DateTime.parse(json['publishTime'] as String),
);

Map<String, dynamic>
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$ItemToJson(
  ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item instance,
) => <String, dynamic>{
  'postId': instance.postId,
  'postCode': instance.postCode,
  'tenantCode': instance.tenantCode,
  'posterUserId': instance.posterUserId,
  'title': instance.title,
  'description': instance.description,
  'translatedDescription': instance.translatedDescription,
  'postImages': instance.postImages,
  'relatedProductCodes': instance.relatedProductCodes,
  'products': instance.products?.map((e) => e.toJson()).toList(),
  'likeCount': instance.likeCount,
  'liked': instance.liked,
  'publishTime': instance.publishTime?.toIso8601String(),
};

ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item(
  postId: (json['postId'] as num?)?.toInt(),
  postCode: json['postCode'] as String?,
  tenantCode: json['tenantCode'] as String?,
  posterUserId: json['posterUserId'] as String?,
  title: json['title'] as String?,
  description: json['description'] as String?,
  translatedDescription: json['translatedDescription'] as String?,
  postImages:
      (json['postImages'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  relatedProductCodes:
      (json['relatedProductCodes'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  products: (json['products'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  likeCount: (json['likeCount'] as num?)?.toInt(),
  liked: json['liked'] as bool?,
  publishTime: json['publishTime'] == null
      ? null
      : DateTime.parse(json['publishTime'] as String),
);

Map<String, dynamic>
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$ItemToJson(
  ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item instance,
) => <String, dynamic>{
  'postId': instance.postId,
  'postCode': instance.postCode,
  'tenantCode': instance.tenantCode,
  'posterUserId': instance.posterUserId,
  'title': instance.title,
  'description': instance.description,
  'translatedDescription': instance.translatedDescription,
  'postImages': instance.postImages,
  'relatedProductCodes': instance.relatedProductCodes,
  'products': instance.products?.map((e) => e.toJson()).toList(),
  'likeCount': instance.likeCount,
  'liked': instance.liked,
  'publishTime': instance.publishTime?.toIso8601String(),
};

ComboServiceBizAiFashionNoAuthBodyShapeGet$Response$Data$Female$Item
_$ComboServiceBizAiFashionNoAuthBodyShapeGet$Response$Data$Female$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionNoAuthBodyShapeGet$Response$Data$Female$Item(
  age: json['age'] as String?,
  glass: json['glass'] as String?,
  body: json['body'] as String?,
  style: json['style'] as String?,
  race: json['race'] as String?,
  gender: json['gender'] as String?,
  sort: json['sort'] as String?,
  image: json['image'] as String?,
);

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthBodyShapeGet$Response$Data$Female$ItemToJson(
  ComboServiceBizAiFashionNoAuthBodyShapeGet$Response$Data$Female$Item instance,
) => <String, dynamic>{
  'age': instance.age,
  'glass': instance.glass,
  'body': instance.body,
  'style': instance.style,
  'race': instance.race,
  'gender': instance.gender,
  'sort': instance.sort,
  'image': instance.image,
};

ComboServiceBizAiFashionNoAuthBodyShapeGet$Response$Data$Male$Item
_$ComboServiceBizAiFashionNoAuthBodyShapeGet$Response$Data$Male$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionNoAuthBodyShapeGet$Response$Data$Male$Item(
  age: json['age'] as String?,
  glass: json['glass'] as String?,
  body: json['body'] as String?,
  style: json['style'] as String?,
  race: json['race'] as String?,
  gender: json['gender'] as String?,
  sort: json['sort'] as String?,
  image: json['image'] as String?,
);

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthBodyShapeGet$Response$Data$Male$ItemToJson(
  ComboServiceBizAiFashionNoAuthBodyShapeGet$Response$Data$Male$Item instance,
) => <String, dynamic>{
  'age': instance.age,
  'glass': instance.glass,
  'body': instance.body,
  'style': instance.style,
  'race': instance.race,
  'gender': instance.gender,
  'sort': instance.sort,
  'image': instance.image,
};

ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item
_$ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item(
  taskId: json['taskId'] as String?,
  status: json['status'] as String?,
  count: (json['count'] as num?)?.toDouble(),
  createdAt: (json['createdAt'] as num?)?.toDouble(),
  completedAt: (json['completedAt'] as num?)?.toDouble(),
  totalDuration: (json['totalDuration'] as num?)?.toDouble(),
  requestParams: json['requestParams'] == null
      ? null
      : ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$RequestParams.fromJson(
          json['requestParams'] as Map<String, dynamic>,
        ),
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
  aiSuggestionImage: json['aiSuggestionImage'] as String?,
  userModelImage: json['userModelImage'] as String?,
  regeneratedModelImage: json['regeneratedModelImage'] as String?,
  flattenedItemsImage: json['flattenedItemsImage'] as String?,
  finalOutfitImage: json['finalOutfitImage'] as String?,
  productLinks: (json['productLinks'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  generationTime: json['generationTime'] as String?,
  sharingImages: json['sharingImages'] == null
      ? null
      : ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages.fromJson(
          json['sharingImages'] as Map<String, dynamic>,
        ),
  sharingImagesStatus: json['sharingImagesStatus'] == null
      ? null
      : ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImagesStatus.fromJson(
          json['sharingImagesStatus'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$ItemToJson(
  ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item
  instance,
) => <String, dynamic>{
  'taskId': instance.taskId,
  'status': instance.status,
  'count': instance.count,
  'createdAt': instance.createdAt,
  'completedAt': instance.completedAt,
  'totalDuration': instance.totalDuration,
  'requestParams': instance.requestParams?.toJson(),
  'images': instance.images,
  'aiSuggestionImage': instance.aiSuggestionImage,
  'userModelImage': instance.userModelImage,
  'regeneratedModelImage': instance.regeneratedModelImage,
  'flattenedItemsImage': instance.flattenedItemsImage,
  'finalOutfitImage': instance.finalOutfitImage,
  'productLinks': instance.productLinks?.map((e) => e.toJson()).toList(),
  'generationTime': instance.generationTime,
  'sharingImages': instance.sharingImages?.toJson(),
  'sharingImagesStatus': instance.sharingImagesStatus?.toJson(),
};

ComboServiceApiV1StyleOutfitsModelIdStatusGet$Response$Data$GeneratedModels$Item
_$ComboServiceApiV1StyleOutfitsModelIdStatusGet$Response$Data$GeneratedModels$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceApiV1StyleOutfitsModelIdStatusGet$Response$Data$GeneratedModels$Item(
      index: (json['index'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsModelIdStatusGet$Response$Data$GeneratedModels$ItemToJson(
  ComboServiceApiV1StyleOutfitsModelIdStatusGet$Response$Data$GeneratedModels$Item
  instance,
) => <String, dynamic>{'index': instance.index, 'url': instance.url};

ComboServiceApiV1StyleOutfitsResultGet$Response$Data$RequestParams
_$ComboServiceApiV1StyleOutfitsResultGet$Response$Data$RequestParamsFromJson(
  Map<String, dynamic> json,
) => ComboServiceApiV1StyleOutfitsResultGet$Response$Data$RequestParams(
  referenceImages:
      (json['referenceImages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  customPrompt: json['customPrompt'] as String?,
  gender: (json['gender'] as num?)?.toDouble(),
  age: json['age'] as String?,
  physicalAppearance: json['physicalAppearance'] as String?,
  styleTrendyElements: json['styleTrendyElements'] as String?,
  brand: json['brand'] as String?,
  budget: json['budget'] as String?,
  customModelId: json['customModelId'] as String?,
  modelImageUrl: json['modelImageUrl'] as String?,
  referenceMode: json['referenceMode'] as String?,
  occasion: json['occasion'] as String?,
  useMultiModelImage: json['useMultiModelImage'] as bool?,
);

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsResultGet$Response$Data$RequestParamsToJson(
  ComboServiceApiV1StyleOutfitsResultGet$Response$Data$RequestParams instance,
) => <String, dynamic>{
  'referenceImages': instance.referenceImages,
  'customPrompt': instance.customPrompt,
  'gender': instance.gender,
  'age': instance.age,
  'physicalAppearance': instance.physicalAppearance,
  'styleTrendyElements': instance.styleTrendyElements,
  'brand': instance.brand,
  'budget': instance.budget,
  'customModelId': instance.customModelId,
  'modelImageUrl': instance.modelImageUrl,
  'referenceMode': instance.referenceMode,
  'occasion': instance.occasion,
  'useMultiModelImage': instance.useMultiModelImage,
};

ComboServiceApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$Item
_$ComboServiceApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$Item(
  name: json['name'] as String?,
  title: json['title'] as String?,
  link: json['link'] as String?,
  source: json['source'] as String?,
  price: json['price'] as String?,
  image: json['image'] as String?,
  fallback: json['fallback'] as bool?,
  pending: json['pending'] as String?,
  selectedId: (json['selectedId'] as num?)?.toDouble(),
  options: (json['options'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$Item$Options$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  cachedImage: json['cachedImage'] as String?,
  cachedImageMime: json['cachedImageMime'] as String?,
  cachedImageSelectedId: (json['cachedImageSelectedId'] as num?)?.toDouble(),
  cachedImageUpdatedAt: (json['cachedImageUpdatedAt'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$ItemToJson(
  ComboServiceApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$Item
  instance,
) => <String, dynamic>{
  'name': instance.name,
  'title': instance.title,
  'link': instance.link,
  'source': instance.source,
  'price': instance.price,
  'image': instance.image,
  'fallback': instance.fallback,
  'pending': instance.pending,
  'selectedId': instance.selectedId,
  'options': instance.options?.map((e) => e.toJson()).toList(),
  'cachedImage': instance.cachedImage,
  'cachedImageMime': instance.cachedImageMime,
  'cachedImageSelectedId': instance.cachedImageSelectedId,
  'cachedImageUpdatedAt': instance.cachedImageUpdatedAt,
};

ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages
_$ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImagesFromJson(
  Map<String, dynamic> json,
) => ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages(
  title: json['title'] as String?,
  items: (json['items'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  generatedAt: (json['generated_at'] as num?)?.toDouble(),
  multiModelImageUrl: json['multi_model_image_url'] as String?,
  whiteBgImages:
      (json['white_bg_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  images: (json['images'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Images$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImagesToJson(
  ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages instance,
) => <String, dynamic>{
  'title': instance.title,
  'items': instance.items?.map((e) => e.toJson()).toList(),
  'generated_at': instance.generatedAt,
  'multi_model_image_url': instance.multiModelImageUrl,
  'white_bg_images': instance.whiteBgImages,
  'images': instance.images?.map((e) => e.toJson()).toList(),
};

ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImagesStatus
_$ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImagesStatusFromJson(
  Map<String, dynamic> json,
) => ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImagesStatus(
  ready: json['ready'] as bool?,
  count: (json['count'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImagesStatusToJson(
  ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImagesStatus
  instance,
) => <String, dynamic>{'ready': instance.ready, 'count': instance.count};

ComboServiceBizAiFashionModelListGet$Response$Data$Models$Item
_$ComboServiceBizAiFashionModelListGet$Response$Data$Models$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionModelListGet$Response$Data$Models$Item(
  groupId: (json['groupId'] as num?)?.toDouble(),
  title: json['title'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizAiFashionModelListGet$Response$Data$Models$Item$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ComboServiceBizAiFashionModelListGet$Response$Data$Models$ItemToJson(
  ComboServiceBizAiFashionModelListGet$Response$Data$Models$Item instance,
) => <String, dynamic>{
  'groupId': instance.groupId,
  'title': instance.title,
  'data': instance.data?.map((e) => e.toJson()).toList(),
};

ComboServiceBizAiFashionNoAuthStylePresetGet$Response$Data$ReferenceImages$Item
_$ComboServiceBizAiFashionNoAuthStylePresetGet$Response$Data$ReferenceImages$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceBizAiFashionNoAuthStylePresetGet$Response$Data$ReferenceImages$Item(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthStylePresetGet$Response$Data$ReferenceImages$ItemToJson(
  ComboServiceBizAiFashionNoAuthStylePresetGet$Response$Data$ReferenceImages$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ComboServiceBizAiFashionNoAuthStylePresetGet$Response$Data$Option
_$ComboServiceBizAiFashionNoAuthStylePresetGet$Response$Data$OptionFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionNoAuthStylePresetGet$Response$Data$Option(
  occasion: json['occasion'] as String?,
  styleTrendyElements: json['styleTrendyElements'] as String?,
);

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthStylePresetGet$Response$Data$OptionToJson(
  ComboServiceBizAiFashionNoAuthStylePresetGet$Response$Data$Option instance,
) => <String, dynamic>{
  'occasion': instance.occasion,
  'styleTrendyElements': instance.styleTrendyElements,
};

ComboServiceBizAiFashionNoAuthStylePresetGet$Response$Data$ModelInfo
_$ComboServiceBizAiFashionNoAuthStylePresetGet$Response$Data$ModelInfoFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionNoAuthStylePresetGet$Response$Data$ModelInfo(
  id: (json['id'] as num?)?.toInt(),
  tenantCode: json['tenantCode'] as String?,
  userId: json['userId'] as String?,
  modelDesc: json['modelDesc'] as String?,
  modelId: json['modelId'] as String?,
  modelImage: json['modelImage'] as String?,
  modelHeaderImage: json['modelHeaderImage'] as String?,
  ext: json['ext'] as String?,
  isDeleted: (json['isDeleted'] as num?)?.toInt(),
  gmtCreate: json['gmtCreate'] == null
      ? null
      : DateTime.parse(json['gmtCreate'] as String),
  gmtUpdate: json['gmtUpdate'] == null
      ? null
      : DateTime.parse(json['gmtUpdate'] as String),
  groupId: (json['groupId'] as num?)?.toInt(),
);

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthStylePresetGet$Response$Data$ModelInfoToJson(
  ComboServiceBizAiFashionNoAuthStylePresetGet$Response$Data$ModelInfo instance,
) => <String, dynamic>{
  'id': instance.id,
  'tenantCode': instance.tenantCode,
  'userId': instance.userId,
  'modelDesc': instance.modelDesc,
  'modelId': instance.modelId,
  'modelImage': instance.modelImage,
  'modelHeaderImage': instance.modelHeaderImage,
  'ext': instance.ext,
  'isDeleted': instance.isDeleted,
  'gmtCreate': instance.gmtCreate?.toIso8601String(),
  'gmtUpdate': instance.gmtUpdate?.toIso8601String(),
  'groupId': instance.groupId,
};

ComboServiceBizAiFashionNoAuthPostListGet$Response$Data$Posts$Item
_$ComboServiceBizAiFashionNoAuthPostListGet$Response$Data$Posts$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionNoAuthPostListGet$Response$Data$Posts$Item(
  images: (json['images'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$Images$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  prompt: json['prompt'] as String?,
  postTitle: json['postTitle'] as String?,
  postId: (json['postId'] as num?)?.toDouble(),
  frontImage: json['frontImage'] == null
      ? null
      : ComboServiceBizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$FrontImage.fromJson(
          json['frontImage'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthPostListGet$Response$Data$Posts$ItemToJson(
  ComboServiceBizAiFashionNoAuthPostListGet$Response$Data$Posts$Item instance,
) => <String, dynamic>{
  'images': instance.images?.map((e) => e.toJson()).toList(),
  'prompt': instance.prompt,
  'postTitle': instance.postTitle,
  'postId': instance.postId,
  'frontImage': instance.frontImage?.toJson(),
};

ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$FrontImage
_$ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$FrontImageFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$FrontImage(
  width: (json['width'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$FrontImageToJson(
  ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$FrontImage instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$HeaderImage
_$ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$HeaderImageFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$HeaderImage(
  width: (json['width'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$HeaderImageToJson(
  ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$HeaderImage
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$ModelImage
_$ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$ModelImageFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$ModelImage(
  url: json['url'] as String?,
  height: (json['height'] as num?)?.toDouble(),
  width: (json['width'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$ModelImageToJson(
  ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$ModelImage instance,
) => <String, dynamic>{
  'url': instance.url,
  'height': instance.height,
  'width': instance.width,
};

ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$Images$Item
_$ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$Images$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$Images$Item(
  width: (json['width'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$Images$ItemToJson(
  ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$Images$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$FooterImages$Item
_$ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$FooterImages$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$FooterImages$Item(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$FooterImages$ItemToJson(
  ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$FooterImages$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$Option
_$ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$OptionFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$Option(
  category: json['category'] as String?,
  styleTrendyElements: json['styleTrendyElements'] as String?,
  gender: json['gender'] as String?,
  occasion: json['occasion'] as String?,
  theme: json['theme'] as String?,
  style: json['style'] as String?,
  brand: json['brand'] as String?,
  scene: json['scene'] as String?,
  keywords: json['keywords'] as String?,
  mood: json['mood'] as String?,
  age: json['age'] as String?,
  comparableBrandsBudget: json['comparableBrandsBudget'] as String?,
  physicalAppearance: json['physicalAppearance'] as String?,
  skinColor: json['skinColor'] as String?,
);

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$OptionToJson(
  ComboServiceBizAiFashionNoAuthPostDetailGet$Response$Data$Option instance,
) => <String, dynamic>{
  'category': instance.category,
  'styleTrendyElements': instance.styleTrendyElements,
  'gender': instance.gender,
  'occasion': instance.occasion,
  'theme': instance.theme,
  'style': instance.style,
  'brand': instance.brand,
  'scene': instance.scene,
  'keywords': instance.keywords,
  'mood': instance.mood,
  'age': instance.age,
  'comparableBrandsBudget': instance.comparableBrandsBudget,
  'physicalAppearance': instance.physicalAppearance,
  'skinColor': instance.skinColor,
};

ComboServiceBizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$Item
_$ComboServiceBizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$Item(
  key: json['key'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$Item$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$ItemToJson(
  ComboServiceBizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$Item
  instance,
) => <String, dynamic>{
  'key': instance.key,
  'data': instance.data?.map((e) => e.toJson()).toList(),
};

ComboServiceBizUserShareRewardPageGet$Response$Data$Records$Item
_$ComboServiceBizUserShareRewardPageGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizUserShareRewardPageGet$Response$Data$Records$Item(
  rewardId: json['rewardId'] as String?,
  userId: json['userId'] as String?,
  content: json['content'] as String?,
  auditStatus: (json['auditStatus'] as num?)?.toDouble(),
  rewardAmount: json['rewardAmount'] as String?,
  rewardType: (json['rewardType'] as num?)?.toDouble(),
  rewardStatus: (json['rewardStatus'] as num?)?.toDouble(),
  rewardTime: json['rewardTime'] as String?,
);

Map<String, dynamic>
_$ComboServiceBizUserShareRewardPageGet$Response$Data$Records$ItemToJson(
  ComboServiceBizUserShareRewardPageGet$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'rewardId': instance.rewardId,
  'userId': instance.userId,
  'content': instance.content,
  'auditStatus': instance.auditStatus,
  'rewardAmount': instance.rewardAmount,
  'rewardType': instance.rewardType,
  'rewardStatus': instance.rewardStatus,
  'rewardTime': instance.rewardTime,
};

ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$Related$Item
_$ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$Related$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$Related$Item(
  albumCode: json['albumCode'] as String?,
  tenantCode: json['tenantCode'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  backImg: json['backImg'] as String?,
);

Map<String, dynamic>
_$ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$Related$ItemToJson(
  ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$Related$Item instance,
) => <String, dynamic>{
  'albumCode': instance.albumCode,
  'tenantCode': instance.tenantCode,
  'name': instance.name,
  'description': instance.description,
  'backImg': instance.backImg,
};

ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto
_$ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDtoFromJson(
  Map<String, dynamic> json,
) => ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto(
  categoryList: (json['categoryList'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDtoToJson(
  ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto instance,
) => <String, dynamic>{
  'categoryList': instance.categoryList?.map((e) => e.toJson()).toList(),
};

ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item(
  shopCode: json['shopCode'] as String?,
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  tenantCode: json['tenantCode'] as String?,
  brandName: json['brandName'] as String?,
  mainImg: (json['mainImg'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainImg$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  subImg: (json['subImg'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$SubImg$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  mainVideo: (json['mainVideo'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainVideo$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  imgCollection: (json['imgCollection'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgCollection$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  textDetail: json['textDetail'] as String?,
  imgDetail: (json['imgDetail'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgDetail$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  categoryId: (json['categoryId'] as num?)?.toInt(),
  categoryTree:
      (json['categoryTree'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  productOptions: (json['productOptions'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  productAttrs: (json['productAttrs'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  sourcePlatform: json['sourcePlatform'] as String?,
  platformUrl: json['platformUrl'] as String?,
  platformProductId: json['platformProductId'] as String?,
  skuCode: json['skuCode'] as String?,
  skuSourceCode: json['skuSourceCode'] as String?,
  sellPriceCur: json['sellPriceCur'] as String?,
  sellPrice: (json['sellPrice'] as num?)?.toDouble(),
  targetSellPrice: (json['targetSellPrice'] as num?)?.toDouble(),
  targetSellCur: json['targetSellCur'] as String?,
  targetOriginPrice: (json['targetOriginPrice'] as num?)?.toDouble(),
  productFlag: json['productFlag'] as String?,
  marketingInfo: json['marketingInfo'] as String?,
  sellQuantity: json['sellQuantity'] as String?,
  inspectImages: (json['inspectImages'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$ItemToJson(
  ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item
  instance,
) => <String, dynamic>{
  'shopCode': instance.shopCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'tenantCode': instance.tenantCode,
  'brandName': instance.brandName,
  'mainImg': instance.mainImg?.map((e) => e.toJson()).toList(),
  'subImg': instance.subImg?.map((e) => e.toJson()).toList(),
  'mainVideo': instance.mainVideo?.map((e) => e.toJson()).toList(),
  'imgCollection': instance.imgCollection?.map((e) => e.toJson()).toList(),
  'textDetail': instance.textDetail,
  'imgDetail': instance.imgDetail?.map((e) => e.toJson()).toList(),
  'categoryId': instance.categoryId,
  'categoryTree': instance.categoryTree,
  'productOptions': instance.productOptions?.map((e) => e.toJson()).toList(),
  'productAttrs': instance.productAttrs?.map((e) => e.toJson()).toList(),
  'sourcePlatform': instance.sourcePlatform,
  'platformUrl': instance.platformUrl,
  'platformProductId': instance.platformProductId,
  'skuCode': instance.skuCode,
  'skuSourceCode': instance.skuSourceCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'targetOriginPrice': instance.targetOriginPrice,
  'productFlag': instance.productFlag,
  'marketingInfo': instance.marketingInfo,
  'sellQuantity': instance.sellQuantity,
  'inspectImages': instance.inspectImages?.map((e) => e.toJson()).toList(),
  'tags': instance.tags?.map((e) => e.toJson()).toList(),
};

ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item(
  shopCode: json['shopCode'] as String?,
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  tenantCode: json['tenantCode'] as String?,
  brandName: json['brandName'] as String?,
  mainImg: (json['mainImg'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainImg$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  subImg: (json['subImg'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$SubImg$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  mainVideo: (json['mainVideo'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainVideo$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  imgCollection: (json['imgCollection'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgCollection$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  textDetail: json['textDetail'] as String?,
  imgDetail: (json['imgDetail'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgDetail$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  categoryId: (json['categoryId'] as num?)?.toInt(),
  categoryTree:
      (json['categoryTree'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  productOptions: (json['productOptions'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  productAttrs: (json['productAttrs'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  sourcePlatform: json['sourcePlatform'] as String?,
  platformUrl: json['platformUrl'] as String?,
  platformProductId: json['platformProductId'] as String?,
  skuCode: json['skuCode'] as String?,
  skuSourceCode: json['skuSourceCode'] as String?,
  sellPriceCur: json['sellPriceCur'] as String?,
  sellPrice: (json['sellPrice'] as num?)?.toDouble(),
  targetSellPrice: (json['targetSellPrice'] as num?)?.toDouble(),
  targetSellCur: json['targetSellCur'] as String?,
  targetOriginPrice: (json['targetOriginPrice'] as num?)?.toDouble(),
  productFlag: json['productFlag'] as String?,
  marketingInfo: json['marketingInfo'] as String?,
  sellQuantity: json['sellQuantity'] as String?,
  inspectImages: (json['inspectImages'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$ItemToJson(
  ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item
  instance,
) => <String, dynamic>{
  'shopCode': instance.shopCode,
  'productCode': instance.productCode,
  'productName': instance.productName,
  'tenantCode': instance.tenantCode,
  'brandName': instance.brandName,
  'mainImg': instance.mainImg?.map((e) => e.toJson()).toList(),
  'subImg': instance.subImg?.map((e) => e.toJson()).toList(),
  'mainVideo': instance.mainVideo?.map((e) => e.toJson()).toList(),
  'imgCollection': instance.imgCollection?.map((e) => e.toJson()).toList(),
  'textDetail': instance.textDetail,
  'imgDetail': instance.imgDetail?.map((e) => e.toJson()).toList(),
  'categoryId': instance.categoryId,
  'categoryTree': instance.categoryTree,
  'productOptions': instance.productOptions?.map((e) => e.toJson()).toList(),
  'productAttrs': instance.productAttrs?.map((e) => e.toJson()).toList(),
  'sourcePlatform': instance.sourcePlatform,
  'platformUrl': instance.platformUrl,
  'platformProductId': instance.platformProductId,
  'skuCode': instance.skuCode,
  'skuSourceCode': instance.skuSourceCode,
  'sellPriceCur': instance.sellPriceCur,
  'sellPrice': instance.sellPrice,
  'targetSellPrice': instance.targetSellPrice,
  'targetSellCur': instance.targetSellCur,
  'targetOriginPrice': instance.targetOriginPrice,
  'productFlag': instance.productFlag,
  'marketingInfo': instance.marketingInfo,
  'sellQuantity': instance.sellQuantity,
  'inspectImages': instance.inspectImages?.map((e) => e.toJson()).toList(),
  'tags': instance.tags?.map((e) => e.toJson()).toList(),
};

ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$RequestParams
_$ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$RequestParamsFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$RequestParams(
      referenceImages:
          (json['referenceImages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      customPrompt: json['customPrompt'] as String?,
      gender: (json['gender'] as num?)?.toDouble(),
      age: json['age'] as String?,
      physicalAppearance: json['physicalAppearance'] as String?,
      styleTrendyElements: json['styleTrendyElements'] as String?,
      brand: json['brand'] as String?,
      budget: json['budget'] as String?,
      customModelId: json['customModelId'] as String?,
      modelImageUrl: json['modelImageUrl'] as String?,
      referenceMode: json['referenceMode'] as String?,
      occasion: json['occasion'] as String?,
      useMultiModelImage: json['useMultiModelImage'] as bool?,
    );

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$RequestParamsToJson(
  ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$RequestParams
  instance,
) => <String, dynamic>{
  'referenceImages': instance.referenceImages,
  'customPrompt': instance.customPrompt,
  'gender': instance.gender,
  'age': instance.age,
  'physicalAppearance': instance.physicalAppearance,
  'styleTrendyElements': instance.styleTrendyElements,
  'brand': instance.brand,
  'budget': instance.budget,
  'customModelId': instance.customModelId,
  'modelImageUrl': instance.modelImageUrl,
  'referenceMode': instance.referenceMode,
  'occasion': instance.occasion,
  'useMultiModelImage': instance.useMultiModelImage,
};

ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$Item
_$ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$Item(
  name: json['name'] as String?,
  title: json['title'] as String?,
  link: json['link'] as String?,
  source: json['source'] as String?,
  price: json['price'] as String?,
  image: json['image'] as String?,
  fallback: json['fallback'] as bool?,
  pending: json['pending'] as String?,
  selectedId: (json['selectedId'] as num?)?.toDouble(),
  options: (json['options'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$Item$Options$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  cachedImage: json['cachedImage'] as String?,
  cachedImageMime: json['cachedImageMime'] as String?,
  cachedImageSelectedId: (json['cachedImageSelectedId'] as num?)?.toDouble(),
  cachedImageUpdatedAt: (json['cachedImageUpdatedAt'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$ItemToJson(
  ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$Item
  instance,
) => <String, dynamic>{
  'name': instance.name,
  'title': instance.title,
  'link': instance.link,
  'source': instance.source,
  'price': instance.price,
  'image': instance.image,
  'fallback': instance.fallback,
  'pending': instance.pending,
  'selectedId': instance.selectedId,
  'options': instance.options?.map((e) => e.toJson()).toList(),
  'cachedImage': instance.cachedImage,
  'cachedImageMime': instance.cachedImageMime,
  'cachedImageSelectedId': instance.cachedImageSelectedId,
  'cachedImageUpdatedAt': instance.cachedImageUpdatedAt,
};

ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages
_$ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImagesFromJson(
  Map<String, dynamic> json,
) => ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages(
  title: json['title'] as String?,
  items: (json['items'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  generatedAt: (json['generated_at'] as num?)?.toDouble(),
  multiModelImageUrl: json['multi_model_image_url'] as String?,
  whiteBgImages:
      (json['white_bg_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  images: (json['images'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Images$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImagesToJson(
  ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages
  instance,
) => <String, dynamic>{
  'title': instance.title,
  'items': instance.items?.map((e) => e.toJson()).toList(),
  'generated_at': instance.generatedAt,
  'multi_model_image_url': instance.multiModelImageUrl,
  'white_bg_images': instance.whiteBgImages,
  'images': instance.images?.map((e) => e.toJson()).toList(),
};

ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImagesStatus
_$ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImagesStatusFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImagesStatus(
      ready: json['ready'] as bool?,
      count: (json['count'] as num?)?.toDouble(),
    );

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImagesStatusToJson(
  ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImagesStatus
  instance,
) => <String, dynamic>{'ready': instance.ready, 'count': instance.count};

ComboServiceApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$Item$Options$Item
_$ComboServiceApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$Item$Options$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$Item$Options$Item(
      id: (json['id'] as num?)?.toDouble(),
      title: json['title'] as String?,
      link: json['link'] as String?,
      source: json['source'] as String?,
      price: json['price'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$Item$Options$ItemToJson(
  ComboServiceApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$Item$Options$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'link': instance.link,
  'source': instance.source,
  'price': instance.price,
  'image': instance.image,
};

ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item
_$ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item(
  sharingImageId: (json['sharingImageId'] as num?)?.toDouble(),
  imageUrl: json['imageUrl'] as String?,
  caption: json['caption'] == null
      ? null
      : ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$Caption.fromJson(
          json['caption'] as Map<String, dynamic>,
        ),
  metadata: json['metadata'] == null
      ? null
      : ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$Metadata.fromJson(
          json['metadata'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$ItemToJson(
  ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item
  instance,
) => <String, dynamic>{
  'sharingImageId': instance.sharingImageId,
  'imageUrl': instance.imageUrl,
  'caption': instance.caption?.toJson(),
  'metadata': instance.metadata?.toJson(),
};

ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Images$Item
_$ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Images$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Images$Item(
      sharingImageId: (json['sharingImageId'] as num?)?.toDouble(),
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Images$ItemToJson(
  ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Images$Item
  instance,
) => <String, dynamic>{
  'sharingImageId': instance.sharingImageId,
  'imageUrl': instance.imageUrl,
};

ComboServiceBizAiFashionModelListGet$Response$Data$Models$Item$Data$Item
_$ComboServiceBizAiFashionModelListGet$Response$Data$Models$Item$Data$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizAiFashionModelListGet$Response$Data$Models$Item$Data$Item(
  id: (json['id'] as num?)?.toDouble(),
  tenantCode: json['tenantCode'] as String?,
  userId: json['userId'] as String?,
  modelDesc: json['modelDesc'] as String?,
  modelId: json['modelId'] as String?,
  modelImage: json['modelImage'] as String?,
  modelHeaderImage: json['modelHeaderImage'] as String?,
  ext: json['ext'],
  isDeleted: (json['isDeleted'] as num?)?.toDouble(),
  gmtCreate: json['gmtCreate'] as String?,
  gmtUpdate: json['gmtUpdate'] as String?,
  groupId: (json['groupId'] as num?)?.toDouble(),
  modelData:
      (json['modelData'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
);

Map<String, dynamic>
_$ComboServiceBizAiFashionModelListGet$Response$Data$Models$Item$Data$ItemToJson(
  ComboServiceBizAiFashionModelListGet$Response$Data$Models$Item$Data$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'tenantCode': instance.tenantCode,
  'userId': instance.userId,
  'modelDesc': instance.modelDesc,
  'modelId': instance.modelId,
  'modelImage': instance.modelImage,
  'modelHeaderImage': instance.modelHeaderImage,
  'ext': instance.ext,
  'isDeleted': instance.isDeleted,
  'gmtCreate': instance.gmtCreate,
  'gmtUpdate': instance.gmtUpdate,
  'groupId': instance.groupId,
  'modelData': instance.modelData,
};

ComboServiceBizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$Images$Item
_$ComboServiceBizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$Images$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceBizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$Images$Item(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$Images$ItemToJson(
  ComboServiceBizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$Images$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ComboServiceBizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$FrontImage
_$ComboServiceBizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$FrontImageFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceBizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$FrontImage(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$FrontImageToJson(
  ComboServiceBizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$FrontImage
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ComboServiceBizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$Item$Data$Item
_$ComboServiceBizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$Item$Data$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceBizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$Item$Data$Item(
      label: json['label'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic>
_$ComboServiceBizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$Item$Data$ItemToJson(
  ComboServiceBizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$Item$Data$Item
  instance,
) => <String, dynamic>{'label': instance.label, 'value': instance.value};

ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$Item
_$ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$Item(
  id: (json['id'] as num?)?.toInt(),
  parentId: (json['parentId'] as num?)?.toInt(),
  level: (json['level'] as num?)?.toInt(),
  showOrder: (json['showOrder'] as num?)?.toInt(),
  name: json['name'] as String?,
  iconUrl: json['iconUrl'] as String?,
  categoryList: (json['categoryList'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$Item$CategoryList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$ItemToJson(
  ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'parentId': instance.parentId,
  'level': instance.level,
  'showOrder': instance.showOrder,
  'name': instance.name,
  'iconUrl': instance.iconUrl,
  'categoryList': instance.categoryList?.map((e) => e.toJson()).toList(),
};

ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainImg$Item
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainImg$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainImg$Item(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainImg$ItemToJson(
  ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainImg$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$SubImg$Item
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$SubImg$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$SubImg$Item(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$SubImg$ItemToJson(
  ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$SubImg$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainVideo$Item
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainVideo$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainVideo$Item(
      videoUrl: json['videoUrl'] as String?,
      vodUrl: json['vodUrl'] as String?,
      previewUrl: json['previewUrl'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic>
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainVideo$ItemToJson(
  ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainVideo$Item
  instance,
) => <String, dynamic>{
  'videoUrl': instance.videoUrl,
  'vodUrl': instance.vodUrl,
  'previewUrl': instance.previewUrl,
  'width': instance.width,
  'height': instance.height,
};

ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgCollection$Item
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgCollection$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgCollection$Item(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgCollection$ItemToJson(
  ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgCollection$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgDetail$Item
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgDetail$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgDetail$Item(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgDetail$ItemToJson(
  ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgDetail$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item(
  name: json['name'] as String?,
  type: (json['type'] as num?)?.toInt(),
  optionValues: (json['optionValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$ItemToJson(
  ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item
  instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'optionValues': instance.optionValues?.map((e) => e.toJson()).toList(),
};

ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$Item
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$Item(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic>
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$ItemToJson(
  ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$Item
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item(
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
  skuOption: json['skuOption'] == null
      ? null
      : ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOption.fromJson(
          json['skuOption'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$ItemToJson(
  ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item
  instance,
) => <String, dynamic>{
  'images': instance.images,
  'skuOption': instance.skuOption?.toJson(),
};

ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$Tags$Item
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$Tags$Item(
      tagCode: json['tagCode'] as String?,
      tagImg: json['tagImg'] as String?,
      order: (json['order'] as num?)?.toInt(),
      frontShow: (json['frontShow'] as num?)?.toInt(),
    );

Map<String, dynamic>
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$Tags$ItemToJson(
  ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$Tags$Item
  instance,
) => <String, dynamic>{
  'tagCode': instance.tagCode,
  'tagImg': instance.tagImg,
  'order': instance.order,
  'frontShow': instance.frontShow,
};

ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainImg$Item
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainImg$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainImg$Item(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainImg$ItemToJson(
  ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainImg$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$SubImg$Item
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$SubImg$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$SubImg$Item(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$SubImg$ItemToJson(
  ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$SubImg$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainVideo$Item
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainVideo$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainVideo$Item(
      videoUrl: json['videoUrl'] as String?,
      vodUrl: json['vodUrl'] as String?,
      previewUrl: json['previewUrl'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic>
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainVideo$ItemToJson(
  ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainVideo$Item
  instance,
) => <String, dynamic>{
  'videoUrl': instance.videoUrl,
  'vodUrl': instance.vodUrl,
  'previewUrl': instance.previewUrl,
  'width': instance.width,
  'height': instance.height,
};

ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgCollection$Item
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgCollection$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgCollection$Item(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgCollection$ItemToJson(
  ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgCollection$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgDetail$Item
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgDetail$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgDetail$Item(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgDetail$ItemToJson(
  ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgDetail$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item(
  name: json['name'] as String?,
  type: (json['type'] as num?)?.toInt(),
  optionValues: (json['optionValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$ItemToJson(
  ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item
  instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'optionValues': instance.optionValues?.map((e) => e.toJson()).toList(),
};

ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$Item
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$Item(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic>
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$ItemToJson(
  ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$Item
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item(
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
  skuOption: json['skuOption'] == null
      ? null
      : ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOption.fromJson(
          json['skuOption'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$ItemToJson(
  ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item
  instance,
) => <String, dynamic>{
  'images': instance.images,
  'skuOption': instance.skuOption?.toJson(),
};

ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$Tags$Item
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$Tags$Item(
      tagCode: json['tagCode'] as String?,
      tagImg: json['tagImg'] as String?,
      order: (json['order'] as num?)?.toInt(),
      frontShow: (json['frontShow'] as num?)?.toInt(),
    );

Map<String, dynamic>
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$Tags$ItemToJson(
  ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$Tags$Item
  instance,
) => <String, dynamic>{
  'tagCode': instance.tagCode,
  'tagImg': instance.tagImg,
  'order': instance.order,
  'frontShow': instance.frontShow,
};

ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$Item$Options$Item
_$ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$Item$Options$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$Item$Options$Item(
      id: (json['id'] as num?)?.toDouble(),
      title: json['title'] as String?,
      link: json['link'] as String?,
      source: json['source'] as String?,
      price: json['price'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$Item$Options$ItemToJson(
  ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$Item$Options$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'link': instance.link,
  'source': instance.source,
  'price': instance.price,
  'image': instance.image,
};

ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item
_$ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$ItemFromJson(
  Map<String, dynamic> json,
) => ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item(
  sharingImageId: (json['sharingImageId'] as num?)?.toDouble(),
  imageUrl: json['imageUrl'] as String?,
  caption: json['caption'] == null
      ? null
      : ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$Caption.fromJson(
          json['caption'] as Map<String, dynamic>,
        ),
  metadata: json['metadata'] == null
      ? null
      : ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$Metadata.fromJson(
          json['metadata'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$ItemToJson(
  ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item
  instance,
) => <String, dynamic>{
  'sharingImageId': instance.sharingImageId,
  'imageUrl': instance.imageUrl,
  'caption': instance.caption?.toJson(),
  'metadata': instance.metadata?.toJson(),
};

ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Images$Item
_$ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Images$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Images$Item(
      sharingImageId: (json['sharingImageId'] as num?)?.toDouble(),
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Images$ItemToJson(
  ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Images$Item
  instance,
) => <String, dynamic>{
  'sharingImageId': instance.sharingImageId,
  'imageUrl': instance.imageUrl,
};

ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$Caption
_$ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$CaptionFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$Caption(
      description: json['description'] as String?,
      brand: json['brand'] as String?,
      hashtags:
          (json['hashtags'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      fullText: json['full_text'] as String?,
    );

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$CaptionToJson(
  ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$Caption
  instance,
) => <String, dynamic>{
  'description': instance.description,
  'brand': instance.brand,
  'hashtags': instance.hashtags,
  'full_text': instance.fullText,
};

ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$Metadata
_$ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$MetadataFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$Metadata(
      segmentedImageUrl: json['segmentedImageUrl'] as String?,
      styleDescription: json['styleDescription'] as String?,
      occasion: json['occasion'] as String?,
      customPrompt: json['customPrompt'] as String?,
      generatedAt: (json['generatedAt'] as num?)?.toDouble(),
      version: (json['version'] as num?)?.toDouble(),
      temperature: (json['temperature'] as num?)?.toDouble(),
      regenerationStatus: json['regenerationStatus'] as String?,
    );

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$MetadataToJson(
  ComboServiceApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$Metadata
  instance,
) => <String, dynamic>{
  'segmentedImageUrl': instance.segmentedImageUrl,
  'styleDescription': instance.styleDescription,
  'occasion': instance.occasion,
  'customPrompt': instance.customPrompt,
  'generatedAt': instance.generatedAt,
  'version': instance.version,
  'temperature': instance.temperature,
  'regenerationStatus': instance.regenerationStatus,
};

ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$Item$CategoryList$Item
_$ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$Item$CategoryList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$Item$CategoryList$Item(
      id: (json['id'] as num?)?.toInt(),
      parentId: (json['parentId'] as num?)?.toInt(),
      level: (json['level'] as num?)?.toInt(),
      showOrder: (json['showOrder'] as num?)?.toInt(),
      name: json['name'] as String?,
      iconUrl: json['iconUrl'] as String?,
    );

Map<String, dynamic>
_$ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$Item$CategoryList$ItemToJson(
  ComboServiceNoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$Item$CategoryList$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'parentId': instance.parentId,
  'level': instance.level,
  'showOrder': instance.showOrder,
  'name': instance.name,
  'iconUrl': instance.iconUrl,
};

ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$Item
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$Item(
      value: json['value'] as String?,
      image: json['image'] as String?,
      imageWidth: (json['imageWidth'] as num?)?.toInt(),
      imageHeight: (json['imageHeight'] as num?)?.toInt(),
    );

Map<String, dynamic>
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$ItemToJson(
  ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$Item
  instance,
) => <String, dynamic>{
  'value': instance.value,
  'image': instance.image,
  'imageWidth': instance.imageWidth,
  'imageHeight': instance.imageHeight,
};

ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOption
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOptionFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOption(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic>
_$ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOptionToJson(
  ComboServiceBizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOption
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$Item
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$Item(
      value: json['value'] as String?,
      image: json['image'] as String?,
      imageWidth: (json['imageWidth'] as num?)?.toInt(),
      imageHeight: (json['imageHeight'] as num?)?.toInt(),
    );

Map<String, dynamic>
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$ItemToJson(
  ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$Item
  instance,
) => <String, dynamic>{
  'value': instance.value,
  'image': instance.image,
  'imageWidth': instance.imageWidth,
  'imageHeight': instance.imageHeight,
};

ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOption
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOptionFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOption(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic>
_$ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOptionToJson(
  ComboServiceBizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOption
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$Caption
_$ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$CaptionFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$Caption(
      description: json['description'] as String?,
      brand: json['brand'] as String?,
      hashtags:
          (json['hashtags'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      fullText: json['full_text'] as String?,
    );

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$CaptionToJson(
  ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$Caption
  instance,
) => <String, dynamic>{
  'description': instance.description,
  'brand': instance.brand,
  'hashtags': instance.hashtags,
  'full_text': instance.fullText,
};

ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$Metadata
_$ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$MetadataFromJson(
  Map<String, dynamic> json,
) =>
    ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$Metadata(
      segmentedImageUrl: json['segmentedImageUrl'] as String?,
      styleDescription: json['styleDescription'] as String?,
      occasion: json['occasion'] as String?,
      customPrompt: json['customPrompt'] as String?,
      generatedAt: (json['generatedAt'] as num?)?.toDouble(),
      version: (json['version'] as num?)?.toDouble(),
      temperature: (json['temperature'] as num?)?.toDouble(),
      regenerationStatus: json['regenerationStatus'] as String?,
    );

Map<String, dynamic>
_$ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$MetadataToJson(
  ComboServiceApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$Metadata
  instance,
) => <String, dynamic>{
  'segmentedImageUrl': instance.segmentedImageUrl,
  'styleDescription': instance.styleDescription,
  'occasion': instance.occasion,
  'customPrompt': instance.customPrompt,
  'generatedAt': instance.generatedAt,
  'version': instance.version,
  'temperature': instance.temperature,
  'regenerationStatus': instance.regenerationStatus,
};
