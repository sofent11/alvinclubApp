// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'swaggerApiUser.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$SwaggerApiUser extends SwaggerApiUser {
  _$SwaggerApiUser([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = SwaggerApiUser;

  @override
  Future<Response<UserServiceAddressUpdatePost$Response>>
  _userServiceAddressUpdatePost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '修改地址',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["收货地址"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/address/update');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceAddressUpdatePost$Response,
      UserServiceAddressUpdatePost$Response
    >($request);
  }

  @override
  Future<Response<UserServiceAddressDeleteDelete$Response>>
  _userServiceAddressDeleteDelete({
    required String? id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '删除地址',
      operationId: '',
      consumes: ["multipart/form-data"],
      produces: [],
      security: [],
      tags: ["收货地址"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/address/delete');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceAddressDeleteDelete$Response,
      UserServiceAddressDeleteDelete$Response
    >($request);
  }

  @override
  Future<Response<UserServiceAddressQueryGet$Response>>
  _userServiceAddressQueryGet({
    String? searchAddress,
    required String? portalCode,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '地址联想',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["收货地址"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/address/query');
    final Map<String, dynamic> $params = <String, dynamic>{
      'searchAddress': searchAddress,
      'portalCode': portalCode,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceAddressQueryGet$Response,
      UserServiceAddressQueryGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceNoAuthSupportCountryGet$Response>>
  _userServiceNoAuthSupportCountryGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '支持国家',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["收货地址"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/no-auth/support/country');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceNoAuthSupportCountryGet$Response,
      UserServiceNoAuthSupportCountryGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceAddressListGet$Response>>
  _userServiceAddressListGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '收货地址列表',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["收货地址"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/address/list');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceAddressListGet$Response,
      UserServiceAddressListGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceGetShippingAddressByCountryGet$Response>>
  _userServiceGetShippingAddressByCountryGet({
    required String? country,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '收货地址（按国家查询）',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["收货地址"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/getShippingAddressByCountry');
    final Map<String, dynamic> $params = <String, dynamic>{'country': country};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceGetShippingAddressByCountryGet$Response,
      UserServiceGetShippingAddressByCountryGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceAddressAddPost$Response>>
  _userServiceAddressAddPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '新增用户地址',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["收货地址"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/address/add');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceAddressAddPost$Response,
      UserServiceAddressAddPost$Response
    >($request);
  }

  @override
  Future<Response<UserServiceGetDefaultShippingAddressGet$Response>>
  _userServiceGetDefaultShippingAddressGet({
    String? authorization,
    String? userId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '查询默认收货地址',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["收货地址"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/getDefaultShippingAddress');
    final Map<String, dynamic> $params = <String, dynamic>{'userId': userId};
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceGetDefaultShippingAddressGet$Response,
      UserServiceGetDefaultShippingAddressGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceAddressCountryGet$Response>>
  _userServiceAddressCountryGet({
    String? areaCode,
    required String? portalCode,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '省市区列表',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["收货地址"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/address/country');
    final Map<String, dynamic> $params = <String, dynamic>{
      'areaCode': areaCode,
      'portalCode': portalCode,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceAddressCountryGet$Response,
      UserServiceAddressCountryGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceAddressQueryByZipCodeGet$Response>>
  _userServiceAddressQueryByZipCodeGet({
    required String? zipCode,
    required String? portalCode,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '邮编查询',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["收货地址"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/address/queryByZipCode');
    final Map<String, dynamic> $params = <String, dynamic>{
      'zipCode': zipCode,
      'portalCode': portalCode,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceAddressQueryByZipCodeGet$Response,
      UserServiceAddressQueryByZipCodeGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserInnerUpdUserLevelPost$Response>>
  _userServiceUserInnerUpdUserLevelPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '更新用户等级',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["服务接口"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/inner/upd/user-level');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserInnerUpdUserLevelPost$Response,
      UserServiceUserInnerUpdUserLevelPost$Response
    >($request);
  }

  @override
  Future<Response<UserServiceSigninSwitchPortalPost$Response>>
  _userServiceSigninSwitchPortalPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '切换国家',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["注册&登录"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/signin/switchPortal');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceSigninSwitchPortalPost$Response,
      UserServiceSigninSwitchPortalPost$Response
    >($request);
  }

  @override
  Future<Response<UserServiceSignInInitPost$Response>>
  _userServiceSignInInitPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '发送验证码',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["注册&登录"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/signIn/init');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceSignInInitPost$Response,
      UserServiceSignInInitPost$Response
    >($request);
  }

  @override
  Future<Response<UserServiceOtpApplyPost$Response>> _userServiceOtpApplyPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '生成临时token',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["注册&登录"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/otp/apply');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceOtpApplyPost$Response,
      UserServiceOtpApplyPost$Response
    >($request);
  }

  @override
  Future<Response<String>> _userServiceSignOutPost({
    String? authorization,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '登出',
      operationId: '',
      consumes: ["multipart/form-data"],
      produces: [],
      security: [],
      tags: ["注册&登录"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/signOut');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
      tag: swaggerMetaData,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<UserServiceSignInVerifyPost$Response>>
  _userServiceSignInVerifyPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '登录校验密码\验证码',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["注册&登录"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/signIn/verify');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceSignInVerifyPost$Response,
      UserServiceSignInVerifyPost$Response
    >($request);
  }

  @override
  Future<Response<UserServiceSignInCallPost$Response>>
  _userServiceSignInCallPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '轮询登录信息',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["注册&登录"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/signIn/call');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceSignInCallPost$Response,
      UserServiceSignInCallPost$Response
    >($request);
  }

  @override
  Future<Response<UserServiceNoAuthOtpVerifyPost$Response>>
  _userServiceNoAuthOtpVerifyPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '验证临时token',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["注册&登录"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/no-auth/otp/verify');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceNoAuthOtpVerifyPost$Response,
      UserServiceNoAuthOtpVerifyPost$Response
    >($request);
  }

  @override
  Future<Response<Object>> _userServiceNoAuthEmailUnsubscribePost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '邮箱取消订阅',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["非验权接口"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/no-auth/email/unsubscribe');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<UserServiceNoAuthCommonConfigDefaultSettingGet$Response>>
  _userServiceNoAuthCommonConfigDefaultSettingGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '默认国家和语言',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["非验权接口"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/user-service/no-auth/common-config/default-setting',
    );
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceNoAuthCommonConfigDefaultSettingGet$Response,
      UserServiceNoAuthCommonConfigDefaultSettingGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceFileImUploadPost$Response>>
  _userServiceFileImUploadPost({
    required List<int>? files,
    required List<int>? files$,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'IM多文件上传',
      operationId: '',
      consumes: ["multipart/form-data"],
      produces: [],
      security: [],
      tags: ["文件上传"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/file/im/upload');
    final $body = <String, dynamic>{'files': files$};
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceFileImUploadPost$Response,
      UserServiceFileImUploadPost$Response
    >($request);
  }

  @override
  Future<Response<UserServiceFileLogoUploadPost$Response>>
  _userServiceFileLogoUploadPost({
    required List<int>? file,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '上传头像',
      operationId: '',
      consumes: ["multipart/form-data"],
      produces: [],
      security: [],
      tags: ["文件上传"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/file/logo/upload');
    final $body = <String, dynamic>{'file': file};
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceFileLogoUploadPost$Response,
      UserServiceFileLogoUploadPost$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserCouponCountGet$Response>>
  _userServiceUserCouponCountGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '优惠券数量列表',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["优惠券"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/coupon/count');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserCouponCountGet$Response,
      UserServiceUserCouponCountGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserCouponActivityInfoGet$Response>>
  _userServiceUserCouponActivityInfoGet({
    required String? couponActivityCode,
    String? received,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '优惠券活动信息',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["优惠券"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/coupon/activityInfo');
    final Map<String, dynamic> $params = <String, dynamic>{
      'couponActivityCode': couponActivityCode,
      'received': received,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserCouponActivityInfoGet$Response,
      UserServiceUserCouponActivityInfoGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserCouponCode2CouponGet$Response>>
  _userServiceUserCouponCode2CouponGet({
    required String? code,
    String? isDiscount,
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '按code领取',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["优惠券"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/coupon/code2Coupon');
    final Map<String, dynamic> $params = <String, dynamic>{
      'code': code,
      'isDiscount': isDiscount,
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
      UserServiceUserCouponCode2CouponGet$Response,
      UserServiceUserCouponCode2CouponGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserCouponActivityInfosGet$Response>>
  _userServiceUserCouponActivityInfosGet({
    String? couponActivityCodes,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '活动信息(多活动)',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["优惠券"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/coupon/activityInfos');
    final Map<String, dynamic> $params = <String, dynamic>{
      'couponActivityCodes': couponActivityCodes,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserCouponActivityInfosGet$Response,
      UserServiceUserCouponActivityInfosGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserCouponGetActivitiesGet$Response>>
  _userServiceUserCouponGetActivitiesGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '用户优惠券ActivityCodes',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["优惠券"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/coupon/getActivities');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserCouponGetActivitiesGet$Response,
      UserServiceUserCouponGetActivitiesGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserCouponGetListGet$Response>>
  _userServiceUserCouponGetListGet({
    required String? userCouponState,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '用户优惠券列表（多活动分组）',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["优惠券"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/coupon/getList');
    final Map<String, dynamic> $params = <String, dynamic>{
      'userCouponState': userCouponState,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserCouponGetListGet$Response,
      UserServiceUserCouponGetListGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserCouponGetUserCouponByActivityPost$Response>>
  _userServiceUserCouponGetUserCouponByActivityPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '领取优惠券（多活动）',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["优惠券"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/user-service/user/coupon/getUserCouponByActivity',
    );
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserCouponGetUserCouponByActivityPost$Response,
      UserServiceUserCouponGetUserCouponByActivityPost$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserCouponSaveGet$Response>>
  _userServiceUserCouponSaveGet({
    required String? couponActivityCode,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '发放优惠券',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["优惠券"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/coupon/save');
    final Map<String, dynamic> $params = <String, dynamic>{
      'couponActivityCode': couponActivityCode,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserCouponSaveGet$Response,
      UserServiceUserCouponSaveGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserCouponNoAuthActivityInfoGet$Response>>
  _userServiceUserCouponNoAuthActivityInfoGet({
    required String? couponActivityCode,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '活动信息（非验权）',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["优惠券"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/user-service/user/coupon/no-auth/activityInfo',
    );
    final Map<String, dynamic> $params = <String, dynamic>{
      'couponActivityCode': couponActivityCode,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserCouponNoAuthActivityInfoGet$Response,
      UserServiceUserCouponNoAuthActivityInfoGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserCouponGetCouponByActivityPost$Response>>
  _userServiceUserCouponGetCouponByActivityPost({
    required String? couponActivityCode,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '领取活动优惠券',
      operationId: '',
      consumes: ["multipart/form-data"],
      produces: [],
      security: [],
      tags: ["优惠券"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/coupon/getCouponByActivity');
    final $body = <String, dynamic>{'couponActivityCode': couponActivityCode};
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserCouponGetCouponByActivityPost$Response,
      UserServiceUserCouponGetCouponByActivityPost$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserCouponGetGet$Response>>
  _userServiceUserCouponGetGet({
    required String? userCouponState,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '用户优惠券列表',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["优惠券"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/coupon/get');
    final Map<String, dynamic> $params = <String, dynamic>{
      'userCouponState': userCouponState,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserCouponGetGet$Response,
      UserServiceUserCouponGetGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceImGetInfoPost$Response>>
  _userServiceImGetInfoPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '交换IMtoken',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["IM"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/im/getInfo');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceImGetInfoPost$Response,
      UserServiceImGetInfoPost$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserShareListGet$Response>>
  _userServiceUserShareListGet({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '分享列表',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["用户"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/share/list');
    final $body = root;
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserShareListGet$Response,
      UserServiceUserShareListGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserShareRewardInfoGet$Response>>
  _userServiceUserShareRewardInfoGet({
    required String? orderId,
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '分享返利信息',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["用户"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/share/rewardInfo');
    final Map<String, dynamic> $params = <String, dynamic>{'orderId': orderId};
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
      UserServiceUserShareRewardInfoGet$Response,
      UserServiceUserShareRewardInfoGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserShareSubmitPost$Response>>
  _userServiceUserShareSubmitPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '提交分享',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["用户"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/share/submit');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserShareSubmitPost$Response,
      UserServiceUserShareSubmitPost$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserDeleteGet$Response>>
  _userServiceUserDeleteGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '注销发送验证码',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["用户"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/delete');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserDeleteGet$Response,
      UserServiceUserDeleteGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserDeleteConfirmGet$Response>>
  _userServiceUserDeleteConfirmGet({
    required String? code,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '注销确认',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["用户"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/delete/confirm');
    final Map<String, dynamic> $params = <String, dynamic>{'code': code};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserDeleteConfirmGet$Response,
      UserServiceUserDeleteConfirmGet$Response
    >($request);
  }

  @override
  Future<Response<Object>> _userServiceUserUpdatePost({
    String? authorization,
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '用户修改',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["用户"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/update');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
    };
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
      tag: swaggerMetaData,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<UserServiceUserGetGet$Response>> _userServiceUserGetGet({
    String? authorization,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '用户查询',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["用户"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/get');
    final Map<String, String> $headers = {
      if (authorization != null) 'Authorization': authorization,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
      tag: swaggerMetaData,
    );
    return client
        .send<UserServiceUserGetGet$Response, UserServiceUserGetGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<UserServiceUserUserCommissionGet$Response>>
  _userServiceUserUserCommissionGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '用户积分信息',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["用户"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/user-commission');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserUserCommissionGet$Response,
      UserServiceUserUserCommissionGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserConfigureSettingGet$Response>>
  _userServiceUserConfigureSettingGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '用户配置',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["用户"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/configure-setting');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserConfigureSettingGet$Response,
      UserServiceUserConfigureSettingGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserInviteCountGet$Response>>
  _userServiceUserInviteCountGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '邀请数量',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["用户"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/invite/count');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserInviteCountGet$Response,
      UserServiceUserInviteCountGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserInviteNumGet$Response>>
  _userServiceUserInviteNumGet({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '邀请统计',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["用户"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/invite/num');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserInviteNumGet$Response,
      UserServiceUserInviteNumGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserShareUpdatePost$Response>>
  _userServiceUserShareUpdatePost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '重新提交分享',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["用户"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/share/update');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserShareUpdatePost$Response,
      UserServiceUserShareUpdatePost$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserUserRewardGet$Response>>
  _userServiceUserUserRewardGet({
    required String? rewardType,
    String? expire,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '领取奖励',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["用户"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/user-reward');
    final Map<String, dynamic> $params = <String, dynamic>{
      'rewardType': rewardType,
      'expire': expire,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserUserRewardGet$Response,
      UserServiceUserUserRewardGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserTagPortraitAiToPortraitPost$Response>>
  _userServiceUserTagPortraitAiToPortraitPost({
    List<String>? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'ai解析画像',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["用户画像"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/user-service/user-tag-portrait/ai-to-portrait',
    );
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserTagPortraitAiToPortraitPost$Response,
      UserServiceUserTagPortraitAiToPortraitPost$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserTagPortraitAiToPortraitV2Post$Response>>
  _userServiceUserTagPortraitAiToPortraitV2Post({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'ai解析画像V2',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["用户画像"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/user-service/user-tag-portrait/ai-to-portrait-v2',
    );
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserTagPortraitAiToPortraitV2Post$Response,
      UserServiceUserTagPortraitAiToPortraitV2Post$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserTagPortraitUpdatePortraitPost$Response>>
  _userServiceUserTagPortraitUpdatePortraitPost({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '更新用户画像',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["用户画像"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse(
      '/user-service/user-tag-portrait/update-portrait',
    );
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserTagPortraitUpdatePortraitPost$Response,
      UserServiceUserTagPortraitUpdatePortraitPost$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserTagPortraitGetPortraitGet$Response>>
  _userServiceUserTagPortraitGetPortraitGet({
    Object? root,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '获取用户画像',
      operationId: '',
      consumes: ["application/json"],
      produces: [],
      security: [],
      tags: ["用户画像"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user-tag-portrait/get-portrait');
    final $body = root;
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserTagPortraitGetPortraitGet$Response,
      UserServiceUserTagPortraitGetPortraitGet$Response
    >($request);
  }

  @override
  Future<Response<UserServiceUserCouponAppHomeActivityPost$Response>>
  _userServiceUserCouponAppHomeActivityPost({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: '首页活动',
      operationId: '',
      consumes: ["multipart/form-data"],
      produces: [],
      security: [],
      tags: ["app端"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/user-service/user/coupon/app/homeActivity');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      UserServiceUserCouponAppHomeActivityPost$Response,
      UserServiceUserCouponAppHomeActivityPost$Response
    >($request);
  }
}
