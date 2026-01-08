// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swaggerApiCombo.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoAuthBizKolKolInfoGet$Response _$NoAuthBizKolKolInfoGet$ResponseFromJson(
  Map<String, dynamic> json,
) => NoAuthBizKolKolInfoGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : NoAuthBizKolKolInfoGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$NoAuthBizKolKolInfoGet$ResponseToJson(
  NoAuthBizKolKolInfoGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

NoAuthPopupPromiseGet$Response _$NoAuthPopupPromiseGet$ResponseFromJson(
  Map<String, dynamic> json,
) => NoAuthPopupPromiseGet$Response(
  code: json['code'] as String,
  message: json['message'] as String,
  data: NoAuthPopupPromiseGet$Response$Data.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
  traceId: json['traceId'] as String,
);

Map<String, dynamic> _$NoAuthPopupPromiseGet$ResponseToJson(
  NoAuthPopupPromiseGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
  'traceId': instance.traceId,
};

NoAuthCommonAppConfigVersionCheckGet$Response
_$NoAuthCommonAppConfigVersionCheckGet$ResponseFromJson(
  Map<String, dynamic> json,
) => NoAuthCommonAppConfigVersionCheckGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : NoAuthCommonAppConfigVersionCheckGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  success: json['success'] as bool?,
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$NoAuthCommonAppConfigVersionCheckGet$ResponseToJson(
  NoAuthCommonAppConfigVersionCheckGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'success': instance.success,
  'traceId': instance.traceId,
};

BizCommunityPostUnlikePost$Response
_$BizCommunityPostUnlikePost$ResponseFromJson(Map<String, dynamic> json) =>
    BizCommunityPostUnlikePost$Response(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] as bool?,
      traceId: json['traceId'] as String?,
    );

Map<String, dynamic> _$BizCommunityPostUnlikePost$ResponseToJson(
  BizCommunityPostUnlikePost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
};

BizCommunityPostLikedGet$Response _$BizCommunityPostLikedGet$ResponseFromJson(
  Map<String, dynamic> json,
) => BizCommunityPostLikedGet$Response(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : BizCommunityPostLikedGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$BizCommunityPostLikedGet$ResponseToJson(
  BizCommunityPostLikedGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
};

BizCommunityPostNoAuthListGet$Response
_$BizCommunityPostNoAuthListGet$ResponseFromJson(Map<String, dynamic> json) =>
    BizCommunityPostNoAuthListGet$Response(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : BizCommunityPostNoAuthListGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
    );

Map<String, dynamic> _$BizCommunityPostNoAuthListGet$ResponseToJson(
  BizCommunityPostNoAuthListGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
};

BizCommunityPostLikePost$Response _$BizCommunityPostLikePost$ResponseFromJson(
  Map<String, dynamic> json,
) => BizCommunityPostLikePost$Response(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: json['data'] as bool?,
  traceId: json['traceId'] as String?,
);

Map<String, dynamic> _$BizCommunityPostLikePost$ResponseToJson(
  BizCommunityPostLikePost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
};

NoAuthBizImageTransTranslatePost$Response
_$NoAuthBizImageTransTranslatePost$ResponseFromJson(
  Map<String, dynamic> json,
) => NoAuthBizImageTransTranslatePost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] as String?,
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$NoAuthBizImageTransTranslatePost$ResponseToJson(
  NoAuthBizImageTransTranslatePost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

BizUserOrderPendingGet$Response _$BizUserOrderPendingGet$ResponseFromJson(
  Map<String, dynamic> json,
) => BizUserOrderPendingGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : BizUserOrderPendingGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$BizUserOrderPendingGet$ResponseToJson(
  BizUserOrderPendingGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

ApiV1StyleOutfitsGenerateModelPost$Response
_$ApiV1StyleOutfitsGenerateModelPost$ResponseFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsGenerateModelPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
  data: json['data'] == null
      ? null
      : ApiV1StyleOutfitsGenerateModelPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ApiV1StyleOutfitsGenerateModelPost$ResponseToJson(
  ApiV1StyleOutfitsGenerateModelPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'traceId': instance.traceId,
  'success': instance.success,
  'data': instance.data?.toJson(),
};

BizAiFashionNoAuthBodyShapeGet$Response
_$BizAiFashionNoAuthBodyShapeGet$ResponseFromJson(Map<String, dynamic> json) =>
    BizAiFashionNoAuthBodyShapeGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      msg: json['msg'] as String?,
      data: json['data'] == null
          ? null
          : BizAiFashionNoAuthBodyShapeGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$BizAiFashionNoAuthBodyShapeGet$ResponseToJson(
  BizAiFashionNoAuthBodyShapeGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'msg': instance.msg,
  'data': instance.data?.toJson(),
};

BizAiFashionModelSavePost$Response _$BizAiFashionModelSavePost$ResponseFromJson(
  Map<String, dynamic> json,
) => BizAiFashionModelSavePost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  traceId: json['traceId'] as String?,
  data: json['data'] == null
      ? null
      : BizAiFashionModelSavePost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$BizAiFashionModelSavePost$ResponseToJson(
  BizAiFashionModelSavePost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'traceId': instance.traceId,
  'data': instance.data?.toJson(),
};

ApiV1StyleOutfitsResultPageGet$Response
_$ApiV1StyleOutfitsResultPageGet$ResponseFromJson(Map<String, dynamic> json) =>
    ApiV1StyleOutfitsResultPageGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ApiV1StyleOutfitsResultPageGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'],
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$ApiV1StyleOutfitsResultPageGet$ResponseToJson(
  ApiV1StyleOutfitsResultPageGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

BizAiFashionModelRecentlyUsedGet$Response
_$BizAiFashionModelRecentlyUsedGet$ResponseFromJson(
  Map<String, dynamic> json,
) => BizAiFashionModelRecentlyUsedGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
  data: json['data'] == null
      ? null
      : BizAiFashionModelRecentlyUsedGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$BizAiFashionModelRecentlyUsedGet$ResponseToJson(
  BizAiFashionModelRecentlyUsedGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'traceId': instance.traceId,
  'success': instance.success,
  'data': instance.data?.toJson(),
};

ApiV1StyleOutfitsModelIdStatusGet$Response
_$ApiV1StyleOutfitsModelIdStatusGet$ResponseFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsModelIdStatusGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
  data: json['data'] == null
      ? null
      : ApiV1StyleOutfitsModelIdStatusGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ApiV1StyleOutfitsModelIdStatusGet$ResponseToJson(
  ApiV1StyleOutfitsModelIdStatusGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'traceId': instance.traceId,
  'success': instance.success,
  'data': instance.data?.toJson(),
};

ApiV1StyleOutfitsResultGet$Response
_$ApiV1StyleOutfitsResultGet$ResponseFromJson(Map<String, dynamic> json) =>
    ApiV1StyleOutfitsResultGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      traceId: json['traceId'] as String?,
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : ApiV1StyleOutfitsResultGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ApiV1StyleOutfitsResultGet$ResponseToJson(
  ApiV1StyleOutfitsResultGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'traceId': instance.traceId,
  'success': instance.success,
  'data': instance.data?.toJson(),
};

BizAiFashionModelModelIdGet$Response
_$BizAiFashionModelModelIdGet$ResponseFromJson(Map<String, dynamic> json) =>
    BizAiFashionModelModelIdGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : BizAiFashionModelModelIdGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$BizAiFashionModelModelIdGet$ResponseToJson(
  BizAiFashionModelModelIdGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
};

BizAiFashionModelListGet$Response _$BizAiFashionModelListGet$ResponseFromJson(
  Map<String, dynamic> json,
) => BizAiFashionModelListGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  traceId: json['traceId'] as String?,
  data: json['data'] == null
      ? null
      : BizAiFashionModelListGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$BizAiFashionModelListGet$ResponseToJson(
  BizAiFashionModelListGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'traceId': instance.traceId,
  'data': instance.data?.toJson(),
};

ApiV1StyleOutfitsGeneratePost$Response
_$ApiV1StyleOutfitsGeneratePost$ResponseFromJson(Map<String, dynamic> json) =>
    ApiV1StyleOutfitsGeneratePost$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      traceId: json['traceId'] as String?,
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : ApiV1StyleOutfitsGeneratePost$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ApiV1StyleOutfitsGeneratePost$ResponseToJson(
  ApiV1StyleOutfitsGeneratePost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'traceId': instance.traceId,
  'success': instance.success,
  'data': instance.data?.toJson(),
};

BizAiFashionNoAuthStylePresetGet$Response
_$BizAiFashionNoAuthStylePresetGet$ResponseFromJson(
  Map<String, dynamic> json,
) => BizAiFashionNoAuthStylePresetGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : BizAiFashionNoAuthStylePresetGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$BizAiFashionNoAuthStylePresetGet$ResponseToJson(
  BizAiFashionNoAuthStylePresetGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
};

BizAiFashionNoAuthPostListGet$Response
_$BizAiFashionNoAuthPostListGet$ResponseFromJson(Map<String, dynamic> json) =>
    BizAiFashionNoAuthPostListGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      traceId: json['traceId'] as String?,
      data: json['data'] == null
          ? null
          : BizAiFashionNoAuthPostListGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$BizAiFashionNoAuthPostListGet$ResponseToJson(
  BizAiFashionNoAuthPostListGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'traceId': instance.traceId,
  'data': instance.data?.toJson(),
};

BizAiFashionNoAuthPostDetailGet$Response
_$BizAiFashionNoAuthPostDetailGet$ResponseFromJson(Map<String, dynamic> json) =>
    BizAiFashionNoAuthPostDetailGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : BizAiFashionNoAuthPostDetailGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      reasonCode: json['reasonCode'],
      traceId: json['traceId'] as String?,
    );

Map<String, dynamic> _$BizAiFashionNoAuthPostDetailGet$ResponseToJson(
  BizAiFashionNoAuthPostDetailGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'reasonCode': instance.reasonCode,
  'traceId': instance.traceId,
};

BizAiFashionNoAuthSelectOptionGet$Response
_$BizAiFashionNoAuthSelectOptionGet$ResponseFromJson(
  Map<String, dynamic> json,
) => BizAiFashionNoAuthSelectOptionGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  traceId: json['traceId'] as String?,
  data: json['data'] == null
      ? null
      : BizAiFashionNoAuthSelectOptionGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$BizAiFashionNoAuthSelectOptionGet$ResponseToJson(
  BizAiFashionNoAuthSelectOptionGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'traceId': instance.traceId,
  'data': instance.data?.toJson(),
};

ApiV1StyleOutfitsGenerateModelRegeneratePost$Response
_$ApiV1StyleOutfitsGenerateModelRegeneratePost$ResponseFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsGenerateModelRegeneratePost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
  data: json['data'] == null
      ? null
      : ApiV1StyleOutfitsGenerateModelRegeneratePost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ApiV1StyleOutfitsGenerateModelRegeneratePost$ResponseToJson(
  ApiV1StyleOutfitsGenerateModelRegeneratePost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'traceId': instance.traceId,
  'success': instance.success,
  'data': instance.data?.toJson(),
};

ApiV1StyleOutfitsGenerateRegeneratePost$Response
_$ApiV1StyleOutfitsGenerateRegeneratePost$ResponseFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsGenerateRegeneratePost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
  data: json['data'] == null
      ? null
      : ApiV1StyleOutfitsGenerateRegeneratePost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ApiV1StyleOutfitsGenerateRegeneratePost$ResponseToJson(
  ApiV1StyleOutfitsGenerateRegeneratePost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'traceId': instance.traceId,
  'success': instance.success,
  'data': instance.data?.toJson(),
};

BizUserShareRewardPageGet$Response _$BizUserShareRewardPageGet$ResponseFromJson(
  Map<String, dynamic> json,
) => BizUserShareRewardPageGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : BizUserShareRewardPageGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$BizUserShareRewardPageGet$ResponseToJson(
  BizUserShareRewardPageGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

BizUserShareRewardPost$Response _$BizUserShareRewardPost$ResponseFromJson(
  Map<String, dynamic> json,
) => BizUserShareRewardPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] as String?,
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$BizUserShareRewardPost$ResponseToJson(
  BizUserShareRewardPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

NoAuthBizAlbumAlbumInfoGet$Response
_$NoAuthBizAlbumAlbumInfoGet$ResponseFromJson(Map<String, dynamic> json) =>
    NoAuthBizAlbumAlbumInfoGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : NoAuthBizAlbumAlbumInfoGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'],
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$NoAuthBizAlbumAlbumInfoGet$ResponseToJson(
  NoAuthBizAlbumAlbumInfoGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

NoAuthBizKolKolInfoGet$Response$Data
_$NoAuthBizKolKolInfoGet$Response$DataFromJson(Map<String, dynamic> json) =>
    NoAuthBizKolKolInfoGet$Response$Data(
      inviteCode: json['inviteCode'] as String?,
      tenantCode: json['tenantCode'] as String?,
      shareLink: json['shareLink'] as String?,
      excelLinks: (json['excelLinks'] as List<dynamic>?)
          ?.map(
            (e) =>
                NoAuthBizKolKolInfoGet$Response$Data$ExcelLinks$Item.fromJson(
                  e as Map<String, dynamic>,
                ),
          )
          .toList(),
      jumpTo: json['jumpTo'] as String?,
    );

Map<String, dynamic> _$NoAuthBizKolKolInfoGet$Response$DataToJson(
  NoAuthBizKolKolInfoGet$Response$Data instance,
) => <String, dynamic>{
  'inviteCode': instance.inviteCode,
  'tenantCode': instance.tenantCode,
  'shareLink': instance.shareLink,
  'excelLinks': instance.excelLinks?.map((e) => e.toJson()).toList(),
  'jumpTo': instance.jumpTo,
};

NoAuthPopupPromiseGet$Response$Data
_$NoAuthPopupPromiseGet$Response$DataFromJson(Map<String, dynamic> json) =>
    NoAuthPopupPromiseGet$Response$Data(
      content: (json['content'] as List<dynamic>)
          .map(
            (e) => NoAuthPopupPromiseGet$Response$Data$Content$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    );

Map<String, dynamic> _$NoAuthPopupPromiseGet$Response$DataToJson(
  NoAuthPopupPromiseGet$Response$Data instance,
) => <String, dynamic>{
  'content': instance.content.map((e) => e.toJson()).toList(),
};

NoAuthCommonAppConfigVersionCheckGet$Response$Data
_$NoAuthCommonAppConfigVersionCheckGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => NoAuthCommonAppConfigVersionCheckGet$Response$Data(
  allowClose: json['allowClose'] as bool,
  storeUrl: json['storeUrl'] as String,
  haveUpdate: json['haveUpdate'] as bool,
);

Map<String, dynamic> _$NoAuthCommonAppConfigVersionCheckGet$Response$DataToJson(
  NoAuthCommonAppConfigVersionCheckGet$Response$Data instance,
) => <String, dynamic>{
  'allowClose': instance.allowClose,
  'storeUrl': instance.storeUrl,
  'haveUpdate': instance.haveUpdate,
};

BizCommunityPostLikedGet$Response$Data
_$BizCommunityPostLikedGet$Response$DataFromJson(Map<String, dynamic> json) =>
    BizCommunityPostLikedGet$Response$Data(
      posts: (json['posts'] as List<dynamic>?)
          ?.map(
            (e) => BizCommunityPostLikedGet$Response$Data$Posts$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      nextCursor: json['nextCursor'] as String?,
      hasMore: json['hasMore'] as bool?,
    );

Map<String, dynamic> _$BizCommunityPostLikedGet$Response$DataToJson(
  BizCommunityPostLikedGet$Response$Data instance,
) => <String, dynamic>{
  'posts': instance.posts?.map((e) => e.toJson()).toList(),
  'nextCursor': instance.nextCursor,
  'hasMore': instance.hasMore,
};

BizCommunityPostNoAuthListGet$Response$Data
_$BizCommunityPostNoAuthListGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => BizCommunityPostNoAuthListGet$Response$Data(
  posts: (json['posts'] as List<dynamic>?)
      ?.map(
        (e) => BizCommunityPostNoAuthListGet$Response$Data$Posts$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  nextCursor: json['nextCursor'] as String?,
  hasMore: json['hasMore'] as bool?,
);

Map<String, dynamic> _$BizCommunityPostNoAuthListGet$Response$DataToJson(
  BizCommunityPostNoAuthListGet$Response$Data instance,
) => <String, dynamic>{
  'posts': instance.posts?.map((e) => e.toJson()).toList(),
  'nextCursor': instance.nextCursor,
  'hasMore': instance.hasMore,
};

BizUserOrderPendingGet$Response$Data
_$BizUserOrderPendingGet$Response$DataFromJson(Map<String, dynamic> json) =>
    BizUserOrderPendingGet$Response$Data(
      pendingOrderCount: (json['pendingOrderCount'] as num?)?.toDouble(),
      totalOrderCount: (json['totalOrderCount'] as num?)?.toDouble(),
      pendingWarehouseItemCount: (json['pendingWarehouseItemCount'] as num?)
          ?.toDouble(),
      pendingPackageCount: (json['pendingPackageCount'] as num?)?.toDouble(),
      totalPackageCount: (json['totalPackageCount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$BizUserOrderPendingGet$Response$DataToJson(
  BizUserOrderPendingGet$Response$Data instance,
) => <String, dynamic>{
  'pendingOrderCount': instance.pendingOrderCount,
  'totalOrderCount': instance.totalOrderCount,
  'pendingWarehouseItemCount': instance.pendingWarehouseItemCount,
  'pendingPackageCount': instance.pendingPackageCount,
  'totalPackageCount': instance.totalPackageCount,
};

ApiV1StyleOutfitsGenerateModelPost$Response$Data
_$ApiV1StyleOutfitsGenerateModelPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsGenerateModelPost$Response$Data(
  taskId: json['taskId'] as String?,
  status: json['status'] as String?,
  estimatedTime: json['estimatedTime'] as String?,
);

Map<String, dynamic> _$ApiV1StyleOutfitsGenerateModelPost$Response$DataToJson(
  ApiV1StyleOutfitsGenerateModelPost$Response$Data instance,
) => <String, dynamic>{
  'taskId': instance.taskId,
  'status': instance.status,
  'estimatedTime': instance.estimatedTime,
};

BizAiFashionNoAuthBodyShapeGet$Response$Data
_$BizAiFashionNoAuthBodyShapeGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => BizAiFashionNoAuthBodyShapeGet$Response$Data(
  female: (json['female'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizAiFashionNoAuthBodyShapeGet$Response$Data$Female$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  male: (json['male'] as List<dynamic>?)
      ?.map(
        (e) => BizAiFashionNoAuthBodyShapeGet$Response$Data$Male$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$BizAiFashionNoAuthBodyShapeGet$Response$DataToJson(
  BizAiFashionNoAuthBodyShapeGet$Response$Data instance,
) => <String, dynamic>{
  'female': instance.female?.map((e) => e.toJson()).toList(),
  'male': instance.male?.map((e) => e.toJson()).toList(),
};

BizAiFashionModelSavePost$Response$Data
_$BizAiFashionModelSavePost$Response$DataFromJson(Map<String, dynamic> json) =>
    BizAiFashionModelSavePost$Response$Data(
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

Map<String, dynamic> _$BizAiFashionModelSavePost$Response$DataToJson(
  BizAiFashionModelSavePost$Response$Data instance,
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

ApiV1StyleOutfitsResultPageGet$Response$Data
_$ApiV1StyleOutfitsResultPageGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsResultPageGet$Response$Data(
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  total: (json['total'] as num?)?.toDouble(),
  size: (json['size'] as num?)?.toDouble(),
  current: (json['current'] as num?)?.toDouble(),
  pages: (json['pages'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ApiV1StyleOutfitsResultPageGet$Response$DataToJson(
  ApiV1StyleOutfitsResultPageGet$Response$Data instance,
) => <String, dynamic>{
  'records': instance.records?.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'size': instance.size,
  'current': instance.current,
  'pages': instance.pages,
};

BizAiFashionModelRecentlyUsedGet$Response$Data
_$BizAiFashionModelRecentlyUsedGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => BizAiFashionModelRecentlyUsedGet$Response$Data(
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

Map<String, dynamic> _$BizAiFashionModelRecentlyUsedGet$Response$DataToJson(
  BizAiFashionModelRecentlyUsedGet$Response$Data instance,
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

ApiV1StyleOutfitsModelIdStatusGet$Response$Data
_$ApiV1StyleOutfitsModelIdStatusGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsModelIdStatusGet$Response$Data(
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
            ApiV1StyleOutfitsModelIdStatusGet$Response$Data$GeneratedModels$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$ApiV1StyleOutfitsModelIdStatusGet$Response$DataToJson(
  ApiV1StyleOutfitsModelIdStatusGet$Response$Data instance,
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

ApiV1StyleOutfitsResultGet$Response$Data
_$ApiV1StyleOutfitsResultGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsResultGet$Response$Data(
  taskId: json['taskId'] as String?,
  status: json['status'] as String?,
  count: (json['count'] as num?)?.toDouble(),
  createdAt: (json['createdAt'] as num?)?.toDouble(),
  completedAt: (json['completedAt'] as num?)?.toDouble(),
  totalDuration: (json['totalDuration'] as num?)?.toDouble(),
  requestParams: json['requestParams'] == null
      ? null
      : ApiV1StyleOutfitsResultGet$Response$Data$RequestParams.fromJson(
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
            ApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  generationTime: json['generationTime'] as String?,
  sharingImages: json['sharingImages'] == null
      ? null
      : ApiV1StyleOutfitsResultGet$Response$Data$SharingImages.fromJson(
          json['sharingImages'] as Map<String, dynamic>,
        ),
  sharingImagesStatus: json['sharingImagesStatus'] == null
      ? null
      : ApiV1StyleOutfitsResultGet$Response$Data$SharingImagesStatus.fromJson(
          json['sharingImagesStatus'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ApiV1StyleOutfitsResultGet$Response$DataToJson(
  ApiV1StyleOutfitsResultGet$Response$Data instance,
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

BizAiFashionModelModelIdGet$Response$Data
_$BizAiFashionModelModelIdGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => BizAiFashionModelModelIdGet$Response$Data(
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

Map<String, dynamic> _$BizAiFashionModelModelIdGet$Response$DataToJson(
  BizAiFashionModelModelIdGet$Response$Data instance,
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

BizAiFashionModelListGet$Response$Data
_$BizAiFashionModelListGet$Response$DataFromJson(Map<String, dynamic> json) =>
    BizAiFashionModelListGet$Response$Data(
      models: (json['models'] as List<dynamic>?)
          ?.map(
            (e) => BizAiFashionModelListGet$Response$Data$Models$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      fstModel: json['fstModel'] as bool?,
    );

Map<String, dynamic> _$BizAiFashionModelListGet$Response$DataToJson(
  BizAiFashionModelListGet$Response$Data instance,
) => <String, dynamic>{
  'models': instance.models?.map((e) => e.toJson()).toList(),
  'fstModel': instance.fstModel,
};

ApiV1StyleOutfitsGeneratePost$Response$Data
_$ApiV1StyleOutfitsGeneratePost$Response$DataFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsGeneratePost$Response$Data(
  taskId: json['taskId'] as String?,
  status: json['status'] as String?,
  count: (json['count'] as num?)?.toDouble(),
  estimatedTime: json['estimatedTime'] as String?,
  createdAt: (json['createdAt'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ApiV1StyleOutfitsGeneratePost$Response$DataToJson(
  ApiV1StyleOutfitsGeneratePost$Response$Data instance,
) => <String, dynamic>{
  'taskId': instance.taskId,
  'status': instance.status,
  'count': instance.count,
  'estimatedTime': instance.estimatedTime,
  'createdAt': instance.createdAt,
};

BizAiFashionNoAuthStylePresetGet$Response$Data
_$BizAiFashionNoAuthStylePresetGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => BizAiFashionNoAuthStylePresetGet$Response$Data(
  referenceImages: (json['referenceImages'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizAiFashionNoAuthStylePresetGet$Response$Data$ReferenceImages$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  option: json['option'] == null
      ? null
      : BizAiFashionNoAuthStylePresetGet$Response$Data$Option.fromJson(
          json['option'] as Map<String, dynamic>,
        ),
  prompt: json['prompt'] as String?,
  modelInfo: json['modelInfo'] == null
      ? null
      : BizAiFashionNoAuthStylePresetGet$Response$Data$ModelInfo.fromJson(
          json['modelInfo'] as Map<String, dynamic>,
        ),
  templateId: (json['templateId'] as num?)?.toInt(),
);

Map<String, dynamic> _$BizAiFashionNoAuthStylePresetGet$Response$DataToJson(
  BizAiFashionNoAuthStylePresetGet$Response$Data instance,
) => <String, dynamic>{
  'referenceImages': instance.referenceImages?.map((e) => e.toJson()).toList(),
  'option': instance.option?.toJson(),
  'prompt': instance.prompt,
  'modelInfo': instance.modelInfo?.toJson(),
  'templateId': instance.templateId,
};

BizAiFashionNoAuthPostListGet$Response$Data
_$BizAiFashionNoAuthPostListGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => BizAiFashionNoAuthPostListGet$Response$Data(
  posts: (json['posts'] as List<dynamic>?)
      ?.map(
        (e) => BizAiFashionNoAuthPostListGet$Response$Data$Posts$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  nextCursor: json['nextCursor'] as String?,
  hasMore: json['hasMore'] as bool?,
);

Map<String, dynamic> _$BizAiFashionNoAuthPostListGet$Response$DataToJson(
  BizAiFashionNoAuthPostListGet$Response$Data instance,
) => <String, dynamic>{
  'posts': instance.posts?.map((e) => e.toJson()).toList(),
  'nextCursor': instance.nextCursor,
  'hasMore': instance.hasMore,
};

BizAiFashionNoAuthPostDetailGet$Response$Data
_$BizAiFashionNoAuthPostDetailGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => BizAiFashionNoAuthPostDetailGet$Response$Data(
  postId: (json['postId'] as num?)?.toDouble(),
  postTitle: json['postTitle'] as String?,
  frontImage: json['frontImage'] == null
      ? null
      : BizAiFashionNoAuthPostDetailGet$Response$Data$FrontImage.fromJson(
          json['frontImage'] as Map<String, dynamic>,
        ),
  headerImage: json['headerImage'] == null
      ? null
      : BizAiFashionNoAuthPostDetailGet$Response$Data$HeaderImage.fromJson(
          json['headerImage'] as Map<String, dynamic>,
        ),
  modelImage: json['modelImage'] == null
      ? null
      : BizAiFashionNoAuthPostDetailGet$Response$Data$ModelImage.fromJson(
          json['modelImage'] as Map<String, dynamic>,
        ),
  images: (json['images'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizAiFashionNoAuthPostDetailGet$Response$Data$Images$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  footerImages: (json['footerImages'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizAiFashionNoAuthPostDetailGet$Response$Data$FooterImages$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  prompt: json['prompt'] as String?,
  option: json['option'] == null
      ? null
      : BizAiFashionNoAuthPostDetailGet$Response$Data$Option.fromJson(
          json['option'] as Map<String, dynamic>,
        ),
  templateId: (json['templateId'] as num?)?.toDouble(),
);

Map<String, dynamic> _$BizAiFashionNoAuthPostDetailGet$Response$DataToJson(
  BizAiFashionNoAuthPostDetailGet$Response$Data instance,
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

BizAiFashionNoAuthSelectOptionGet$Response$Data
_$BizAiFashionNoAuthSelectOptionGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => BizAiFashionNoAuthSelectOptionGet$Response$Data(
  selectionList: (json['selectionList'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$BizAiFashionNoAuthSelectOptionGet$Response$DataToJson(
  BizAiFashionNoAuthSelectOptionGet$Response$Data instance,
) => <String, dynamic>{
  'selectionList': instance.selectionList?.map((e) => e.toJson()).toList(),
};

ApiV1StyleOutfitsGenerateModelRegeneratePost$Response$Data
_$ApiV1StyleOutfitsGenerateModelRegeneratePost$Response$DataFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsGenerateModelRegeneratePost$Response$Data(
  modelId: json['modelId'] as String?,
  status: json['status'] as String?,
);

Map<String, dynamic>
_$ApiV1StyleOutfitsGenerateModelRegeneratePost$Response$DataToJson(
  ApiV1StyleOutfitsGenerateModelRegeneratePost$Response$Data instance,
) => <String, dynamic>{'modelId': instance.modelId, 'status': instance.status};

ApiV1StyleOutfitsGenerateRegeneratePost$Response$Data
_$ApiV1StyleOutfitsGenerateRegeneratePost$Response$DataFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsGenerateRegeneratePost$Response$Data(
  taskId: json['taskId'] as String?,
  status: json['status'] as String?,
);

Map<String, dynamic>
_$ApiV1StyleOutfitsGenerateRegeneratePost$Response$DataToJson(
  ApiV1StyleOutfitsGenerateRegeneratePost$Response$Data instance,
) => <String, dynamic>{'taskId': instance.taskId, 'status': instance.status};

BizUserShareRewardPageGet$Response$Data
_$BizUserShareRewardPageGet$Response$DataFromJson(Map<String, dynamic> json) =>
    BizUserShareRewardPageGet$Response$Data(
      records: (json['records'] as List<dynamic>?)
          ?.map(
            (e) =>
                BizUserShareRewardPageGet$Response$Data$Records$Item.fromJson(
                  e as Map<String, dynamic>,
                ),
          )
          .toList(),
      total: (json['total'] as num?)?.toDouble(),
      size: (json['size'] as num?)?.toDouble(),
      current: (json['current'] as num?)?.toDouble(),
      pages: (json['pages'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$BizUserShareRewardPageGet$Response$DataToJson(
  BizUserShareRewardPageGet$Response$Data instance,
) => <String, dynamic>{
  'records': instance.records?.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'size': instance.size,
  'current': instance.current,
  'pages': instance.pages,
};

NoAuthBizAlbumAlbumInfoGet$Response$Data
_$NoAuthBizAlbumAlbumInfoGet$Response$DataFromJson(Map<String, dynamic> json) =>
    NoAuthBizAlbumAlbumInfoGet$Response$Data(
      albumCode: json['albumCode'] as String?,
      tenantCode: json['tenantCode'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      backImg: json['backImg'] as String?,
      pcImg: json['pcImg'] as String?,
      related: (json['related'] as List<dynamic>?)
          ?.map(
            (e) =>
                NoAuthBizAlbumAlbumInfoGet$Response$Data$Related$Item.fromJson(
                  e as Map<String, dynamic>,
                ),
          )
          .toList(),
      categoryTreeDto: json['categoryTreeDto'] == null
          ? null
          : NoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto.fromJson(
              json['categoryTreeDto'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$NoAuthBizAlbumAlbumInfoGet$Response$DataToJson(
  NoAuthBizAlbumAlbumInfoGet$Response$Data instance,
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

NoAuthBizKolKolInfoGet$Response$Data$ExcelLinks$Item
_$NoAuthBizKolKolInfoGet$Response$Data$ExcelLinks$ItemFromJson(
  Map<String, dynamic> json,
) => NoAuthBizKolKolInfoGet$Response$Data$ExcelLinks$Item(
  title: json['title'] as String,
  excelLink: json['excelLink'] as String,
  desc: json['desc'] as String,
);

Map<String, dynamic>
_$NoAuthBizKolKolInfoGet$Response$Data$ExcelLinks$ItemToJson(
  NoAuthBizKolKolInfoGet$Response$Data$ExcelLinks$Item instance,
) => <String, dynamic>{
  'title': instance.title,
  'excelLink': instance.excelLink,
  'desc': instance.desc,
};

NoAuthPopupPromiseGet$Response$Data$Content$Item
_$NoAuthPopupPromiseGet$Response$Data$Content$ItemFromJson(
  Map<String, dynamic> json,
) => NoAuthPopupPromiseGet$Response$Data$Content$Item(
  title: json['title'] as String,
  icon: json['icon'] as String,
  paragraphs:
      (json['paragraphs'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList() ??
      [],
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
  schema: json['schema'] as String,
  schemaText: json['schemaText'] as String,
);

Map<String, dynamic> _$NoAuthPopupPromiseGet$Response$Data$Content$ItemToJson(
  NoAuthPopupPromiseGet$Response$Data$Content$Item instance,
) => <String, dynamic>{
  'title': instance.title,
  'icon': instance.icon,
  'paragraphs': instance.paragraphs,
  'images': instance.images,
  'schema': instance.schema,
  'schemaText': instance.schemaText,
};

BizCommunityPostLikedGet$Response$Data$Posts$Item
_$BizCommunityPostLikedGet$Response$Data$Posts$ItemFromJson(
  Map<String, dynamic> json,
) => BizCommunityPostLikedGet$Response$Data$Posts$Item(
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
            BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item.fromJson(
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

Map<String, dynamic> _$BizCommunityPostLikedGet$Response$Data$Posts$ItemToJson(
  BizCommunityPostLikedGet$Response$Data$Posts$Item instance,
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

BizCommunityPostNoAuthListGet$Response$Data$Posts$Item
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$ItemFromJson(
  Map<String, dynamic> json,
) => BizCommunityPostNoAuthListGet$Response$Data$Posts$Item(
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
            BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item.fromJson(
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
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$ItemToJson(
  BizCommunityPostNoAuthListGet$Response$Data$Posts$Item instance,
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

BizAiFashionNoAuthBodyShapeGet$Response$Data$Female$Item
_$BizAiFashionNoAuthBodyShapeGet$Response$Data$Female$ItemFromJson(
  Map<String, dynamic> json,
) => BizAiFashionNoAuthBodyShapeGet$Response$Data$Female$Item(
  age: json['age'] as String,
  glass: json['glass'] as String,
  body: json['body'] as String,
  style: json['style'] as String,
  race: json['race'] as String,
  gender: json['gender'] as String,
  sort: json['sort'] as String,
  image: json['image'] as String,
);

Map<String, dynamic>
_$BizAiFashionNoAuthBodyShapeGet$Response$Data$Female$ItemToJson(
  BizAiFashionNoAuthBodyShapeGet$Response$Data$Female$Item instance,
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

BizAiFashionNoAuthBodyShapeGet$Response$Data$Male$Item
_$BizAiFashionNoAuthBodyShapeGet$Response$Data$Male$ItemFromJson(
  Map<String, dynamic> json,
) => BizAiFashionNoAuthBodyShapeGet$Response$Data$Male$Item(
  age: json['age'] as String,
  glass: json['glass'] as String,
  body: json['body'] as String,
  style: json['style'] as String,
  race: json['race'] as String,
  gender: json['gender'] as String,
  sort: json['sort'] as String,
  image: json['image'] as String,
);

Map<String, dynamic>
_$BizAiFashionNoAuthBodyShapeGet$Response$Data$Male$ItemToJson(
  BizAiFashionNoAuthBodyShapeGet$Response$Data$Male$Item instance,
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

ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item
_$ApiV1StyleOutfitsResultPageGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item(
  taskId: json['taskId'] as String?,
  status: json['status'] as String?,
  count: (json['count'] as num?)?.toDouble(),
  createdAt: (json['createdAt'] as num?)?.toDouble(),
  completedAt: (json['completedAt'] as num?)?.toDouble(),
  totalDuration: (json['totalDuration'] as num?)?.toDouble(),
  requestParams: json['requestParams'] == null
      ? null
      : ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$RequestParams.fromJson(
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
            ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  generationTime: json['generationTime'] as String?,
  sharingImages: json['sharingImages'] == null
      ? null
      : ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages.fromJson(
          json['sharingImages'] as Map<String, dynamic>,
        ),
  sharingImagesStatus: json['sharingImagesStatus'] == null
      ? null
      : ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImagesStatus.fromJson(
          json['sharingImagesStatus'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ApiV1StyleOutfitsResultPageGet$Response$Data$Records$ItemToJson(
  ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item instance,
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

ApiV1StyleOutfitsModelIdStatusGet$Response$Data$GeneratedModels$Item
_$ApiV1StyleOutfitsModelIdStatusGet$Response$Data$GeneratedModels$ItemFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsModelIdStatusGet$Response$Data$GeneratedModels$Item(
  index: (json['index'] as num).toDouble(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$ApiV1StyleOutfitsModelIdStatusGet$Response$Data$GeneratedModels$ItemToJson(
  ApiV1StyleOutfitsModelIdStatusGet$Response$Data$GeneratedModels$Item instance,
) => <String, dynamic>{'index': instance.index, 'url': instance.url};

ApiV1StyleOutfitsResultGet$Response$Data$RequestParams
_$ApiV1StyleOutfitsResultGet$Response$Data$RequestParamsFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsResultGet$Response$Data$RequestParams(
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
_$ApiV1StyleOutfitsResultGet$Response$Data$RequestParamsToJson(
  ApiV1StyleOutfitsResultGet$Response$Data$RequestParams instance,
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

ApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$Item
_$ApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$ItemFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$Item(
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
            ApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$Item$Options$Item.fromJson(
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
_$ApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$ItemToJson(
  ApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$Item instance,
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

ApiV1StyleOutfitsResultGet$Response$Data$SharingImages
_$ApiV1StyleOutfitsResultGet$Response$Data$SharingImagesFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsResultGet$Response$Data$SharingImages(
  title: json['title'] as String?,
  items: (json['items'] as List<dynamic>?)
      ?.map(
        (e) =>
            ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item.fromJson(
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
            ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Images$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ApiV1StyleOutfitsResultGet$Response$Data$SharingImagesToJson(
  ApiV1StyleOutfitsResultGet$Response$Data$SharingImages instance,
) => <String, dynamic>{
  'title': instance.title,
  'items': instance.items?.map((e) => e.toJson()).toList(),
  'generated_at': instance.generatedAt,
  'multi_model_image_url': instance.multiModelImageUrl,
  'white_bg_images': instance.whiteBgImages,
  'images': instance.images?.map((e) => e.toJson()).toList(),
};

ApiV1StyleOutfitsResultGet$Response$Data$SharingImagesStatus
_$ApiV1StyleOutfitsResultGet$Response$Data$SharingImagesStatusFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsResultGet$Response$Data$SharingImagesStatus(
  ready: json['ready'] as bool?,
  count: (json['count'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$ApiV1StyleOutfitsResultGet$Response$Data$SharingImagesStatusToJson(
  ApiV1StyleOutfitsResultGet$Response$Data$SharingImagesStatus instance,
) => <String, dynamic>{'ready': instance.ready, 'count': instance.count};

BizAiFashionModelListGet$Response$Data$Models$Item
_$BizAiFashionModelListGet$Response$Data$Models$ItemFromJson(
  Map<String, dynamic> json,
) => BizAiFashionModelListGet$Response$Data$Models$Item(
  groupId: (json['groupId'] as num?)?.toDouble(),
  title: json['title'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizAiFashionModelListGet$Response$Data$Models$Item$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$BizAiFashionModelListGet$Response$Data$Models$ItemToJson(
  BizAiFashionModelListGet$Response$Data$Models$Item instance,
) => <String, dynamic>{
  'groupId': instance.groupId,
  'title': instance.title,
  'data': instance.data?.map((e) => e.toJson()).toList(),
};

BizAiFashionNoAuthStylePresetGet$Response$Data$ReferenceImages$Item
_$BizAiFashionNoAuthStylePresetGet$Response$Data$ReferenceImages$ItemFromJson(
  Map<String, dynamic> json,
) => BizAiFashionNoAuthStylePresetGet$Response$Data$ReferenceImages$Item(
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$BizAiFashionNoAuthStylePresetGet$Response$Data$ReferenceImages$ItemToJson(
  BizAiFashionNoAuthStylePresetGet$Response$Data$ReferenceImages$Item instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

BizAiFashionNoAuthStylePresetGet$Response$Data$Option
_$BizAiFashionNoAuthStylePresetGet$Response$Data$OptionFromJson(
  Map<String, dynamic> json,
) => BizAiFashionNoAuthStylePresetGet$Response$Data$Option(
  occasion: json['occasion'] as String?,
  styleTrendyElements: json['styleTrendyElements'] as String?,
);

Map<String, dynamic>
_$BizAiFashionNoAuthStylePresetGet$Response$Data$OptionToJson(
  BizAiFashionNoAuthStylePresetGet$Response$Data$Option instance,
) => <String, dynamic>{
  'occasion': instance.occasion,
  'styleTrendyElements': instance.styleTrendyElements,
};

BizAiFashionNoAuthStylePresetGet$Response$Data$ModelInfo
_$BizAiFashionNoAuthStylePresetGet$Response$Data$ModelInfoFromJson(
  Map<String, dynamic> json,
) => BizAiFashionNoAuthStylePresetGet$Response$Data$ModelInfo(
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
_$BizAiFashionNoAuthStylePresetGet$Response$Data$ModelInfoToJson(
  BizAiFashionNoAuthStylePresetGet$Response$Data$ModelInfo instance,
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

BizAiFashionNoAuthPostListGet$Response$Data$Posts$Item
_$BizAiFashionNoAuthPostListGet$Response$Data$Posts$ItemFromJson(
  Map<String, dynamic> json,
) => BizAiFashionNoAuthPostListGet$Response$Data$Posts$Item(
  images: (json['images'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$Images$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  prompt: json['prompt'] as String?,
  postTitle: json['postTitle'] as String?,
  postId: (json['postId'] as num?)?.toDouble(),
  frontImage: json['frontImage'] == null
      ? null
      : BizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$FrontImage.fromJson(
          json['frontImage'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$BizAiFashionNoAuthPostListGet$Response$Data$Posts$ItemToJson(
  BizAiFashionNoAuthPostListGet$Response$Data$Posts$Item instance,
) => <String, dynamic>{
  'images': instance.images?.map((e) => e.toJson()).toList(),
  'prompt': instance.prompt,
  'postTitle': instance.postTitle,
  'postId': instance.postId,
  'frontImage': instance.frontImage?.toJson(),
};

BizAiFashionNoAuthPostDetailGet$Response$Data$FrontImage
_$BizAiFashionNoAuthPostDetailGet$Response$Data$FrontImageFromJson(
  Map<String, dynamic> json,
) => BizAiFashionNoAuthPostDetailGet$Response$Data$FrontImage(
  width: (json['width'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$BizAiFashionNoAuthPostDetailGet$Response$Data$FrontImageToJson(
  BizAiFashionNoAuthPostDetailGet$Response$Data$FrontImage instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

BizAiFashionNoAuthPostDetailGet$Response$Data$HeaderImage
_$BizAiFashionNoAuthPostDetailGet$Response$Data$HeaderImageFromJson(
  Map<String, dynamic> json,
) => BizAiFashionNoAuthPostDetailGet$Response$Data$HeaderImage(
  width: (json['width'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$BizAiFashionNoAuthPostDetailGet$Response$Data$HeaderImageToJson(
  BizAiFashionNoAuthPostDetailGet$Response$Data$HeaderImage instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

BizAiFashionNoAuthPostDetailGet$Response$Data$ModelImage
_$BizAiFashionNoAuthPostDetailGet$Response$Data$ModelImageFromJson(
  Map<String, dynamic> json,
) => BizAiFashionNoAuthPostDetailGet$Response$Data$ModelImage(
  url: json['url'] as String?,
  height: (json['height'] as num?)?.toDouble(),
  width: (json['width'] as num?)?.toDouble(),
);

Map<String, dynamic>
_$BizAiFashionNoAuthPostDetailGet$Response$Data$ModelImageToJson(
  BizAiFashionNoAuthPostDetailGet$Response$Data$ModelImage instance,
) => <String, dynamic>{
  'url': instance.url,
  'height': instance.height,
  'width': instance.width,
};

BizAiFashionNoAuthPostDetailGet$Response$Data$Images$Item
_$BizAiFashionNoAuthPostDetailGet$Response$Data$Images$ItemFromJson(
  Map<String, dynamic> json,
) => BizAiFashionNoAuthPostDetailGet$Response$Data$Images$Item(
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$BizAiFashionNoAuthPostDetailGet$Response$Data$Images$ItemToJson(
  BizAiFashionNoAuthPostDetailGet$Response$Data$Images$Item instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

BizAiFashionNoAuthPostDetailGet$Response$Data$FooterImages$Item
_$BizAiFashionNoAuthPostDetailGet$Response$Data$FooterImages$ItemFromJson(
  Map<String, dynamic> json,
) => BizAiFashionNoAuthPostDetailGet$Response$Data$FooterImages$Item(
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
  url: json['url'] as String,
);

Map<String, dynamic>
_$BizAiFashionNoAuthPostDetailGet$Response$Data$FooterImages$ItemToJson(
  BizAiFashionNoAuthPostDetailGet$Response$Data$FooterImages$Item instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

BizAiFashionNoAuthPostDetailGet$Response$Data$Option
_$BizAiFashionNoAuthPostDetailGet$Response$Data$OptionFromJson(
  Map<String, dynamic> json,
) => BizAiFashionNoAuthPostDetailGet$Response$Data$Option(
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
_$BizAiFashionNoAuthPostDetailGet$Response$Data$OptionToJson(
  BizAiFashionNoAuthPostDetailGet$Response$Data$Option instance,
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

BizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$Item
_$BizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$ItemFromJson(
  Map<String, dynamic> json,
) => BizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$Item(
  key: json['key'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$Item$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$BizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$ItemToJson(
  BizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$Item instance,
) => <String, dynamic>{
  'key': instance.key,
  'data': instance.data?.map((e) => e.toJson()).toList(),
};

BizUserShareRewardPageGet$Response$Data$Records$Item
_$BizUserShareRewardPageGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => BizUserShareRewardPageGet$Response$Data$Records$Item(
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
_$BizUserShareRewardPageGet$Response$Data$Records$ItemToJson(
  BizUserShareRewardPageGet$Response$Data$Records$Item instance,
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

NoAuthBizAlbumAlbumInfoGet$Response$Data$Related$Item
_$NoAuthBizAlbumAlbumInfoGet$Response$Data$Related$ItemFromJson(
  Map<String, dynamic> json,
) => NoAuthBizAlbumAlbumInfoGet$Response$Data$Related$Item(
  albumCode: json['albumCode'] as String?,
  tenantCode: json['tenantCode'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  backImg: json['backImg'] as String?,
);

Map<String, dynamic>
_$NoAuthBizAlbumAlbumInfoGet$Response$Data$Related$ItemToJson(
  NoAuthBizAlbumAlbumInfoGet$Response$Data$Related$Item instance,
) => <String, dynamic>{
  'albumCode': instance.albumCode,
  'tenantCode': instance.tenantCode,
  'name': instance.name,
  'description': instance.description,
  'backImg': instance.backImg,
};

NoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto
_$NoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDtoFromJson(
  Map<String, dynamic> json,
) => NoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto(
  categoryList: (json['categoryList'] as List<dynamic>)
      .map(
        (e) =>
            NoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$NoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDtoToJson(
  NoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto instance,
) => <String, dynamic>{
  'categoryList': instance.categoryList.map((e) => e.toJson()).toList(),
};

BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$ItemFromJson(
  Map<String, dynamic> json,
) => BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item(
  shopCode: json['shopCode'] as String?,
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  tenantCode: json['tenantCode'] as String?,
  brandName: json['brandName'] as String?,
  mainImg: (json['mainImg'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainImg$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  subImg: (json['subImg'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$SubImg$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  mainVideo: (json['mainVideo'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainVideo$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  imgCollection: (json['imgCollection'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgCollection$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  textDetail: json['textDetail'] as String?,
  imgDetail: (json['imgDetail'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgDetail$Item.fromJson(
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
            BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  productAttrs: (json['productAttrs'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$Item.fromJson(
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
            BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$ItemToJson(
  BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item instance,
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

BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$ItemFromJson(
  Map<String, dynamic> json,
) => BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item(
  shopCode: json['shopCode'] as String?,
  productCode: json['productCode'] as String?,
  productName: json['productName'] as String?,
  tenantCode: json['tenantCode'] as String?,
  brandName: json['brandName'] as String?,
  mainImg: (json['mainImg'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainImg$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  subImg: (json['subImg'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$SubImg$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  mainVideo: (json['mainVideo'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainVideo$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  imgCollection: (json['imgCollection'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgCollection$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  textDetail: json['textDetail'] as String?,
  imgDetail: (json['imgDetail'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgDetail$Item.fromJson(
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
            BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  productAttrs: (json['productAttrs'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$Item.fromJson(
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
            BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
  tags: (json['tags'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$Tags$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$ItemToJson(
  BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item instance,
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

ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$RequestParams
_$ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$RequestParamsFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$RequestParams(
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
_$ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$RequestParamsToJson(
  ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$RequestParams
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

ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$Item
_$ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$ItemFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$Item(
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
            ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$Item$Options$Item.fromJson(
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
_$ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$ItemToJson(
  ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$Item
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

ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages
_$ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImagesFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages(
  title: json['title'] as String?,
  items: (json['items'] as List<dynamic>?)
      ?.map(
        (e) =>
            ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item.fromJson(
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
            ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Images$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImagesToJson(
  ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages
  instance,
) => <String, dynamic>{
  'title': instance.title,
  'items': instance.items?.map((e) => e.toJson()).toList(),
  'generated_at': instance.generatedAt,
  'multi_model_image_url': instance.multiModelImageUrl,
  'white_bg_images': instance.whiteBgImages,
  'images': instance.images?.map((e) => e.toJson()).toList(),
};

ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImagesStatus
_$ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImagesStatusFromJson(
  Map<String, dynamic> json,
) =>
    ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImagesStatus(
      ready: json['ready'] as bool?,
      count: (json['count'] as num?)?.toDouble(),
    );

Map<String, dynamic>
_$ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImagesStatusToJson(
  ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImagesStatus
  instance,
) => <String, dynamic>{'ready': instance.ready, 'count': instance.count};

ApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$Item$Options$Item
_$ApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$Item$Options$ItemFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$Item$Options$Item(
  id: (json['id'] as num?)?.toDouble(),
  title: json['title'] as String?,
  link: json['link'] as String?,
  source: json['source'] as String?,
  price: json['price'] as String?,
  image: json['image'] as String?,
);

Map<String, dynamic>
_$ApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$Item$Options$ItemToJson(
  ApiV1StyleOutfitsResultGet$Response$Data$ProductLinks$Item$Options$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'link': instance.link,
  'source': instance.source,
  'price': instance.price,
  'image': instance.image,
};

ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item
_$ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$ItemFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item(
  sharingImageId: (json['sharingImageId'] as num?)?.toDouble(),
  imageUrl: json['imageUrl'] as String?,
  caption: json['caption'] == null
      ? null
      : ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$Caption.fromJson(
          json['caption'] as Map<String, dynamic>,
        ),
  metadata: json['metadata'] == null
      ? null
      : ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$Metadata.fromJson(
          json['metadata'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$ItemToJson(
  ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item instance,
) => <String, dynamic>{
  'sharingImageId': instance.sharingImageId,
  'imageUrl': instance.imageUrl,
  'caption': instance.caption?.toJson(),
  'metadata': instance.metadata?.toJson(),
};

ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Images$Item
_$ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Images$ItemFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Images$Item(
  sharingImageId: (json['sharingImageId'] as num?)?.toDouble(),
  imageUrl: json['imageUrl'] as String?,
);

Map<String, dynamic>
_$ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Images$ItemToJson(
  ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Images$Item instance,
) => <String, dynamic>{
  'sharingImageId': instance.sharingImageId,
  'imageUrl': instance.imageUrl,
};

BizAiFashionModelListGet$Response$Data$Models$Item$Data$Item
_$BizAiFashionModelListGet$Response$Data$Models$Item$Data$ItemFromJson(
  Map<String, dynamic> json,
) => BizAiFashionModelListGet$Response$Data$Models$Item$Data$Item(
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
_$BizAiFashionModelListGet$Response$Data$Models$Item$Data$ItemToJson(
  BizAiFashionModelListGet$Response$Data$Models$Item$Data$Item instance,
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

BizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$Images$Item
_$BizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$Images$ItemFromJson(
  Map<String, dynamic> json,
) => BizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$Images$Item(
  width: (json['width'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$BizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$Images$ItemToJson(
  BizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$Images$Item instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

BizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$FrontImage
_$BizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$FrontImageFromJson(
  Map<String, dynamic> json,
) => BizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$FrontImage(
  width: (json['width'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  url: json['url'] as String?,
);

Map<String, dynamic>
_$BizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$FrontImageToJson(
  BizAiFashionNoAuthPostListGet$Response$Data$Posts$Item$FrontImage instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

BizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$Item$Data$Item
_$BizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$Item$Data$ItemFromJson(
  Map<String, dynamic> json,
) =>
    BizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$Item$Data$Item(
      label: json['label'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic>
_$BizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$Item$Data$ItemToJson(
  BizAiFashionNoAuthSelectOptionGet$Response$Data$SelectionList$Item$Data$Item
  instance,
) => <String, dynamic>{'label': instance.label, 'value': instance.value};

NoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$Item
_$NoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$ItemFromJson(
  Map<String, dynamic> json,
) => NoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$Item(
  id: (json['id'] as num).toInt(),
  parentId: (json['parentId'] as num).toInt(),
  level: (json['level'] as num).toInt(),
  showOrder: (json['showOrder'] as num).toInt(),
  name: json['name'] as String,
  iconUrl: json['iconUrl'] as String,
  categoryList: (json['categoryList'] as List<dynamic>)
      .map(
        (e) =>
            NoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$Item$CategoryList$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$NoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$ItemToJson(
  NoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'parentId': instance.parentId,
  'level': instance.level,
  'showOrder': instance.showOrder,
  'name': instance.name,
  'iconUrl': instance.iconUrl,
  'categoryList': instance.categoryList.map((e) => e.toJson()).toList(),
};

BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainImg$Item
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainImg$ItemFromJson(
  Map<String, dynamic> json,
) =>
    BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainImg$Item(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainImg$ItemToJson(
  BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainImg$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$SubImg$Item
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$SubImg$ItemFromJson(
  Map<String, dynamic> json,
) =>
    BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$SubImg$Item(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$SubImg$ItemToJson(
  BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$SubImg$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainVideo$Item
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainVideo$ItemFromJson(
  Map<String, dynamic> json,
) =>
    BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainVideo$Item(
      videoUrl: json['videoUrl'] as String?,
      vodUrl: json['vodUrl'] as String?,
      previewUrl: json['previewUrl'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic>
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainVideo$ItemToJson(
  BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$MainVideo$Item
  instance,
) => <String, dynamic>{
  'videoUrl': instance.videoUrl,
  'vodUrl': instance.vodUrl,
  'previewUrl': instance.previewUrl,
  'width': instance.width,
  'height': instance.height,
};

BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgCollection$Item
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgCollection$ItemFromJson(
  Map<String, dynamic> json,
) =>
    BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgCollection$Item(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgCollection$ItemToJson(
  BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgCollection$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgDetail$Item
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgDetail$ItemFromJson(
  Map<String, dynamic> json,
) =>
    BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgDetail$Item(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgDetail$ItemToJson(
  BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ImgDetail$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$ItemFromJson(
  Map<String, dynamic> json,
) => BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item(
  name: json['name'] as String?,
  type: (json['type'] as num?)?.toInt(),
  optionValues: (json['optionValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$ItemToJson(
  BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item
  instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'optionValues': instance.optionValues?.map((e) => e.toJson()).toList(),
};

BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$Item
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$ItemFromJson(
  Map<String, dynamic> json,
) =>
    BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$Item(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic>
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$ItemToJson(
  BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$Item
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$ItemFromJson(
  Map<String, dynamic> json,
) => BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item(
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
  skuOption: json['skuOption'] == null
      ? null
      : BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOption.fromJson(
          json['skuOption'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$ItemToJson(
  BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item
  instance,
) => <String, dynamic>{
  'images': instance.images,
  'skuOption': instance.skuOption?.toJson(),
};

BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$Tags$Item
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) => BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$Tags$Item(
  tagCode: json['tagCode'] as String?,
  tagImg: json['tagImg'] as String?,
  order: (json['order'] as num?)?.toInt(),
  frontShow: (json['frontShow'] as num?)?.toInt(),
);

Map<String, dynamic>
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$Tags$ItemToJson(
  BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$Tags$Item
  instance,
) => <String, dynamic>{
  'tagCode': instance.tagCode,
  'tagImg': instance.tagImg,
  'order': instance.order,
  'frontShow': instance.frontShow,
};

BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainImg$Item
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainImg$ItemFromJson(
  Map<String, dynamic> json,
) =>
    BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainImg$Item(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainImg$ItemToJson(
  BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainImg$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$SubImg$Item
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$SubImg$ItemFromJson(
  Map<String, dynamic> json,
) =>
    BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$SubImg$Item(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$SubImg$ItemToJson(
  BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$SubImg$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainVideo$Item
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainVideo$ItemFromJson(
  Map<String, dynamic> json,
) =>
    BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainVideo$Item(
      videoUrl: json['videoUrl'] as String?,
      vodUrl: json['vodUrl'] as String?,
      previewUrl: json['previewUrl'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic>
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainVideo$ItemToJson(
  BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$MainVideo$Item
  instance,
) => <String, dynamic>{
  'videoUrl': instance.videoUrl,
  'vodUrl': instance.vodUrl,
  'previewUrl': instance.previewUrl,
  'width': instance.width,
  'height': instance.height,
};

BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgCollection$Item
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgCollection$ItemFromJson(
  Map<String, dynamic> json,
) =>
    BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgCollection$Item(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgCollection$ItemToJson(
  BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgCollection$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgDetail$Item
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgDetail$ItemFromJson(
  Map<String, dynamic> json,
) =>
    BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgDetail$Item(
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic>
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgDetail$ItemToJson(
  BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ImgDetail$Item
  instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$ItemFromJson(
  Map<String, dynamic> json,
) => BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item(
  name: json['name'] as String?,
  type: (json['type'] as num?)?.toInt(),
  optionValues: (json['optionValues'] as List<dynamic>?)
      ?.map(
        (e) =>
            BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic>
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$ItemToJson(
  BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item
  instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'optionValues': instance.optionValues?.map((e) => e.toJson()).toList(),
};

BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$Item
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$ItemFromJson(
  Map<String, dynamic> json,
) =>
    BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$Item(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic>
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$ItemToJson(
  BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductAttrs$Item
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$ItemFromJson(
  Map<String, dynamic> json,
) => BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item(
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
      [],
  skuOption: json['skuOption'] == null
      ? null
      : BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOption.fromJson(
          json['skuOption'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$ItemToJson(
  BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item
  instance,
) => <String, dynamic>{
  'images': instance.images,
  'skuOption': instance.skuOption?.toJson(),
};

BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$Tags$Item
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$Tags$ItemFromJson(
  Map<String, dynamic> json,
) =>
    BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$Tags$Item(
      tagCode: json['tagCode'] as String?,
      tagImg: json['tagImg'] as String?,
      order: (json['order'] as num?)?.toInt(),
      frontShow: (json['frontShow'] as num?)?.toInt(),
    );

Map<String, dynamic>
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$Tags$ItemToJson(
  BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$Tags$Item
  instance,
) => <String, dynamic>{
  'tagCode': instance.tagCode,
  'tagImg': instance.tagImg,
  'order': instance.order,
  'frontShow': instance.frontShow,
};

ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$Item$Options$Item
_$ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$Item$Options$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$Item$Options$Item(
      id: (json['id'] as num?)?.toDouble(),
      title: json['title'] as String?,
      link: json['link'] as String?,
      source: json['source'] as String?,
      price: json['price'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic>
_$ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$Item$Options$ItemToJson(
  ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$ProductLinks$Item$Options$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'link': instance.link,
  'source': instance.source,
  'price': instance.price,
  'image': instance.image,
};

ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item
_$ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$ItemFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item(
  sharingImageId: (json['sharingImageId'] as num?)?.toDouble(),
  imageUrl: json['imageUrl'] as String?,
  caption: json['caption'] == null
      ? null
      : ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$Caption.fromJson(
          json['caption'] as Map<String, dynamic>,
        ),
  metadata: json['metadata'] == null
      ? null
      : ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$Metadata.fromJson(
          json['metadata'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic>
_$ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$ItemToJson(
  ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item
  instance,
) => <String, dynamic>{
  'sharingImageId': instance.sharingImageId,
  'imageUrl': instance.imageUrl,
  'caption': instance.caption?.toJson(),
  'metadata': instance.metadata?.toJson(),
};

ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Images$Item
_$ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Images$ItemFromJson(
  Map<String, dynamic> json,
) =>
    ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Images$Item(
      sharingImageId: (json['sharingImageId'] as num?)?.toDouble(),
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic>
_$ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Images$ItemToJson(
  ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Images$Item
  instance,
) => <String, dynamic>{
  'sharingImageId': instance.sharingImageId,
  'imageUrl': instance.imageUrl,
};

ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$Caption
_$ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$CaptionFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$Caption(
  description: json['description'] as String?,
  brand: json['brand'] as String?,
  hashtags:
      (json['hashtags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      [],
  fullText: json['full_text'] as String?,
);

Map<String, dynamic>
_$ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$CaptionToJson(
  ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$Caption
  instance,
) => <String, dynamic>{
  'description': instance.description,
  'brand': instance.brand,
  'hashtags': instance.hashtags,
  'full_text': instance.fullText,
};

ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$Metadata
_$ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$MetadataFromJson(
  Map<String, dynamic> json,
) => ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$Metadata(
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
_$ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$MetadataToJson(
  ApiV1StyleOutfitsResultGet$Response$Data$SharingImages$Items$Item$Metadata
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

NoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$Item$CategoryList$Item
_$NoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$Item$CategoryList$ItemFromJson(
  Map<String, dynamic> json,
) =>
    NoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$Item$CategoryList$Item(
      id: (json['id'] as num).toInt(),
      parentId: (json['parentId'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      showOrder: (json['showOrder'] as num).toInt(),
      name: json['name'] as String,
      iconUrl: json['iconUrl'] as String,
    );

Map<String, dynamic>
_$NoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$Item$CategoryList$ItemToJson(
  NoAuthBizAlbumAlbumInfoGet$Response$Data$CategoryTreeDto$CategoryList$Item$CategoryList$Item
  instance,
) => <String, dynamic>{
  'id': instance.id,
  'parentId': instance.parentId,
  'level': instance.level,
  'showOrder': instance.showOrder,
  'name': instance.name,
  'iconUrl': instance.iconUrl,
};

BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$Item
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$Item(
      value: json['value'] as String?,
      image: json['image'] as String?,
      imageWidth: (json['imageWidth'] as num?)?.toInt(),
      imageHeight: (json['imageHeight'] as num?)?.toInt(),
    );

Map<String, dynamic>
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$ItemToJson(
  BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$Item
  instance,
) => <String, dynamic>{
  'value': instance.value,
  'image': instance.image,
  'imageWidth': instance.imageWidth,
  'imageHeight': instance.imageHeight,
};

BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOption
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOptionFromJson(
  Map<String, dynamic> json,
) =>
    BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOption(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic>
_$BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOptionToJson(
  BizCommunityPostLikedGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOption
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$Item
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$ItemFromJson(
  Map<String, dynamic> json,
) =>
    BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$Item(
      value: json['value'] as String?,
      image: json['image'] as String?,
      imageWidth: (json['imageWidth'] as num?)?.toInt(),
      imageHeight: (json['imageHeight'] as num?)?.toInt(),
    );

Map<String, dynamic>
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$ItemToJson(
  BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$ProductOptions$Item$OptionValues$Item
  instance,
) => <String, dynamic>{
  'value': instance.value,
  'image': instance.image,
  'imageWidth': instance.imageWidth,
  'imageHeight': instance.imageHeight,
};

BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOption
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOptionFromJson(
  Map<String, dynamic> json,
) =>
    BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOption(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic>
_$BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOptionToJson(
  BizCommunityPostNoAuthListGet$Response$Data$Posts$Item$Products$Item$InspectImages$Item$SkuOption
  instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$Caption
_$ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$CaptionFromJson(
  Map<String, dynamic> json,
) =>
    ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$Caption(
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
_$ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$CaptionToJson(
  ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$Caption
  instance,
) => <String, dynamic>{
  'description': instance.description,
  'brand': instance.brand,
  'hashtags': instance.hashtags,
  'full_text': instance.fullText,
};

ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$Metadata
_$ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$MetadataFromJson(
  Map<String, dynamic> json,
) =>
    ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$Metadata(
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
_$ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$MetadataToJson(
  ApiV1StyleOutfitsResultPageGet$Response$Data$Records$Item$SharingImages$Items$Item$Metadata
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
