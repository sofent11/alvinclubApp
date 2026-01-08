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
  Future<Response<AddressUpdatePost$Response>> _addressUpdatePost({
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
    final Uri $url = Uri.parse('/address/update');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<AddressUpdatePost$Response, AddressUpdatePost$Response>(
      $request,
    );
  }

  @override
  Future<Response<AddressDeleteDelete$Response>> _addressDeleteDelete({
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
    final Uri $url = Uri.parse('/address/delete');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client
        .send<AddressDeleteDelete$Response, AddressDeleteDelete$Response>(
          $request,
        );
  }

  @override
  Future<Response<AddressQueryGet$Response>> _addressQueryGet({
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
    final Uri $url = Uri.parse('/address/query');
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
    return client.send<AddressQueryGet$Response, AddressQueryGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<NoAuthSupportCountryGet$Response>> _noAuthSupportCountryGet({
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
    final Uri $url = Uri.parse('/no-auth/support/country');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      NoAuthSupportCountryGet$Response,
      NoAuthSupportCountryGet$Response
    >($request);
  }

  @override
  Future<Response<AddressListGet$Response>> _addressListGet({
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
    final Uri $url = Uri.parse('/address/list');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<AddressListGet$Response, AddressListGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<GetShippingAddressByCountryGet$Response>>
  _getShippingAddressByCountryGet({
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
    final Uri $url = Uri.parse('/getShippingAddressByCountry');
    final Map<String, dynamic> $params = <String, dynamic>{'country': country};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<
      GetShippingAddressByCountryGet$Response,
      GetShippingAddressByCountryGet$Response
    >($request);
  }

  @override
  Future<Response<AddressAddPost$Response>> _addressAddPost({
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
    final Uri $url = Uri.parse('/address/add');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<AddressAddPost$Response, AddressAddPost$Response>(
      $request,
    );
  }

  @override
  Future<Response<GetDefaultShippingAddressGet$Response>>
  _getDefaultShippingAddressGet({
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
    final Uri $url = Uri.parse('/getDefaultShippingAddress');
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
      GetDefaultShippingAddressGet$Response,
      GetDefaultShippingAddressGet$Response
    >($request);
  }

  @override
  Future<Response<AddressCountryGet$Response>> _addressCountryGet({
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
    final Uri $url = Uri.parse('/address/country');
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
    return client.send<AddressCountryGet$Response, AddressCountryGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<AddressQueryByZipCodeGet$Response>>
  _addressQueryByZipCodeGet({
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
    final Uri $url = Uri.parse('/address/queryByZipCode');
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
      AddressQueryByZipCodeGet$Response,
      AddressQueryByZipCodeGet$Response
    >($request);
  }

  @override
  Future<Response<UserInnerUpdUserLevelPost$Response>>
  _userInnerUpdUserLevelPost({
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
    final Uri $url = Uri.parse('/user/inner/upd/user-level');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserInnerUpdUserLevelPost$Response,
      UserInnerUpdUserLevelPost$Response
    >($request);
  }

  @override
  Future<Response<SigninSwitchPortalPost$Response>> _signinSwitchPortalPost({
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
    final Uri $url = Uri.parse('/signin/switchPortal');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client
        .send<SigninSwitchPortalPost$Response, SigninSwitchPortalPost$Response>(
          $request,
        );
  }

  @override
  Future<Response<SignInInitPost$Response>> _signInInitPost({
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
    final Uri $url = Uri.parse('/signIn/init');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<SignInInitPost$Response, SignInInitPost$Response>(
      $request,
    );
  }

  @override
  Future<Response<OtpApplyPost$Response>> _otpApplyPost({
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
    final Uri $url = Uri.parse('/otp/apply');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<OtpApplyPost$Response, OtpApplyPost$Response>($request);
  }

  @override
  Future<Response<String>> _signOutPost({
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
    final Uri $url = Uri.parse('/signOut');
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
  Future<Response<SignInVerifyPost$Response>> _signInVerifyPost({
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
    final Uri $url = Uri.parse('/signIn/verify');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<SignInVerifyPost$Response, SignInVerifyPost$Response>(
      $request,
    );
  }

  @override
  Future<Response<SignInCallPost$Response>> _signInCallPost({
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
    final Uri $url = Uri.parse('/signIn/call');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<SignInCallPost$Response, SignInCallPost$Response>(
      $request,
    );
  }

  @override
  Future<Response<NoAuthOtpVerifyPost$Response>> _noAuthOtpVerifyPost({
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
    final Uri $url = Uri.parse('/no-auth/otp/verify');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client
        .send<NoAuthOtpVerifyPost$Response, NoAuthOtpVerifyPost$Response>(
          $request,
        );
  }

  @override
  Future<Response<Object>> _noAuthEmailUnsubscribePost({
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
    final Uri $url = Uri.parse('/no-auth/email/unsubscribe');
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
  Future<Response<NoAuthCommonConfigDefaultSettingGet$Response>>
  _noAuthCommonConfigDefaultSettingGet({
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
    final Uri $url = Uri.parse('/no-auth/common-config/default-setting');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      NoAuthCommonConfigDefaultSettingGet$Response,
      NoAuthCommonConfigDefaultSettingGet$Response
    >($request);
  }

  @override
  Future<Response<FileImUploadPost$Response>> _fileImUploadPost({
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
    final Uri $url = Uri.parse('/file/im/upload');
    final $body = <String, dynamic>{'files': files$};
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<FileImUploadPost$Response, FileImUploadPost$Response>(
      $request,
    );
  }

  @override
  Future<Response<FileLogoUploadPost$Response>> _fileLogoUploadPost({
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
    final Uri $url = Uri.parse('/file/logo/upload');
    final $body = <String, dynamic>{'file': file};
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client
        .send<FileLogoUploadPost$Response, FileLogoUploadPost$Response>(
          $request,
        );
  }

  @override
  Future<Response<UserCouponCountGet$Response>> _userCouponCountGet({
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
    final Uri $url = Uri.parse('/user/coupon/count');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client
        .send<UserCouponCountGet$Response, UserCouponCountGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<UserCouponActivityInfoGet$Response>>
  _userCouponActivityInfoGet({
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
    final Uri $url = Uri.parse('/user/coupon/activityInfo');
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
      UserCouponActivityInfoGet$Response,
      UserCouponActivityInfoGet$Response
    >($request);
  }

  @override
  Future<Response<UserCouponCode2CouponGet$Response>>
  _userCouponCode2CouponGet({
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
    final Uri $url = Uri.parse('/user/coupon/code2Coupon');
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
      UserCouponCode2CouponGet$Response,
      UserCouponCode2CouponGet$Response
    >($request);
  }

  @override
  Future<Response<UserCouponActivityInfosGet$Response>>
  _userCouponActivityInfosGet({
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
    final Uri $url = Uri.parse('/user/coupon/activityInfos');
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
      UserCouponActivityInfosGet$Response,
      UserCouponActivityInfosGet$Response
    >($request);
  }

  @override
  Future<Response<UserCouponGetActivitiesGet$Response>>
  _userCouponGetActivitiesGet({
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
    final Uri $url = Uri.parse('/user/coupon/getActivities');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      UserCouponGetActivitiesGet$Response,
      UserCouponGetActivitiesGet$Response
    >($request);
  }

  @override
  Future<Response<UserCouponGetListGet$Response>> _userCouponGetListGet({
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
    final Uri $url = Uri.parse('/user/coupon/getList');
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
    return client
        .send<UserCouponGetListGet$Response, UserCouponGetListGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<UserCouponGetUserCouponByActivityPost$Response>>
  _userCouponGetUserCouponByActivityPost({
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
    final Uri $url = Uri.parse('/user/coupon/getUserCouponByActivity');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserCouponGetUserCouponByActivityPost$Response,
      UserCouponGetUserCouponByActivityPost$Response
    >($request);
  }

  @override
  Future<Response<UserCouponSaveGet$Response>> _userCouponSaveGet({
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
    final Uri $url = Uri.parse('/user/coupon/save');
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
    return client.send<UserCouponSaveGet$Response, UserCouponSaveGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<UserCouponNoAuthActivityInfoGet$Response>>
  _userCouponNoAuthActivityInfoGet({
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
    final Uri $url = Uri.parse('/user/coupon/no-auth/activityInfo');
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
      UserCouponNoAuthActivityInfoGet$Response,
      UserCouponNoAuthActivityInfoGet$Response
    >($request);
  }

  @override
  Future<Response<UserCouponGetCouponByActivityPost$Response>>
  _userCouponGetCouponByActivityPost({
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
    final Uri $url = Uri.parse('/user/coupon/getCouponByActivity');
    final $body = <String, dynamic>{'couponActivityCode': couponActivityCode};
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserCouponGetCouponByActivityPost$Response,
      UserCouponGetCouponByActivityPost$Response
    >($request);
  }

  @override
  Future<Response<UserCouponGetGet$Response>> _userCouponGetGet({
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
    final Uri $url = Uri.parse('/user/coupon/get');
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
    return client.send<UserCouponGetGet$Response, UserCouponGetGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<ImGetInfoPost$Response>> _imGetInfoPost({
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
    final Uri $url = Uri.parse('/im/getInfo');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<ImGetInfoPost$Response, ImGetInfoPost$Response>(
      $request,
    );
  }

  @override
  Future<Response<UserShareListGet$Response>> _userShareListGet({
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
    final Uri $url = Uri.parse('/user/share/list');
    final $body = root;
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<UserShareListGet$Response, UserShareListGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<UserShareRewardInfoGet$Response>> _userShareRewardInfoGet({
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
    final Uri $url = Uri.parse('/user/share/rewardInfo');
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
    return client
        .send<UserShareRewardInfoGet$Response, UserShareRewardInfoGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<UserShareSubmitPost$Response>> _userShareSubmitPost({
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
    final Uri $url = Uri.parse('/user/share/submit');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client
        .send<UserShareSubmitPost$Response, UserShareSubmitPost$Response>(
          $request,
        );
  }

  @override
  Future<Response<UserDeleteGet$Response>> _userDeleteGet({
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
    final Uri $url = Uri.parse('/user/delete');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<UserDeleteGet$Response, UserDeleteGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<UserDeleteConfirmGet$Response>> _userDeleteConfirmGet({
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
    final Uri $url = Uri.parse('/user/delete/confirm');
    final Map<String, dynamic> $params = <String, dynamic>{'code': code};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client
        .send<UserDeleteConfirmGet$Response, UserDeleteConfirmGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<Object>> _userUpdatePost({
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
    final Uri $url = Uri.parse('/user/update');
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
  Future<Response<UserGetGet$Response>> _userGetGet({
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
    final Uri $url = Uri.parse('/user/get');
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
    return client.send<UserGetGet$Response, UserGetGet$Response>($request);
  }

  @override
  Future<Response<UserUserCommissionGet$Response>> _userUserCommissionGet({
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
    final Uri $url = Uri.parse('/user/user-commission');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client
        .send<UserUserCommissionGet$Response, UserUserCommissionGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<UserConfigureSettingGet$Response>> _userConfigureSettingGet({
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
    final Uri $url = Uri.parse('/user/configure-setting');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      UserConfigureSettingGet$Response,
      UserConfigureSettingGet$Response
    >($request);
  }

  @override
  Future<Response<UserInviteCountGet$Response>> _userInviteCountGet({
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
    final Uri $url = Uri.parse('/user/invite/count');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client
        .send<UserInviteCountGet$Response, UserInviteCountGet$Response>(
          $request,
        );
  }

  @override
  Future<Response<UserInviteNumGet$Response>> _userInviteNumGet({
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
    final Uri $url = Uri.parse('/user/invite/num');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<UserInviteNumGet$Response, UserInviteNumGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<UserShareUpdatePost$Response>> _userShareUpdatePost({
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
    final Uri $url = Uri.parse('/user/share/update');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client
        .send<UserShareUpdatePost$Response, UserShareUpdatePost$Response>(
          $request,
        );
  }

  @override
  Future<Response<UserUserRewardGet$Response>> _userUserRewardGet({
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
    final Uri $url = Uri.parse('/user/user-reward');
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
    return client.send<UserUserRewardGet$Response, UserUserRewardGet$Response>(
      $request,
    );
  }

  @override
  Future<Response<UserTagPortraitAiToPortraitPost$Response>>
  _userTagPortraitAiToPortraitPost({
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
    final Uri $url = Uri.parse('/user-tag-portrait/ai-to-portrait');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserTagPortraitAiToPortraitPost$Response,
      UserTagPortraitAiToPortraitPost$Response
    >($request);
  }

  @override
  Future<Response<UserTagPortraitAiToPortraitV2Post$Response>>
  _userTagPortraitAiToPortraitV2Post({
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
    final Uri $url = Uri.parse('/user-tag-portrait/ai-to-portrait-v2');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserTagPortraitAiToPortraitV2Post$Response,
      UserTagPortraitAiToPortraitV2Post$Response
    >($request);
  }

  @override
  Future<Response<UserTagPortraitUpdatePortraitPost$Response>>
  _userTagPortraitUpdatePortraitPost({
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
    final Uri $url = Uri.parse('/user-tag-portrait/update-portrait');
    final $body = root;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserTagPortraitUpdatePortraitPost$Response,
      UserTagPortraitUpdatePortraitPost$Response
    >($request);
  }

  @override
  Future<Response<UserTagPortraitGetPortraitGet$Response>>
  _userTagPortraitGetPortraitGet({
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
    final Uri $url = Uri.parse('/user-tag-portrait/get-portrait');
    final $body = root;
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<
      UserTagPortraitGetPortraitGet$Response,
      UserTagPortraitGetPortraitGet$Response
    >($request);
  }

  @override
  Future<Response<UserCouponAppHomeActivityPost$Response>>
  _userCouponAppHomeActivityPost({
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
    final Uri $url = Uri.parse('/user/coupon/app/homeActivity');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      UserCouponAppHomeActivityPost$Response,
      UserCouponAppHomeActivityPost$Response
    >($request);
  }
}
