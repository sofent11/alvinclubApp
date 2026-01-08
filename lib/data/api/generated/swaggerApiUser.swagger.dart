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
import 'swaggerApiUser.metadata.swagger.dart';

part 'swaggerApiUser.swagger.chopper.dart';
part 'swaggerApiUser.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class SwaggerApiUser extends ChopperService {
  static SwaggerApiUser create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    List<Interceptor>? interceptors,
  }) {
    if (client != null) {
      return _$SwaggerApiUser(client);
    }

    final newClient = ChopperClient(
      services: [_$SwaggerApiUser()],
      converter: converter ?? $JsonSerializableConverter(),
      interceptors: interceptors ?? [],
      client: httpClient,
      authenticator: authenticator,
      errorConverter: errorConverter,
      baseUrl: baseUrl ?? Uri.parse('http:///user-service'),
    );
    return _$SwaggerApiUser(newClient);
  }

  ///修改地址
  ///@param root
  Future<chopper.Response<AddressUpdatePost$Response>> addressUpdatePost({
    Object? root,
  }) {
    generatedMapping.putIfAbsent(
      AddressUpdatePost$Response,
      () => AddressUpdatePost$Response.fromJsonFactory,
    );

    return _addressUpdatePost(root: root);
  }

  ///修改地址
  ///@param root
  @POST(path: '/address/update')
  Future<chopper.Response<AddressUpdatePost$Response>> _addressUpdatePost({
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///删除地址
  ///@param id id
  Future<chopper.Response<AddressDeleteDelete$Response>> addressDeleteDelete({
    required String? id,
  }) {
    generatedMapping.putIfAbsent(
      AddressDeleteDelete$Response,
      () => AddressDeleteDelete$Response.fromJsonFactory,
    );

    return _addressDeleteDelete(id: id);
  }

  ///删除地址
  ///@param id id
  @DELETE(path: '/address/delete')
  Future<chopper.Response<AddressDeleteDelete$Response>> _addressDeleteDelete({
    @Query('id') required String? id,
    @chopper.Tag()
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
  });

  ///地址联想
  ///@param searchAddress
  ///@param portalCode
  Future<chopper.Response<AddressQueryGet$Response>> addressQueryGet({
    String? searchAddress,
    required String? portalCode,
  }) {
    generatedMapping.putIfAbsent(
      AddressQueryGet$Response,
      () => AddressQueryGet$Response.fromJsonFactory,
    );

    return _addressQueryGet(
      searchAddress: searchAddress,
      portalCode: portalCode,
    );
  }

  ///地址联想
  ///@param searchAddress
  ///@param portalCode
  @GET(path: '/address/query')
  Future<chopper.Response<AddressQueryGet$Response>> _addressQueryGet({
    @Query('searchAddress') String? searchAddress,
    @Query('portalCode') required String? portalCode,
    @chopper.Tag()
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
  });

  ///支持国家
  Future<chopper.Response<NoAuthSupportCountryGet$Response>>
  noAuthSupportCountryGet() {
    generatedMapping.putIfAbsent(
      NoAuthSupportCountryGet$Response,
      () => NoAuthSupportCountryGet$Response.fromJsonFactory,
    );

    return _noAuthSupportCountryGet();
  }

  ///支持国家
  @GET(path: '/no-auth/support/country')
  Future<chopper.Response<NoAuthSupportCountryGet$Response>>
  _noAuthSupportCountryGet({
    @chopper.Tag()
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
  });

  ///收货地址列表
  Future<chopper.Response<AddressListGet$Response>> addressListGet() {
    generatedMapping.putIfAbsent(
      AddressListGet$Response,
      () => AddressListGet$Response.fromJsonFactory,
    );

    return _addressListGet();
  }

  ///收货地址列表
  @GET(path: '/address/list')
  Future<chopper.Response<AddressListGet$Response>> _addressListGet({
    @chopper.Tag()
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
  });

  ///收货地址（按国家查询）
  ///@param country
  Future<chopper.Response<GetShippingAddressByCountryGet$Response>>
  getShippingAddressByCountryGet({required String? country}) {
    generatedMapping.putIfAbsent(
      GetShippingAddressByCountryGet$Response,
      () => GetShippingAddressByCountryGet$Response.fromJsonFactory,
    );

    return _getShippingAddressByCountryGet(country: country);
  }

  ///收货地址（按国家查询）
  ///@param country
  @GET(path: '/getShippingAddressByCountry')
  Future<chopper.Response<GetShippingAddressByCountryGet$Response>>
  _getShippingAddressByCountryGet({
    @Query('country') required String? country,
    @chopper.Tag()
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
  });

  ///新增用户地址
  ///@param root
  Future<chopper.Response<AddressAddPost$Response>> addressAddPost({
    Object? root,
  }) {
    generatedMapping.putIfAbsent(
      AddressAddPost$Response,
      () => AddressAddPost$Response.fromJsonFactory,
    );

    return _addressAddPost(root: root);
  }

  ///新增用户地址
  ///@param root
  @POST(path: '/address/add')
  Future<chopper.Response<AddressAddPost$Response>> _addressAddPost({
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///查询默认收货地址
  ///@param Authorization Authorization (Only:)
  ///@param userId
  Future<chopper.Response<GetDefaultShippingAddressGet$Response>>
  getDefaultShippingAddressGet({String? authorization, String? userId}) {
    generatedMapping.putIfAbsent(
      GetDefaultShippingAddressGet$Response,
      () => GetDefaultShippingAddressGet$Response.fromJsonFactory,
    );

    return _getDefaultShippingAddressGet(
      authorization: authorization?.toString(),
      userId: userId,
    );
  }

  ///查询默认收货地址
  ///@param Authorization Authorization (Only:)
  ///@param userId
  @GET(path: '/getDefaultShippingAddress')
  Future<chopper.Response<GetDefaultShippingAddressGet$Response>>
  _getDefaultShippingAddressGet({
    @Header('Authorization') String? authorization,
    @Query('userId') String? userId,
    @chopper.Tag()
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
  });

  ///省市区列表
  ///@param areaCode
  ///@param portalCode CA,US
  Future<chopper.Response<AddressCountryGet$Response>> addressCountryGet({
    String? areaCode,
    required String? portalCode,
  }) {
    generatedMapping.putIfAbsent(
      AddressCountryGet$Response,
      () => AddressCountryGet$Response.fromJsonFactory,
    );

    return _addressCountryGet(areaCode: areaCode, portalCode: portalCode);
  }

  ///省市区列表
  ///@param areaCode
  ///@param portalCode CA,US
  @GET(path: '/address/country')
  Future<chopper.Response<AddressCountryGet$Response>> _addressCountryGet({
    @Query('areaCode') String? areaCode,
    @Query('portalCode') required String? portalCode,
    @chopper.Tag()
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
  });

  ///邮编查询
  ///@param zipCode
  ///@param portalCode
  Future<chopper.Response<AddressQueryByZipCodeGet$Response>>
  addressQueryByZipCodeGet({
    required String? zipCode,
    required String? portalCode,
  }) {
    generatedMapping.putIfAbsent(
      AddressQueryByZipCodeGet$Response,
      () => AddressQueryByZipCodeGet$Response.fromJsonFactory,
    );

    return _addressQueryByZipCodeGet(zipCode: zipCode, portalCode: portalCode);
  }

  ///邮编查询
  ///@param zipCode
  ///@param portalCode
  @GET(path: '/address/queryByZipCode')
  Future<chopper.Response<AddressQueryByZipCodeGet$Response>>
  _addressQueryByZipCodeGet({
    @Query('zipCode') required String? zipCode,
    @Query('portalCode') required String? portalCode,
    @chopper.Tag()
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
  });

  ///更新用户等级
  ///@param root
  Future<chopper.Response<UserInnerUpdUserLevelPost$Response>>
  userInnerUpdUserLevelPost({Object? root}) {
    generatedMapping.putIfAbsent(
      UserInnerUpdUserLevelPost$Response,
      () => UserInnerUpdUserLevelPost$Response.fromJsonFactory,
    );

    return _userInnerUpdUserLevelPost(root: root);
  }

  ///更新用户等级
  ///@param root
  @POST(path: '/user/inner/upd/user-level')
  Future<chopper.Response<UserInnerUpdUserLevelPost$Response>>
  _userInnerUpdUserLevelPost({
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///切换国家
  ///@param root
  Future<chopper.Response<SigninSwitchPortalPost$Response>>
  signinSwitchPortalPost({Object? root}) {
    generatedMapping.putIfAbsent(
      SigninSwitchPortalPost$Response,
      () => SigninSwitchPortalPost$Response.fromJsonFactory,
    );

    return _signinSwitchPortalPost(root: root);
  }

  ///切换国家
  ///@param root
  @POST(path: '/signin/switchPortal')
  Future<chopper.Response<SigninSwitchPortalPost$Response>>
  _signinSwitchPortalPost({
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///发送验证码
  ///@param root
  Future<chopper.Response<SignInInitPost$Response>> signInInitPost({
    Object? root,
  }) {
    generatedMapping.putIfAbsent(
      SignInInitPost$Response,
      () => SignInInitPost$Response.fromJsonFactory,
    );

    return _signInInitPost(root: root);
  }

  ///发送验证码
  ///@param root
  @POST(path: '/signIn/init')
  Future<chopper.Response<SignInInitPost$Response>> _signInInitPost({
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///生成临时token
  ///@param root
  Future<chopper.Response<OtpApplyPost$Response>> otpApplyPost({Object? root}) {
    generatedMapping.putIfAbsent(
      OtpApplyPost$Response,
      () => OtpApplyPost$Response.fromJsonFactory,
    );

    return _otpApplyPost(root: root);
  }

  ///生成临时token
  ///@param root
  @POST(path: '/otp/apply')
  Future<chopper.Response<OtpApplyPost$Response>> _otpApplyPost({
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///登出
  ///@param Authorization Authorization (Only:)
  Future<chopper.Response<String>> signOutPost({String? authorization}) {
    return _signOutPost(authorization: authorization?.toString());
  }

  ///登出
  ///@param Authorization Authorization (Only:)
  @POST(path: '/signOut', optionalBody: true)
  Future<chopper.Response<String>> _signOutPost({
    @Header('Authorization') String? authorization,
    @chopper.Tag()
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
  });

  ///登录校验密码\验证码
  ///@param root
  Future<chopper.Response<SignInVerifyPost$Response>> signInVerifyPost({
    Object? root,
  }) {
    generatedMapping.putIfAbsent(
      SignInVerifyPost$Response,
      () => SignInVerifyPost$Response.fromJsonFactory,
    );

    return _signInVerifyPost(root: root);
  }

  ///登录校验密码\验证码
  ///@param root
  @POST(path: '/signIn/verify')
  Future<chopper.Response<SignInVerifyPost$Response>> _signInVerifyPost({
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///轮询登录信息
  ///@param root
  Future<chopper.Response<SignInCallPost$Response>> signInCallPost({
    Object? root,
  }) {
    generatedMapping.putIfAbsent(
      SignInCallPost$Response,
      () => SignInCallPost$Response.fromJsonFactory,
    );

    return _signInCallPost(root: root);
  }

  ///轮询登录信息
  ///@param root
  @POST(path: '/signIn/call')
  Future<chopper.Response<SignInCallPost$Response>> _signInCallPost({
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///验证临时token
  ///@param root
  Future<chopper.Response<NoAuthOtpVerifyPost$Response>> noAuthOtpVerifyPost({
    Object? root,
  }) {
    generatedMapping.putIfAbsent(
      NoAuthOtpVerifyPost$Response,
      () => NoAuthOtpVerifyPost$Response.fromJsonFactory,
    );

    return _noAuthOtpVerifyPost(root: root);
  }

  ///验证临时token
  ///@param root
  @POST(path: '/no-auth/otp/verify')
  Future<chopper.Response<NoAuthOtpVerifyPost$Response>> _noAuthOtpVerifyPost({
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///邮箱取消订阅
  ///@param root
  Future<chopper.Response<Object>> noAuthEmailUnsubscribePost({Object? root}) {
    return _noAuthEmailUnsubscribePost(root: root);
  }

  ///邮箱取消订阅
  ///@param root
  @POST(path: '/no-auth/email/unsubscribe')
  Future<chopper.Response<Object>> _noAuthEmailUnsubscribePost({
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///默认国家和语言
  Future<chopper.Response<NoAuthCommonConfigDefaultSettingGet$Response>>
  noAuthCommonConfigDefaultSettingGet() {
    generatedMapping.putIfAbsent(
      NoAuthCommonConfigDefaultSettingGet$Response,
      () => NoAuthCommonConfigDefaultSettingGet$Response.fromJsonFactory,
    );

    return _noAuthCommonConfigDefaultSettingGet();
  }

  ///默认国家和语言
  @GET(path: '/no-auth/common-config/default-setting')
  Future<chopper.Response<NoAuthCommonConfigDefaultSettingGet$Response>>
  _noAuthCommonConfigDefaultSettingGet({
    @chopper.Tag()
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
  });

  ///IM多文件上传
  ///@param files 最大7M
  ///@param files
  Future<chopper.Response<FileImUploadPost$Response>> fileImUploadPost({
    required List<int>? files,
    required List<int>? files$,
  }) {
    generatedMapping.putIfAbsent(
      FileImUploadPost$Response,
      () => FileImUploadPost$Response.fromJsonFactory,
    );

    return _fileImUploadPost(files: files, files$: files$);
  }

  ///IM多文件上传
  ///@param files 最大7M
  ///@param files
  @POST(path: '/file/im/upload', optionalBody: true)
  Future<chopper.Response<FileImUploadPost$Response>> _fileImUploadPost({
    @Field('files') required List<int>? files,
    @Field('files') required List<int>? files$,
    @chopper.Tag()
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
  });

  ///上传头像
  ///@param file 最大7M
  Future<chopper.Response<FileLogoUploadPost$Response>> fileLogoUploadPost({
    required List<int>? file,
  }) {
    generatedMapping.putIfAbsent(
      FileLogoUploadPost$Response,
      () => FileLogoUploadPost$Response.fromJsonFactory,
    );

    return _fileLogoUploadPost(file: file);
  }

  ///上传头像
  ///@param file 最大7M
  @POST(path: '/file/logo/upload', optionalBody: true)
  Future<chopper.Response<FileLogoUploadPost$Response>> _fileLogoUploadPost({
    @Field('file') required List<int>? file,
    @chopper.Tag()
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
  });

  ///优惠券数量列表
  Future<chopper.Response<UserCouponCountGet$Response>> userCouponCountGet() {
    generatedMapping.putIfAbsent(
      UserCouponCountGet$Response,
      () => UserCouponCountGet$Response.fromJsonFactory,
    );

    return _userCouponCountGet();
  }

  ///优惠券数量列表
  @GET(path: '/user/coupon/count')
  Future<chopper.Response<UserCouponCountGet$Response>> _userCouponCountGet({
    @chopper.Tag()
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
  });

  ///优惠券活动信息
  ///@param couponActivityCode new_comer_voucher
  ///@param received
  Future<chopper.Response<UserCouponActivityInfoGet$Response>>
  userCouponActivityInfoGet({
    required String? couponActivityCode,
    String? received,
  }) {
    generatedMapping.putIfAbsent(
      UserCouponActivityInfoGet$Response,
      () => UserCouponActivityInfoGet$Response.fromJsonFactory,
    );

    return _userCouponActivityInfoGet(
      couponActivityCode: couponActivityCode,
      received: received,
    );
  }

  ///优惠券活动信息
  ///@param couponActivityCode new_comer_voucher
  ///@param received
  @GET(path: '/user/coupon/activityInfo')
  Future<chopper.Response<UserCouponActivityInfoGet$Response>>
  _userCouponActivityInfoGet({
    @Query('couponActivityCode') required String? couponActivityCode,
    @Query('received') String? received,
    @chopper.Tag()
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
  });

  ///按code领取
  ///@param code
  ///@param isDiscount
  ///@param root
  Future<chopper.Response<UserCouponCode2CouponGet$Response>>
  userCouponCode2CouponGet({
    required String? code,
    String? isDiscount,
    Object? root,
  }) {
    generatedMapping.putIfAbsent(
      UserCouponCode2CouponGet$Response,
      () => UserCouponCode2CouponGet$Response.fromJsonFactory,
    );

    return _userCouponCode2CouponGet(
      code: code,
      isDiscount: isDiscount,
      root: root,
    );
  }

  ///按code领取
  ///@param code
  ///@param isDiscount
  ///@param root
  @GET(path: '/user/coupon/code2Coupon')
  Future<chopper.Response<UserCouponCode2CouponGet$Response>>
  _userCouponCode2CouponGet({
    @Query('code') required String? code,
    @Query('isDiscount') String? isDiscount,
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///活动信息(多活动)
  ///@param couponActivityCodes 如多个，数组结构
  Future<chopper.Response<UserCouponActivityInfosGet$Response>>
  userCouponActivityInfosGet({String? couponActivityCodes}) {
    generatedMapping.putIfAbsent(
      UserCouponActivityInfosGet$Response,
      () => UserCouponActivityInfosGet$Response.fromJsonFactory,
    );

    return _userCouponActivityInfosGet(
      couponActivityCodes: couponActivityCodes,
    );
  }

  ///活动信息(多活动)
  ///@param couponActivityCodes 如多个，数组结构
  @GET(path: '/user/coupon/activityInfos')
  Future<chopper.Response<UserCouponActivityInfosGet$Response>>
  _userCouponActivityInfosGet({
    @Query('couponActivityCodes') String? couponActivityCodes,
    @chopper.Tag()
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
  });

  ///用户优惠券ActivityCodes
  Future<chopper.Response<UserCouponGetActivitiesGet$Response>>
  userCouponGetActivitiesGet() {
    generatedMapping.putIfAbsent(
      UserCouponGetActivitiesGet$Response,
      () => UserCouponGetActivitiesGet$Response.fromJsonFactory,
    );

    return _userCouponGetActivitiesGet();
  }

  ///用户优惠券ActivityCodes
  @GET(path: '/user/coupon/getActivities')
  Future<chopper.Response<UserCouponGetActivitiesGet$Response>>
  _userCouponGetActivitiesGet({
    @chopper.Tag()
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
  });

  ///用户优惠券列表（多活动分组）
  ///@param userCouponState 0未使用，1下单占用，2支付已使用
  Future<chopper.Response<UserCouponGetListGet$Response>> userCouponGetListGet({
    required String? userCouponState,
  }) {
    generatedMapping.putIfAbsent(
      UserCouponGetListGet$Response,
      () => UserCouponGetListGet$Response.fromJsonFactory,
    );

    return _userCouponGetListGet(userCouponState: userCouponState);
  }

  ///用户优惠券列表（多活动分组）
  ///@param userCouponState 0未使用，1下单占用，2支付已使用
  @GET(path: '/user/coupon/getList')
  Future<chopper.Response<UserCouponGetListGet$Response>>
  _userCouponGetListGet({
    @Query('userCouponState') required String? userCouponState,
    @chopper.Tag()
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
  });

  ///领取优惠券（多活动）
  ///@param root
  Future<chopper.Response<UserCouponGetUserCouponByActivityPost$Response>>
  userCouponGetUserCouponByActivityPost({Object? root}) {
    generatedMapping.putIfAbsent(
      UserCouponGetUserCouponByActivityPost$Response,
      () => UserCouponGetUserCouponByActivityPost$Response.fromJsonFactory,
    );

    return _userCouponGetUserCouponByActivityPost(root: root);
  }

  ///领取优惠券（多活动）
  ///@param root
  @POST(path: '/user/coupon/getUserCouponByActivity')
  Future<chopper.Response<UserCouponGetUserCouponByActivityPost$Response>>
  _userCouponGetUserCouponByActivityPost({
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///发放优惠券
  ///@param couponActivityCode 0未使用，1下单占用，2支付已使用
  Future<chopper.Response<UserCouponSaveGet$Response>> userCouponSaveGet({
    required String? couponActivityCode,
  }) {
    generatedMapping.putIfAbsent(
      UserCouponSaveGet$Response,
      () => UserCouponSaveGet$Response.fromJsonFactory,
    );

    return _userCouponSaveGet(couponActivityCode: couponActivityCode);
  }

  ///发放优惠券
  ///@param couponActivityCode 0未使用，1下单占用，2支付已使用
  @GET(path: '/user/coupon/save')
  Future<chopper.Response<UserCouponSaveGet$Response>> _userCouponSaveGet({
    @Query('couponActivityCode') required String? couponActivityCode,
    @chopper.Tag()
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
  });

  ///活动信息（非验权）
  ///@param couponActivityCode
  Future<chopper.Response<UserCouponNoAuthActivityInfoGet$Response>>
  userCouponNoAuthActivityInfoGet({required String? couponActivityCode}) {
    generatedMapping.putIfAbsent(
      UserCouponNoAuthActivityInfoGet$Response,
      () => UserCouponNoAuthActivityInfoGet$Response.fromJsonFactory,
    );

    return _userCouponNoAuthActivityInfoGet(
      couponActivityCode: couponActivityCode,
    );
  }

  ///活动信息（非验权）
  ///@param couponActivityCode
  @GET(path: '/user/coupon/no-auth/activityInfo')
  Future<chopper.Response<UserCouponNoAuthActivityInfoGet$Response>>
  _userCouponNoAuthActivityInfoGet({
    @Query('couponActivityCode') required String? couponActivityCode,
    @chopper.Tag()
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
  });

  ///领取活动优惠券
  ///@param couponActivityCode new_comer_voucher   写死
  Future<chopper.Response<UserCouponGetCouponByActivityPost$Response>>
  userCouponGetCouponByActivityPost({required String? couponActivityCode}) {
    generatedMapping.putIfAbsent(
      UserCouponGetCouponByActivityPost$Response,
      () => UserCouponGetCouponByActivityPost$Response.fromJsonFactory,
    );

    return _userCouponGetCouponByActivityPost(
      couponActivityCode: couponActivityCode,
    );
  }

  ///领取活动优惠券
  ///@param couponActivityCode new_comer_voucher   写死
  @POST(path: '/user/coupon/getCouponByActivity', optionalBody: true)
  Future<chopper.Response<UserCouponGetCouponByActivityPost$Response>>
  _userCouponGetCouponByActivityPost({
    @Field('couponActivityCode') required String? couponActivityCode,
    @chopper.Tag()
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
  });

  ///用户优惠券列表
  ///@param userCouponState 0未使用，1下单占用，2支付已使用 3过期  4 无效(已用+过期)
  Future<chopper.Response<UserCouponGetGet$Response>> userCouponGetGet({
    required String? userCouponState,
  }) {
    generatedMapping.putIfAbsent(
      UserCouponGetGet$Response,
      () => UserCouponGetGet$Response.fromJsonFactory,
    );

    return _userCouponGetGet(userCouponState: userCouponState);
  }

  ///用户优惠券列表
  ///@param userCouponState 0未使用，1下单占用，2支付已使用 3过期  4 无效(已用+过期)
  @GET(path: '/user/coupon/get')
  Future<chopper.Response<UserCouponGetGet$Response>> _userCouponGetGet({
    @Query('userCouponState') required String? userCouponState,
    @chopper.Tag()
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
  });

  ///交换IMtoken
  ///@param root
  Future<chopper.Response<ImGetInfoPost$Response>> imGetInfoPost({
    Object? root,
  }) {
    generatedMapping.putIfAbsent(
      ImGetInfoPost$Response,
      () => ImGetInfoPost$Response.fromJsonFactory,
    );

    return _imGetInfoPost(root: root);
  }

  ///交换IMtoken
  ///@param root
  @POST(path: '/im/getInfo')
  Future<chopper.Response<ImGetInfoPost$Response>> _imGetInfoPost({
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///分享列表
  ///@param root
  Future<chopper.Response<UserShareListGet$Response>> userShareListGet({
    Object? root,
  }) {
    generatedMapping.putIfAbsent(
      UserShareListGet$Response,
      () => UserShareListGet$Response.fromJsonFactory,
    );

    return _userShareListGet(root: root);
  }

  ///分享列表
  ///@param root
  @GET(path: '/user/share/list')
  Future<chopper.Response<UserShareListGet$Response>> _userShareListGet({
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///分享返利信息
  ///@param orderId
  ///@param root
  Future<chopper.Response<UserShareRewardInfoGet$Response>>
  userShareRewardInfoGet({required String? orderId, Object? root}) {
    generatedMapping.putIfAbsent(
      UserShareRewardInfoGet$Response,
      () => UserShareRewardInfoGet$Response.fromJsonFactory,
    );

    return _userShareRewardInfoGet(orderId: orderId, root: root);
  }

  ///分享返利信息
  ///@param orderId
  ///@param root
  @GET(path: '/user/share/rewardInfo')
  Future<chopper.Response<UserShareRewardInfoGet$Response>>
  _userShareRewardInfoGet({
    @Query('orderId') required String? orderId,
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///提交分享
  ///@param root
  Future<chopper.Response<UserShareSubmitPost$Response>> userShareSubmitPost({
    Object? root,
  }) {
    generatedMapping.putIfAbsent(
      UserShareSubmitPost$Response,
      () => UserShareSubmitPost$Response.fromJsonFactory,
    );

    return _userShareSubmitPost(root: root);
  }

  ///提交分享
  ///@param root
  @POST(path: '/user/share/submit')
  Future<chopper.Response<UserShareSubmitPost$Response>> _userShareSubmitPost({
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///注销发送验证码
  Future<chopper.Response<UserDeleteGet$Response>> userDeleteGet() {
    generatedMapping.putIfAbsent(
      UserDeleteGet$Response,
      () => UserDeleteGet$Response.fromJsonFactory,
    );

    return _userDeleteGet();
  }

  ///注销发送验证码
  @GET(path: '/user/delete')
  Future<chopper.Response<UserDeleteGet$Response>> _userDeleteGet({
    @chopper.Tag()
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
  });

  ///注销确认
  ///@param code
  Future<chopper.Response<UserDeleteConfirmGet$Response>> userDeleteConfirmGet({
    required String? code,
  }) {
    generatedMapping.putIfAbsent(
      UserDeleteConfirmGet$Response,
      () => UserDeleteConfirmGet$Response.fromJsonFactory,
    );

    return _userDeleteConfirmGet(code: code);
  }

  ///注销确认
  ///@param code
  @GET(path: '/user/delete/confirm')
  Future<chopper.Response<UserDeleteConfirmGet$Response>>
  _userDeleteConfirmGet({
    @Query('code') required String? code,
    @chopper.Tag()
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
  });

  ///用户修改
  ///@param Authorization Authorization (Only:undefined)
  ///@param root
  Future<chopper.Response<Object>> userUpdatePost({
    String? authorization,
    Object? root,
  }) {
    return _userUpdatePost(
      authorization: authorization?.toString(),
      root: root,
    );
  }

  ///用户修改
  ///@param Authorization Authorization (Only:undefined)
  ///@param root
  @POST(path: '/user/update')
  Future<chopper.Response<Object>> _userUpdatePost({
    @Header('Authorization') String? authorization,
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///用户查询
  ///@param Authorization Authorization (Only:)
  Future<chopper.Response<UserGetGet$Response>> userGetGet({
    String? authorization,
  }) {
    generatedMapping.putIfAbsent(
      UserGetGet$Response,
      () => UserGetGet$Response.fromJsonFactory,
    );

    return _userGetGet(authorization: authorization?.toString());
  }

  ///用户查询
  ///@param Authorization Authorization (Only:)
  @GET(path: '/user/get')
  Future<chopper.Response<UserGetGet$Response>> _userGetGet({
    @Header('Authorization') String? authorization,
    @chopper.Tag()
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
  });

  ///用户积分信息
  Future<chopper.Response<UserUserCommissionGet$Response>>
  userUserCommissionGet() {
    generatedMapping.putIfAbsent(
      UserUserCommissionGet$Response,
      () => UserUserCommissionGet$Response.fromJsonFactory,
    );

    return _userUserCommissionGet();
  }

  ///用户积分信息
  @GET(path: '/user/user-commission')
  Future<chopper.Response<UserUserCommissionGet$Response>>
  _userUserCommissionGet({
    @chopper.Tag()
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
  });

  ///用户配置
  Future<chopper.Response<UserConfigureSettingGet$Response>>
  userConfigureSettingGet() {
    generatedMapping.putIfAbsent(
      UserConfigureSettingGet$Response,
      () => UserConfigureSettingGet$Response.fromJsonFactory,
    );

    return _userConfigureSettingGet();
  }

  ///用户配置
  @GET(path: '/user/configure-setting')
  Future<chopper.Response<UserConfigureSettingGet$Response>>
  _userConfigureSettingGet({
    @chopper.Tag()
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
  });

  ///邀请数量
  Future<chopper.Response<UserInviteCountGet$Response>> userInviteCountGet() {
    generatedMapping.putIfAbsent(
      UserInviteCountGet$Response,
      () => UserInviteCountGet$Response.fromJsonFactory,
    );

    return _userInviteCountGet();
  }

  ///邀请数量
  @GET(path: '/user/invite/count')
  Future<chopper.Response<UserInviteCountGet$Response>> _userInviteCountGet({
    @chopper.Tag()
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
  });

  ///邀请统计
  Future<chopper.Response<UserInviteNumGet$Response>> userInviteNumGet() {
    generatedMapping.putIfAbsent(
      UserInviteNumGet$Response,
      () => UserInviteNumGet$Response.fromJsonFactory,
    );

    return _userInviteNumGet();
  }

  ///邀请统计
  @GET(path: '/user/invite/num')
  Future<chopper.Response<UserInviteNumGet$Response>> _userInviteNumGet({
    @chopper.Tag()
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
  });

  ///重新提交分享
  ///@param root
  Future<chopper.Response<UserShareUpdatePost$Response>> userShareUpdatePost({
    Object? root,
  }) {
    generatedMapping.putIfAbsent(
      UserShareUpdatePost$Response,
      () => UserShareUpdatePost$Response.fromJsonFactory,
    );

    return _userShareUpdatePost(root: root);
  }

  ///重新提交分享
  ///@param root
  @POST(path: '/user/share/update')
  Future<chopper.Response<UserShareUpdatePost$Response>> _userShareUpdatePost({
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///领取奖励
  ///@param rewardType
  ///@param expire
  Future<chopper.Response<UserUserRewardGet$Response>> userUserRewardGet({
    required String? rewardType,
    String? expire,
  }) {
    generatedMapping.putIfAbsent(
      UserUserRewardGet$Response,
      () => UserUserRewardGet$Response.fromJsonFactory,
    );

    return _userUserRewardGet(rewardType: rewardType, expire: expire);
  }

  ///领取奖励
  ///@param rewardType
  ///@param expire
  @GET(path: '/user/user-reward')
  Future<chopper.Response<UserUserRewardGet$Response>> _userUserRewardGet({
    @Query('rewardType') required String? rewardType,
    @Query('expire') String? expire,
    @chopper.Tag()
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
  });

  ///ai解析画像
  ///@param root 用户回答记录，每一个问题一条
  Future<chopper.Response<UserTagPortraitAiToPortraitPost$Response>>
  userTagPortraitAiToPortraitPost({List<String>? root}) {
    generatedMapping.putIfAbsent(
      UserTagPortraitAiToPortraitPost$Response,
      () => UserTagPortraitAiToPortraitPost$Response.fromJsonFactory,
    );

    return _userTagPortraitAiToPortraitPost(root: root);
  }

  ///ai解析画像
  ///@param root 用户回答记录，每一个问题一条
  @POST(path: '/user-tag-portrait/ai-to-portrait')
  Future<chopper.Response<UserTagPortraitAiToPortraitPost$Response>>
  _userTagPortraitAiToPortraitPost({
    @Body() List<String>? root,
    @chopper.Tag()
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
  });

  ///ai解析画像V2
  ///@param root
  Future<chopper.Response<UserTagPortraitAiToPortraitV2Post$Response>>
  userTagPortraitAiToPortraitV2Post({Object? root}) {
    generatedMapping.putIfAbsent(
      UserTagPortraitAiToPortraitV2Post$Response,
      () => UserTagPortraitAiToPortraitV2Post$Response.fromJsonFactory,
    );

    return _userTagPortraitAiToPortraitV2Post(root: root);
  }

  ///ai解析画像V2
  ///@param root
  @POST(path: '/user-tag-portrait/ai-to-portrait-v2')
  Future<chopper.Response<UserTagPortraitAiToPortraitV2Post$Response>>
  _userTagPortraitAiToPortraitV2Post({
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///更新用户画像
  ///@param root
  Future<chopper.Response<UserTagPortraitUpdatePortraitPost$Response>>
  userTagPortraitUpdatePortraitPost({Object? root}) {
    generatedMapping.putIfAbsent(
      UserTagPortraitUpdatePortraitPost$Response,
      () => UserTagPortraitUpdatePortraitPost$Response.fromJsonFactory,
    );

    return _userTagPortraitUpdatePortraitPost(root: root);
  }

  ///更新用户画像
  ///@param root
  @POST(path: '/user-tag-portrait/update-portrait')
  Future<chopper.Response<UserTagPortraitUpdatePortraitPost$Response>>
  _userTagPortraitUpdatePortraitPost({
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///获取用户画像
  ///@param root
  Future<chopper.Response<UserTagPortraitGetPortraitGet$Response>>
  userTagPortraitGetPortraitGet({Object? root}) {
    generatedMapping.putIfAbsent(
      UserTagPortraitGetPortraitGet$Response,
      () => UserTagPortraitGetPortraitGet$Response.fromJsonFactory,
    );

    return _userTagPortraitGetPortraitGet(root: root);
  }

  ///获取用户画像
  ///@param root
  @GET(path: '/user-tag-portrait/get-portrait')
  Future<chopper.Response<UserTagPortraitGetPortraitGet$Response>>
  _userTagPortraitGetPortraitGet({
    @Body() Object? root,
    @chopper.Tag()
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
  });

  ///首页活动
  Future<chopper.Response<UserCouponAppHomeActivityPost$Response>>
  userCouponAppHomeActivityPost() {
    generatedMapping.putIfAbsent(
      UserCouponAppHomeActivityPost$Response,
      () => UserCouponAppHomeActivityPost$Response.fromJsonFactory,
    );

    return _userCouponAppHomeActivityPost();
  }

  ///首页活动
  @POST(path: '/user/coupon/app/homeActivity', optionalBody: true)
  Future<chopper.Response<UserCouponAppHomeActivityPost$Response>>
  _userCouponAppHomeActivityPost({
    @chopper.Tag()
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
  });
}

@JsonSerializable(explicitToJson: true)
class AddressUpdatePost$Response {
  const AddressUpdatePost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory AddressUpdatePost$Response.fromJson(Map<String, dynamic> json) =>
      _$AddressUpdatePost$ResponseFromJson(json);

  static const toJsonFactory = _$AddressUpdatePost$ResponseToJson;
  Map<String, dynamic> toJson() => _$AddressUpdatePost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final double? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$AddressUpdatePost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddressUpdatePost$Response &&
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
      const DeepCollectionEquality().hash(success) ^
      runtimeType.hashCode;
}

extension $AddressUpdatePost$ResponseExtension on AddressUpdatePost$Response {
  AddressUpdatePost$Response copyWith({
    double? code,
    String? message,
    double? data,
    String? traceId,
    bool? success,
  }) {
    return AddressUpdatePost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  AddressUpdatePost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<double?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return AddressUpdatePost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AddressDeleteDelete$Response {
  const AddressDeleteDelete$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory AddressDeleteDelete$Response.fromJson(Map<String, dynamic> json) =>
      _$AddressDeleteDelete$ResponseFromJson(json);

  static const toJsonFactory = _$AddressDeleteDelete$ResponseToJson;
  Map<String, dynamic> toJson() => _$AddressDeleteDelete$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final double? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$AddressDeleteDelete$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddressDeleteDelete$Response &&
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
      const DeepCollectionEquality().hash(success) ^
      runtimeType.hashCode;
}

extension $AddressDeleteDelete$ResponseExtension
    on AddressDeleteDelete$Response {
  AddressDeleteDelete$Response copyWith({
    double? code,
    String? message,
    double? data,
    String? traceId,
    bool? success,
  }) {
    return AddressDeleteDelete$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  AddressDeleteDelete$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<double?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return AddressDeleteDelete$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AddressQueryGet$Response {
  const AddressQueryGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory AddressQueryGet$Response.fromJson(Map<String, dynamic> json) =>
      _$AddressQueryGet$ResponseFromJson(json);

  static const toJsonFactory = _$AddressQueryGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$AddressQueryGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final List<AddressQueryGet$Response$Data$Item>? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final String? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$AddressQueryGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddressQueryGet$Response &&
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

extension $AddressQueryGet$ResponseExtension on AddressQueryGet$Response {
  AddressQueryGet$Response copyWith({
    double? code,
    String? message,
    List<AddressQueryGet$Response$Data$Item>? data,
    String? traceId,
    String? placeholder,
    bool? success,
  }) {
    return AddressQueryGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  AddressQueryGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<List<AddressQueryGet$Response$Data$Item>?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return AddressQueryGet$Response(
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
class NoAuthSupportCountryGet$Response {
  const NoAuthSupportCountryGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory NoAuthSupportCountryGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$NoAuthSupportCountryGet$ResponseFromJson(json);

  static const toJsonFactory = _$NoAuthSupportCountryGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$NoAuthSupportCountryGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data', defaultValue: <String>[])
  final List<String>? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId')
  final String? traceId;
  static const fromJsonFactory = _$NoAuthSupportCountryGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is NoAuthSupportCountryGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $NoAuthSupportCountryGet$ResponseExtension
    on NoAuthSupportCountryGet$Response {
  NoAuthSupportCountryGet$Response copyWith({
    double? code,
    String? message,
    List<String>? data,
    Object? placeholder,
    String? traceId,
  }) {
    return NoAuthSupportCountryGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  NoAuthSupportCountryGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<List<String>?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return NoAuthSupportCountryGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AddressListGet$Response {
  const AddressListGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory AddressListGet$Response.fromJson(Map<String, dynamic> json) =>
      _$AddressListGet$ResponseFromJson(json);

  static const toJsonFactory = _$AddressListGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$AddressListGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final List<AddressListGet$Response$Data$Item>? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final String? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$AddressListGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddressListGet$Response &&
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

extension $AddressListGet$ResponseExtension on AddressListGet$Response {
  AddressListGet$Response copyWith({
    double? code,
    String? message,
    List<AddressListGet$Response$Data$Item>? data,
    String? traceId,
    String? placeholder,
    bool? success,
  }) {
    return AddressListGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  AddressListGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<List<AddressListGet$Response$Data$Item>?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return AddressListGet$Response(
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
class GetShippingAddressByCountryGet$Response {
  const GetShippingAddressByCountryGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory GetShippingAddressByCountryGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$GetShippingAddressByCountryGet$ResponseFromJson(json);

  static const toJsonFactory = _$GetShippingAddressByCountryGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$GetShippingAddressByCountryGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final GetShippingAddressByCountryGet$Response$Data? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId')
  final String? traceId;
  static const fromJsonFactory =
      _$GetShippingAddressByCountryGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GetShippingAddressByCountryGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $GetShippingAddressByCountryGet$ResponseExtension
    on GetShippingAddressByCountryGet$Response {
  GetShippingAddressByCountryGet$Response copyWith({
    double? code,
    String? message,
    GetShippingAddressByCountryGet$Response$Data? data,
    Object? placeholder,
    String? traceId,
  }) {
    return GetShippingAddressByCountryGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  GetShippingAddressByCountryGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<GetShippingAddressByCountryGet$Response$Data?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return GetShippingAddressByCountryGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AddressAddPost$Response {
  const AddressAddPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory AddressAddPost$Response.fromJson(Map<String, dynamic> json) =>
      _$AddressAddPost$ResponseFromJson(json);

  static const toJsonFactory = _$AddressAddPost$ResponseToJson;
  Map<String, dynamic> toJson() => _$AddressAddPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final double? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$AddressAddPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddressAddPost$Response &&
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
      const DeepCollectionEquality().hash(success) ^
      runtimeType.hashCode;
}

extension $AddressAddPost$ResponseExtension on AddressAddPost$Response {
  AddressAddPost$Response copyWith({
    double? code,
    String? message,
    double? data,
    String? traceId,
    bool? success,
  }) {
    return AddressAddPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  AddressAddPost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<double?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return AddressAddPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class GetDefaultShippingAddressGet$Response {
  const GetDefaultShippingAddressGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory GetDefaultShippingAddressGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$GetDefaultShippingAddressGet$ResponseFromJson(json);

  static const toJsonFactory = _$GetDefaultShippingAddressGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$GetDefaultShippingAddressGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final GetDefaultShippingAddressGet$Response$Data? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId')
  final String? traceId;
  static const fromJsonFactory =
      _$GetDefaultShippingAddressGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GetDefaultShippingAddressGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $GetDefaultShippingAddressGet$ResponseExtension
    on GetDefaultShippingAddressGet$Response {
  GetDefaultShippingAddressGet$Response copyWith({
    double? code,
    String? message,
    GetDefaultShippingAddressGet$Response$Data? data,
    Object? placeholder,
    String? traceId,
  }) {
    return GetDefaultShippingAddressGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  GetDefaultShippingAddressGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<GetDefaultShippingAddressGet$Response$Data?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return GetDefaultShippingAddressGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AddressCountryGet$Response {
  const AddressCountryGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory AddressCountryGet$Response.fromJson(Map<String, dynamic> json) =>
      _$AddressCountryGet$ResponseFromJson(json);

  static const toJsonFactory = _$AddressCountryGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$AddressCountryGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final List<AddressCountryGet$Response$Data$Item>? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId')
  final String? traceId;
  static const fromJsonFactory = _$AddressCountryGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddressCountryGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $AddressCountryGet$ResponseExtension on AddressCountryGet$Response {
  AddressCountryGet$Response copyWith({
    double? code,
    String? message,
    List<AddressCountryGet$Response$Data$Item>? data,
    Object? placeholder,
    String? traceId,
  }) {
    return AddressCountryGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  AddressCountryGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<List<AddressCountryGet$Response$Data$Item>?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return AddressCountryGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AddressQueryByZipCodeGet$Response {
  const AddressQueryByZipCodeGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory AddressQueryByZipCodeGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$AddressQueryByZipCodeGet$ResponseFromJson(json);

  static const toJsonFactory = _$AddressQueryByZipCodeGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AddressQueryByZipCodeGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final List<AddressQueryByZipCodeGet$Response$Data$Item>? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$AddressQueryByZipCodeGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddressQueryByZipCodeGet$Response &&
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

extension $AddressQueryByZipCodeGet$ResponseExtension
    on AddressQueryByZipCodeGet$Response {
  AddressQueryByZipCodeGet$Response copyWith({
    double? code,
    String? message,
    List<AddressQueryByZipCodeGet$Response$Data$Item>? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return AddressQueryByZipCodeGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  AddressQueryByZipCodeGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<List<AddressQueryByZipCodeGet$Response$Data$Item>?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return AddressQueryByZipCodeGet$Response(
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
class UserInnerUpdUserLevelPost$Response {
  const UserInnerUpdUserLevelPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory UserInnerUpdUserLevelPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserInnerUpdUserLevelPost$ResponseFromJson(json);

  static const toJsonFactory = _$UserInnerUpdUserLevelPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserInnerUpdUserLevelPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final Object? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$UserInnerUpdUserLevelPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserInnerUpdUserLevelPost$Response &&
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
      const DeepCollectionEquality().hash(success) ^
      runtimeType.hashCode;
}

extension $UserInnerUpdUserLevelPost$ResponseExtension
    on UserInnerUpdUserLevelPost$Response {
  UserInnerUpdUserLevelPost$Response copyWith({
    double? code,
    String? message,
    Object? data,
    String? traceId,
    bool? success,
  }) {
    return UserInnerUpdUserLevelPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  UserInnerUpdUserLevelPost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<Object?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return UserInnerUpdUserLevelPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SigninSwitchPortalPost$Response {
  const SigninSwitchPortalPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
    this.url,
  });

  factory SigninSwitchPortalPost$Response.fromJson(Map<String, dynamic> json) =>
      _$SigninSwitchPortalPost$ResponseFromJson(json);

  static const toJsonFactory = _$SigninSwitchPortalPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$SigninSwitchPortalPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final SigninSwitchPortalPost$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final String? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'url')
  final String? url;
  static const fromJsonFactory = _$SigninSwitchPortalPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SigninSwitchPortalPost$Response &&
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
                const DeepCollectionEquality().equals(
                  other.success,
                  success,
                )) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
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
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $SigninSwitchPortalPost$ResponseExtension
    on SigninSwitchPortalPost$Response {
  SigninSwitchPortalPost$Response copyWith({
    double? code,
    String? message,
    SigninSwitchPortalPost$Response$Data? data,
    String? traceId,
    String? placeholder,
    bool? success,
    String? url,
  }) {
    return SigninSwitchPortalPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
      url: url ?? this.url,
    );
  }

  SigninSwitchPortalPost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<SigninSwitchPortalPost$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
    Wrapped<String?>? url,
  }) {
    return SigninSwitchPortalPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      success: (success != null ? success.value : this.success),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SignInInitPost$Response {
  const SignInInitPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
  });

  factory SignInInitPost$Response.fromJson(Map<String, dynamic> json) =>
      _$SignInInitPost$ResponseFromJson(json);

  static const toJsonFactory = _$SignInInitPost$ResponseToJson;
  Map<String, dynamic> toJson() => _$SignInInitPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final SignInInitPost$Response$Data? data;
  @JsonKey(name: 'traceId')
  final Object? traceId;
  static const fromJsonFactory = _$SignInInitPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SignInInitPost$Response &&
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
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $SignInInitPost$ResponseExtension on SignInInitPost$Response {
  SignInInitPost$Response copyWith({
    double? code,
    String? message,
    SignInInitPost$Response$Data? data,
    Object? traceId,
  }) {
    return SignInInitPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  SignInInitPost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<SignInInitPost$Response$Data?>? data,
    Wrapped<Object?>? traceId,
  }) {
    return SignInInitPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class OtpApplyPost$Response {
  const OtpApplyPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
  });

  factory OtpApplyPost$Response.fromJson(Map<String, dynamic> json) =>
      _$OtpApplyPost$ResponseFromJson(json);

  static const toJsonFactory = _$OtpApplyPost$ResponseToJson;
  Map<String, dynamic> toJson() => _$OtpApplyPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final String? data;
  @JsonKey(name: 'traceId')
  final Object? traceId;
  static const fromJsonFactory = _$OtpApplyPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OtpApplyPost$Response &&
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
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $OtpApplyPost$ResponseExtension on OtpApplyPost$Response {
  OtpApplyPost$Response copyWith({
    double? code,
    String? message,
    String? data,
    Object? traceId,
  }) {
    return OtpApplyPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  OtpApplyPost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<String?>? data,
    Wrapped<Object?>? traceId,
  }) {
    return OtpApplyPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SignInVerifyPost$Response {
  const SignInVerifyPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
    this.url,
  });

  factory SignInVerifyPost$Response.fromJson(Map<String, dynamic> json) =>
      _$SignInVerifyPost$ResponseFromJson(json);

  static const toJsonFactory = _$SignInVerifyPost$ResponseToJson;
  Map<String, dynamic> toJson() => _$SignInVerifyPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final SignInVerifyPost$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final String? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'url')
  final String? url;
  static const fromJsonFactory = _$SignInVerifyPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SignInVerifyPost$Response &&
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
                const DeepCollectionEquality().equals(
                  other.success,
                  success,
                )) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
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
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $SignInVerifyPost$ResponseExtension on SignInVerifyPost$Response {
  SignInVerifyPost$Response copyWith({
    double? code,
    String? message,
    SignInVerifyPost$Response$Data? data,
    String? traceId,
    String? placeholder,
    bool? success,
    String? url,
  }) {
    return SignInVerifyPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
      url: url ?? this.url,
    );
  }

  SignInVerifyPost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<SignInVerifyPost$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
    Wrapped<String?>? url,
  }) {
    return SignInVerifyPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      success: (success != null ? success.value : this.success),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SignInCallPost$Response {
  const SignInCallPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
    this.url,
  });

  factory SignInCallPost$Response.fromJson(Map<String, dynamic> json) =>
      _$SignInCallPost$ResponseFromJson(json);

  static const toJsonFactory = _$SignInCallPost$ResponseToJson;
  Map<String, dynamic> toJson() => _$SignInCallPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final SignInCallPost$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final String? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'url')
  final String? url;
  static const fromJsonFactory = _$SignInCallPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SignInCallPost$Response &&
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
                const DeepCollectionEquality().equals(
                  other.success,
                  success,
                )) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
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
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $SignInCallPost$ResponseExtension on SignInCallPost$Response {
  SignInCallPost$Response copyWith({
    double? code,
    String? message,
    SignInCallPost$Response$Data? data,
    String? traceId,
    String? placeholder,
    bool? success,
    String? url,
  }) {
    return SignInCallPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
      url: url ?? this.url,
    );
  }

  SignInCallPost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<SignInCallPost$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
    Wrapped<String?>? url,
  }) {
    return SignInCallPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      success: (success != null ? success.value : this.success),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class NoAuthOtpVerifyPost$Response {
  const NoAuthOtpVerifyPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
    this.url,
  });

  factory NoAuthOtpVerifyPost$Response.fromJson(Map<String, dynamic> json) =>
      _$NoAuthOtpVerifyPost$ResponseFromJson(json);

  static const toJsonFactory = _$NoAuthOtpVerifyPost$ResponseToJson;
  Map<String, dynamic> toJson() => _$NoAuthOtpVerifyPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final NoAuthOtpVerifyPost$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final String? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'url')
  final String? url;
  static const fromJsonFactory = _$NoAuthOtpVerifyPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is NoAuthOtpVerifyPost$Response &&
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
                const DeepCollectionEquality().equals(
                  other.success,
                  success,
                )) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
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
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $NoAuthOtpVerifyPost$ResponseExtension
    on NoAuthOtpVerifyPost$Response {
  NoAuthOtpVerifyPost$Response copyWith({
    double? code,
    String? message,
    NoAuthOtpVerifyPost$Response$Data? data,
    String? traceId,
    String? placeholder,
    bool? success,
    String? url,
  }) {
    return NoAuthOtpVerifyPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
      url: url ?? this.url,
    );
  }

  NoAuthOtpVerifyPost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<NoAuthOtpVerifyPost$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
    Wrapped<String?>? url,
  }) {
    return NoAuthOtpVerifyPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      success: (success != null ? success.value : this.success),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class NoAuthCommonConfigDefaultSettingGet$Response {
  const NoAuthCommonConfigDefaultSettingGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory NoAuthCommonConfigDefaultSettingGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$NoAuthCommonConfigDefaultSettingGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$NoAuthCommonConfigDefaultSettingGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$NoAuthCommonConfigDefaultSettingGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final NoAuthCommonConfigDefaultSettingGet$Response$Data? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId')
  final String? traceId;
  static const fromJsonFactory =
      _$NoAuthCommonConfigDefaultSettingGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is NoAuthCommonConfigDefaultSettingGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $NoAuthCommonConfigDefaultSettingGet$ResponseExtension
    on NoAuthCommonConfigDefaultSettingGet$Response {
  NoAuthCommonConfigDefaultSettingGet$Response copyWith({
    double? code,
    String? message,
    NoAuthCommonConfigDefaultSettingGet$Response$Data? data,
    Object? placeholder,
    String? traceId,
  }) {
    return NoAuthCommonConfigDefaultSettingGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  NoAuthCommonConfigDefaultSettingGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<NoAuthCommonConfigDefaultSettingGet$Response$Data?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return NoAuthCommonConfigDefaultSettingGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class FileImUploadPost$Response {
  const FileImUploadPost$Response({
    required this.code,
    required this.message,
    required this.data,
  });

  factory FileImUploadPost$Response.fromJson(Map<String, dynamic> json) =>
      _$FileImUploadPost$ResponseFromJson(json);

  static const toJsonFactory = _$FileImUploadPost$ResponseToJson;
  Map<String, dynamic> toJson() => _$FileImUploadPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final int code;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final List<FileImUploadPost$Response$Data$Item> data;
  static const fromJsonFactory = _$FileImUploadPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is FileImUploadPost$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $FileImUploadPost$ResponseExtension on FileImUploadPost$Response {
  FileImUploadPost$Response copyWith({
    int? code,
    String? message,
    List<FileImUploadPost$Response$Data$Item>? data,
  }) {
    return FileImUploadPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  FileImUploadPost$Response copyWithWrapped({
    Wrapped<int>? code,
    Wrapped<String>? message,
    Wrapped<List<FileImUploadPost$Response$Data$Item>>? data,
  }) {
    return FileImUploadPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class FileLogoUploadPost$Response {
  const FileLogoUploadPost$Response({this.code, this.message, this.data});

  factory FileLogoUploadPost$Response.fromJson(Map<String, dynamic> json) =>
      _$FileLogoUploadPost$ResponseFromJson(json);

  static const toJsonFactory = _$FileLogoUploadPost$ResponseToJson;
  Map<String, dynamic> toJson() => _$FileLogoUploadPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final FileLogoUploadPost$Response$Data? data;
  static const fromJsonFactory = _$FileLogoUploadPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is FileLogoUploadPost$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $FileLogoUploadPost$ResponseExtension on FileLogoUploadPost$Response {
  FileLogoUploadPost$Response copyWith({
    String? code,
    String? message,
    FileLogoUploadPost$Response$Data? data,
  }) {
    return FileLogoUploadPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  FileLogoUploadPost$Response copyWithWrapped({
    Wrapped<String?>? code,
    Wrapped<String?>? message,
    Wrapped<FileLogoUploadPost$Response$Data?>? data,
  }) {
    return FileLogoUploadPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserCouponCountGet$Response {
  const UserCouponCountGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory UserCouponCountGet$Response.fromJson(Map<String, dynamic> json) =>
      _$UserCouponCountGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserCouponCountGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$UserCouponCountGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final UserCouponCountGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final String? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$UserCouponCountGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponCountGet$Response &&
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

extension $UserCouponCountGet$ResponseExtension on UserCouponCountGet$Response {
  UserCouponCountGet$Response copyWith({
    double? code,
    String? message,
    UserCouponCountGet$Response$Data? data,
    String? traceId,
    String? placeholder,
    bool? success,
  }) {
    return UserCouponCountGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  UserCouponCountGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<UserCouponCountGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return UserCouponCountGet$Response(
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
class UserCouponActivityInfoGet$Response {
  const UserCouponActivityInfoGet$Response({this.success, this.data});

  factory UserCouponActivityInfoGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCouponActivityInfoGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserCouponActivityInfoGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserCouponActivityInfoGet$ResponseToJson(this);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'data')
  final UserCouponActivityInfoGet$Response$Data? data;
  static const fromJsonFactory = _$UserCouponActivityInfoGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponActivityInfoGet$Response &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(
                  other.success,
                  success,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $UserCouponActivityInfoGet$ResponseExtension
    on UserCouponActivityInfoGet$Response {
  UserCouponActivityInfoGet$Response copyWith({
    bool? success,
    UserCouponActivityInfoGet$Response$Data? data,
  }) {
    return UserCouponActivityInfoGet$Response(
      success: success ?? this.success,
      data: data ?? this.data,
    );
  }

  UserCouponActivityInfoGet$Response copyWithWrapped({
    Wrapped<bool?>? success,
    Wrapped<UserCouponActivityInfoGet$Response$Data?>? data,
  }) {
    return UserCouponActivityInfoGet$Response(
      success: (success != null ? success.value : this.success),
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserCouponCode2CouponGet$Response {
  const UserCouponCode2CouponGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory UserCouponCode2CouponGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCouponCode2CouponGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserCouponCode2CouponGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserCouponCode2CouponGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final UserCouponCode2CouponGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final String? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$UserCouponCode2CouponGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponCode2CouponGet$Response &&
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

extension $UserCouponCode2CouponGet$ResponseExtension
    on UserCouponCode2CouponGet$Response {
  UserCouponCode2CouponGet$Response copyWith({
    double? code,
    String? message,
    UserCouponCode2CouponGet$Response$Data? data,
    String? traceId,
    String? placeholder,
    bool? success,
  }) {
    return UserCouponCode2CouponGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  UserCouponCode2CouponGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<UserCouponCode2CouponGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return UserCouponCode2CouponGet$Response(
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
class UserCouponActivityInfosGet$Response {
  const UserCouponActivityInfosGet$Response({this.success, this.data});

  factory UserCouponActivityInfosGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCouponActivityInfosGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserCouponActivityInfosGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserCouponActivityInfosGet$ResponseToJson(this);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'data')
  final List<UserCouponActivityInfosGet$Response$Data$Item>? data;
  static const fromJsonFactory = _$UserCouponActivityInfosGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponActivityInfosGet$Response &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(
                  other.success,
                  success,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $UserCouponActivityInfosGet$ResponseExtension
    on UserCouponActivityInfosGet$Response {
  UserCouponActivityInfosGet$Response copyWith({
    bool? success,
    List<UserCouponActivityInfosGet$Response$Data$Item>? data,
  }) {
    return UserCouponActivityInfosGet$Response(
      success: success ?? this.success,
      data: data ?? this.data,
    );
  }

  UserCouponActivityInfosGet$Response copyWithWrapped({
    Wrapped<bool?>? success,
    Wrapped<List<UserCouponActivityInfosGet$Response$Data$Item>?>? data,
  }) {
    return UserCouponActivityInfosGet$Response(
      success: (success != null ? success.value : this.success),
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserCouponGetActivitiesGet$Response {
  const UserCouponGetActivitiesGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory UserCouponGetActivitiesGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCouponGetActivitiesGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserCouponGetActivitiesGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserCouponGetActivitiesGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data', defaultValue: <String>[])
  final List<String>? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final String? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$UserCouponGetActivitiesGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponGetActivitiesGet$Response &&
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

extension $UserCouponGetActivitiesGet$ResponseExtension
    on UserCouponGetActivitiesGet$Response {
  UserCouponGetActivitiesGet$Response copyWith({
    double? code,
    String? message,
    List<String>? data,
    String? traceId,
    String? placeholder,
    bool? success,
  }) {
    return UserCouponGetActivitiesGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  UserCouponGetActivitiesGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<List<String>?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return UserCouponGetActivitiesGet$Response(
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
class UserCouponGetListGet$Response {
  const UserCouponGetListGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory UserCouponGetListGet$Response.fromJson(Map<String, dynamic> json) =>
      _$UserCouponGetListGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserCouponGetListGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$UserCouponGetListGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final List<UserCouponGetListGet$Response$Data$Item>? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final String? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$UserCouponGetListGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponGetListGet$Response &&
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

extension $UserCouponGetListGet$ResponseExtension
    on UserCouponGetListGet$Response {
  UserCouponGetListGet$Response copyWith({
    double? code,
    String? message,
    List<UserCouponGetListGet$Response$Data$Item>? data,
    String? traceId,
    String? placeholder,
    bool? success,
  }) {
    return UserCouponGetListGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  UserCouponGetListGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<List<UserCouponGetListGet$Response$Data$Item>?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return UserCouponGetListGet$Response(
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
class UserCouponGetUserCouponByActivityPost$Response {
  const UserCouponGetUserCouponByActivityPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory UserCouponGetUserCouponByActivityPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCouponGetUserCouponByActivityPost$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserCouponGetUserCouponByActivityPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserCouponGetUserCouponByActivityPost$ResponseToJson(this);

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
  static const fromJsonFactory =
      _$UserCouponGetUserCouponByActivityPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponGetUserCouponByActivityPost$Response &&
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

extension $UserCouponGetUserCouponByActivityPost$ResponseExtension
    on UserCouponGetUserCouponByActivityPost$Response {
  UserCouponGetUserCouponByActivityPost$Response copyWith({
    double? code,
    String? message,
    bool? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return UserCouponGetUserCouponByActivityPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  UserCouponGetUserCouponByActivityPost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<bool?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return UserCouponGetUserCouponByActivityPost$Response(
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
class UserCouponSaveGet$Response {
  const UserCouponSaveGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory UserCouponSaveGet$Response.fromJson(Map<String, dynamic> json) =>
      _$UserCouponSaveGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserCouponSaveGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$UserCouponSaveGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final String? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final String? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$UserCouponSaveGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponSaveGet$Response &&
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

extension $UserCouponSaveGet$ResponseExtension on UserCouponSaveGet$Response {
  UserCouponSaveGet$Response copyWith({
    double? code,
    String? message,
    String? data,
    String? traceId,
    String? placeholder,
    bool? success,
  }) {
    return UserCouponSaveGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  UserCouponSaveGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<String?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return UserCouponSaveGet$Response(
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
class UserCouponNoAuthActivityInfoGet$Response {
  const UserCouponNoAuthActivityInfoGet$Response({this.success, this.data});

  factory UserCouponNoAuthActivityInfoGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCouponNoAuthActivityInfoGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserCouponNoAuthActivityInfoGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserCouponNoAuthActivityInfoGet$ResponseToJson(this);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'data')
  final UserCouponNoAuthActivityInfoGet$Response$Data? data;
  static const fromJsonFactory =
      _$UserCouponNoAuthActivityInfoGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponNoAuthActivityInfoGet$Response &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(
                  other.success,
                  success,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $UserCouponNoAuthActivityInfoGet$ResponseExtension
    on UserCouponNoAuthActivityInfoGet$Response {
  UserCouponNoAuthActivityInfoGet$Response copyWith({
    bool? success,
    UserCouponNoAuthActivityInfoGet$Response$Data? data,
  }) {
    return UserCouponNoAuthActivityInfoGet$Response(
      success: success ?? this.success,
      data: data ?? this.data,
    );
  }

  UserCouponNoAuthActivityInfoGet$Response copyWithWrapped({
    Wrapped<bool?>? success,
    Wrapped<UserCouponNoAuthActivityInfoGet$Response$Data?>? data,
  }) {
    return UserCouponNoAuthActivityInfoGet$Response(
      success: (success != null ? success.value : this.success),
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserCouponGetCouponByActivityPost$Response {
  const UserCouponGetCouponByActivityPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory UserCouponGetCouponByActivityPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCouponGetCouponByActivityPost$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserCouponGetCouponByActivityPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserCouponGetCouponByActivityPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final List<UserCouponGetCouponByActivityPost$Response$Data$Item>? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final String? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory =
      _$UserCouponGetCouponByActivityPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponGetCouponByActivityPost$Response &&
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

extension $UserCouponGetCouponByActivityPost$ResponseExtension
    on UserCouponGetCouponByActivityPost$Response {
  UserCouponGetCouponByActivityPost$Response copyWith({
    double? code,
    String? message,
    List<UserCouponGetCouponByActivityPost$Response$Data$Item>? data,
    String? traceId,
    String? placeholder,
    bool? success,
  }) {
    return UserCouponGetCouponByActivityPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  UserCouponGetCouponByActivityPost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<List<UserCouponGetCouponByActivityPost$Response$Data$Item>?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return UserCouponGetCouponByActivityPost$Response(
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
class UserCouponGetGet$Response {
  const UserCouponGetGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory UserCouponGetGet$Response.fromJson(Map<String, dynamic> json) =>
      _$UserCouponGetGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserCouponGetGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$UserCouponGetGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final List<UserCouponGetGet$Response$Data$Item>? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final String? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory = _$UserCouponGetGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponGetGet$Response &&
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

extension $UserCouponGetGet$ResponseExtension on UserCouponGetGet$Response {
  UserCouponGetGet$Response copyWith({
    double? code,
    String? message,
    List<UserCouponGetGet$Response$Data$Item>? data,
    String? traceId,
    String? placeholder,
    bool? success,
  }) {
    return UserCouponGetGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  UserCouponGetGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<List<UserCouponGetGet$Response$Data$Item>?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return UserCouponGetGet$Response(
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
class ImGetInfoPost$Response {
  const ImGetInfoPost$Response({this.data, this.message, this.traceId});

  factory ImGetInfoPost$Response.fromJson(Map<String, dynamic> json) =>
      _$ImGetInfoPost$ResponseFromJson(json);

  static const toJsonFactory = _$ImGetInfoPost$ResponseToJson;
  Map<String, dynamic> toJson() => _$ImGetInfoPost$ResponseToJson(this);

  @JsonKey(name: 'data')
  final ImGetInfoPost$Response$Data? data;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'traceId')
  final String? traceId;
  static const fromJsonFactory = _$ImGetInfoPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImGetInfoPost$Response &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $ImGetInfoPost$ResponseExtension on ImGetInfoPost$Response {
  ImGetInfoPost$Response copyWith({
    ImGetInfoPost$Response$Data? data,
    String? message,
    String? traceId,
  }) {
    return ImGetInfoPost$Response(
      data: data ?? this.data,
      message: message ?? this.message,
      traceId: traceId ?? this.traceId,
    );
  }

  ImGetInfoPost$Response copyWithWrapped({
    Wrapped<ImGetInfoPost$Response$Data?>? data,
    Wrapped<String?>? message,
    Wrapped<String?>? traceId,
  }) {
    return ImGetInfoPost$Response(
      data: (data != null ? data.value : this.data),
      message: (message != null ? message.value : this.message),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserShareListGet$Response {
  const UserShareListGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserShareListGet$Response.fromJson(Map<String, dynamic> json) =>
      _$UserShareListGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserShareListGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$UserShareListGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final List<UserShareListGet$Response$Data$Item>? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId')
  final String? traceId;
  static const fromJsonFactory = _$UserShareListGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserShareListGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $UserShareListGet$ResponseExtension on UserShareListGet$Response {
  UserShareListGet$Response copyWith({
    double? code,
    String? message,
    List<UserShareListGet$Response$Data$Item>? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserShareListGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserShareListGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<List<UserShareListGet$Response$Data$Item>?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserShareListGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserShareRewardInfoGet$Response {
  const UserShareRewardInfoGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserShareRewardInfoGet$Response.fromJson(Map<String, dynamic> json) =>
      _$UserShareRewardInfoGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserShareRewardInfoGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserShareRewardInfoGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final UserShareRewardInfoGet$Response$Data? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId')
  final String? traceId;
  static const fromJsonFactory = _$UserShareRewardInfoGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserShareRewardInfoGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $UserShareRewardInfoGet$ResponseExtension
    on UserShareRewardInfoGet$Response {
  UserShareRewardInfoGet$Response copyWith({
    double? code,
    String? message,
    UserShareRewardInfoGet$Response$Data? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserShareRewardInfoGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserShareRewardInfoGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<UserShareRewardInfoGet$Response$Data?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserShareRewardInfoGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserShareSubmitPost$Response {
  const UserShareSubmitPost$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserShareSubmitPost$Response.fromJson(Map<String, dynamic> json) =>
      _$UserShareSubmitPost$ResponseFromJson(json);

  static const toJsonFactory = _$UserShareSubmitPost$ResponseToJson;
  Map<String, dynamic> toJson() => _$UserShareSubmitPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final String? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId')
  final String? traceId;
  static const fromJsonFactory = _$UserShareSubmitPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserShareSubmitPost$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $UserShareSubmitPost$ResponseExtension
    on UserShareSubmitPost$Response {
  UserShareSubmitPost$Response copyWith({
    double? code,
    String? message,
    String? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserShareSubmitPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserShareSubmitPost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<String?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserShareSubmitPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserDeleteGet$Response {
  const UserDeleteGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserDeleteGet$Response.fromJson(Map<String, dynamic> json) =>
      _$UserDeleteGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserDeleteGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$UserDeleteGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final UserDeleteGet$Response$Data? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId')
  final String? traceId;
  static const fromJsonFactory = _$UserDeleteGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserDeleteGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $UserDeleteGet$ResponseExtension on UserDeleteGet$Response {
  UserDeleteGet$Response copyWith({
    double? code,
    String? message,
    UserDeleteGet$Response$Data? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserDeleteGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserDeleteGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<UserDeleteGet$Response$Data?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserDeleteGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserDeleteConfirmGet$Response {
  const UserDeleteConfirmGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserDeleteConfirmGet$Response.fromJson(Map<String, dynamic> json) =>
      _$UserDeleteConfirmGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserDeleteConfirmGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$UserDeleteConfirmGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final bool? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId')
  final String? traceId;
  static const fromJsonFactory = _$UserDeleteConfirmGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserDeleteConfirmGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $UserDeleteConfirmGet$ResponseExtension
    on UserDeleteConfirmGet$Response {
  UserDeleteConfirmGet$Response copyWith({
    double? code,
    String? message,
    bool? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserDeleteConfirmGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserDeleteConfirmGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<bool?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserDeleteConfirmGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserGetGet$Response {
  const UserGetGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserGetGet$Response.fromJson(Map<String, dynamic> json) =>
      _$UserGetGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserGetGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$UserGetGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final UserGetGet$Response$Data? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId')
  final String? traceId;
  static const fromJsonFactory = _$UserGetGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserGetGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $UserGetGet$ResponseExtension on UserGetGet$Response {
  UserGetGet$Response copyWith({
    double? code,
    String? message,
    UserGetGet$Response$Data? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserGetGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserGetGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<UserGetGet$Response$Data?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserGetGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserUserCommissionGet$Response {
  const UserUserCommissionGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserUserCommissionGet$Response.fromJson(Map<String, dynamic> json) =>
      _$UserUserCommissionGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserUserCommissionGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$UserUserCommissionGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final UserUserCommissionGet$Response$Data? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId')
  final String? traceId;
  static const fromJsonFactory = _$UserUserCommissionGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserUserCommissionGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $UserUserCommissionGet$ResponseExtension
    on UserUserCommissionGet$Response {
  UserUserCommissionGet$Response copyWith({
    double? code,
    String? message,
    UserUserCommissionGet$Response$Data? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserUserCommissionGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserUserCommissionGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<UserUserCommissionGet$Response$Data?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserUserCommissionGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserConfigureSettingGet$Response {
  const UserConfigureSettingGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserConfigureSettingGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserConfigureSettingGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserConfigureSettingGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserConfigureSettingGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final UserConfigureSettingGet$Response$Data? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId')
  final String? traceId;
  static const fromJsonFactory = _$UserConfigureSettingGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserConfigureSettingGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $UserConfigureSettingGet$ResponseExtension
    on UserConfigureSettingGet$Response {
  UserConfigureSettingGet$Response copyWith({
    double? code,
    String? message,
    UserConfigureSettingGet$Response$Data? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserConfigureSettingGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserConfigureSettingGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<UserConfigureSettingGet$Response$Data?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserConfigureSettingGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserInviteCountGet$Response {
  const UserInviteCountGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserInviteCountGet$Response.fromJson(Map<String, dynamic> json) =>
      _$UserInviteCountGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserInviteCountGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$UserInviteCountGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final int? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId')
  final String? traceId;
  static const fromJsonFactory = _$UserInviteCountGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserInviteCountGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $UserInviteCountGet$ResponseExtension on UserInviteCountGet$Response {
  UserInviteCountGet$Response copyWith({
    double? code,
    String? message,
    int? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserInviteCountGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserInviteCountGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<int?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserInviteCountGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserInviteNumGet$Response {
  const UserInviteNumGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserInviteNumGet$Response.fromJson(Map<String, dynamic> json) =>
      _$UserInviteNumGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserInviteNumGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$UserInviteNumGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final UserInviteNumGet$Response$Data? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId')
  final String? traceId;
  static const fromJsonFactory = _$UserInviteNumGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserInviteNumGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $UserInviteNumGet$ResponseExtension on UserInviteNumGet$Response {
  UserInviteNumGet$Response copyWith({
    double? code,
    String? message,
    UserInviteNumGet$Response$Data? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserInviteNumGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserInviteNumGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<UserInviteNumGet$Response$Data?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserInviteNumGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserShareUpdatePost$Response {
  const UserShareUpdatePost$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserShareUpdatePost$Response.fromJson(Map<String, dynamic> json) =>
      _$UserShareUpdatePost$ResponseFromJson(json);

  static const toJsonFactory = _$UserShareUpdatePost$ResponseToJson;
  Map<String, dynamic> toJson() => _$UserShareUpdatePost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final String? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId')
  final String? traceId;
  static const fromJsonFactory = _$UserShareUpdatePost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserShareUpdatePost$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $UserShareUpdatePost$ResponseExtension
    on UserShareUpdatePost$Response {
  UserShareUpdatePost$Response copyWith({
    double? code,
    String? message,
    String? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserShareUpdatePost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserShareUpdatePost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<String?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserShareUpdatePost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserUserRewardGet$Response {
  const UserUserRewardGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserUserRewardGet$Response.fromJson(Map<String, dynamic> json) =>
      _$UserUserRewardGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserUserRewardGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$UserUserRewardGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final bool? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId')
  final String? traceId;
  static const fromJsonFactory = _$UserUserRewardGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserUserRewardGet$Response &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.placeholder, placeholder) ||
                const DeepCollectionEquality().equals(
                  other.placeholder,
                  placeholder,
                )) &&
            (identical(other.traceId, traceId) ||
                const DeepCollectionEquality().equals(other.traceId, traceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(placeholder) ^
      const DeepCollectionEquality().hash(traceId) ^
      runtimeType.hashCode;
}

extension $UserUserRewardGet$ResponseExtension on UserUserRewardGet$Response {
  UserUserRewardGet$Response copyWith({
    double? code,
    String? message,
    bool? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserUserRewardGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserUserRewardGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<bool?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserUserRewardGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserTagPortraitAiToPortraitPost$Response {
  const UserTagPortraitAiToPortraitPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory UserTagPortraitAiToPortraitPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserTagPortraitAiToPortraitPost$ResponseFromJson(json);

  static const toJsonFactory = _$UserTagPortraitAiToPortraitPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserTagPortraitAiToPortraitPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final UserTagPortraitAiToPortraitPost$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory =
      _$UserTagPortraitAiToPortraitPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserTagPortraitAiToPortraitPost$Response &&
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
      const DeepCollectionEquality().hash(success) ^
      runtimeType.hashCode;
}

extension $UserTagPortraitAiToPortraitPost$ResponseExtension
    on UserTagPortraitAiToPortraitPost$Response {
  UserTagPortraitAiToPortraitPost$Response copyWith({
    double? code,
    String? message,
    UserTagPortraitAiToPortraitPost$Response$Data? data,
    String? traceId,
    bool? success,
  }) {
    return UserTagPortraitAiToPortraitPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  UserTagPortraitAiToPortraitPost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<UserTagPortraitAiToPortraitPost$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return UserTagPortraitAiToPortraitPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserTagPortraitAiToPortraitV2Post$Response {
  const UserTagPortraitAiToPortraitV2Post$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory UserTagPortraitAiToPortraitV2Post$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserTagPortraitAiToPortraitV2Post$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserTagPortraitAiToPortraitV2Post$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserTagPortraitAiToPortraitV2Post$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final UserTagPortraitAiToPortraitV2Post$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory =
      _$UserTagPortraitAiToPortraitV2Post$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserTagPortraitAiToPortraitV2Post$Response &&
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
      const DeepCollectionEquality().hash(success) ^
      runtimeType.hashCode;
}

extension $UserTagPortraitAiToPortraitV2Post$ResponseExtension
    on UserTagPortraitAiToPortraitV2Post$Response {
  UserTagPortraitAiToPortraitV2Post$Response copyWith({
    double? code,
    String? message,
    UserTagPortraitAiToPortraitV2Post$Response$Data? data,
    String? traceId,
    bool? success,
  }) {
    return UserTagPortraitAiToPortraitV2Post$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  UserTagPortraitAiToPortraitV2Post$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<UserTagPortraitAiToPortraitV2Post$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return UserTagPortraitAiToPortraitV2Post$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserTagPortraitUpdatePortraitPost$Response {
  const UserTagPortraitUpdatePortraitPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory UserTagPortraitUpdatePortraitPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserTagPortraitUpdatePortraitPost$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserTagPortraitUpdatePortraitPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserTagPortraitUpdatePortraitPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final bool? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory =
      _$UserTagPortraitUpdatePortraitPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserTagPortraitUpdatePortraitPost$Response &&
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
      const DeepCollectionEquality().hash(success) ^
      runtimeType.hashCode;
}

extension $UserTagPortraitUpdatePortraitPost$ResponseExtension
    on UserTagPortraitUpdatePortraitPost$Response {
  UserTagPortraitUpdatePortraitPost$Response copyWith({
    double? code,
    String? message,
    bool? data,
    String? traceId,
    bool? success,
  }) {
    return UserTagPortraitUpdatePortraitPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  UserTagPortraitUpdatePortraitPost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<bool?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return UserTagPortraitUpdatePortraitPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserTagPortraitGetPortraitGet$Response {
  const UserTagPortraitGetPortraitGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory UserTagPortraitGetPortraitGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserTagPortraitGetPortraitGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserTagPortraitGetPortraitGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserTagPortraitGetPortraitGet$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final UserTagPortraitGetPortraitGet$Response$Data? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory =
      _$UserTagPortraitGetPortraitGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserTagPortraitGetPortraitGet$Response &&
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
      const DeepCollectionEquality().hash(success) ^
      runtimeType.hashCode;
}

extension $UserTagPortraitGetPortraitGet$ResponseExtension
    on UserTagPortraitGetPortraitGet$Response {
  UserTagPortraitGetPortraitGet$Response copyWith({
    double? code,
    String? message,
    UserTagPortraitGetPortraitGet$Response$Data? data,
    String? traceId,
    bool? success,
  }) {
    return UserTagPortraitGetPortraitGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  UserTagPortraitGetPortraitGet$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<UserTagPortraitGetPortraitGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return UserTagPortraitGetPortraitGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserCouponAppHomeActivityPost$Response {
  const UserCouponAppHomeActivityPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory UserCouponAppHomeActivityPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCouponAppHomeActivityPost$ResponseFromJson(json);

  static const toJsonFactory = _$UserCouponAppHomeActivityPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserCouponAppHomeActivityPost$ResponseToJson(this);

  @JsonKey(name: 'code')
  final double? code;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final List<UserCouponAppHomeActivityPost$Response$Data$Item>? data;
  @JsonKey(name: 'traceId')
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final String? placeholder;
  @JsonKey(name: 'success')
  final bool? success;
  static const fromJsonFactory =
      _$UserCouponAppHomeActivityPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponAppHomeActivityPost$Response &&
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

extension $UserCouponAppHomeActivityPost$ResponseExtension
    on UserCouponAppHomeActivityPost$Response {
  UserCouponAppHomeActivityPost$Response copyWith({
    double? code,
    String? message,
    List<UserCouponAppHomeActivityPost$Response$Data$Item>? data,
    String? traceId,
    String? placeholder,
    bool? success,
  }) {
    return UserCouponAppHomeActivityPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  UserCouponAppHomeActivityPost$Response copyWithWrapped({
    Wrapped<double?>? code,
    Wrapped<String?>? message,
    Wrapped<List<UserCouponAppHomeActivityPost$Response$Data$Item>?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return UserCouponAppHomeActivityPost$Response(
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
class AddressQueryGet$Response$Data$Item {
  const AddressQueryGet$Response$Data$Item({
    this.apartment,
    this.street,
    this.city,
    this.cityCode,
    this.state,
    this.stateCode,
    this.country,
    this.countryCode,
    this.address,
    this.zipCode,
    this.latitude,
    this.longitude,
  });

  factory AddressQueryGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$AddressQueryGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory = _$AddressQueryGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$AddressQueryGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'apartment')
  final String? apartment;
  @JsonKey(name: 'street')
  final String? street;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'cityCode')
  final String? cityCode;
  @JsonKey(name: 'state')
  final String? state;
  @JsonKey(name: 'stateCode')
  final String? stateCode;
  @JsonKey(name: 'country')
  final String? country;
  @JsonKey(name: 'countryCode')
  final String? countryCode;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'zipCode')
  final String? zipCode;
  @JsonKey(name: 'latitude')
  final double? latitude;
  @JsonKey(name: 'longitude')
  final double? longitude;
  static const fromJsonFactory = _$AddressQueryGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddressQueryGet$Response$Data$Item &&
            (identical(other.apartment, apartment) ||
                const DeepCollectionEquality().equals(
                  other.apartment,
                  apartment,
                )) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.cityCode, cityCode) ||
                const DeepCollectionEquality().equals(
                  other.cityCode,
                  cityCode,
                )) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.stateCode, stateCode) ||
                const DeepCollectionEquality().equals(
                  other.stateCode,
                  stateCode,
                )) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(
                  other.country,
                  country,
                )) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality().equals(
                  other.countryCode,
                  countryCode,
                )) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(
                  other.address,
                  address,
                )) &&
            (identical(other.zipCode, zipCode) ||
                const DeepCollectionEquality().equals(
                  other.zipCode,
                  zipCode,
                )) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality().equals(
                  other.latitude,
                  latitude,
                )) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality().equals(
                  other.longitude,
                  longitude,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(apartment) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(cityCode) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(stateCode) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(zipCode) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      runtimeType.hashCode;
}

extension $AddressQueryGet$Response$Data$ItemExtension
    on AddressQueryGet$Response$Data$Item {
  AddressQueryGet$Response$Data$Item copyWith({
    String? apartment,
    String? street,
    String? city,
    String? cityCode,
    String? state,
    String? stateCode,
    String? country,
    String? countryCode,
    String? address,
    String? zipCode,
    double? latitude,
    double? longitude,
  }) {
    return AddressQueryGet$Response$Data$Item(
      apartment: apartment ?? this.apartment,
      street: street ?? this.street,
      city: city ?? this.city,
      cityCode: cityCode ?? this.cityCode,
      state: state ?? this.state,
      stateCode: stateCode ?? this.stateCode,
      country: country ?? this.country,
      countryCode: countryCode ?? this.countryCode,
      address: address ?? this.address,
      zipCode: zipCode ?? this.zipCode,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  AddressQueryGet$Response$Data$Item copyWithWrapped({
    Wrapped<String?>? apartment,
    Wrapped<String?>? street,
    Wrapped<String?>? city,
    Wrapped<String?>? cityCode,
    Wrapped<String?>? state,
    Wrapped<String?>? stateCode,
    Wrapped<String?>? country,
    Wrapped<String?>? countryCode,
    Wrapped<String?>? address,
    Wrapped<String?>? zipCode,
    Wrapped<double?>? latitude,
    Wrapped<double?>? longitude,
  }) {
    return AddressQueryGet$Response$Data$Item(
      apartment: (apartment != null ? apartment.value : this.apartment),
      street: (street != null ? street.value : this.street),
      city: (city != null ? city.value : this.city),
      cityCode: (cityCode != null ? cityCode.value : this.cityCode),
      state: (state != null ? state.value : this.state),
      stateCode: (stateCode != null ? stateCode.value : this.stateCode),
      country: (country != null ? country.value : this.country),
      countryCode: (countryCode != null ? countryCode.value : this.countryCode),
      address: (address != null ? address.value : this.address),
      zipCode: (zipCode != null ? zipCode.value : this.zipCode),
      latitude: (latitude != null ? latitude.value : this.latitude),
      longitude: (longitude != null ? longitude.value : this.longitude),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AddressListGet$Response$Data$Item {
  const AddressListGet$Response$Data$Item({
    required this.id,
    required this.tenantCode,
    required this.userId,
    required this.isDefault,
    required this.country,
    required this.countryCode,
    required this.state,
    required this.stateCode,
    required this.city,
    required this.cityCode,
    required this.street,
    this.apartment,
    required this.address,
    required this.coordinate,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.zipCode,
    required this.deleted,
    required this.isDelivered,
    required this.gmtCreate,
    required this.gmtUpdate,
    this.tin,
  });

  factory AddressListGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$AddressListGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory = _$AddressListGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$AddressListGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'id')
  final double id;
  @JsonKey(name: 'tenantCode')
  final String tenantCode;
  @JsonKey(name: 'userId')
  final String userId;
  @JsonKey(name: 'isDefault')
  final double isDefault;
  @JsonKey(name: 'country')
  final String country;
  @JsonKey(name: 'countryCode')
  final String countryCode;
  @JsonKey(name: 'state')
  final String state;
  @JsonKey(name: 'stateCode')
  final String stateCode;
  @JsonKey(name: 'city')
  final String city;
  @JsonKey(name: 'cityCode')
  final String cityCode;
  @JsonKey(name: 'street')
  final String street;
  @JsonKey(name: 'apartment')
  final String? apartment;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final String coordinate;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'lastName')
  final String lastName;
  @JsonKey(name: 'phoneNumber')
  final String phoneNumber;
  @JsonKey(name: 'zipCode')
  final String zipCode;
  @JsonKey(name: 'deleted')
  final double deleted;
  @JsonKey(name: 'isDelivered')
  final double isDelivered;
  @JsonKey(name: 'gmtCreate')
  final String gmtCreate;
  @JsonKey(name: 'gmtUpdate')
  final String gmtUpdate;
  @JsonKey(name: 'tin')
  final String? tin;
  static const fromJsonFactory = _$AddressListGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddressListGet$Response$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.tenantCode, tenantCode) ||
                const DeepCollectionEquality().equals(
                  other.tenantCode,
                  tenantCode,
                )) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.isDefault, isDefault) ||
                const DeepCollectionEquality().equals(
                  other.isDefault,
                  isDefault,
                )) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(
                  other.country,
                  country,
                )) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality().equals(
                  other.countryCode,
                  countryCode,
                )) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.stateCode, stateCode) ||
                const DeepCollectionEquality().equals(
                  other.stateCode,
                  stateCode,
                )) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.cityCode, cityCode) ||
                const DeepCollectionEquality().equals(
                  other.cityCode,
                  cityCode,
                )) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.apartment, apartment) ||
                const DeepCollectionEquality().equals(
                  other.apartment,
                  apartment,
                )) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(
                  other.address,
                  address,
                )) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality().equals(
                  other.coordinate,
                  coordinate,
                )) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality().equals(
                  other.firstName,
                  firstName,
                )) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality().equals(
                  other.lastName,
                  lastName,
                )) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality().equals(
                  other.phoneNumber,
                  phoneNumber,
                )) &&
            (identical(other.zipCode, zipCode) ||
                const DeepCollectionEquality().equals(
                  other.zipCode,
                  zipCode,
                )) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality().equals(
                  other.deleted,
                  deleted,
                )) &&
            (identical(other.isDelivered, isDelivered) ||
                const DeepCollectionEquality().equals(
                  other.isDelivered,
                  isDelivered,
                )) &&
            (identical(other.gmtCreate, gmtCreate) ||
                const DeepCollectionEquality().equals(
                  other.gmtCreate,
                  gmtCreate,
                )) &&
            (identical(other.gmtUpdate, gmtUpdate) ||
                const DeepCollectionEquality().equals(
                  other.gmtUpdate,
                  gmtUpdate,
                )) &&
            (identical(other.tin, tin) ||
                const DeepCollectionEquality().equals(other.tin, tin)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(tenantCode) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(isDefault) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(stateCode) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(cityCode) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(apartment) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(zipCode) ^
      const DeepCollectionEquality().hash(deleted) ^
      const DeepCollectionEquality().hash(isDelivered) ^
      const DeepCollectionEquality().hash(gmtCreate) ^
      const DeepCollectionEquality().hash(gmtUpdate) ^
      const DeepCollectionEquality().hash(tin) ^
      runtimeType.hashCode;
}

extension $AddressListGet$Response$Data$ItemExtension
    on AddressListGet$Response$Data$Item {
  AddressListGet$Response$Data$Item copyWith({
    double? id,
    String? tenantCode,
    String? userId,
    double? isDefault,
    String? country,
    String? countryCode,
    String? state,
    String? stateCode,
    String? city,
    String? cityCode,
    String? street,
    String? apartment,
    String? address,
    String? coordinate,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? zipCode,
    double? deleted,
    double? isDelivered,
    String? gmtCreate,
    String? gmtUpdate,
    String? tin,
  }) {
    return AddressListGet$Response$Data$Item(
      id: id ?? this.id,
      tenantCode: tenantCode ?? this.tenantCode,
      userId: userId ?? this.userId,
      isDefault: isDefault ?? this.isDefault,
      country: country ?? this.country,
      countryCode: countryCode ?? this.countryCode,
      state: state ?? this.state,
      stateCode: stateCode ?? this.stateCode,
      city: city ?? this.city,
      cityCode: cityCode ?? this.cityCode,
      street: street ?? this.street,
      apartment: apartment ?? this.apartment,
      address: address ?? this.address,
      coordinate: coordinate ?? this.coordinate,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      zipCode: zipCode ?? this.zipCode,
      deleted: deleted ?? this.deleted,
      isDelivered: isDelivered ?? this.isDelivered,
      gmtCreate: gmtCreate ?? this.gmtCreate,
      gmtUpdate: gmtUpdate ?? this.gmtUpdate,
      tin: tin ?? this.tin,
    );
  }

  AddressListGet$Response$Data$Item copyWithWrapped({
    Wrapped<double>? id,
    Wrapped<String>? tenantCode,
    Wrapped<String>? userId,
    Wrapped<double>? isDefault,
    Wrapped<String>? country,
    Wrapped<String>? countryCode,
    Wrapped<String>? state,
    Wrapped<String>? stateCode,
    Wrapped<String>? city,
    Wrapped<String>? cityCode,
    Wrapped<String>? street,
    Wrapped<String?>? apartment,
    Wrapped<String>? address,
    Wrapped<String>? coordinate,
    Wrapped<String>? firstName,
    Wrapped<String>? lastName,
    Wrapped<String>? phoneNumber,
    Wrapped<String>? zipCode,
    Wrapped<double>? deleted,
    Wrapped<double>? isDelivered,
    Wrapped<String>? gmtCreate,
    Wrapped<String>? gmtUpdate,
    Wrapped<String?>? tin,
  }) {
    return AddressListGet$Response$Data$Item(
      id: (id != null ? id.value : this.id),
      tenantCode: (tenantCode != null ? tenantCode.value : this.tenantCode),
      userId: (userId != null ? userId.value : this.userId),
      isDefault: (isDefault != null ? isDefault.value : this.isDefault),
      country: (country != null ? country.value : this.country),
      countryCode: (countryCode != null ? countryCode.value : this.countryCode),
      state: (state != null ? state.value : this.state),
      stateCode: (stateCode != null ? stateCode.value : this.stateCode),
      city: (city != null ? city.value : this.city),
      cityCode: (cityCode != null ? cityCode.value : this.cityCode),
      street: (street != null ? street.value : this.street),
      apartment: (apartment != null ? apartment.value : this.apartment),
      address: (address != null ? address.value : this.address),
      coordinate: (coordinate != null ? coordinate.value : this.coordinate),
      firstName: (firstName != null ? firstName.value : this.firstName),
      lastName: (lastName != null ? lastName.value : this.lastName),
      phoneNumber: (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
      zipCode: (zipCode != null ? zipCode.value : this.zipCode),
      deleted: (deleted != null ? deleted.value : this.deleted),
      isDelivered: (isDelivered != null ? isDelivered.value : this.isDelivered),
      gmtCreate: (gmtCreate != null ? gmtCreate.value : this.gmtCreate),
      gmtUpdate: (gmtUpdate != null ? gmtUpdate.value : this.gmtUpdate),
      tin: (tin != null ? tin.value : this.tin),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class GetShippingAddressByCountryGet$Response$Data {
  const GetShippingAddressByCountryGet$Response$Data({
    required this.id,
    required this.isDefault,
    required this.country,
    required this.countryCode,
    required this.state,
    required this.stateCode,
    required this.simpleStateCode,
    this.city,
    required this.cityCode,
    this.apartment,
    required this.address,
    this.coordinate,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
  });

  factory GetShippingAddressByCountryGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$GetShippingAddressByCountryGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$GetShippingAddressByCountryGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$GetShippingAddressByCountryGet$Response$DataToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'isDefault')
  final bool isDefault;
  @JsonKey(name: 'country')
  final String country;
  @JsonKey(name: 'countryCode')
  final String countryCode;
  @JsonKey(name: 'state')
  final String state;
  @JsonKey(name: 'stateCode')
  final String stateCode;
  @JsonKey(name: 'simpleStateCode')
  final String simpleStateCode;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'cityCode')
  final String cityCode;
  @JsonKey(name: 'apartment')
  final String? apartment;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final String? coordinate;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'lastName')
  final String lastName;
  @JsonKey(name: 'phoneNumber')
  final String phoneNumber;
  static const fromJsonFactory =
      _$GetShippingAddressByCountryGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GetShippingAddressByCountryGet$Response$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isDefault, isDefault) ||
                const DeepCollectionEquality().equals(
                  other.isDefault,
                  isDefault,
                )) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(
                  other.country,
                  country,
                )) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality().equals(
                  other.countryCode,
                  countryCode,
                )) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.stateCode, stateCode) ||
                const DeepCollectionEquality().equals(
                  other.stateCode,
                  stateCode,
                )) &&
            (identical(other.simpleStateCode, simpleStateCode) ||
                const DeepCollectionEquality().equals(
                  other.simpleStateCode,
                  simpleStateCode,
                )) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.cityCode, cityCode) ||
                const DeepCollectionEquality().equals(
                  other.cityCode,
                  cityCode,
                )) &&
            (identical(other.apartment, apartment) ||
                const DeepCollectionEquality().equals(
                  other.apartment,
                  apartment,
                )) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(
                  other.address,
                  address,
                )) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality().equals(
                  other.coordinate,
                  coordinate,
                )) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality().equals(
                  other.firstName,
                  firstName,
                )) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality().equals(
                  other.lastName,
                  lastName,
                )) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality().equals(
                  other.phoneNumber,
                  phoneNumber,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isDefault) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(stateCode) ^
      const DeepCollectionEquality().hash(simpleStateCode) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(cityCode) ^
      const DeepCollectionEquality().hash(apartment) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      runtimeType.hashCode;
}

extension $GetShippingAddressByCountryGet$Response$DataExtension
    on GetShippingAddressByCountryGet$Response$Data {
  GetShippingAddressByCountryGet$Response$Data copyWith({
    String? id,
    bool? isDefault,
    String? country,
    String? countryCode,
    String? state,
    String? stateCode,
    String? simpleStateCode,
    String? city,
    String? cityCode,
    String? apartment,
    String? address,
    String? coordinate,
    String? firstName,
    String? lastName,
    String? phoneNumber,
  }) {
    return GetShippingAddressByCountryGet$Response$Data(
      id: id ?? this.id,
      isDefault: isDefault ?? this.isDefault,
      country: country ?? this.country,
      countryCode: countryCode ?? this.countryCode,
      state: state ?? this.state,
      stateCode: stateCode ?? this.stateCode,
      simpleStateCode: simpleStateCode ?? this.simpleStateCode,
      city: city ?? this.city,
      cityCode: cityCode ?? this.cityCode,
      apartment: apartment ?? this.apartment,
      address: address ?? this.address,
      coordinate: coordinate ?? this.coordinate,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  GetShippingAddressByCountryGet$Response$Data copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<bool>? isDefault,
    Wrapped<String>? country,
    Wrapped<String>? countryCode,
    Wrapped<String>? state,
    Wrapped<String>? stateCode,
    Wrapped<String>? simpleStateCode,
    Wrapped<String?>? city,
    Wrapped<String>? cityCode,
    Wrapped<String?>? apartment,
    Wrapped<String>? address,
    Wrapped<String?>? coordinate,
    Wrapped<String>? firstName,
    Wrapped<String>? lastName,
    Wrapped<String>? phoneNumber,
  }) {
    return GetShippingAddressByCountryGet$Response$Data(
      id: (id != null ? id.value : this.id),
      isDefault: (isDefault != null ? isDefault.value : this.isDefault),
      country: (country != null ? country.value : this.country),
      countryCode: (countryCode != null ? countryCode.value : this.countryCode),
      state: (state != null ? state.value : this.state),
      stateCode: (stateCode != null ? stateCode.value : this.stateCode),
      simpleStateCode: (simpleStateCode != null
          ? simpleStateCode.value
          : this.simpleStateCode),
      city: (city != null ? city.value : this.city),
      cityCode: (cityCode != null ? cityCode.value : this.cityCode),
      apartment: (apartment != null ? apartment.value : this.apartment),
      address: (address != null ? address.value : this.address),
      coordinate: (coordinate != null ? coordinate.value : this.coordinate),
      firstName: (firstName != null ? firstName.value : this.firstName),
      lastName: (lastName != null ? lastName.value : this.lastName),
      phoneNumber: (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class GetDefaultShippingAddressGet$Response$Data {
  const GetDefaultShippingAddressGet$Response$Data({
    required this.id,
    required this.isDefault,
    required this.country,
    required this.countryCode,
    required this.state,
    required this.stateCode,
    required this.simpleStateCode,
    this.city,
    required this.cityCode,
    this.apartment,
    required this.address,
    this.coordinate,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.street,
    required this.zipCode,
    required this.email,
  });

  factory GetDefaultShippingAddressGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$GetDefaultShippingAddressGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$GetDefaultShippingAddressGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$GetDefaultShippingAddressGet$Response$DataToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'isDefault')
  final bool isDefault;
  @JsonKey(name: 'country')
  final String country;
  @JsonKey(name: 'countryCode')
  final String countryCode;
  @JsonKey(name: 'state')
  final String state;
  @JsonKey(name: 'stateCode')
  final String stateCode;
  @JsonKey(name: 'simpleStateCode')
  final String simpleStateCode;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'cityCode')
  final String cityCode;
  @JsonKey(name: 'apartment')
  final String? apartment;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final String? coordinate;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'lastName')
  final String lastName;
  @JsonKey(name: 'phoneNumber')
  final String phoneNumber;
  @JsonKey(name: 'street')
  final String street;
  @JsonKey(name: 'zipCode')
  final String zipCode;
  @JsonKey(name: 'email')
  final String email;
  static const fromJsonFactory =
      _$GetDefaultShippingAddressGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GetDefaultShippingAddressGet$Response$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isDefault, isDefault) ||
                const DeepCollectionEquality().equals(
                  other.isDefault,
                  isDefault,
                )) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(
                  other.country,
                  country,
                )) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality().equals(
                  other.countryCode,
                  countryCode,
                )) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.stateCode, stateCode) ||
                const DeepCollectionEquality().equals(
                  other.stateCode,
                  stateCode,
                )) &&
            (identical(other.simpleStateCode, simpleStateCode) ||
                const DeepCollectionEquality().equals(
                  other.simpleStateCode,
                  simpleStateCode,
                )) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.cityCode, cityCode) ||
                const DeepCollectionEquality().equals(
                  other.cityCode,
                  cityCode,
                )) &&
            (identical(other.apartment, apartment) ||
                const DeepCollectionEquality().equals(
                  other.apartment,
                  apartment,
                )) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(
                  other.address,
                  address,
                )) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality().equals(
                  other.coordinate,
                  coordinate,
                )) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality().equals(
                  other.firstName,
                  firstName,
                )) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality().equals(
                  other.lastName,
                  lastName,
                )) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality().equals(
                  other.phoneNumber,
                  phoneNumber,
                )) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.zipCode, zipCode) ||
                const DeepCollectionEquality().equals(
                  other.zipCode,
                  zipCode,
                )) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isDefault) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(stateCode) ^
      const DeepCollectionEquality().hash(simpleStateCode) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(cityCode) ^
      const DeepCollectionEquality().hash(apartment) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(zipCode) ^
      const DeepCollectionEquality().hash(email) ^
      runtimeType.hashCode;
}

extension $GetDefaultShippingAddressGet$Response$DataExtension
    on GetDefaultShippingAddressGet$Response$Data {
  GetDefaultShippingAddressGet$Response$Data copyWith({
    String? id,
    bool? isDefault,
    String? country,
    String? countryCode,
    String? state,
    String? stateCode,
    String? simpleStateCode,
    String? city,
    String? cityCode,
    String? apartment,
    String? address,
    String? coordinate,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? street,
    String? zipCode,
    String? email,
  }) {
    return GetDefaultShippingAddressGet$Response$Data(
      id: id ?? this.id,
      isDefault: isDefault ?? this.isDefault,
      country: country ?? this.country,
      countryCode: countryCode ?? this.countryCode,
      state: state ?? this.state,
      stateCode: stateCode ?? this.stateCode,
      simpleStateCode: simpleStateCode ?? this.simpleStateCode,
      city: city ?? this.city,
      cityCode: cityCode ?? this.cityCode,
      apartment: apartment ?? this.apartment,
      address: address ?? this.address,
      coordinate: coordinate ?? this.coordinate,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      street: street ?? this.street,
      zipCode: zipCode ?? this.zipCode,
      email: email ?? this.email,
    );
  }

  GetDefaultShippingAddressGet$Response$Data copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<bool>? isDefault,
    Wrapped<String>? country,
    Wrapped<String>? countryCode,
    Wrapped<String>? state,
    Wrapped<String>? stateCode,
    Wrapped<String>? simpleStateCode,
    Wrapped<String?>? city,
    Wrapped<String>? cityCode,
    Wrapped<String?>? apartment,
    Wrapped<String>? address,
    Wrapped<String?>? coordinate,
    Wrapped<String>? firstName,
    Wrapped<String>? lastName,
    Wrapped<String>? phoneNumber,
    Wrapped<String>? street,
    Wrapped<String>? zipCode,
    Wrapped<String>? email,
  }) {
    return GetDefaultShippingAddressGet$Response$Data(
      id: (id != null ? id.value : this.id),
      isDefault: (isDefault != null ? isDefault.value : this.isDefault),
      country: (country != null ? country.value : this.country),
      countryCode: (countryCode != null ? countryCode.value : this.countryCode),
      state: (state != null ? state.value : this.state),
      stateCode: (stateCode != null ? stateCode.value : this.stateCode),
      simpleStateCode: (simpleStateCode != null
          ? simpleStateCode.value
          : this.simpleStateCode),
      city: (city != null ? city.value : this.city),
      cityCode: (cityCode != null ? cityCode.value : this.cityCode),
      apartment: (apartment != null ? apartment.value : this.apartment),
      address: (address != null ? address.value : this.address),
      coordinate: (coordinate != null ? coordinate.value : this.coordinate),
      firstName: (firstName != null ? firstName.value : this.firstName),
      lastName: (lastName != null ? lastName.value : this.lastName),
      phoneNumber: (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
      street: (street != null ? street.value : this.street),
      zipCode: (zipCode != null ? zipCode.value : this.zipCode),
      email: (email != null ? email.value : this.email),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AddressCountryGet$Response$Data$Item {
  const AddressCountryGet$Response$Data$Item({
    required this.areaCode,
    required this.icon,
    required this.name,
  });

  factory AddressCountryGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$AddressCountryGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory = _$AddressCountryGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$AddressCountryGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'areaCode')
  final String areaCode;
  @JsonKey(name: 'icon')
  final String icon;
  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$AddressCountryGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddressCountryGet$Response$Data$Item &&
            (identical(other.areaCode, areaCode) ||
                const DeepCollectionEquality().equals(
                  other.areaCode,
                  areaCode,
                )) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(areaCode) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $AddressCountryGet$Response$Data$ItemExtension
    on AddressCountryGet$Response$Data$Item {
  AddressCountryGet$Response$Data$Item copyWith({
    String? areaCode,
    String? icon,
    String? name,
  }) {
    return AddressCountryGet$Response$Data$Item(
      areaCode: areaCode ?? this.areaCode,
      icon: icon ?? this.icon,
      name: name ?? this.name,
    );
  }

  AddressCountryGet$Response$Data$Item copyWithWrapped({
    Wrapped<String>? areaCode,
    Wrapped<String>? icon,
    Wrapped<String>? name,
  }) {
    return AddressCountryGet$Response$Data$Item(
      areaCode: (areaCode != null ? areaCode.value : this.areaCode),
      icon: (icon != null ? icon.value : this.icon),
      name: (name != null ? name.value : this.name),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AddressQueryByZipCodeGet$Response$Data$Item {
  const AddressQueryByZipCodeGet$Response$Data$Item({
    required this.apartment,
    required this.street,
    required this.city,
    required this.cityCode,
    required this.state,
    required this.stateCode,
    required this.country,
    required this.countryCode,
    required this.address,
    required this.zipCode,
    required this.latitude,
    required this.longitude,
  });

  factory AddressQueryByZipCodeGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$AddressQueryByZipCodeGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$AddressQueryByZipCodeGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$AddressQueryByZipCodeGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'apartment')
  final Object apartment;
  @JsonKey(name: 'street')
  final String street;
  @JsonKey(name: 'city')
  final String city;
  @JsonKey(name: 'cityCode')
  final String cityCode;
  @JsonKey(name: 'state')
  final String state;
  @JsonKey(name: 'stateCode')
  final String stateCode;
  @JsonKey(name: 'country')
  final String country;
  @JsonKey(name: 'countryCode')
  final String countryCode;
  @JsonKey(name: 'address')
  final Object address;
  @JsonKey(name: 'zipCode')
  final String zipCode;
  @JsonKey(name: 'latitude')
  final Object latitude;
  @JsonKey(name: 'longitude')
  final Object longitude;
  static const fromJsonFactory =
      _$AddressQueryByZipCodeGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddressQueryByZipCodeGet$Response$Data$Item &&
            (identical(other.apartment, apartment) ||
                const DeepCollectionEquality().equals(
                  other.apartment,
                  apartment,
                )) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.cityCode, cityCode) ||
                const DeepCollectionEquality().equals(
                  other.cityCode,
                  cityCode,
                )) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.stateCode, stateCode) ||
                const DeepCollectionEquality().equals(
                  other.stateCode,
                  stateCode,
                )) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(
                  other.country,
                  country,
                )) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality().equals(
                  other.countryCode,
                  countryCode,
                )) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(
                  other.address,
                  address,
                )) &&
            (identical(other.zipCode, zipCode) ||
                const DeepCollectionEquality().equals(
                  other.zipCode,
                  zipCode,
                )) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality().equals(
                  other.latitude,
                  latitude,
                )) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality().equals(
                  other.longitude,
                  longitude,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(apartment) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(cityCode) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(stateCode) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(zipCode) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      runtimeType.hashCode;
}

extension $AddressQueryByZipCodeGet$Response$Data$ItemExtension
    on AddressQueryByZipCodeGet$Response$Data$Item {
  AddressQueryByZipCodeGet$Response$Data$Item copyWith({
    Object? apartment,
    String? street,
    String? city,
    String? cityCode,
    String? state,
    String? stateCode,
    String? country,
    String? countryCode,
    Object? address,
    String? zipCode,
    Object? latitude,
    Object? longitude,
  }) {
    return AddressQueryByZipCodeGet$Response$Data$Item(
      apartment: apartment ?? this.apartment,
      street: street ?? this.street,
      city: city ?? this.city,
      cityCode: cityCode ?? this.cityCode,
      state: state ?? this.state,
      stateCode: stateCode ?? this.stateCode,
      country: country ?? this.country,
      countryCode: countryCode ?? this.countryCode,
      address: address ?? this.address,
      zipCode: zipCode ?? this.zipCode,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  AddressQueryByZipCodeGet$Response$Data$Item copyWithWrapped({
    Wrapped<Object>? apartment,
    Wrapped<String>? street,
    Wrapped<String>? city,
    Wrapped<String>? cityCode,
    Wrapped<String>? state,
    Wrapped<String>? stateCode,
    Wrapped<String>? country,
    Wrapped<String>? countryCode,
    Wrapped<Object>? address,
    Wrapped<String>? zipCode,
    Wrapped<Object>? latitude,
    Wrapped<Object>? longitude,
  }) {
    return AddressQueryByZipCodeGet$Response$Data$Item(
      apartment: (apartment != null ? apartment.value : this.apartment),
      street: (street != null ? street.value : this.street),
      city: (city != null ? city.value : this.city),
      cityCode: (cityCode != null ? cityCode.value : this.cityCode),
      state: (state != null ? state.value : this.state),
      stateCode: (stateCode != null ? stateCode.value : this.stateCode),
      country: (country != null ? country.value : this.country),
      countryCode: (countryCode != null ? countryCode.value : this.countryCode),
      address: (address != null ? address.value : this.address),
      zipCode: (zipCode != null ? zipCode.value : this.zipCode),
      latitude: (latitude != null ? latitude.value : this.latitude),
      longitude: (longitude != null ? longitude.value : this.longitude),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SigninSwitchPortalPost$Response$Data {
  const SigninSwitchPortalPost$Response$Data({
    this.tenantCode,
    this.userId,
    this.nickname,
    this.email,
    this.photo,
    this.phoneNumber,
    this.signUpType,
    this.signUpName,
    this.accessToken,
    this.refreshToken,
    this.expiresIn,
    this.tokenType,
    this.authWay,
    this.remainTimes,
    this.lockTime,
    this.loginStatus,
    this.timestamp,
    this.success,
    this.portalCode,
    this.source,
    this.newUser,
    this.compliance,
    this.finalSuccess,
    this.message,
    this.currency,
  });

  factory SigninSwitchPortalPost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$SigninSwitchPortalPost$Response$DataFromJson(json);

  static const toJsonFactory = _$SigninSwitchPortalPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$SigninSwitchPortalPost$Response$DataToJson(this);

  @JsonKey(name: 'tenantCode')
  final String? tenantCode;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'nickname')
  final String? nickname;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'photo')
  final String? photo;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'signUpType')
  final String? signUpType;
  @JsonKey(name: 'signUpName')
  final String? signUpName;
  @JsonKey(name: 'accessToken')
  final String? accessToken;
  @JsonKey(name: 'refreshToken')
  final String? refreshToken;
  @JsonKey(name: 'expiresIn')
  final double? expiresIn;
  @JsonKey(name: 'tokenType')
  final String? tokenType;
  @JsonKey(name: 'authWay')
  final String? authWay;
  @JsonKey(name: 'remainTimes')
  final String? remainTimes;
  @JsonKey(name: 'lockTime')
  final String? lockTime;
  @JsonKey(name: 'loginStatus')
  final double? loginStatus;
  @JsonKey(name: 'timestamp')
  final double? timestamp;
  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'portalCode')
  final String? portalCode;
  @JsonKey(name: 'source')
  final String? source;
  @JsonKey(name: 'newUser')
  final bool? newUser;
  @JsonKey(name: 'compliance')
  final String? compliance;
  @JsonKey(name: 'finalSuccess')
  final double? finalSuccess;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'currency')
  final String? currency;
  static const fromJsonFactory = _$SigninSwitchPortalPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SigninSwitchPortalPost$Response$Data &&
            (identical(other.tenantCode, tenantCode) ||
                const DeepCollectionEquality().equals(
                  other.tenantCode,
                  tenantCode,
                )) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality().equals(
                  other.nickname,
                  nickname,
                )) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality().equals(
                  other.phoneNumber,
                  phoneNumber,
                )) &&
            (identical(other.signUpType, signUpType) ||
                const DeepCollectionEquality().equals(
                  other.signUpType,
                  signUpType,
                )) &&
            (identical(other.signUpName, signUpName) ||
                const DeepCollectionEquality().equals(
                  other.signUpName,
                  signUpName,
                )) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality().equals(
                  other.accessToken,
                  accessToken,
                )) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality().equals(
                  other.refreshToken,
                  refreshToken,
                )) &&
            (identical(other.expiresIn, expiresIn) ||
                const DeepCollectionEquality().equals(
                  other.expiresIn,
                  expiresIn,
                )) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality().equals(
                  other.tokenType,
                  tokenType,
                )) &&
            (identical(other.authWay, authWay) ||
                const DeepCollectionEquality().equals(
                  other.authWay,
                  authWay,
                )) &&
            (identical(other.remainTimes, remainTimes) ||
                const DeepCollectionEquality().equals(
                  other.remainTimes,
                  remainTimes,
                )) &&
            (identical(other.lockTime, lockTime) ||
                const DeepCollectionEquality().equals(
                  other.lockTime,
                  lockTime,
                )) &&
            (identical(other.loginStatus, loginStatus) ||
                const DeepCollectionEquality().equals(
                  other.loginStatus,
                  loginStatus,
                )) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality().equals(
                  other.timestamp,
                  timestamp,
                )) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(
                  other.success,
                  success,
                )) &&
            (identical(other.portalCode, portalCode) ||
                const DeepCollectionEquality().equals(
                  other.portalCode,
                  portalCode,
                )) &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)) &&
            (identical(other.newUser, newUser) ||
                const DeepCollectionEquality().equals(
                  other.newUser,
                  newUser,
                )) &&
            (identical(other.compliance, compliance) ||
                const DeepCollectionEquality().equals(
                  other.compliance,
                  compliance,
                )) &&
            (identical(other.finalSuccess, finalSuccess) ||
                const DeepCollectionEquality().equals(
                  other.finalSuccess,
                  finalSuccess,
                )) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality().equals(
                  other.currency,
                  currency,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tenantCode) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(signUpType) ^
      const DeepCollectionEquality().hash(signUpName) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(expiresIn) ^
      const DeepCollectionEquality().hash(tokenType) ^
      const DeepCollectionEquality().hash(authWay) ^
      const DeepCollectionEquality().hash(remainTimes) ^
      const DeepCollectionEquality().hash(lockTime) ^
      const DeepCollectionEquality().hash(loginStatus) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(portalCode) ^
      const DeepCollectionEquality().hash(source) ^
      const DeepCollectionEquality().hash(newUser) ^
      const DeepCollectionEquality().hash(compliance) ^
      const DeepCollectionEquality().hash(finalSuccess) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(currency) ^
      runtimeType.hashCode;
}

extension $SigninSwitchPortalPost$Response$DataExtension
    on SigninSwitchPortalPost$Response$Data {
  SigninSwitchPortalPost$Response$Data copyWith({
    String? tenantCode,
    String? userId,
    String? nickname,
    String? email,
    String? photo,
    String? phoneNumber,
    String? signUpType,
    String? signUpName,
    String? accessToken,
    String? refreshToken,
    double? expiresIn,
    String? tokenType,
    String? authWay,
    String? remainTimes,
    String? lockTime,
    double? loginStatus,
    double? timestamp,
    bool? success,
    String? portalCode,
    String? source,
    bool? newUser,
    String? compliance,
    double? finalSuccess,
    String? message,
    String? currency,
  }) {
    return SigninSwitchPortalPost$Response$Data(
      tenantCode: tenantCode ?? this.tenantCode,
      userId: userId ?? this.userId,
      nickname: nickname ?? this.nickname,
      email: email ?? this.email,
      photo: photo ?? this.photo,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      signUpType: signUpType ?? this.signUpType,
      signUpName: signUpName ?? this.signUpName,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      expiresIn: expiresIn ?? this.expiresIn,
      tokenType: tokenType ?? this.tokenType,
      authWay: authWay ?? this.authWay,
      remainTimes: remainTimes ?? this.remainTimes,
      lockTime: lockTime ?? this.lockTime,
      loginStatus: loginStatus ?? this.loginStatus,
      timestamp: timestamp ?? this.timestamp,
      success: success ?? this.success,
      portalCode: portalCode ?? this.portalCode,
      source: source ?? this.source,
      newUser: newUser ?? this.newUser,
      compliance: compliance ?? this.compliance,
      finalSuccess: finalSuccess ?? this.finalSuccess,
      message: message ?? this.message,
      currency: currency ?? this.currency,
    );
  }

  SigninSwitchPortalPost$Response$Data copyWithWrapped({
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? userId,
    Wrapped<String?>? nickname,
    Wrapped<String?>? email,
    Wrapped<String?>? photo,
    Wrapped<String?>? phoneNumber,
    Wrapped<String?>? signUpType,
    Wrapped<String?>? signUpName,
    Wrapped<String?>? accessToken,
    Wrapped<String?>? refreshToken,
    Wrapped<double?>? expiresIn,
    Wrapped<String?>? tokenType,
    Wrapped<String?>? authWay,
    Wrapped<String?>? remainTimes,
    Wrapped<String?>? lockTime,
    Wrapped<double?>? loginStatus,
    Wrapped<double?>? timestamp,
    Wrapped<bool?>? success,
    Wrapped<String?>? portalCode,
    Wrapped<String?>? source,
    Wrapped<bool?>? newUser,
    Wrapped<String?>? compliance,
    Wrapped<double?>? finalSuccess,
    Wrapped<String?>? message,
    Wrapped<String?>? currency,
  }) {
    return SigninSwitchPortalPost$Response$Data(
      tenantCode: (tenantCode != null ? tenantCode.value : this.tenantCode),
      userId: (userId != null ? userId.value : this.userId),
      nickname: (nickname != null ? nickname.value : this.nickname),
      email: (email != null ? email.value : this.email),
      photo: (photo != null ? photo.value : this.photo),
      phoneNumber: (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
      signUpType: (signUpType != null ? signUpType.value : this.signUpType),
      signUpName: (signUpName != null ? signUpName.value : this.signUpName),
      accessToken: (accessToken != null ? accessToken.value : this.accessToken),
      refreshToken: (refreshToken != null
          ? refreshToken.value
          : this.refreshToken),
      expiresIn: (expiresIn != null ? expiresIn.value : this.expiresIn),
      tokenType: (tokenType != null ? tokenType.value : this.tokenType),
      authWay: (authWay != null ? authWay.value : this.authWay),
      remainTimes: (remainTimes != null ? remainTimes.value : this.remainTimes),
      lockTime: (lockTime != null ? lockTime.value : this.lockTime),
      loginStatus: (loginStatus != null ? loginStatus.value : this.loginStatus),
      timestamp: (timestamp != null ? timestamp.value : this.timestamp),
      success: (success != null ? success.value : this.success),
      portalCode: (portalCode != null ? portalCode.value : this.portalCode),
      source: (source != null ? source.value : this.source),
      newUser: (newUser != null ? newUser.value : this.newUser),
      compliance: (compliance != null ? compliance.value : this.compliance),
      finalSuccess: (finalSuccess != null
          ? finalSuccess.value
          : this.finalSuccess),
      message: (message != null ? message.value : this.message),
      currency: (currency != null ? currency.value : this.currency),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SignInInitPost$Response$Data {
  const SignInInitPost$Response$Data({
    required this.authWay,
    required this.code,
    required this.jumpUrl,
  });

  factory SignInInitPost$Response$Data.fromJson(Map<String, dynamic> json) =>
      _$SignInInitPost$Response$DataFromJson(json);

  static const toJsonFactory = _$SignInInitPost$Response$DataToJson;
  Map<String, dynamic> toJson() => _$SignInInitPost$Response$DataToJson(this);

  @JsonKey(name: 'authWay')
  final String authWay;
  @JsonKey(name: 'code')
  final String code;
  @JsonKey(name: 'jumpUrl')
  final String jumpUrl;
  static const fromJsonFactory = _$SignInInitPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SignInInitPost$Response$Data &&
            (identical(other.authWay, authWay) ||
                const DeepCollectionEquality().equals(
                  other.authWay,
                  authWay,
                )) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.jumpUrl, jumpUrl) ||
                const DeepCollectionEquality().equals(other.jumpUrl, jumpUrl)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(authWay) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(jumpUrl) ^
      runtimeType.hashCode;
}

extension $SignInInitPost$Response$DataExtension
    on SignInInitPost$Response$Data {
  SignInInitPost$Response$Data copyWith({
    String? authWay,
    String? code,
    String? jumpUrl,
  }) {
    return SignInInitPost$Response$Data(
      authWay: authWay ?? this.authWay,
      code: code ?? this.code,
      jumpUrl: jumpUrl ?? this.jumpUrl,
    );
  }

  SignInInitPost$Response$Data copyWithWrapped({
    Wrapped<String>? authWay,
    Wrapped<String>? code,
    Wrapped<String>? jumpUrl,
  }) {
    return SignInInitPost$Response$Data(
      authWay: (authWay != null ? authWay.value : this.authWay),
      code: (code != null ? code.value : this.code),
      jumpUrl: (jumpUrl != null ? jumpUrl.value : this.jumpUrl),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SignInVerifyPost$Response$Data {
  const SignInVerifyPost$Response$Data({
    this.tenantCode,
    this.userId,
    this.nickname,
    this.email,
    this.photo,
    this.phoneNumber,
    this.signUpType,
    this.signUpName,
    this.accessToken,
    this.refreshToken,
    this.expiresIn,
    this.tokenType,
    this.authWay,
    this.remainTimes,
    this.lockTime,
    this.loginStatus,
    this.timestamp,
    this.success,
    this.portalCode,
    this.source,
    this.newUser,
    this.compliance,
    this.finalSuccess,
    this.message,
    this.currency,
  });

  factory SignInVerifyPost$Response$Data.fromJson(Map<String, dynamic> json) =>
      _$SignInVerifyPost$Response$DataFromJson(json);

  static const toJsonFactory = _$SignInVerifyPost$Response$DataToJson;
  Map<String, dynamic> toJson() => _$SignInVerifyPost$Response$DataToJson(this);

  @JsonKey(name: 'tenantCode')
  final String? tenantCode;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'nickname')
  final String? nickname;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'photo')
  final String? photo;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'signUpType')
  final String? signUpType;
  @JsonKey(name: 'signUpName')
  final String? signUpName;
  @JsonKey(name: 'accessToken')
  final String? accessToken;
  @JsonKey(name: 'refreshToken')
  final String? refreshToken;
  @JsonKey(name: 'expiresIn')
  final double? expiresIn;
  @JsonKey(name: 'tokenType')
  final String? tokenType;
  @JsonKey(name: 'authWay')
  final String? authWay;
  @JsonKey(name: 'remainTimes')
  final String? remainTimes;
  @JsonKey(name: 'lockTime')
  final String? lockTime;
  @JsonKey(name: 'loginStatus')
  final double? loginStatus;
  @JsonKey(name: 'timestamp')
  final double? timestamp;
  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'portalCode')
  final String? portalCode;
  @JsonKey(name: 'source')
  final String? source;
  @JsonKey(name: 'newUser')
  final bool? newUser;
  @JsonKey(name: 'compliance')
  final String? compliance;
  @JsonKey(name: 'finalSuccess')
  final double? finalSuccess;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'currency')
  final String? currency;
  static const fromJsonFactory = _$SignInVerifyPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SignInVerifyPost$Response$Data &&
            (identical(other.tenantCode, tenantCode) ||
                const DeepCollectionEquality().equals(
                  other.tenantCode,
                  tenantCode,
                )) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality().equals(
                  other.nickname,
                  nickname,
                )) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality().equals(
                  other.phoneNumber,
                  phoneNumber,
                )) &&
            (identical(other.signUpType, signUpType) ||
                const DeepCollectionEquality().equals(
                  other.signUpType,
                  signUpType,
                )) &&
            (identical(other.signUpName, signUpName) ||
                const DeepCollectionEquality().equals(
                  other.signUpName,
                  signUpName,
                )) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality().equals(
                  other.accessToken,
                  accessToken,
                )) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality().equals(
                  other.refreshToken,
                  refreshToken,
                )) &&
            (identical(other.expiresIn, expiresIn) ||
                const DeepCollectionEquality().equals(
                  other.expiresIn,
                  expiresIn,
                )) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality().equals(
                  other.tokenType,
                  tokenType,
                )) &&
            (identical(other.authWay, authWay) ||
                const DeepCollectionEquality().equals(
                  other.authWay,
                  authWay,
                )) &&
            (identical(other.remainTimes, remainTimes) ||
                const DeepCollectionEquality().equals(
                  other.remainTimes,
                  remainTimes,
                )) &&
            (identical(other.lockTime, lockTime) ||
                const DeepCollectionEquality().equals(
                  other.lockTime,
                  lockTime,
                )) &&
            (identical(other.loginStatus, loginStatus) ||
                const DeepCollectionEquality().equals(
                  other.loginStatus,
                  loginStatus,
                )) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality().equals(
                  other.timestamp,
                  timestamp,
                )) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(
                  other.success,
                  success,
                )) &&
            (identical(other.portalCode, portalCode) ||
                const DeepCollectionEquality().equals(
                  other.portalCode,
                  portalCode,
                )) &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)) &&
            (identical(other.newUser, newUser) ||
                const DeepCollectionEquality().equals(
                  other.newUser,
                  newUser,
                )) &&
            (identical(other.compliance, compliance) ||
                const DeepCollectionEquality().equals(
                  other.compliance,
                  compliance,
                )) &&
            (identical(other.finalSuccess, finalSuccess) ||
                const DeepCollectionEquality().equals(
                  other.finalSuccess,
                  finalSuccess,
                )) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality().equals(
                  other.currency,
                  currency,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tenantCode) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(signUpType) ^
      const DeepCollectionEquality().hash(signUpName) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(expiresIn) ^
      const DeepCollectionEquality().hash(tokenType) ^
      const DeepCollectionEquality().hash(authWay) ^
      const DeepCollectionEquality().hash(remainTimes) ^
      const DeepCollectionEquality().hash(lockTime) ^
      const DeepCollectionEquality().hash(loginStatus) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(portalCode) ^
      const DeepCollectionEquality().hash(source) ^
      const DeepCollectionEquality().hash(newUser) ^
      const DeepCollectionEquality().hash(compliance) ^
      const DeepCollectionEquality().hash(finalSuccess) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(currency) ^
      runtimeType.hashCode;
}

extension $SignInVerifyPost$Response$DataExtension
    on SignInVerifyPost$Response$Data {
  SignInVerifyPost$Response$Data copyWith({
    String? tenantCode,
    String? userId,
    String? nickname,
    String? email,
    String? photo,
    String? phoneNumber,
    String? signUpType,
    String? signUpName,
    String? accessToken,
    String? refreshToken,
    double? expiresIn,
    String? tokenType,
    String? authWay,
    String? remainTimes,
    String? lockTime,
    double? loginStatus,
    double? timestamp,
    bool? success,
    String? portalCode,
    String? source,
    bool? newUser,
    String? compliance,
    double? finalSuccess,
    String? message,
    String? currency,
  }) {
    return SignInVerifyPost$Response$Data(
      tenantCode: tenantCode ?? this.tenantCode,
      userId: userId ?? this.userId,
      nickname: nickname ?? this.nickname,
      email: email ?? this.email,
      photo: photo ?? this.photo,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      signUpType: signUpType ?? this.signUpType,
      signUpName: signUpName ?? this.signUpName,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      expiresIn: expiresIn ?? this.expiresIn,
      tokenType: tokenType ?? this.tokenType,
      authWay: authWay ?? this.authWay,
      remainTimes: remainTimes ?? this.remainTimes,
      lockTime: lockTime ?? this.lockTime,
      loginStatus: loginStatus ?? this.loginStatus,
      timestamp: timestamp ?? this.timestamp,
      success: success ?? this.success,
      portalCode: portalCode ?? this.portalCode,
      source: source ?? this.source,
      newUser: newUser ?? this.newUser,
      compliance: compliance ?? this.compliance,
      finalSuccess: finalSuccess ?? this.finalSuccess,
      message: message ?? this.message,
      currency: currency ?? this.currency,
    );
  }

  SignInVerifyPost$Response$Data copyWithWrapped({
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? userId,
    Wrapped<String?>? nickname,
    Wrapped<String?>? email,
    Wrapped<String?>? photo,
    Wrapped<String?>? phoneNumber,
    Wrapped<String?>? signUpType,
    Wrapped<String?>? signUpName,
    Wrapped<String?>? accessToken,
    Wrapped<String?>? refreshToken,
    Wrapped<double?>? expiresIn,
    Wrapped<String?>? tokenType,
    Wrapped<String?>? authWay,
    Wrapped<String?>? remainTimes,
    Wrapped<String?>? lockTime,
    Wrapped<double?>? loginStatus,
    Wrapped<double?>? timestamp,
    Wrapped<bool?>? success,
    Wrapped<String?>? portalCode,
    Wrapped<String?>? source,
    Wrapped<bool?>? newUser,
    Wrapped<String?>? compliance,
    Wrapped<double?>? finalSuccess,
    Wrapped<String?>? message,
    Wrapped<String?>? currency,
  }) {
    return SignInVerifyPost$Response$Data(
      tenantCode: (tenantCode != null ? tenantCode.value : this.tenantCode),
      userId: (userId != null ? userId.value : this.userId),
      nickname: (nickname != null ? nickname.value : this.nickname),
      email: (email != null ? email.value : this.email),
      photo: (photo != null ? photo.value : this.photo),
      phoneNumber: (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
      signUpType: (signUpType != null ? signUpType.value : this.signUpType),
      signUpName: (signUpName != null ? signUpName.value : this.signUpName),
      accessToken: (accessToken != null ? accessToken.value : this.accessToken),
      refreshToken: (refreshToken != null
          ? refreshToken.value
          : this.refreshToken),
      expiresIn: (expiresIn != null ? expiresIn.value : this.expiresIn),
      tokenType: (tokenType != null ? tokenType.value : this.tokenType),
      authWay: (authWay != null ? authWay.value : this.authWay),
      remainTimes: (remainTimes != null ? remainTimes.value : this.remainTimes),
      lockTime: (lockTime != null ? lockTime.value : this.lockTime),
      loginStatus: (loginStatus != null ? loginStatus.value : this.loginStatus),
      timestamp: (timestamp != null ? timestamp.value : this.timestamp),
      success: (success != null ? success.value : this.success),
      portalCode: (portalCode != null ? portalCode.value : this.portalCode),
      source: (source != null ? source.value : this.source),
      newUser: (newUser != null ? newUser.value : this.newUser),
      compliance: (compliance != null ? compliance.value : this.compliance),
      finalSuccess: (finalSuccess != null
          ? finalSuccess.value
          : this.finalSuccess),
      message: (message != null ? message.value : this.message),
      currency: (currency != null ? currency.value : this.currency),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SignInCallPost$Response$Data {
  const SignInCallPost$Response$Data({
    this.tenantCode,
    this.userId,
    this.nickname,
    this.email,
    this.photo,
    this.phoneNumber,
    this.signUpType,
    this.signUpName,
    this.accessToken,
    this.refreshToken,
    this.expiresIn,
    this.tokenType,
    this.authWay,
    this.remainTimes,
    this.lockTime,
    this.loginStatus,
    this.timestamp,
    this.success,
    this.portalCode,
    this.source,
    this.newUser,
    this.compliance,
    this.finalSuccess,
    this.message,
  });

  factory SignInCallPost$Response$Data.fromJson(Map<String, dynamic> json) =>
      _$SignInCallPost$Response$DataFromJson(json);

  static const toJsonFactory = _$SignInCallPost$Response$DataToJson;
  Map<String, dynamic> toJson() => _$SignInCallPost$Response$DataToJson(this);

  @JsonKey(name: 'tenantCode')
  final String? tenantCode;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'nickname')
  final String? nickname;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'photo')
  final String? photo;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'signUpType')
  final String? signUpType;
  @JsonKey(name: 'signUpName')
  final String? signUpName;
  @JsonKey(name: 'accessToken')
  final String? accessToken;
  @JsonKey(name: 'refreshToken')
  final String? refreshToken;
  @JsonKey(name: 'expiresIn')
  final double? expiresIn;
  @JsonKey(name: 'tokenType')
  final String? tokenType;
  @JsonKey(name: 'authWay')
  final String? authWay;
  @JsonKey(name: 'remainTimes')
  final String? remainTimes;
  @JsonKey(name: 'lockTime')
  final String? lockTime;
  @JsonKey(name: 'loginStatus')
  final double? loginStatus;
  @JsonKey(name: 'timestamp')
  final double? timestamp;
  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'portalCode')
  final String? portalCode;
  @JsonKey(name: 'source')
  final String? source;
  @JsonKey(name: 'newUser')
  final bool? newUser;
  @JsonKey(name: 'compliance')
  final String? compliance;
  @JsonKey(name: 'finalSuccess')
  final double? finalSuccess;
  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$SignInCallPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SignInCallPost$Response$Data &&
            (identical(other.tenantCode, tenantCode) ||
                const DeepCollectionEquality().equals(
                  other.tenantCode,
                  tenantCode,
                )) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality().equals(
                  other.nickname,
                  nickname,
                )) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality().equals(
                  other.phoneNumber,
                  phoneNumber,
                )) &&
            (identical(other.signUpType, signUpType) ||
                const DeepCollectionEquality().equals(
                  other.signUpType,
                  signUpType,
                )) &&
            (identical(other.signUpName, signUpName) ||
                const DeepCollectionEquality().equals(
                  other.signUpName,
                  signUpName,
                )) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality().equals(
                  other.accessToken,
                  accessToken,
                )) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality().equals(
                  other.refreshToken,
                  refreshToken,
                )) &&
            (identical(other.expiresIn, expiresIn) ||
                const DeepCollectionEquality().equals(
                  other.expiresIn,
                  expiresIn,
                )) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality().equals(
                  other.tokenType,
                  tokenType,
                )) &&
            (identical(other.authWay, authWay) ||
                const DeepCollectionEquality().equals(
                  other.authWay,
                  authWay,
                )) &&
            (identical(other.remainTimes, remainTimes) ||
                const DeepCollectionEquality().equals(
                  other.remainTimes,
                  remainTimes,
                )) &&
            (identical(other.lockTime, lockTime) ||
                const DeepCollectionEquality().equals(
                  other.lockTime,
                  lockTime,
                )) &&
            (identical(other.loginStatus, loginStatus) ||
                const DeepCollectionEquality().equals(
                  other.loginStatus,
                  loginStatus,
                )) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality().equals(
                  other.timestamp,
                  timestamp,
                )) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(
                  other.success,
                  success,
                )) &&
            (identical(other.portalCode, portalCode) ||
                const DeepCollectionEquality().equals(
                  other.portalCode,
                  portalCode,
                )) &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)) &&
            (identical(other.newUser, newUser) ||
                const DeepCollectionEquality().equals(
                  other.newUser,
                  newUser,
                )) &&
            (identical(other.compliance, compliance) ||
                const DeepCollectionEquality().equals(
                  other.compliance,
                  compliance,
                )) &&
            (identical(other.finalSuccess, finalSuccess) ||
                const DeepCollectionEquality().equals(
                  other.finalSuccess,
                  finalSuccess,
                )) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tenantCode) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(signUpType) ^
      const DeepCollectionEquality().hash(signUpName) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(expiresIn) ^
      const DeepCollectionEquality().hash(tokenType) ^
      const DeepCollectionEquality().hash(authWay) ^
      const DeepCollectionEquality().hash(remainTimes) ^
      const DeepCollectionEquality().hash(lockTime) ^
      const DeepCollectionEquality().hash(loginStatus) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(portalCode) ^
      const DeepCollectionEquality().hash(source) ^
      const DeepCollectionEquality().hash(newUser) ^
      const DeepCollectionEquality().hash(compliance) ^
      const DeepCollectionEquality().hash(finalSuccess) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $SignInCallPost$Response$DataExtension
    on SignInCallPost$Response$Data {
  SignInCallPost$Response$Data copyWith({
    String? tenantCode,
    String? userId,
    String? nickname,
    String? email,
    String? photo,
    String? phoneNumber,
    String? signUpType,
    String? signUpName,
    String? accessToken,
    String? refreshToken,
    double? expiresIn,
    String? tokenType,
    String? authWay,
    String? remainTimes,
    String? lockTime,
    double? loginStatus,
    double? timestamp,
    bool? success,
    String? portalCode,
    String? source,
    bool? newUser,
    String? compliance,
    double? finalSuccess,
    String? message,
  }) {
    return SignInCallPost$Response$Data(
      tenantCode: tenantCode ?? this.tenantCode,
      userId: userId ?? this.userId,
      nickname: nickname ?? this.nickname,
      email: email ?? this.email,
      photo: photo ?? this.photo,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      signUpType: signUpType ?? this.signUpType,
      signUpName: signUpName ?? this.signUpName,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      expiresIn: expiresIn ?? this.expiresIn,
      tokenType: tokenType ?? this.tokenType,
      authWay: authWay ?? this.authWay,
      remainTimes: remainTimes ?? this.remainTimes,
      lockTime: lockTime ?? this.lockTime,
      loginStatus: loginStatus ?? this.loginStatus,
      timestamp: timestamp ?? this.timestamp,
      success: success ?? this.success,
      portalCode: portalCode ?? this.portalCode,
      source: source ?? this.source,
      newUser: newUser ?? this.newUser,
      compliance: compliance ?? this.compliance,
      finalSuccess: finalSuccess ?? this.finalSuccess,
      message: message ?? this.message,
    );
  }

  SignInCallPost$Response$Data copyWithWrapped({
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? userId,
    Wrapped<String?>? nickname,
    Wrapped<String?>? email,
    Wrapped<String?>? photo,
    Wrapped<String?>? phoneNumber,
    Wrapped<String?>? signUpType,
    Wrapped<String?>? signUpName,
    Wrapped<String?>? accessToken,
    Wrapped<String?>? refreshToken,
    Wrapped<double?>? expiresIn,
    Wrapped<String?>? tokenType,
    Wrapped<String?>? authWay,
    Wrapped<String?>? remainTimes,
    Wrapped<String?>? lockTime,
    Wrapped<double?>? loginStatus,
    Wrapped<double?>? timestamp,
    Wrapped<bool?>? success,
    Wrapped<String?>? portalCode,
    Wrapped<String?>? source,
    Wrapped<bool?>? newUser,
    Wrapped<String?>? compliance,
    Wrapped<double?>? finalSuccess,
    Wrapped<String?>? message,
  }) {
    return SignInCallPost$Response$Data(
      tenantCode: (tenantCode != null ? tenantCode.value : this.tenantCode),
      userId: (userId != null ? userId.value : this.userId),
      nickname: (nickname != null ? nickname.value : this.nickname),
      email: (email != null ? email.value : this.email),
      photo: (photo != null ? photo.value : this.photo),
      phoneNumber: (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
      signUpType: (signUpType != null ? signUpType.value : this.signUpType),
      signUpName: (signUpName != null ? signUpName.value : this.signUpName),
      accessToken: (accessToken != null ? accessToken.value : this.accessToken),
      refreshToken: (refreshToken != null
          ? refreshToken.value
          : this.refreshToken),
      expiresIn: (expiresIn != null ? expiresIn.value : this.expiresIn),
      tokenType: (tokenType != null ? tokenType.value : this.tokenType),
      authWay: (authWay != null ? authWay.value : this.authWay),
      remainTimes: (remainTimes != null ? remainTimes.value : this.remainTimes),
      lockTime: (lockTime != null ? lockTime.value : this.lockTime),
      loginStatus: (loginStatus != null ? loginStatus.value : this.loginStatus),
      timestamp: (timestamp != null ? timestamp.value : this.timestamp),
      success: (success != null ? success.value : this.success),
      portalCode: (portalCode != null ? portalCode.value : this.portalCode),
      source: (source != null ? source.value : this.source),
      newUser: (newUser != null ? newUser.value : this.newUser),
      compliance: (compliance != null ? compliance.value : this.compliance),
      finalSuccess: (finalSuccess != null
          ? finalSuccess.value
          : this.finalSuccess),
      message: (message != null ? message.value : this.message),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class NoAuthOtpVerifyPost$Response$Data {
  const NoAuthOtpVerifyPost$Response$Data({
    this.tenantCode,
    this.userId,
    this.nickname,
    this.email,
    this.photo,
    this.phoneNumber,
    this.signUpType,
    this.signUpName,
    this.accessToken,
    this.refreshToken,
    this.expiresIn,
    this.tokenType,
    this.authWay,
    this.remainTimes,
    this.lockTime,
    this.loginStatus,
    this.timestamp,
    this.success,
    this.portalCode,
    this.source,
    this.newUser,
    this.compliance,
    this.finalSuccess,
    this.message,
    this.currency,
  });

  factory NoAuthOtpVerifyPost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$NoAuthOtpVerifyPost$Response$DataFromJson(json);

  static const toJsonFactory = _$NoAuthOtpVerifyPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$NoAuthOtpVerifyPost$Response$DataToJson(this);

  @JsonKey(name: 'tenantCode')
  final String? tenantCode;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'nickname')
  final String? nickname;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'photo')
  final String? photo;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'signUpType')
  final String? signUpType;
  @JsonKey(name: 'signUpName')
  final String? signUpName;
  @JsonKey(name: 'accessToken')
  final String? accessToken;
  @JsonKey(name: 'refreshToken')
  final String? refreshToken;
  @JsonKey(name: 'expiresIn')
  final double? expiresIn;
  @JsonKey(name: 'tokenType')
  final String? tokenType;
  @JsonKey(name: 'authWay')
  final String? authWay;
  @JsonKey(name: 'remainTimes')
  final String? remainTimes;
  @JsonKey(name: 'lockTime')
  final String? lockTime;
  @JsonKey(name: 'loginStatus')
  final double? loginStatus;
  @JsonKey(name: 'timestamp')
  final double? timestamp;
  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'portalCode')
  final String? portalCode;
  @JsonKey(name: 'source')
  final String? source;
  @JsonKey(name: 'newUser')
  final bool? newUser;
  @JsonKey(name: 'compliance')
  final String? compliance;
  @JsonKey(name: 'finalSuccess')
  final double? finalSuccess;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'currency')
  final String? currency;
  static const fromJsonFactory = _$NoAuthOtpVerifyPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is NoAuthOtpVerifyPost$Response$Data &&
            (identical(other.tenantCode, tenantCode) ||
                const DeepCollectionEquality().equals(
                  other.tenantCode,
                  tenantCode,
                )) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality().equals(
                  other.nickname,
                  nickname,
                )) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality().equals(
                  other.phoneNumber,
                  phoneNumber,
                )) &&
            (identical(other.signUpType, signUpType) ||
                const DeepCollectionEquality().equals(
                  other.signUpType,
                  signUpType,
                )) &&
            (identical(other.signUpName, signUpName) ||
                const DeepCollectionEquality().equals(
                  other.signUpName,
                  signUpName,
                )) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality().equals(
                  other.accessToken,
                  accessToken,
                )) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality().equals(
                  other.refreshToken,
                  refreshToken,
                )) &&
            (identical(other.expiresIn, expiresIn) ||
                const DeepCollectionEquality().equals(
                  other.expiresIn,
                  expiresIn,
                )) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality().equals(
                  other.tokenType,
                  tokenType,
                )) &&
            (identical(other.authWay, authWay) ||
                const DeepCollectionEquality().equals(
                  other.authWay,
                  authWay,
                )) &&
            (identical(other.remainTimes, remainTimes) ||
                const DeepCollectionEquality().equals(
                  other.remainTimes,
                  remainTimes,
                )) &&
            (identical(other.lockTime, lockTime) ||
                const DeepCollectionEquality().equals(
                  other.lockTime,
                  lockTime,
                )) &&
            (identical(other.loginStatus, loginStatus) ||
                const DeepCollectionEquality().equals(
                  other.loginStatus,
                  loginStatus,
                )) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality().equals(
                  other.timestamp,
                  timestamp,
                )) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(
                  other.success,
                  success,
                )) &&
            (identical(other.portalCode, portalCode) ||
                const DeepCollectionEquality().equals(
                  other.portalCode,
                  portalCode,
                )) &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)) &&
            (identical(other.newUser, newUser) ||
                const DeepCollectionEquality().equals(
                  other.newUser,
                  newUser,
                )) &&
            (identical(other.compliance, compliance) ||
                const DeepCollectionEquality().equals(
                  other.compliance,
                  compliance,
                )) &&
            (identical(other.finalSuccess, finalSuccess) ||
                const DeepCollectionEquality().equals(
                  other.finalSuccess,
                  finalSuccess,
                )) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality().equals(
                  other.currency,
                  currency,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tenantCode) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(signUpType) ^
      const DeepCollectionEquality().hash(signUpName) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(expiresIn) ^
      const DeepCollectionEquality().hash(tokenType) ^
      const DeepCollectionEquality().hash(authWay) ^
      const DeepCollectionEquality().hash(remainTimes) ^
      const DeepCollectionEquality().hash(lockTime) ^
      const DeepCollectionEquality().hash(loginStatus) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(portalCode) ^
      const DeepCollectionEquality().hash(source) ^
      const DeepCollectionEquality().hash(newUser) ^
      const DeepCollectionEquality().hash(compliance) ^
      const DeepCollectionEquality().hash(finalSuccess) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(currency) ^
      runtimeType.hashCode;
}

extension $NoAuthOtpVerifyPost$Response$DataExtension
    on NoAuthOtpVerifyPost$Response$Data {
  NoAuthOtpVerifyPost$Response$Data copyWith({
    String? tenantCode,
    String? userId,
    String? nickname,
    String? email,
    String? photo,
    String? phoneNumber,
    String? signUpType,
    String? signUpName,
    String? accessToken,
    String? refreshToken,
    double? expiresIn,
    String? tokenType,
    String? authWay,
    String? remainTimes,
    String? lockTime,
    double? loginStatus,
    double? timestamp,
    bool? success,
    String? portalCode,
    String? source,
    bool? newUser,
    String? compliance,
    double? finalSuccess,
    String? message,
    String? currency,
  }) {
    return NoAuthOtpVerifyPost$Response$Data(
      tenantCode: tenantCode ?? this.tenantCode,
      userId: userId ?? this.userId,
      nickname: nickname ?? this.nickname,
      email: email ?? this.email,
      photo: photo ?? this.photo,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      signUpType: signUpType ?? this.signUpType,
      signUpName: signUpName ?? this.signUpName,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      expiresIn: expiresIn ?? this.expiresIn,
      tokenType: tokenType ?? this.tokenType,
      authWay: authWay ?? this.authWay,
      remainTimes: remainTimes ?? this.remainTimes,
      lockTime: lockTime ?? this.lockTime,
      loginStatus: loginStatus ?? this.loginStatus,
      timestamp: timestamp ?? this.timestamp,
      success: success ?? this.success,
      portalCode: portalCode ?? this.portalCode,
      source: source ?? this.source,
      newUser: newUser ?? this.newUser,
      compliance: compliance ?? this.compliance,
      finalSuccess: finalSuccess ?? this.finalSuccess,
      message: message ?? this.message,
      currency: currency ?? this.currency,
    );
  }

  NoAuthOtpVerifyPost$Response$Data copyWithWrapped({
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? userId,
    Wrapped<String?>? nickname,
    Wrapped<String?>? email,
    Wrapped<String?>? photo,
    Wrapped<String?>? phoneNumber,
    Wrapped<String?>? signUpType,
    Wrapped<String?>? signUpName,
    Wrapped<String?>? accessToken,
    Wrapped<String?>? refreshToken,
    Wrapped<double?>? expiresIn,
    Wrapped<String?>? tokenType,
    Wrapped<String?>? authWay,
    Wrapped<String?>? remainTimes,
    Wrapped<String?>? lockTime,
    Wrapped<double?>? loginStatus,
    Wrapped<double?>? timestamp,
    Wrapped<bool?>? success,
    Wrapped<String?>? portalCode,
    Wrapped<String?>? source,
    Wrapped<bool?>? newUser,
    Wrapped<String?>? compliance,
    Wrapped<double?>? finalSuccess,
    Wrapped<String?>? message,
    Wrapped<String?>? currency,
  }) {
    return NoAuthOtpVerifyPost$Response$Data(
      tenantCode: (tenantCode != null ? tenantCode.value : this.tenantCode),
      userId: (userId != null ? userId.value : this.userId),
      nickname: (nickname != null ? nickname.value : this.nickname),
      email: (email != null ? email.value : this.email),
      photo: (photo != null ? photo.value : this.photo),
      phoneNumber: (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
      signUpType: (signUpType != null ? signUpType.value : this.signUpType),
      signUpName: (signUpName != null ? signUpName.value : this.signUpName),
      accessToken: (accessToken != null ? accessToken.value : this.accessToken),
      refreshToken: (refreshToken != null
          ? refreshToken.value
          : this.refreshToken),
      expiresIn: (expiresIn != null ? expiresIn.value : this.expiresIn),
      tokenType: (tokenType != null ? tokenType.value : this.tokenType),
      authWay: (authWay != null ? authWay.value : this.authWay),
      remainTimes: (remainTimes != null ? remainTimes.value : this.remainTimes),
      lockTime: (lockTime != null ? lockTime.value : this.lockTime),
      loginStatus: (loginStatus != null ? loginStatus.value : this.loginStatus),
      timestamp: (timestamp != null ? timestamp.value : this.timestamp),
      success: (success != null ? success.value : this.success),
      portalCode: (portalCode != null ? portalCode.value : this.portalCode),
      source: (source != null ? source.value : this.source),
      newUser: (newUser != null ? newUser.value : this.newUser),
      compliance: (compliance != null ? compliance.value : this.compliance),
      finalSuccess: (finalSuccess != null
          ? finalSuccess.value
          : this.finalSuccess),
      message: (message != null ? message.value : this.message),
      currency: (currency != null ? currency.value : this.currency),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class NoAuthCommonConfigDefaultSettingGet$Response$Data {
  const NoAuthCommonConfigDefaultSettingGet$Response$Data({
    this.countryCode,
    this.lang,
    this.currency,
  });

  factory NoAuthCommonConfigDefaultSettingGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$NoAuthCommonConfigDefaultSettingGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$NoAuthCommonConfigDefaultSettingGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$NoAuthCommonConfigDefaultSettingGet$Response$DataToJson(this);

  @JsonKey(name: 'countryCode')
  final String? countryCode;
  @JsonKey(name: 'lang')
  final String? lang;
  @JsonKey(name: 'currency')
  final String? currency;
  static const fromJsonFactory =
      _$NoAuthCommonConfigDefaultSettingGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is NoAuthCommonConfigDefaultSettingGet$Response$Data &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality().equals(
                  other.countryCode,
                  countryCode,
                )) &&
            (identical(other.lang, lang) ||
                const DeepCollectionEquality().equals(other.lang, lang)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality().equals(
                  other.currency,
                  currency,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(lang) ^
      const DeepCollectionEquality().hash(currency) ^
      runtimeType.hashCode;
}

extension $NoAuthCommonConfigDefaultSettingGet$Response$DataExtension
    on NoAuthCommonConfigDefaultSettingGet$Response$Data {
  NoAuthCommonConfigDefaultSettingGet$Response$Data copyWith({
    String? countryCode,
    String? lang,
    String? currency,
  }) {
    return NoAuthCommonConfigDefaultSettingGet$Response$Data(
      countryCode: countryCode ?? this.countryCode,
      lang: lang ?? this.lang,
      currency: currency ?? this.currency,
    );
  }

  NoAuthCommonConfigDefaultSettingGet$Response$Data copyWithWrapped({
    Wrapped<String?>? countryCode,
    Wrapped<String?>? lang,
    Wrapped<String?>? currency,
  }) {
    return NoAuthCommonConfigDefaultSettingGet$Response$Data(
      countryCode: (countryCode != null ? countryCode.value : this.countryCode),
      lang: (lang != null ? lang.value : this.lang),
      currency: (currency != null ? currency.value : this.currency),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class FileImUploadPost$Response$Data$Item {
  const FileImUploadPost$Response$Data$Item({
    required this.url,
    required this.fileId,
  });

  factory FileImUploadPost$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$FileImUploadPost$Response$Data$ItemFromJson(json);

  static const toJsonFactory = _$FileImUploadPost$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$FileImUploadPost$Response$Data$ItemToJson(this);

  @JsonKey(name: 'url')
  final String url;
  @JsonKey(name: 'fileId')
  final String fileId;
  static const fromJsonFactory = _$FileImUploadPost$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is FileImUploadPost$Response$Data$Item &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.fileId, fileId) ||
                const DeepCollectionEquality().equals(other.fileId, fileId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(fileId) ^
      runtimeType.hashCode;
}

extension $FileImUploadPost$Response$Data$ItemExtension
    on FileImUploadPost$Response$Data$Item {
  FileImUploadPost$Response$Data$Item copyWith({String? url, String? fileId}) {
    return FileImUploadPost$Response$Data$Item(
      url: url ?? this.url,
      fileId: fileId ?? this.fileId,
    );
  }

  FileImUploadPost$Response$Data$Item copyWithWrapped({
    Wrapped<String>? url,
    Wrapped<String>? fileId,
  }) {
    return FileImUploadPost$Response$Data$Item(
      url: (url != null ? url.value : this.url),
      fileId: (fileId != null ? fileId.value : this.fileId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class FileLogoUploadPost$Response$Data {
  const FileLogoUploadPost$Response$Data({this.url, this.fileId});

  factory FileLogoUploadPost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$FileLogoUploadPost$Response$DataFromJson(json);

  static const toJsonFactory = _$FileLogoUploadPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$FileLogoUploadPost$Response$DataToJson(this);

  @JsonKey(name: 'url')
  final String? url;
  @JsonKey(name: 'fileId')
  final String? fileId;
  static const fromJsonFactory = _$FileLogoUploadPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is FileLogoUploadPost$Response$Data &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.fileId, fileId) ||
                const DeepCollectionEquality().equals(other.fileId, fileId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(fileId) ^
      runtimeType.hashCode;
}

extension $FileLogoUploadPost$Response$DataExtension
    on FileLogoUploadPost$Response$Data {
  FileLogoUploadPost$Response$Data copyWith({String? url, String? fileId}) {
    return FileLogoUploadPost$Response$Data(
      url: url ?? this.url,
      fileId: fileId ?? this.fileId,
    );
  }

  FileLogoUploadPost$Response$Data copyWithWrapped({
    Wrapped<String?>? url,
    Wrapped<String?>? fileId,
  }) {
    return FileLogoUploadPost$Response$Data(
      url: (url != null ? url.value : this.url),
      fileId: (fileId != null ? fileId.value : this.fileId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserCouponCountGet$Response$Data {
  const UserCouponCountGet$Response$Data({
    this.total,
    this.unUsed,
    this.locked,
    this.used,
    this.invalid,
  });

  factory UserCouponCountGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCouponCountGet$Response$DataFromJson(json);

  static const toJsonFactory = _$UserCouponCountGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserCouponCountGet$Response$DataToJson(this);

  @JsonKey(name: 'total')
  final String? total;
  @JsonKey(name: 'unUsed')
  final String? unUsed;
  @JsonKey(name: 'locked')
  final String? locked;
  @JsonKey(name: 'used')
  final String? used;
  @JsonKey(name: 'invalid')
  final String? invalid;
  static const fromJsonFactory = _$UserCouponCountGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponCountGet$Response$Data &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.unUsed, unUsed) ||
                const DeepCollectionEquality().equals(other.unUsed, unUsed)) &&
            (identical(other.locked, locked) ||
                const DeepCollectionEquality().equals(other.locked, locked)) &&
            (identical(other.used, used) ||
                const DeepCollectionEquality().equals(other.used, used)) &&
            (identical(other.invalid, invalid) ||
                const DeepCollectionEquality().equals(other.invalid, invalid)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(unUsed) ^
      const DeepCollectionEquality().hash(locked) ^
      const DeepCollectionEquality().hash(used) ^
      const DeepCollectionEquality().hash(invalid) ^
      runtimeType.hashCode;
}

extension $UserCouponCountGet$Response$DataExtension
    on UserCouponCountGet$Response$Data {
  UserCouponCountGet$Response$Data copyWith({
    String? total,
    String? unUsed,
    String? locked,
    String? used,
    String? invalid,
  }) {
    return UserCouponCountGet$Response$Data(
      total: total ?? this.total,
      unUsed: unUsed ?? this.unUsed,
      locked: locked ?? this.locked,
      used: used ?? this.used,
      invalid: invalid ?? this.invalid,
    );
  }

  UserCouponCountGet$Response$Data copyWithWrapped({
    Wrapped<String?>? total,
    Wrapped<String?>? unUsed,
    Wrapped<String?>? locked,
    Wrapped<String?>? used,
    Wrapped<String?>? invalid,
  }) {
    return UserCouponCountGet$Response$Data(
      total: (total != null ? total.value : this.total),
      unUsed: (unUsed != null ? unUsed.value : this.unUsed),
      locked: (locked != null ? locked.value : this.locked),
      used: (used != null ? used.value : this.used),
      invalid: (invalid != null ? invalid.value : this.invalid),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserCouponActivityInfoGet$Response$Data {
  const UserCouponActivityInfoGet$Response$Data({
    this.couponList,
    this.received,
  });

  factory UserCouponActivityInfoGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCouponActivityInfoGet$Response$DataFromJson(json);

  static const toJsonFactory = _$UserCouponActivityInfoGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserCouponActivityInfoGet$Response$DataToJson(this);

  @JsonKey(name: 'couponList')
  final List<UserCouponActivityInfoGet$Response$Data$CouponList$Item>?
  couponList;
  @JsonKey(name: 'received')
  final bool? received;
  static const fromJsonFactory =
      _$UserCouponActivityInfoGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponActivityInfoGet$Response$Data &&
            (identical(other.couponList, couponList) ||
                const DeepCollectionEquality().equals(
                  other.couponList,
                  couponList,
                )) &&
            (identical(other.received, received) ||
                const DeepCollectionEquality().equals(
                  other.received,
                  received,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(couponList) ^
      const DeepCollectionEquality().hash(received) ^
      runtimeType.hashCode;
}

extension $UserCouponActivityInfoGet$Response$DataExtension
    on UserCouponActivityInfoGet$Response$Data {
  UserCouponActivityInfoGet$Response$Data copyWith({
    List<UserCouponActivityInfoGet$Response$Data$CouponList$Item>? couponList,
    bool? received,
  }) {
    return UserCouponActivityInfoGet$Response$Data(
      couponList: couponList ?? this.couponList,
      received: received ?? this.received,
    );
  }

  UserCouponActivityInfoGet$Response$Data copyWithWrapped({
    Wrapped<List<UserCouponActivityInfoGet$Response$Data$CouponList$Item>?>?
    couponList,
    Wrapped<bool?>? received,
  }) {
    return UserCouponActivityInfoGet$Response$Data(
      couponList: (couponList != null ? couponList.value : this.couponList),
      received: (received != null ? received.value : this.received),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserCouponCode2CouponGet$Response$Data {
  const UserCouponCode2CouponGet$Response$Data({
    this.userId,
    this.tenantCode,
    this.couponCode,
    this.couponTitle,
    this.isUsed,
    this.gmtInvalid,
    this.type,
    this.discount,
    this.limitAmount,
    this.currency,
    this.discountTarget,
    this.limitAmountTarget,
    this.currencyTarget,
    this.couponImage,
  });

  factory UserCouponCode2CouponGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCouponCode2CouponGet$Response$DataFromJson(json);

  static const toJsonFactory = _$UserCouponCode2CouponGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserCouponCode2CouponGet$Response$DataToJson(this);

  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'tenantCode')
  final String? tenantCode;
  @JsonKey(name: 'couponCode')
  final String? couponCode;
  @JsonKey(name: 'couponTitle')
  final String? couponTitle;
  @JsonKey(name: 'isUsed')
  final double? isUsed;
  @JsonKey(name: 'gmtInvalid')
  final String? gmtInvalid;
  @JsonKey(name: 'type')
  final double? type;
  @JsonKey(name: 'discount')
  final String? discount;
  @JsonKey(name: 'limitAmount')
  final String? limitAmount;
  @JsonKey(name: 'currency')
  final String? currency;
  @JsonKey(name: 'discountTarget')
  final String? discountTarget;
  @JsonKey(name: 'limitAmountTarget')
  final String? limitAmountTarget;
  @JsonKey(name: 'currencyTarget')
  final String? currencyTarget;
  @JsonKey(name: 'couponImage')
  final String? couponImage;
  static const fromJsonFactory =
      _$UserCouponCode2CouponGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponCode2CouponGet$Response$Data &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.tenantCode, tenantCode) ||
                const DeepCollectionEquality().equals(
                  other.tenantCode,
                  tenantCode,
                )) &&
            (identical(other.couponCode, couponCode) ||
                const DeepCollectionEquality().equals(
                  other.couponCode,
                  couponCode,
                )) &&
            (identical(other.couponTitle, couponTitle) ||
                const DeepCollectionEquality().equals(
                  other.couponTitle,
                  couponTitle,
                )) &&
            (identical(other.isUsed, isUsed) ||
                const DeepCollectionEquality().equals(other.isUsed, isUsed)) &&
            (identical(other.gmtInvalid, gmtInvalid) ||
                const DeepCollectionEquality().equals(
                  other.gmtInvalid,
                  gmtInvalid,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality().equals(
                  other.discount,
                  discount,
                )) &&
            (identical(other.limitAmount, limitAmount) ||
                const DeepCollectionEquality().equals(
                  other.limitAmount,
                  limitAmount,
                )) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality().equals(
                  other.currency,
                  currency,
                )) &&
            (identical(other.discountTarget, discountTarget) ||
                const DeepCollectionEquality().equals(
                  other.discountTarget,
                  discountTarget,
                )) &&
            (identical(other.limitAmountTarget, limitAmountTarget) ||
                const DeepCollectionEquality().equals(
                  other.limitAmountTarget,
                  limitAmountTarget,
                )) &&
            (identical(other.currencyTarget, currencyTarget) ||
                const DeepCollectionEquality().equals(
                  other.currencyTarget,
                  currencyTarget,
                )) &&
            (identical(other.couponImage, couponImage) ||
                const DeepCollectionEquality().equals(
                  other.couponImage,
                  couponImage,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(tenantCode) ^
      const DeepCollectionEquality().hash(couponCode) ^
      const DeepCollectionEquality().hash(couponTitle) ^
      const DeepCollectionEquality().hash(isUsed) ^
      const DeepCollectionEquality().hash(gmtInvalid) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(limitAmount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(discountTarget) ^
      const DeepCollectionEquality().hash(limitAmountTarget) ^
      const DeepCollectionEquality().hash(currencyTarget) ^
      const DeepCollectionEquality().hash(couponImage) ^
      runtimeType.hashCode;
}

extension $UserCouponCode2CouponGet$Response$DataExtension
    on UserCouponCode2CouponGet$Response$Data {
  UserCouponCode2CouponGet$Response$Data copyWith({
    String? userId,
    String? tenantCode,
    String? couponCode,
    String? couponTitle,
    double? isUsed,
    String? gmtInvalid,
    double? type,
    String? discount,
    String? limitAmount,
    String? currency,
    String? discountTarget,
    String? limitAmountTarget,
    String? currencyTarget,
    String? couponImage,
  }) {
    return UserCouponCode2CouponGet$Response$Data(
      userId: userId ?? this.userId,
      tenantCode: tenantCode ?? this.tenantCode,
      couponCode: couponCode ?? this.couponCode,
      couponTitle: couponTitle ?? this.couponTitle,
      isUsed: isUsed ?? this.isUsed,
      gmtInvalid: gmtInvalid ?? this.gmtInvalid,
      type: type ?? this.type,
      discount: discount ?? this.discount,
      limitAmount: limitAmount ?? this.limitAmount,
      currency: currency ?? this.currency,
      discountTarget: discountTarget ?? this.discountTarget,
      limitAmountTarget: limitAmountTarget ?? this.limitAmountTarget,
      currencyTarget: currencyTarget ?? this.currencyTarget,
      couponImage: couponImage ?? this.couponImage,
    );
  }

  UserCouponCode2CouponGet$Response$Data copyWithWrapped({
    Wrapped<String?>? userId,
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? couponCode,
    Wrapped<String?>? couponTitle,
    Wrapped<double?>? isUsed,
    Wrapped<String?>? gmtInvalid,
    Wrapped<double?>? type,
    Wrapped<String?>? discount,
    Wrapped<String?>? limitAmount,
    Wrapped<String?>? currency,
    Wrapped<String?>? discountTarget,
    Wrapped<String?>? limitAmountTarget,
    Wrapped<String?>? currencyTarget,
    Wrapped<String?>? couponImage,
  }) {
    return UserCouponCode2CouponGet$Response$Data(
      userId: (userId != null ? userId.value : this.userId),
      tenantCode: (tenantCode != null ? tenantCode.value : this.tenantCode),
      couponCode: (couponCode != null ? couponCode.value : this.couponCode),
      couponTitle: (couponTitle != null ? couponTitle.value : this.couponTitle),
      isUsed: (isUsed != null ? isUsed.value : this.isUsed),
      gmtInvalid: (gmtInvalid != null ? gmtInvalid.value : this.gmtInvalid),
      type: (type != null ? type.value : this.type),
      discount: (discount != null ? discount.value : this.discount),
      limitAmount: (limitAmount != null ? limitAmount.value : this.limitAmount),
      currency: (currency != null ? currency.value : this.currency),
      discountTarget: (discountTarget != null
          ? discountTarget.value
          : this.discountTarget),
      limitAmountTarget: (limitAmountTarget != null
          ? limitAmountTarget.value
          : this.limitAmountTarget),
      currencyTarget: (currencyTarget != null
          ? currencyTarget.value
          : this.currencyTarget),
      couponImage: (couponImage != null ? couponImage.value : this.couponImage),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserCouponActivityInfosGet$Response$Data$Item {
  const UserCouponActivityInfosGet$Response$Data$Item({
    this.sourceCode,
    this.received,
    this.couponList,
  });

  factory UserCouponActivityInfosGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCouponActivityInfosGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$UserCouponActivityInfosGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserCouponActivityInfosGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'sourceCode')
  final String? sourceCode;
  @JsonKey(name: 'received')
  final bool? received;
  @JsonKey(name: 'couponList')
  final List<UserCouponActivityInfosGet$Response$Data$Item$CouponList$Item>?
  couponList;
  static const fromJsonFactory =
      _$UserCouponActivityInfosGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponActivityInfosGet$Response$Data$Item &&
            (identical(other.sourceCode, sourceCode) ||
                const DeepCollectionEquality().equals(
                  other.sourceCode,
                  sourceCode,
                )) &&
            (identical(other.received, received) ||
                const DeepCollectionEquality().equals(
                  other.received,
                  received,
                )) &&
            (identical(other.couponList, couponList) ||
                const DeepCollectionEquality().equals(
                  other.couponList,
                  couponList,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(sourceCode) ^
      const DeepCollectionEquality().hash(received) ^
      const DeepCollectionEquality().hash(couponList) ^
      runtimeType.hashCode;
}

extension $UserCouponActivityInfosGet$Response$Data$ItemExtension
    on UserCouponActivityInfosGet$Response$Data$Item {
  UserCouponActivityInfosGet$Response$Data$Item copyWith({
    String? sourceCode,
    bool? received,
    List<UserCouponActivityInfosGet$Response$Data$Item$CouponList$Item>?
    couponList,
  }) {
    return UserCouponActivityInfosGet$Response$Data$Item(
      sourceCode: sourceCode ?? this.sourceCode,
      received: received ?? this.received,
      couponList: couponList ?? this.couponList,
    );
  }

  UserCouponActivityInfosGet$Response$Data$Item copyWithWrapped({
    Wrapped<String?>? sourceCode,
    Wrapped<bool?>? received,
    Wrapped<
      List<UserCouponActivityInfosGet$Response$Data$Item$CouponList$Item>?
    >?
    couponList,
  }) {
    return UserCouponActivityInfosGet$Response$Data$Item(
      sourceCode: (sourceCode != null ? sourceCode.value : this.sourceCode),
      received: (received != null ? received.value : this.received),
      couponList: (couponList != null ? couponList.value : this.couponList),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserCouponGetListGet$Response$Data$Item {
  const UserCouponGetListGet$Response$Data$Item({
    this.sourceCode,
    this.userCouponDtos,
  });

  factory UserCouponGetListGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCouponGetListGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory = _$UserCouponGetListGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserCouponGetListGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'sourceCode')
  final String? sourceCode;
  @JsonKey(name: 'userCouponDtos')
  final List<UserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item>?
  userCouponDtos;
  static const fromJsonFactory =
      _$UserCouponGetListGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponGetListGet$Response$Data$Item &&
            (identical(other.sourceCode, sourceCode) ||
                const DeepCollectionEquality().equals(
                  other.sourceCode,
                  sourceCode,
                )) &&
            (identical(other.userCouponDtos, userCouponDtos) ||
                const DeepCollectionEquality().equals(
                  other.userCouponDtos,
                  userCouponDtos,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(sourceCode) ^
      const DeepCollectionEquality().hash(userCouponDtos) ^
      runtimeType.hashCode;
}

extension $UserCouponGetListGet$Response$Data$ItemExtension
    on UserCouponGetListGet$Response$Data$Item {
  UserCouponGetListGet$Response$Data$Item copyWith({
    String? sourceCode,
    List<UserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item>?
    userCouponDtos,
  }) {
    return UserCouponGetListGet$Response$Data$Item(
      sourceCode: sourceCode ?? this.sourceCode,
      userCouponDtos: userCouponDtos ?? this.userCouponDtos,
    );
  }

  UserCouponGetListGet$Response$Data$Item copyWithWrapped({
    Wrapped<String?>? sourceCode,
    Wrapped<List<UserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item>?>?
    userCouponDtos,
  }) {
    return UserCouponGetListGet$Response$Data$Item(
      sourceCode: (sourceCode != null ? sourceCode.value : this.sourceCode),
      userCouponDtos: (userCouponDtos != null
          ? userCouponDtos.value
          : this.userCouponDtos),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserCouponNoAuthActivityInfoGet$Response$Data {
  const UserCouponNoAuthActivityInfoGet$Response$Data({
    this.couponList,
    this.received,
  });

  factory UserCouponNoAuthActivityInfoGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCouponNoAuthActivityInfoGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$UserCouponNoAuthActivityInfoGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserCouponNoAuthActivityInfoGet$Response$DataToJson(this);

  @JsonKey(name: 'couponList')
  final List<UserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item>?
  couponList;
  @JsonKey(name: 'received')
  final bool? received;
  static const fromJsonFactory =
      _$UserCouponNoAuthActivityInfoGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponNoAuthActivityInfoGet$Response$Data &&
            (identical(other.couponList, couponList) ||
                const DeepCollectionEquality().equals(
                  other.couponList,
                  couponList,
                )) &&
            (identical(other.received, received) ||
                const DeepCollectionEquality().equals(
                  other.received,
                  received,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(couponList) ^
      const DeepCollectionEquality().hash(received) ^
      runtimeType.hashCode;
}

extension $UserCouponNoAuthActivityInfoGet$Response$DataExtension
    on UserCouponNoAuthActivityInfoGet$Response$Data {
  UserCouponNoAuthActivityInfoGet$Response$Data copyWith({
    List<UserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item>?
    couponList,
    bool? received,
  }) {
    return UserCouponNoAuthActivityInfoGet$Response$Data(
      couponList: couponList ?? this.couponList,
      received: received ?? this.received,
    );
  }

  UserCouponNoAuthActivityInfoGet$Response$Data copyWithWrapped({
    Wrapped<
      List<UserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item>?
    >?
    couponList,
    Wrapped<bool?>? received,
  }) {
    return UserCouponNoAuthActivityInfoGet$Response$Data(
      couponList: (couponList != null ? couponList.value : this.couponList),
      received: (received != null ? received.value : this.received),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserCouponGetCouponByActivityPost$Response$Data$Item {
  const UserCouponGetCouponByActivityPost$Response$Data$Item({
    this.userId,
    this.tenantCode,
    this.couponCode,
    this.couponTitle,
    this.isUsed,
    this.gmtInvalid,
    this.type,
    this.discount,
    this.limitAmount,
    this.currency,
    this.discountTarget,
    this.limitAmountTarget,
    this.currencyTarget,
    this.couponImage,
  });

  factory UserCouponGetCouponByActivityPost$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCouponGetCouponByActivityPost$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$UserCouponGetCouponByActivityPost$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserCouponGetCouponByActivityPost$Response$Data$ItemToJson(this);

  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'tenantCode')
  final String? tenantCode;
  @JsonKey(name: 'couponCode')
  final String? couponCode;
  @JsonKey(name: 'couponTitle')
  final String? couponTitle;
  @JsonKey(name: 'isUsed')
  final double? isUsed;
  @JsonKey(name: 'gmtInvalid')
  final String? gmtInvalid;
  @JsonKey(name: 'type')
  final double? type;
  @JsonKey(name: 'discount')
  final String? discount;
  @JsonKey(name: 'limitAmount')
  final String? limitAmount;
  @JsonKey(name: 'currency')
  final String? currency;
  @JsonKey(name: 'discountTarget')
  final String? discountTarget;
  @JsonKey(name: 'limitAmountTarget')
  final String? limitAmountTarget;
  @JsonKey(name: 'currencyTarget')
  final String? currencyTarget;
  @JsonKey(name: 'couponImage')
  final String? couponImage;
  static const fromJsonFactory =
      _$UserCouponGetCouponByActivityPost$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponGetCouponByActivityPost$Response$Data$Item &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.tenantCode, tenantCode) ||
                const DeepCollectionEquality().equals(
                  other.tenantCode,
                  tenantCode,
                )) &&
            (identical(other.couponCode, couponCode) ||
                const DeepCollectionEquality().equals(
                  other.couponCode,
                  couponCode,
                )) &&
            (identical(other.couponTitle, couponTitle) ||
                const DeepCollectionEquality().equals(
                  other.couponTitle,
                  couponTitle,
                )) &&
            (identical(other.isUsed, isUsed) ||
                const DeepCollectionEquality().equals(other.isUsed, isUsed)) &&
            (identical(other.gmtInvalid, gmtInvalid) ||
                const DeepCollectionEquality().equals(
                  other.gmtInvalid,
                  gmtInvalid,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality().equals(
                  other.discount,
                  discount,
                )) &&
            (identical(other.limitAmount, limitAmount) ||
                const DeepCollectionEquality().equals(
                  other.limitAmount,
                  limitAmount,
                )) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality().equals(
                  other.currency,
                  currency,
                )) &&
            (identical(other.discountTarget, discountTarget) ||
                const DeepCollectionEquality().equals(
                  other.discountTarget,
                  discountTarget,
                )) &&
            (identical(other.limitAmountTarget, limitAmountTarget) ||
                const DeepCollectionEquality().equals(
                  other.limitAmountTarget,
                  limitAmountTarget,
                )) &&
            (identical(other.currencyTarget, currencyTarget) ||
                const DeepCollectionEquality().equals(
                  other.currencyTarget,
                  currencyTarget,
                )) &&
            (identical(other.couponImage, couponImage) ||
                const DeepCollectionEquality().equals(
                  other.couponImage,
                  couponImage,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(tenantCode) ^
      const DeepCollectionEquality().hash(couponCode) ^
      const DeepCollectionEquality().hash(couponTitle) ^
      const DeepCollectionEquality().hash(isUsed) ^
      const DeepCollectionEquality().hash(gmtInvalid) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(limitAmount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(discountTarget) ^
      const DeepCollectionEquality().hash(limitAmountTarget) ^
      const DeepCollectionEquality().hash(currencyTarget) ^
      const DeepCollectionEquality().hash(couponImage) ^
      runtimeType.hashCode;
}

extension $UserCouponGetCouponByActivityPost$Response$Data$ItemExtension
    on UserCouponGetCouponByActivityPost$Response$Data$Item {
  UserCouponGetCouponByActivityPost$Response$Data$Item copyWith({
    String? userId,
    String? tenantCode,
    String? couponCode,
    String? couponTitle,
    double? isUsed,
    String? gmtInvalid,
    double? type,
    String? discount,
    String? limitAmount,
    String? currency,
    String? discountTarget,
    String? limitAmountTarget,
    String? currencyTarget,
    String? couponImage,
  }) {
    return UserCouponGetCouponByActivityPost$Response$Data$Item(
      userId: userId ?? this.userId,
      tenantCode: tenantCode ?? this.tenantCode,
      couponCode: couponCode ?? this.couponCode,
      couponTitle: couponTitle ?? this.couponTitle,
      isUsed: isUsed ?? this.isUsed,
      gmtInvalid: gmtInvalid ?? this.gmtInvalid,
      type: type ?? this.type,
      discount: discount ?? this.discount,
      limitAmount: limitAmount ?? this.limitAmount,
      currency: currency ?? this.currency,
      discountTarget: discountTarget ?? this.discountTarget,
      limitAmountTarget: limitAmountTarget ?? this.limitAmountTarget,
      currencyTarget: currencyTarget ?? this.currencyTarget,
      couponImage: couponImage ?? this.couponImage,
    );
  }

  UserCouponGetCouponByActivityPost$Response$Data$Item copyWithWrapped({
    Wrapped<String?>? userId,
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? couponCode,
    Wrapped<String?>? couponTitle,
    Wrapped<double?>? isUsed,
    Wrapped<String?>? gmtInvalid,
    Wrapped<double?>? type,
    Wrapped<String?>? discount,
    Wrapped<String?>? limitAmount,
    Wrapped<String?>? currency,
    Wrapped<String?>? discountTarget,
    Wrapped<String?>? limitAmountTarget,
    Wrapped<String?>? currencyTarget,
    Wrapped<String?>? couponImage,
  }) {
    return UserCouponGetCouponByActivityPost$Response$Data$Item(
      userId: (userId != null ? userId.value : this.userId),
      tenantCode: (tenantCode != null ? tenantCode.value : this.tenantCode),
      couponCode: (couponCode != null ? couponCode.value : this.couponCode),
      couponTitle: (couponTitle != null ? couponTitle.value : this.couponTitle),
      isUsed: (isUsed != null ? isUsed.value : this.isUsed),
      gmtInvalid: (gmtInvalid != null ? gmtInvalid.value : this.gmtInvalid),
      type: (type != null ? type.value : this.type),
      discount: (discount != null ? discount.value : this.discount),
      limitAmount: (limitAmount != null ? limitAmount.value : this.limitAmount),
      currency: (currency != null ? currency.value : this.currency),
      discountTarget: (discountTarget != null
          ? discountTarget.value
          : this.discountTarget),
      limitAmountTarget: (limitAmountTarget != null
          ? limitAmountTarget.value
          : this.limitAmountTarget),
      currencyTarget: (currencyTarget != null
          ? currencyTarget.value
          : this.currencyTarget),
      couponImage: (couponImage != null ? couponImage.value : this.couponImage),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserCouponGetGet$Response$Data$Item {
  const UserCouponGetGet$Response$Data$Item({
    required this.userId,
    required this.tenantCode,
    required this.couponCode,
    this.couponTitle,
    this.isUsed,
    this.gmtInvalid,
    this.type,
    this.discount,
    this.limitAmount,
    this.currency,
    this.discountTarget,
    this.limitAmountTarget,
    this.currencyTarget,
    this.couponImage,
    required this.couponStatus,
    this.msgInfo,
  });

  factory UserCouponGetGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCouponGetGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory = _$UserCouponGetGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserCouponGetGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'userId')
  final String userId;
  @JsonKey(name: 'tenantCode')
  final String tenantCode;
  @JsonKey(name: 'couponCode')
  final String couponCode;
  @JsonKey(name: 'couponTitle')
  final String? couponTitle;
  @JsonKey(name: 'isUsed')
  final double? isUsed;
  @JsonKey(name: 'gmtInvalid')
  final String? gmtInvalid;
  @JsonKey(name: 'type')
  final double? type;
  @JsonKey(name: 'discount')
  final String? discount;
  @JsonKey(name: 'limitAmount')
  final String? limitAmount;
  @JsonKey(name: 'currency')
  final String? currency;
  @JsonKey(name: 'discountTarget')
  final String? discountTarget;
  @JsonKey(name: 'limitAmountTarget')
  final String? limitAmountTarget;
  @JsonKey(name: 'currencyTarget')
  final String? currencyTarget;
  @JsonKey(name: 'couponImage')
  final String? couponImage;
  @JsonKey(name: 'couponStatus')
  final String couponStatus;
  @JsonKey(name: 'msgInfo')
  final UserCouponGetGet$Response$Data$Item$MsgInfo? msgInfo;
  static const fromJsonFactory = _$UserCouponGetGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponGetGet$Response$Data$Item &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.tenantCode, tenantCode) ||
                const DeepCollectionEquality().equals(
                  other.tenantCode,
                  tenantCode,
                )) &&
            (identical(other.couponCode, couponCode) ||
                const DeepCollectionEquality().equals(
                  other.couponCode,
                  couponCode,
                )) &&
            (identical(other.couponTitle, couponTitle) ||
                const DeepCollectionEquality().equals(
                  other.couponTitle,
                  couponTitle,
                )) &&
            (identical(other.isUsed, isUsed) ||
                const DeepCollectionEquality().equals(other.isUsed, isUsed)) &&
            (identical(other.gmtInvalid, gmtInvalid) ||
                const DeepCollectionEquality().equals(
                  other.gmtInvalid,
                  gmtInvalid,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality().equals(
                  other.discount,
                  discount,
                )) &&
            (identical(other.limitAmount, limitAmount) ||
                const DeepCollectionEquality().equals(
                  other.limitAmount,
                  limitAmount,
                )) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality().equals(
                  other.currency,
                  currency,
                )) &&
            (identical(other.discountTarget, discountTarget) ||
                const DeepCollectionEquality().equals(
                  other.discountTarget,
                  discountTarget,
                )) &&
            (identical(other.limitAmountTarget, limitAmountTarget) ||
                const DeepCollectionEquality().equals(
                  other.limitAmountTarget,
                  limitAmountTarget,
                )) &&
            (identical(other.currencyTarget, currencyTarget) ||
                const DeepCollectionEquality().equals(
                  other.currencyTarget,
                  currencyTarget,
                )) &&
            (identical(other.couponImage, couponImage) ||
                const DeepCollectionEquality().equals(
                  other.couponImage,
                  couponImage,
                )) &&
            (identical(other.couponStatus, couponStatus) ||
                const DeepCollectionEquality().equals(
                  other.couponStatus,
                  couponStatus,
                )) &&
            (identical(other.msgInfo, msgInfo) ||
                const DeepCollectionEquality().equals(other.msgInfo, msgInfo)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(tenantCode) ^
      const DeepCollectionEquality().hash(couponCode) ^
      const DeepCollectionEquality().hash(couponTitle) ^
      const DeepCollectionEquality().hash(isUsed) ^
      const DeepCollectionEquality().hash(gmtInvalid) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(limitAmount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(discountTarget) ^
      const DeepCollectionEquality().hash(limitAmountTarget) ^
      const DeepCollectionEquality().hash(currencyTarget) ^
      const DeepCollectionEquality().hash(couponImage) ^
      const DeepCollectionEquality().hash(couponStatus) ^
      const DeepCollectionEquality().hash(msgInfo) ^
      runtimeType.hashCode;
}

extension $UserCouponGetGet$Response$Data$ItemExtension
    on UserCouponGetGet$Response$Data$Item {
  UserCouponGetGet$Response$Data$Item copyWith({
    String? userId,
    String? tenantCode,
    String? couponCode,
    String? couponTitle,
    double? isUsed,
    String? gmtInvalid,
    double? type,
    String? discount,
    String? limitAmount,
    String? currency,
    String? discountTarget,
    String? limitAmountTarget,
    String? currencyTarget,
    String? couponImage,
    String? couponStatus,
    UserCouponGetGet$Response$Data$Item$MsgInfo? msgInfo,
  }) {
    return UserCouponGetGet$Response$Data$Item(
      userId: userId ?? this.userId,
      tenantCode: tenantCode ?? this.tenantCode,
      couponCode: couponCode ?? this.couponCode,
      couponTitle: couponTitle ?? this.couponTitle,
      isUsed: isUsed ?? this.isUsed,
      gmtInvalid: gmtInvalid ?? this.gmtInvalid,
      type: type ?? this.type,
      discount: discount ?? this.discount,
      limitAmount: limitAmount ?? this.limitAmount,
      currency: currency ?? this.currency,
      discountTarget: discountTarget ?? this.discountTarget,
      limitAmountTarget: limitAmountTarget ?? this.limitAmountTarget,
      currencyTarget: currencyTarget ?? this.currencyTarget,
      couponImage: couponImage ?? this.couponImage,
      couponStatus: couponStatus ?? this.couponStatus,
      msgInfo: msgInfo ?? this.msgInfo,
    );
  }

  UserCouponGetGet$Response$Data$Item copyWithWrapped({
    Wrapped<String>? userId,
    Wrapped<String>? tenantCode,
    Wrapped<String>? couponCode,
    Wrapped<String?>? couponTitle,
    Wrapped<double?>? isUsed,
    Wrapped<String?>? gmtInvalid,
    Wrapped<double?>? type,
    Wrapped<String?>? discount,
    Wrapped<String?>? limitAmount,
    Wrapped<String?>? currency,
    Wrapped<String?>? discountTarget,
    Wrapped<String?>? limitAmountTarget,
    Wrapped<String?>? currencyTarget,
    Wrapped<String?>? couponImage,
    Wrapped<String>? couponStatus,
    Wrapped<UserCouponGetGet$Response$Data$Item$MsgInfo?>? msgInfo,
  }) {
    return UserCouponGetGet$Response$Data$Item(
      userId: (userId != null ? userId.value : this.userId),
      tenantCode: (tenantCode != null ? tenantCode.value : this.tenantCode),
      couponCode: (couponCode != null ? couponCode.value : this.couponCode),
      couponTitle: (couponTitle != null ? couponTitle.value : this.couponTitle),
      isUsed: (isUsed != null ? isUsed.value : this.isUsed),
      gmtInvalid: (gmtInvalid != null ? gmtInvalid.value : this.gmtInvalid),
      type: (type != null ? type.value : this.type),
      discount: (discount != null ? discount.value : this.discount),
      limitAmount: (limitAmount != null ? limitAmount.value : this.limitAmount),
      currency: (currency != null ? currency.value : this.currency),
      discountTarget: (discountTarget != null
          ? discountTarget.value
          : this.discountTarget),
      limitAmountTarget: (limitAmountTarget != null
          ? limitAmountTarget.value
          : this.limitAmountTarget),
      currencyTarget: (currencyTarget != null
          ? currencyTarget.value
          : this.currencyTarget),
      couponImage: (couponImage != null ? couponImage.value : this.couponImage),
      couponStatus: (couponStatus != null
          ? couponStatus.value
          : this.couponStatus),
      msgInfo: (msgInfo != null ? msgInfo.value : this.msgInfo),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImGetInfoPost$Response$Data {
  const ImGetInfoPost$Response$Data({
    required this.api,
    required this.longConnectApi,
    required this.wsApi,
    required this.longConnectKeep,
    required this.whiteList,
    required this.uid,
    this.appId,
    this.name,
    this.username,
    this.sex,
    this.category,
    this.shortNo,
    this.zone,
    this.phone,
    required this.token,
    this.chatPwd,
    this.lockScreenPwd,
    this.lockAfterMinute,
    this.setting,
    this.rsaPublicKey,
    this.shortStatus,
    this.msgExpireSecond,
    required this.showStatus,
  });

  factory ImGetInfoPost$Response$Data.fromJson(Map<String, dynamic> json) =>
      _$ImGetInfoPost$Response$DataFromJson(json);

  static const toJsonFactory = _$ImGetInfoPost$Response$DataToJson;
  Map<String, dynamic> toJson() => _$ImGetInfoPost$Response$DataToJson(this);

  @JsonKey(name: 'api')
  final String api;
  @JsonKey(name: 'longConnectApi')
  final String longConnectApi;
  @JsonKey(name: 'wsApi')
  final String wsApi;
  @JsonKey(name: 'longConnectKeep')
  final bool longConnectKeep;
  @JsonKey(name: 'whiteList')
  final List<ImGetInfoPost$Response$Data$WhiteList$Item> whiteList;
  @JsonKey(name: 'uid')
  final String uid;
  @JsonKey(name: 'app_id')
  final String? appId;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'username')
  final String? username;
  @JsonKey(name: 'sex')
  final double? sex;
  @JsonKey(name: 'category')
  final String? category;
  @JsonKey(name: 'short_no')
  final String? shortNo;
  @JsonKey(name: 'zone')
  final String? zone;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'token')
  final String token;
  @JsonKey(name: 'chat_pwd')
  final String? chatPwd;
  @JsonKey(name: 'lock_screen_pwd')
  final String? lockScreenPwd;
  @JsonKey(name: 'lock_after_minute')
  final double? lockAfterMinute;
  @JsonKey(name: 'setting')
  final ImGetInfoPost$Response$Data$Setting? setting;
  @JsonKey(name: 'rsa_public_key')
  final String? rsaPublicKey;
  @JsonKey(name: 'short_status')
  final double? shortStatus;
  @JsonKey(name: 'msg_expire_second')
  final double? msgExpireSecond;
  @JsonKey(name: 'showStatus')
  final double showStatus;
  static const fromJsonFactory = _$ImGetInfoPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImGetInfoPost$Response$Data &&
            (identical(other.api, api) ||
                const DeepCollectionEquality().equals(other.api, api)) &&
            (identical(other.longConnectApi, longConnectApi) ||
                const DeepCollectionEquality().equals(
                  other.longConnectApi,
                  longConnectApi,
                )) &&
            (identical(other.wsApi, wsApi) ||
                const DeepCollectionEquality().equals(other.wsApi, wsApi)) &&
            (identical(other.longConnectKeep, longConnectKeep) ||
                const DeepCollectionEquality().equals(
                  other.longConnectKeep,
                  longConnectKeep,
                )) &&
            (identical(other.whiteList, whiteList) ||
                const DeepCollectionEquality().equals(
                  other.whiteList,
                  whiteList,
                )) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.appId, appId) ||
                const DeepCollectionEquality().equals(other.appId, appId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality().equals(
                  other.username,
                  username,
                )) &&
            (identical(other.sex, sex) ||
                const DeepCollectionEquality().equals(other.sex, sex)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality().equals(
                  other.category,
                  category,
                )) &&
            (identical(other.shortNo, shortNo) ||
                const DeepCollectionEquality().equals(
                  other.shortNo,
                  shortNo,
                )) &&
            (identical(other.zone, zone) ||
                const DeepCollectionEquality().equals(other.zone, zone)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.chatPwd, chatPwd) ||
                const DeepCollectionEquality().equals(
                  other.chatPwd,
                  chatPwd,
                )) &&
            (identical(other.lockScreenPwd, lockScreenPwd) ||
                const DeepCollectionEquality().equals(
                  other.lockScreenPwd,
                  lockScreenPwd,
                )) &&
            (identical(other.lockAfterMinute, lockAfterMinute) ||
                const DeepCollectionEquality().equals(
                  other.lockAfterMinute,
                  lockAfterMinute,
                )) &&
            (identical(other.setting, setting) ||
                const DeepCollectionEquality().equals(
                  other.setting,
                  setting,
                )) &&
            (identical(other.rsaPublicKey, rsaPublicKey) ||
                const DeepCollectionEquality().equals(
                  other.rsaPublicKey,
                  rsaPublicKey,
                )) &&
            (identical(other.shortStatus, shortStatus) ||
                const DeepCollectionEquality().equals(
                  other.shortStatus,
                  shortStatus,
                )) &&
            (identical(other.msgExpireSecond, msgExpireSecond) ||
                const DeepCollectionEquality().equals(
                  other.msgExpireSecond,
                  msgExpireSecond,
                )) &&
            (identical(other.showStatus, showStatus) ||
                const DeepCollectionEquality().equals(
                  other.showStatus,
                  showStatus,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(api) ^
      const DeepCollectionEquality().hash(longConnectApi) ^
      const DeepCollectionEquality().hash(wsApi) ^
      const DeepCollectionEquality().hash(longConnectKeep) ^
      const DeepCollectionEquality().hash(whiteList) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(appId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(sex) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(shortNo) ^
      const DeepCollectionEquality().hash(zone) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(chatPwd) ^
      const DeepCollectionEquality().hash(lockScreenPwd) ^
      const DeepCollectionEquality().hash(lockAfterMinute) ^
      const DeepCollectionEquality().hash(setting) ^
      const DeepCollectionEquality().hash(rsaPublicKey) ^
      const DeepCollectionEquality().hash(shortStatus) ^
      const DeepCollectionEquality().hash(msgExpireSecond) ^
      const DeepCollectionEquality().hash(showStatus) ^
      runtimeType.hashCode;
}

extension $ImGetInfoPost$Response$DataExtension on ImGetInfoPost$Response$Data {
  ImGetInfoPost$Response$Data copyWith({
    String? api,
    String? longConnectApi,
    String? wsApi,
    bool? longConnectKeep,
    List<ImGetInfoPost$Response$Data$WhiteList$Item>? whiteList,
    String? uid,
    String? appId,
    String? name,
    String? username,
    double? sex,
    String? category,
    String? shortNo,
    String? zone,
    String? phone,
    String? token,
    String? chatPwd,
    String? lockScreenPwd,
    double? lockAfterMinute,
    ImGetInfoPost$Response$Data$Setting? setting,
    String? rsaPublicKey,
    double? shortStatus,
    double? msgExpireSecond,
    double? showStatus,
  }) {
    return ImGetInfoPost$Response$Data(
      api: api ?? this.api,
      longConnectApi: longConnectApi ?? this.longConnectApi,
      wsApi: wsApi ?? this.wsApi,
      longConnectKeep: longConnectKeep ?? this.longConnectKeep,
      whiteList: whiteList ?? this.whiteList,
      uid: uid ?? this.uid,
      appId: appId ?? this.appId,
      name: name ?? this.name,
      username: username ?? this.username,
      sex: sex ?? this.sex,
      category: category ?? this.category,
      shortNo: shortNo ?? this.shortNo,
      zone: zone ?? this.zone,
      phone: phone ?? this.phone,
      token: token ?? this.token,
      chatPwd: chatPwd ?? this.chatPwd,
      lockScreenPwd: lockScreenPwd ?? this.lockScreenPwd,
      lockAfterMinute: lockAfterMinute ?? this.lockAfterMinute,
      setting: setting ?? this.setting,
      rsaPublicKey: rsaPublicKey ?? this.rsaPublicKey,
      shortStatus: shortStatus ?? this.shortStatus,
      msgExpireSecond: msgExpireSecond ?? this.msgExpireSecond,
      showStatus: showStatus ?? this.showStatus,
    );
  }

  ImGetInfoPost$Response$Data copyWithWrapped({
    Wrapped<String>? api,
    Wrapped<String>? longConnectApi,
    Wrapped<String>? wsApi,
    Wrapped<bool>? longConnectKeep,
    Wrapped<List<ImGetInfoPost$Response$Data$WhiteList$Item>>? whiteList,
    Wrapped<String>? uid,
    Wrapped<String?>? appId,
    Wrapped<String?>? name,
    Wrapped<String?>? username,
    Wrapped<double?>? sex,
    Wrapped<String?>? category,
    Wrapped<String?>? shortNo,
    Wrapped<String?>? zone,
    Wrapped<String?>? phone,
    Wrapped<String>? token,
    Wrapped<String?>? chatPwd,
    Wrapped<String?>? lockScreenPwd,
    Wrapped<double?>? lockAfterMinute,
    Wrapped<ImGetInfoPost$Response$Data$Setting?>? setting,
    Wrapped<String?>? rsaPublicKey,
    Wrapped<double?>? shortStatus,
    Wrapped<double?>? msgExpireSecond,
    Wrapped<double>? showStatus,
  }) {
    return ImGetInfoPost$Response$Data(
      api: (api != null ? api.value : this.api),
      longConnectApi: (longConnectApi != null
          ? longConnectApi.value
          : this.longConnectApi),
      wsApi: (wsApi != null ? wsApi.value : this.wsApi),
      longConnectKeep: (longConnectKeep != null
          ? longConnectKeep.value
          : this.longConnectKeep),
      whiteList: (whiteList != null ? whiteList.value : this.whiteList),
      uid: (uid != null ? uid.value : this.uid),
      appId: (appId != null ? appId.value : this.appId),
      name: (name != null ? name.value : this.name),
      username: (username != null ? username.value : this.username),
      sex: (sex != null ? sex.value : this.sex),
      category: (category != null ? category.value : this.category),
      shortNo: (shortNo != null ? shortNo.value : this.shortNo),
      zone: (zone != null ? zone.value : this.zone),
      phone: (phone != null ? phone.value : this.phone),
      token: (token != null ? token.value : this.token),
      chatPwd: (chatPwd != null ? chatPwd.value : this.chatPwd),
      lockScreenPwd: (lockScreenPwd != null
          ? lockScreenPwd.value
          : this.lockScreenPwd),
      lockAfterMinute: (lockAfterMinute != null
          ? lockAfterMinute.value
          : this.lockAfterMinute),
      setting: (setting != null ? setting.value : this.setting),
      rsaPublicKey: (rsaPublicKey != null
          ? rsaPublicKey.value
          : this.rsaPublicKey),
      shortStatus: (shortStatus != null ? shortStatus.value : this.shortStatus),
      msgExpireSecond: (msgExpireSecond != null
          ? msgExpireSecond.value
          : this.msgExpireSecond),
      showStatus: (showStatus != null ? showStatus.value : this.showStatus),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserShareListGet$Response$Data$Item {
  const UserShareListGet$Response$Data$Item({
    this.rewardId,
    this.tenantCode,
    this.userId,
    this.content,
    this.auditStatus,
    this.auditTime,
    this.rewardAmount,
    this.currency,
    this.rewardType,
  });

  factory UserShareListGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$UserShareListGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory = _$UserShareListGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserShareListGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'rewardId')
  final String? rewardId;
  @JsonKey(name: 'tenantCode')
  final String? tenantCode;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'content')
  final String? content;
  @JsonKey(name: 'auditStatus')
  final int? auditStatus;
  @JsonKey(name: 'auditTime')
  final String? auditTime;
  @JsonKey(name: 'rewardAmount')
  final double? rewardAmount;
  @JsonKey(name: 'currency')
  final String? currency;
  @JsonKey(name: 'rewardType')
  final int? rewardType;
  static const fromJsonFactory = _$UserShareListGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserShareListGet$Response$Data$Item &&
            (identical(other.rewardId, rewardId) ||
                const DeepCollectionEquality().equals(
                  other.rewardId,
                  rewardId,
                )) &&
            (identical(other.tenantCode, tenantCode) ||
                const DeepCollectionEquality().equals(
                  other.tenantCode,
                  tenantCode,
                )) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(
                  other.content,
                  content,
                )) &&
            (identical(other.auditStatus, auditStatus) ||
                const DeepCollectionEquality().equals(
                  other.auditStatus,
                  auditStatus,
                )) &&
            (identical(other.auditTime, auditTime) ||
                const DeepCollectionEquality().equals(
                  other.auditTime,
                  auditTime,
                )) &&
            (identical(other.rewardAmount, rewardAmount) ||
                const DeepCollectionEquality().equals(
                  other.rewardAmount,
                  rewardAmount,
                )) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality().equals(
                  other.currency,
                  currency,
                )) &&
            (identical(other.rewardType, rewardType) ||
                const DeepCollectionEquality().equals(
                  other.rewardType,
                  rewardType,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(rewardId) ^
      const DeepCollectionEquality().hash(tenantCode) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(auditStatus) ^
      const DeepCollectionEquality().hash(auditTime) ^
      const DeepCollectionEquality().hash(rewardAmount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(rewardType) ^
      runtimeType.hashCode;
}

extension $UserShareListGet$Response$Data$ItemExtension
    on UserShareListGet$Response$Data$Item {
  UserShareListGet$Response$Data$Item copyWith({
    String? rewardId,
    String? tenantCode,
    String? userId,
    String? content,
    int? auditStatus,
    String? auditTime,
    double? rewardAmount,
    String? currency,
    int? rewardType,
  }) {
    return UserShareListGet$Response$Data$Item(
      rewardId: rewardId ?? this.rewardId,
      tenantCode: tenantCode ?? this.tenantCode,
      userId: userId ?? this.userId,
      content: content ?? this.content,
      auditStatus: auditStatus ?? this.auditStatus,
      auditTime: auditTime ?? this.auditTime,
      rewardAmount: rewardAmount ?? this.rewardAmount,
      currency: currency ?? this.currency,
      rewardType: rewardType ?? this.rewardType,
    );
  }

  UserShareListGet$Response$Data$Item copyWithWrapped({
    Wrapped<String?>? rewardId,
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? userId,
    Wrapped<String?>? content,
    Wrapped<int?>? auditStatus,
    Wrapped<String?>? auditTime,
    Wrapped<double?>? rewardAmount,
    Wrapped<String?>? currency,
    Wrapped<int?>? rewardType,
  }) {
    return UserShareListGet$Response$Data$Item(
      rewardId: (rewardId != null ? rewardId.value : this.rewardId),
      tenantCode: (tenantCode != null ? tenantCode.value : this.tenantCode),
      userId: (userId != null ? userId.value : this.userId),
      content: (content != null ? content.value : this.content),
      auditStatus: (auditStatus != null ? auditStatus.value : this.auditStatus),
      auditTime: (auditTime != null ? auditTime.value : this.auditTime),
      rewardAmount: (rewardAmount != null
          ? rewardAmount.value
          : this.rewardAmount),
      currency: (currency != null ? currency.value : this.currency),
      rewardType: (rewardType != null ? rewardType.value : this.rewardType),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserShareRewardInfoGet$Response$Data {
  const UserShareRewardInfoGet$Response$Data({
    this.rewardId,
    this.tenantCode,
    this.userId,
    this.content,
    this.auditStatus,
    this.auditTime,
    this.rewardAmount,
    this.currency,
    this.rewardType,
  });

  factory UserShareRewardInfoGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserShareRewardInfoGet$Response$DataFromJson(json);

  static const toJsonFactory = _$UserShareRewardInfoGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserShareRewardInfoGet$Response$DataToJson(this);

  @JsonKey(name: 'rewardId')
  final String? rewardId;
  @JsonKey(name: 'tenantCode')
  final String? tenantCode;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'content')
  final String? content;
  @JsonKey(name: 'auditStatus')
  final int? auditStatus;
  @JsonKey(name: 'auditTime')
  final String? auditTime;
  @JsonKey(name: 'rewardAmount')
  final double? rewardAmount;
  @JsonKey(name: 'currency')
  final String? currency;
  @JsonKey(name: 'rewardType')
  final int? rewardType;
  static const fromJsonFactory = _$UserShareRewardInfoGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserShareRewardInfoGet$Response$Data &&
            (identical(other.rewardId, rewardId) ||
                const DeepCollectionEquality().equals(
                  other.rewardId,
                  rewardId,
                )) &&
            (identical(other.tenantCode, tenantCode) ||
                const DeepCollectionEquality().equals(
                  other.tenantCode,
                  tenantCode,
                )) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(
                  other.content,
                  content,
                )) &&
            (identical(other.auditStatus, auditStatus) ||
                const DeepCollectionEquality().equals(
                  other.auditStatus,
                  auditStatus,
                )) &&
            (identical(other.auditTime, auditTime) ||
                const DeepCollectionEquality().equals(
                  other.auditTime,
                  auditTime,
                )) &&
            (identical(other.rewardAmount, rewardAmount) ||
                const DeepCollectionEquality().equals(
                  other.rewardAmount,
                  rewardAmount,
                )) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality().equals(
                  other.currency,
                  currency,
                )) &&
            (identical(other.rewardType, rewardType) ||
                const DeepCollectionEquality().equals(
                  other.rewardType,
                  rewardType,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(rewardId) ^
      const DeepCollectionEquality().hash(tenantCode) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(auditStatus) ^
      const DeepCollectionEquality().hash(auditTime) ^
      const DeepCollectionEquality().hash(rewardAmount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(rewardType) ^
      runtimeType.hashCode;
}

extension $UserShareRewardInfoGet$Response$DataExtension
    on UserShareRewardInfoGet$Response$Data {
  UserShareRewardInfoGet$Response$Data copyWith({
    String? rewardId,
    String? tenantCode,
    String? userId,
    String? content,
    int? auditStatus,
    String? auditTime,
    double? rewardAmount,
    String? currency,
    int? rewardType,
  }) {
    return UserShareRewardInfoGet$Response$Data(
      rewardId: rewardId ?? this.rewardId,
      tenantCode: tenantCode ?? this.tenantCode,
      userId: userId ?? this.userId,
      content: content ?? this.content,
      auditStatus: auditStatus ?? this.auditStatus,
      auditTime: auditTime ?? this.auditTime,
      rewardAmount: rewardAmount ?? this.rewardAmount,
      currency: currency ?? this.currency,
      rewardType: rewardType ?? this.rewardType,
    );
  }

  UserShareRewardInfoGet$Response$Data copyWithWrapped({
    Wrapped<String?>? rewardId,
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? userId,
    Wrapped<String?>? content,
    Wrapped<int?>? auditStatus,
    Wrapped<String?>? auditTime,
    Wrapped<double?>? rewardAmount,
    Wrapped<String?>? currency,
    Wrapped<int?>? rewardType,
  }) {
    return UserShareRewardInfoGet$Response$Data(
      rewardId: (rewardId != null ? rewardId.value : this.rewardId),
      tenantCode: (tenantCode != null ? tenantCode.value : this.tenantCode),
      userId: (userId != null ? userId.value : this.userId),
      content: (content != null ? content.value : this.content),
      auditStatus: (auditStatus != null ? auditStatus.value : this.auditStatus),
      auditTime: (auditTime != null ? auditTime.value : this.auditTime),
      rewardAmount: (rewardAmount != null
          ? rewardAmount.value
          : this.rewardAmount),
      currency: (currency != null ? currency.value : this.currency),
      rewardType: (rewardType != null ? rewardType.value : this.rewardType),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserDeleteGet$Response$Data {
  const UserDeleteGet$Response$Data({this.authWay});

  factory UserDeleteGet$Response$Data.fromJson(Map<String, dynamic> json) =>
      _$UserDeleteGet$Response$DataFromJson(json);

  static const toJsonFactory = _$UserDeleteGet$Response$DataToJson;
  Map<String, dynamic> toJson() => _$UserDeleteGet$Response$DataToJson(this);

  @JsonKey(name: 'authWay')
  final String? authWay;
  static const fromJsonFactory = _$UserDeleteGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserDeleteGet$Response$Data &&
            (identical(other.authWay, authWay) ||
                const DeepCollectionEquality().equals(other.authWay, authWay)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(authWay) ^ runtimeType.hashCode;
}

extension $UserDeleteGet$Response$DataExtension on UserDeleteGet$Response$Data {
  UserDeleteGet$Response$Data copyWith({String? authWay}) {
    return UserDeleteGet$Response$Data(authWay: authWay ?? this.authWay);
  }

  UserDeleteGet$Response$Data copyWithWrapped({Wrapped<String?>? authWay}) {
    return UserDeleteGet$Response$Data(
      authWay: (authWay != null ? authWay.value : this.authWay),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserGetGet$Response$Data {
  const UserGetGet$Response$Data({
    this.userId,
    this.nickname,
    this.description,
    this.gender,
    this.birthday,
    this.photo,
    this.phoneNumber,
    this.email,
    this.signUpType,
    this.platform,
    this.createTime,
    this.inviteCode,
    this.inviteCount,
    this.portalCode,
    this.currency,
    this.thirdAccount,
    this.imUid,
    this.imUsername,
  });

  factory UserGetGet$Response$Data.fromJson(Map<String, dynamic> json) =>
      _$UserGetGet$Response$DataFromJson(json);

  static const toJsonFactory = _$UserGetGet$Response$DataToJson;
  Map<String, dynamic> toJson() => _$UserGetGet$Response$DataToJson(this);

  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'nickname')
  final String? nickname;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'gender')
  final double? gender;
  @JsonKey(name: 'birthday')
  final String? birthday;
  @JsonKey(name: 'photo')
  final String? photo;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'signUpType')
  final double? signUpType;
  @JsonKey(name: 'platform')
  final String? platform;
  @JsonKey(name: 'createTime')
  final String? createTime;
  @JsonKey(name: 'inviteCode')
  final String? inviteCode;
  @JsonKey(name: 'inviteCount')
  final String? inviteCount;
  @JsonKey(name: 'portalCode')
  final String? portalCode;
  @JsonKey(name: 'currency')
  final String? currency;
  @JsonKey(name: 'thirdAccount')
  final String? thirdAccount;
  @JsonKey(name: 'imUid')
  final String? imUid;
  @JsonKey(name: 'imUsername')
  final String? imUsername;
  static const fromJsonFactory = _$UserGetGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserGetGet$Response$Data &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality().equals(
                  other.nickname,
                  nickname,
                )) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality().equals(
                  other.birthday,
                  birthday,
                )) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality().equals(
                  other.phoneNumber,
                  phoneNumber,
                )) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.signUpType, signUpType) ||
                const DeepCollectionEquality().equals(
                  other.signUpType,
                  signUpType,
                )) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality().equals(
                  other.platform,
                  platform,
                )) &&
            (identical(other.createTime, createTime) ||
                const DeepCollectionEquality().equals(
                  other.createTime,
                  createTime,
                )) &&
            (identical(other.inviteCode, inviteCode) ||
                const DeepCollectionEquality().equals(
                  other.inviteCode,
                  inviteCode,
                )) &&
            (identical(other.inviteCount, inviteCount) ||
                const DeepCollectionEquality().equals(
                  other.inviteCount,
                  inviteCount,
                )) &&
            (identical(other.portalCode, portalCode) ||
                const DeepCollectionEquality().equals(
                  other.portalCode,
                  portalCode,
                )) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality().equals(
                  other.currency,
                  currency,
                )) &&
            (identical(other.thirdAccount, thirdAccount) ||
                const DeepCollectionEquality().equals(
                  other.thirdAccount,
                  thirdAccount,
                )) &&
            (identical(other.imUid, imUid) ||
                const DeepCollectionEquality().equals(other.imUid, imUid)) &&
            (identical(other.imUsername, imUsername) ||
                const DeepCollectionEquality().equals(
                  other.imUsername,
                  imUsername,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(signUpType) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(createTime) ^
      const DeepCollectionEquality().hash(inviteCode) ^
      const DeepCollectionEquality().hash(inviteCount) ^
      const DeepCollectionEquality().hash(portalCode) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(thirdAccount) ^
      const DeepCollectionEquality().hash(imUid) ^
      const DeepCollectionEquality().hash(imUsername) ^
      runtimeType.hashCode;
}

extension $UserGetGet$Response$DataExtension on UserGetGet$Response$Data {
  UserGetGet$Response$Data copyWith({
    String? userId,
    String? nickname,
    String? description,
    double? gender,
    String? birthday,
    String? photo,
    String? phoneNumber,
    String? email,
    double? signUpType,
    String? platform,
    String? createTime,
    String? inviteCode,
    String? inviteCount,
    String? portalCode,
    String? currency,
    String? thirdAccount,
    String? imUid,
    String? imUsername,
  }) {
    return UserGetGet$Response$Data(
      userId: userId ?? this.userId,
      nickname: nickname ?? this.nickname,
      description: description ?? this.description,
      gender: gender ?? this.gender,
      birthday: birthday ?? this.birthday,
      photo: photo ?? this.photo,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      signUpType: signUpType ?? this.signUpType,
      platform: platform ?? this.platform,
      createTime: createTime ?? this.createTime,
      inviteCode: inviteCode ?? this.inviteCode,
      inviteCount: inviteCount ?? this.inviteCount,
      portalCode: portalCode ?? this.portalCode,
      currency: currency ?? this.currency,
      thirdAccount: thirdAccount ?? this.thirdAccount,
      imUid: imUid ?? this.imUid,
      imUsername: imUsername ?? this.imUsername,
    );
  }

  UserGetGet$Response$Data copyWithWrapped({
    Wrapped<String?>? userId,
    Wrapped<String?>? nickname,
    Wrapped<String?>? description,
    Wrapped<double?>? gender,
    Wrapped<String?>? birthday,
    Wrapped<String?>? photo,
    Wrapped<String?>? phoneNumber,
    Wrapped<String?>? email,
    Wrapped<double?>? signUpType,
    Wrapped<String?>? platform,
    Wrapped<String?>? createTime,
    Wrapped<String?>? inviteCode,
    Wrapped<String?>? inviteCount,
    Wrapped<String?>? portalCode,
    Wrapped<String?>? currency,
    Wrapped<String?>? thirdAccount,
    Wrapped<String?>? imUid,
    Wrapped<String?>? imUsername,
  }) {
    return UserGetGet$Response$Data(
      userId: (userId != null ? userId.value : this.userId),
      nickname: (nickname != null ? nickname.value : this.nickname),
      description: (description != null ? description.value : this.description),
      gender: (gender != null ? gender.value : this.gender),
      birthday: (birthday != null ? birthday.value : this.birthday),
      photo: (photo != null ? photo.value : this.photo),
      phoneNumber: (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
      email: (email != null ? email.value : this.email),
      signUpType: (signUpType != null ? signUpType.value : this.signUpType),
      platform: (platform != null ? platform.value : this.platform),
      createTime: (createTime != null ? createTime.value : this.createTime),
      inviteCode: (inviteCode != null ? inviteCode.value : this.inviteCode),
      inviteCount: (inviteCount != null ? inviteCount.value : this.inviteCount),
      portalCode: (portalCode != null ? portalCode.value : this.portalCode),
      currency: (currency != null ? currency.value : this.currency),
      thirdAccount: (thirdAccount != null
          ? thirdAccount.value
          : this.thirdAccount),
      imUid: (imUid != null ? imUid.value : this.imUid),
      imUsername: (imUsername != null ? imUsername.value : this.imUsername),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserUserCommissionGet$Response$Data {
  const UserUserCommissionGet$Response$Data({
    this.currentUserLevel,
    this.nextUserLevel,
    this.nextUserLevelPoints,
  });

  factory UserUserCommissionGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserUserCommissionGet$Response$DataFromJson(json);

  static const toJsonFactory = _$UserUserCommissionGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserUserCommissionGet$Response$DataToJson(this);

  @JsonKey(name: 'currentUserLevel')
  final int? currentUserLevel;
  @JsonKey(name: 'nextUserLevel')
  final int? nextUserLevel;
  @JsonKey(name: 'nextUserLevelPoints')
  final int? nextUserLevelPoints;
  static const fromJsonFactory = _$UserUserCommissionGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserUserCommissionGet$Response$Data &&
            (identical(other.currentUserLevel, currentUserLevel) ||
                const DeepCollectionEquality().equals(
                  other.currentUserLevel,
                  currentUserLevel,
                )) &&
            (identical(other.nextUserLevel, nextUserLevel) ||
                const DeepCollectionEquality().equals(
                  other.nextUserLevel,
                  nextUserLevel,
                )) &&
            (identical(other.nextUserLevelPoints, nextUserLevelPoints) ||
                const DeepCollectionEquality().equals(
                  other.nextUserLevelPoints,
                  nextUserLevelPoints,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(currentUserLevel) ^
      const DeepCollectionEquality().hash(nextUserLevel) ^
      const DeepCollectionEquality().hash(nextUserLevelPoints) ^
      runtimeType.hashCode;
}

extension $UserUserCommissionGet$Response$DataExtension
    on UserUserCommissionGet$Response$Data {
  UserUserCommissionGet$Response$Data copyWith({
    int? currentUserLevel,
    int? nextUserLevel,
    int? nextUserLevelPoints,
  }) {
    return UserUserCommissionGet$Response$Data(
      currentUserLevel: currentUserLevel ?? this.currentUserLevel,
      nextUserLevel: nextUserLevel ?? this.nextUserLevel,
      nextUserLevelPoints: nextUserLevelPoints ?? this.nextUserLevelPoints,
    );
  }

  UserUserCommissionGet$Response$Data copyWithWrapped({
    Wrapped<int?>? currentUserLevel,
    Wrapped<int?>? nextUserLevel,
    Wrapped<int?>? nextUserLevelPoints,
  }) {
    return UserUserCommissionGet$Response$Data(
      currentUserLevel: (currentUserLevel != null
          ? currentUserLevel.value
          : this.currentUserLevel),
      nextUserLevel: (nextUserLevel != null
          ? nextUserLevel.value
          : this.nextUserLevel),
      nextUserLevelPoints: (nextUserLevelPoints != null
          ? nextUserLevelPoints.value
          : this.nextUserLevelPoints),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserConfigureSettingGet$Response$Data {
  const UserConfigureSettingGet$Response$Data({this.showGiveawayGift});

  factory UserConfigureSettingGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserConfigureSettingGet$Response$DataFromJson(json);

  static const toJsonFactory = _$UserConfigureSettingGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserConfigureSettingGet$Response$DataToJson(this);

  @JsonKey(name: 'showGiveawayGift')
  final int? showGiveawayGift;
  static const fromJsonFactory =
      _$UserConfigureSettingGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserConfigureSettingGet$Response$Data &&
            (identical(other.showGiveawayGift, showGiveawayGift) ||
                const DeepCollectionEquality().equals(
                  other.showGiveawayGift,
                  showGiveawayGift,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(showGiveawayGift) ^
      runtimeType.hashCode;
}

extension $UserConfigureSettingGet$Response$DataExtension
    on UserConfigureSettingGet$Response$Data {
  UserConfigureSettingGet$Response$Data copyWith({int? showGiveawayGift}) {
    return UserConfigureSettingGet$Response$Data(
      showGiveawayGift: showGiveawayGift ?? this.showGiveawayGift,
    );
  }

  UserConfigureSettingGet$Response$Data copyWithWrapped({
    Wrapped<int?>? showGiveawayGift,
  }) {
    return UserConfigureSettingGet$Response$Data(
      showGiveawayGift: (showGiveawayGift != null
          ? showGiveawayGift.value
          : this.showGiveawayGift),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserInviteNumGet$Response$Data {
  const UserInviteNumGet$Response$Data({
    this.inviteTotalNum,
    this.inviteNum,
    this.subInviteNum,
  });

  factory UserInviteNumGet$Response$Data.fromJson(Map<String, dynamic> json) =>
      _$UserInviteNumGet$Response$DataFromJson(json);

  static const toJsonFactory = _$UserInviteNumGet$Response$DataToJson;
  Map<String, dynamic> toJson() => _$UserInviteNumGet$Response$DataToJson(this);

  @JsonKey(name: 'inviteTotalNum')
  final double? inviteTotalNum;
  @JsonKey(name: 'inviteNum')
  final double? inviteNum;
  @JsonKey(name: 'subInviteNum')
  final double? subInviteNum;
  static const fromJsonFactory = _$UserInviteNumGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserInviteNumGet$Response$Data &&
            (identical(other.inviteTotalNum, inviteTotalNum) ||
                const DeepCollectionEquality().equals(
                  other.inviteTotalNum,
                  inviteTotalNum,
                )) &&
            (identical(other.inviteNum, inviteNum) ||
                const DeepCollectionEquality().equals(
                  other.inviteNum,
                  inviteNum,
                )) &&
            (identical(other.subInviteNum, subInviteNum) ||
                const DeepCollectionEquality().equals(
                  other.subInviteNum,
                  subInviteNum,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(inviteTotalNum) ^
      const DeepCollectionEquality().hash(inviteNum) ^
      const DeepCollectionEquality().hash(subInviteNum) ^
      runtimeType.hashCode;
}

extension $UserInviteNumGet$Response$DataExtension
    on UserInviteNumGet$Response$Data {
  UserInviteNumGet$Response$Data copyWith({
    double? inviteTotalNum,
    double? inviteNum,
    double? subInviteNum,
  }) {
    return UserInviteNumGet$Response$Data(
      inviteTotalNum: inviteTotalNum ?? this.inviteTotalNum,
      inviteNum: inviteNum ?? this.inviteNum,
      subInviteNum: subInviteNum ?? this.subInviteNum,
    );
  }

  UserInviteNumGet$Response$Data copyWithWrapped({
    Wrapped<double?>? inviteTotalNum,
    Wrapped<double?>? inviteNum,
    Wrapped<double?>? subInviteNum,
  }) {
    return UserInviteNumGet$Response$Data(
      inviteTotalNum: (inviteTotalNum != null
          ? inviteTotalNum.value
          : this.inviteTotalNum),
      inviteNum: (inviteNum != null ? inviteNum.value : this.inviteNum),
      subInviteNum: (subInviteNum != null
          ? subInviteNum.value
          : this.subInviteNum),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserTagPortraitAiToPortraitPost$Response$Data {
  const UserTagPortraitAiToPortraitPost$Response$Data({
    this.age,
    this.sex,
    this.birthday,
    this.nickname,
    this.favoriteShoppingPlatforms,
    this.favoriteBrands,
  });

  factory UserTagPortraitAiToPortraitPost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserTagPortraitAiToPortraitPost$Response$DataFromJson(json);

  static const toJsonFactory =
      _$UserTagPortraitAiToPortraitPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserTagPortraitAiToPortraitPost$Response$DataToJson(this);

  @JsonKey(name: 'age')
  final double? age;
  @JsonKey(name: 'sex')
  final double? sex;
  @JsonKey(name: 'birthday')
  final double? birthday;
  @JsonKey(name: 'nickname')
  final String? nickname;
  @JsonKey(name: 'favoriteShoppingPlatforms', defaultValue: <String>[])
  final List<String>? favoriteShoppingPlatforms;
  @JsonKey(name: 'favoriteBrands')
  final String? favoriteBrands;
  static const fromJsonFactory =
      _$UserTagPortraitAiToPortraitPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserTagPortraitAiToPortraitPost$Response$Data &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.sex, sex) ||
                const DeepCollectionEquality().equals(other.sex, sex)) &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality().equals(
                  other.birthday,
                  birthday,
                )) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality().equals(
                  other.nickname,
                  nickname,
                )) &&
            (identical(
                  other.favoriteShoppingPlatforms,
                  favoriteShoppingPlatforms,
                ) ||
                const DeepCollectionEquality().equals(
                  other.favoriteShoppingPlatforms,
                  favoriteShoppingPlatforms,
                )) &&
            (identical(other.favoriteBrands, favoriteBrands) ||
                const DeepCollectionEquality().equals(
                  other.favoriteBrands,
                  favoriteBrands,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(sex) ^
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(favoriteShoppingPlatforms) ^
      const DeepCollectionEquality().hash(favoriteBrands) ^
      runtimeType.hashCode;
}

extension $UserTagPortraitAiToPortraitPost$Response$DataExtension
    on UserTagPortraitAiToPortraitPost$Response$Data {
  UserTagPortraitAiToPortraitPost$Response$Data copyWith({
    double? age,
    double? sex,
    double? birthday,
    String? nickname,
    List<String>? favoriteShoppingPlatforms,
    String? favoriteBrands,
  }) {
    return UserTagPortraitAiToPortraitPost$Response$Data(
      age: age ?? this.age,
      sex: sex ?? this.sex,
      birthday: birthday ?? this.birthday,
      nickname: nickname ?? this.nickname,
      favoriteShoppingPlatforms:
          favoriteShoppingPlatforms ?? this.favoriteShoppingPlatforms,
      favoriteBrands: favoriteBrands ?? this.favoriteBrands,
    );
  }

  UserTagPortraitAiToPortraitPost$Response$Data copyWithWrapped({
    Wrapped<double?>? age,
    Wrapped<double?>? sex,
    Wrapped<double?>? birthday,
    Wrapped<String?>? nickname,
    Wrapped<List<String>?>? favoriteShoppingPlatforms,
    Wrapped<String?>? favoriteBrands,
  }) {
    return UserTagPortraitAiToPortraitPost$Response$Data(
      age: (age != null ? age.value : this.age),
      sex: (sex != null ? sex.value : this.sex),
      birthday: (birthday != null ? birthday.value : this.birthday),
      nickname: (nickname != null ? nickname.value : this.nickname),
      favoriteShoppingPlatforms: (favoriteShoppingPlatforms != null
          ? favoriteShoppingPlatforms.value
          : this.favoriteShoppingPlatforms),
      favoriteBrands: (favoriteBrands != null
          ? favoriteBrands.value
          : this.favoriteBrands),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserTagPortraitAiToPortraitV2Post$Response$Data {
  const UserTagPortraitAiToPortraitV2Post$Response$Data({
    this.age,
    this.sex,
    this.birthday,
    this.nickname,
    this.favoriteShoppingPlatforms,
    this.favoriteBrands,
  });

  factory UserTagPortraitAiToPortraitV2Post$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserTagPortraitAiToPortraitV2Post$Response$DataFromJson(json);

  static const toJsonFactory =
      _$UserTagPortraitAiToPortraitV2Post$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserTagPortraitAiToPortraitV2Post$Response$DataToJson(this);

  @JsonKey(name: 'age')
  final double? age;
  @JsonKey(name: 'sex')
  final double? sex;
  @JsonKey(name: 'birthday')
  final double? birthday;
  @JsonKey(name: 'nickname')
  final String? nickname;
  @JsonKey(name: 'favoriteShoppingPlatforms', defaultValue: <String>[])
  final List<String>? favoriteShoppingPlatforms;
  @JsonKey(name: 'favoriteBrands')
  final String? favoriteBrands;
  static const fromJsonFactory =
      _$UserTagPortraitAiToPortraitV2Post$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserTagPortraitAiToPortraitV2Post$Response$Data &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.sex, sex) ||
                const DeepCollectionEquality().equals(other.sex, sex)) &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality().equals(
                  other.birthday,
                  birthday,
                )) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality().equals(
                  other.nickname,
                  nickname,
                )) &&
            (identical(
                  other.favoriteShoppingPlatforms,
                  favoriteShoppingPlatforms,
                ) ||
                const DeepCollectionEquality().equals(
                  other.favoriteShoppingPlatforms,
                  favoriteShoppingPlatforms,
                )) &&
            (identical(other.favoriteBrands, favoriteBrands) ||
                const DeepCollectionEquality().equals(
                  other.favoriteBrands,
                  favoriteBrands,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(sex) ^
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(favoriteShoppingPlatforms) ^
      const DeepCollectionEquality().hash(favoriteBrands) ^
      runtimeType.hashCode;
}

extension $UserTagPortraitAiToPortraitV2Post$Response$DataExtension
    on UserTagPortraitAiToPortraitV2Post$Response$Data {
  UserTagPortraitAiToPortraitV2Post$Response$Data copyWith({
    double? age,
    double? sex,
    double? birthday,
    String? nickname,
    List<String>? favoriteShoppingPlatforms,
    String? favoriteBrands,
  }) {
    return UserTagPortraitAiToPortraitV2Post$Response$Data(
      age: age ?? this.age,
      sex: sex ?? this.sex,
      birthday: birthday ?? this.birthday,
      nickname: nickname ?? this.nickname,
      favoriteShoppingPlatforms:
          favoriteShoppingPlatforms ?? this.favoriteShoppingPlatforms,
      favoriteBrands: favoriteBrands ?? this.favoriteBrands,
    );
  }

  UserTagPortraitAiToPortraitV2Post$Response$Data copyWithWrapped({
    Wrapped<double?>? age,
    Wrapped<double?>? sex,
    Wrapped<double?>? birthday,
    Wrapped<String?>? nickname,
    Wrapped<List<String>?>? favoriteShoppingPlatforms,
    Wrapped<String?>? favoriteBrands,
  }) {
    return UserTagPortraitAiToPortraitV2Post$Response$Data(
      age: (age != null ? age.value : this.age),
      sex: (sex != null ? sex.value : this.sex),
      birthday: (birthday != null ? birthday.value : this.birthday),
      nickname: (nickname != null ? nickname.value : this.nickname),
      favoriteShoppingPlatforms: (favoriteShoppingPlatforms != null
          ? favoriteShoppingPlatforms.value
          : this.favoriteShoppingPlatforms),
      favoriteBrands: (favoriteBrands != null
          ? favoriteBrands.value
          : this.favoriteBrands),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserTagPortraitGetPortraitGet$Response$Data {
  const UserTagPortraitGetPortraitGet$Response$Data({
    this.age,
    this.sex,
    this.birthday,
    this.nickname,
    this.avatarUrl,
    this.favoriteShoppingPlatforms,
    this.favoriteBrands,
  });

  factory UserTagPortraitGetPortraitGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserTagPortraitGetPortraitGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$UserTagPortraitGetPortraitGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserTagPortraitGetPortraitGet$Response$DataToJson(this);

  @JsonKey(name: 'age')
  final double? age;
  @JsonKey(name: 'sex')
  final double? sex;
  @JsonKey(name: 'birthday')
  final double? birthday;
  @JsonKey(name: 'nickname')
  final String? nickname;
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;
  @JsonKey(name: 'favoriteShoppingPlatforms', defaultValue: <String>[])
  final List<String>? favoriteShoppingPlatforms;
  @JsonKey(name: 'favoriteBrands')
  final String? favoriteBrands;
  static const fromJsonFactory =
      _$UserTagPortraitGetPortraitGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserTagPortraitGetPortraitGet$Response$Data &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.sex, sex) ||
                const DeepCollectionEquality().equals(other.sex, sex)) &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality().equals(
                  other.birthday,
                  birthday,
                )) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality().equals(
                  other.nickname,
                  nickname,
                )) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality().equals(
                  other.avatarUrl,
                  avatarUrl,
                )) &&
            (identical(
                  other.favoriteShoppingPlatforms,
                  favoriteShoppingPlatforms,
                ) ||
                const DeepCollectionEquality().equals(
                  other.favoriteShoppingPlatforms,
                  favoriteShoppingPlatforms,
                )) &&
            (identical(other.favoriteBrands, favoriteBrands) ||
                const DeepCollectionEquality().equals(
                  other.favoriteBrands,
                  favoriteBrands,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(sex) ^
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(favoriteShoppingPlatforms) ^
      const DeepCollectionEquality().hash(favoriteBrands) ^
      runtimeType.hashCode;
}

extension $UserTagPortraitGetPortraitGet$Response$DataExtension
    on UserTagPortraitGetPortraitGet$Response$Data {
  UserTagPortraitGetPortraitGet$Response$Data copyWith({
    double? age,
    double? sex,
    double? birthday,
    String? nickname,
    String? avatarUrl,
    List<String>? favoriteShoppingPlatforms,
    String? favoriteBrands,
  }) {
    return UserTagPortraitGetPortraitGet$Response$Data(
      age: age ?? this.age,
      sex: sex ?? this.sex,
      birthday: birthday ?? this.birthday,
      nickname: nickname ?? this.nickname,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      favoriteShoppingPlatforms:
          favoriteShoppingPlatforms ?? this.favoriteShoppingPlatforms,
      favoriteBrands: favoriteBrands ?? this.favoriteBrands,
    );
  }

  UserTagPortraitGetPortraitGet$Response$Data copyWithWrapped({
    Wrapped<double?>? age,
    Wrapped<double?>? sex,
    Wrapped<double?>? birthday,
    Wrapped<String?>? nickname,
    Wrapped<String?>? avatarUrl,
    Wrapped<List<String>?>? favoriteShoppingPlatforms,
    Wrapped<String?>? favoriteBrands,
  }) {
    return UserTagPortraitGetPortraitGet$Response$Data(
      age: (age != null ? age.value : this.age),
      sex: (sex != null ? sex.value : this.sex),
      birthday: (birthday != null ? birthday.value : this.birthday),
      nickname: (nickname != null ? nickname.value : this.nickname),
      avatarUrl: (avatarUrl != null ? avatarUrl.value : this.avatarUrl),
      favoriteShoppingPlatforms: (favoriteShoppingPlatforms != null
          ? favoriteShoppingPlatforms.value
          : this.favoriteShoppingPlatforms),
      favoriteBrands: (favoriteBrands != null
          ? favoriteBrands.value
          : this.favoriteBrands),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserCouponAppHomeActivityPost$Response$Data$Item {
  const UserCouponAppHomeActivityPost$Response$Data$Item({
    this.userId,
    this.tenantCode,
    this.couponCode,
    this.couponTitle,
    this.isUsed,
    this.gmtInvalid,
    this.type,
    this.discount,
    this.limitAmount,
    this.currency,
    this.discountTarget,
    this.limitAmountTarget,
    this.currencyTarget,
    this.couponImage,
    this.msgInfo,
  });

  factory UserCouponAppHomeActivityPost$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCouponAppHomeActivityPost$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$UserCouponAppHomeActivityPost$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserCouponAppHomeActivityPost$Response$Data$ItemToJson(this);

  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'tenantCode')
  final String? tenantCode;
  @JsonKey(name: 'couponCode')
  final String? couponCode;
  @JsonKey(name: 'couponTitle')
  final String? couponTitle;
  @JsonKey(name: 'isUsed')
  final double? isUsed;
  @JsonKey(name: 'gmtInvalid')
  final String? gmtInvalid;
  @JsonKey(name: 'type')
  final double? type;
  @JsonKey(name: 'discount')
  final String? discount;
  @JsonKey(name: 'limitAmount')
  final String? limitAmount;
  @JsonKey(name: 'currency')
  final String? currency;
  @JsonKey(name: 'discountTarget')
  final String? discountTarget;
  @JsonKey(name: 'limitAmountTarget')
  final String? limitAmountTarget;
  @JsonKey(name: 'currencyTarget')
  final String? currencyTarget;
  @JsonKey(name: 'couponImage')
  final String? couponImage;
  @JsonKey(name: 'msgInfo')
  final UserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo? msgInfo;
  static const fromJsonFactory =
      _$UserCouponAppHomeActivityPost$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponAppHomeActivityPost$Response$Data$Item &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.tenantCode, tenantCode) ||
                const DeepCollectionEquality().equals(
                  other.tenantCode,
                  tenantCode,
                )) &&
            (identical(other.couponCode, couponCode) ||
                const DeepCollectionEquality().equals(
                  other.couponCode,
                  couponCode,
                )) &&
            (identical(other.couponTitle, couponTitle) ||
                const DeepCollectionEquality().equals(
                  other.couponTitle,
                  couponTitle,
                )) &&
            (identical(other.isUsed, isUsed) ||
                const DeepCollectionEquality().equals(other.isUsed, isUsed)) &&
            (identical(other.gmtInvalid, gmtInvalid) ||
                const DeepCollectionEquality().equals(
                  other.gmtInvalid,
                  gmtInvalid,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality().equals(
                  other.discount,
                  discount,
                )) &&
            (identical(other.limitAmount, limitAmount) ||
                const DeepCollectionEquality().equals(
                  other.limitAmount,
                  limitAmount,
                )) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality().equals(
                  other.currency,
                  currency,
                )) &&
            (identical(other.discountTarget, discountTarget) ||
                const DeepCollectionEquality().equals(
                  other.discountTarget,
                  discountTarget,
                )) &&
            (identical(other.limitAmountTarget, limitAmountTarget) ||
                const DeepCollectionEquality().equals(
                  other.limitAmountTarget,
                  limitAmountTarget,
                )) &&
            (identical(other.currencyTarget, currencyTarget) ||
                const DeepCollectionEquality().equals(
                  other.currencyTarget,
                  currencyTarget,
                )) &&
            (identical(other.couponImage, couponImage) ||
                const DeepCollectionEquality().equals(
                  other.couponImage,
                  couponImage,
                )) &&
            (identical(other.msgInfo, msgInfo) ||
                const DeepCollectionEquality().equals(other.msgInfo, msgInfo)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(tenantCode) ^
      const DeepCollectionEquality().hash(couponCode) ^
      const DeepCollectionEquality().hash(couponTitle) ^
      const DeepCollectionEquality().hash(isUsed) ^
      const DeepCollectionEquality().hash(gmtInvalid) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(limitAmount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(discountTarget) ^
      const DeepCollectionEquality().hash(limitAmountTarget) ^
      const DeepCollectionEquality().hash(currencyTarget) ^
      const DeepCollectionEquality().hash(couponImage) ^
      const DeepCollectionEquality().hash(msgInfo) ^
      runtimeType.hashCode;
}

extension $UserCouponAppHomeActivityPost$Response$Data$ItemExtension
    on UserCouponAppHomeActivityPost$Response$Data$Item {
  UserCouponAppHomeActivityPost$Response$Data$Item copyWith({
    String? userId,
    String? tenantCode,
    String? couponCode,
    String? couponTitle,
    double? isUsed,
    String? gmtInvalid,
    double? type,
    String? discount,
    String? limitAmount,
    String? currency,
    String? discountTarget,
    String? limitAmountTarget,
    String? currencyTarget,
    String? couponImage,
    UserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo? msgInfo,
  }) {
    return UserCouponAppHomeActivityPost$Response$Data$Item(
      userId: userId ?? this.userId,
      tenantCode: tenantCode ?? this.tenantCode,
      couponCode: couponCode ?? this.couponCode,
      couponTitle: couponTitle ?? this.couponTitle,
      isUsed: isUsed ?? this.isUsed,
      gmtInvalid: gmtInvalid ?? this.gmtInvalid,
      type: type ?? this.type,
      discount: discount ?? this.discount,
      limitAmount: limitAmount ?? this.limitAmount,
      currency: currency ?? this.currency,
      discountTarget: discountTarget ?? this.discountTarget,
      limitAmountTarget: limitAmountTarget ?? this.limitAmountTarget,
      currencyTarget: currencyTarget ?? this.currencyTarget,
      couponImage: couponImage ?? this.couponImage,
      msgInfo: msgInfo ?? this.msgInfo,
    );
  }

  UserCouponAppHomeActivityPost$Response$Data$Item copyWithWrapped({
    Wrapped<String?>? userId,
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? couponCode,
    Wrapped<String?>? couponTitle,
    Wrapped<double?>? isUsed,
    Wrapped<String?>? gmtInvalid,
    Wrapped<double?>? type,
    Wrapped<String?>? discount,
    Wrapped<String?>? limitAmount,
    Wrapped<String?>? currency,
    Wrapped<String?>? discountTarget,
    Wrapped<String?>? limitAmountTarget,
    Wrapped<String?>? currencyTarget,
    Wrapped<String?>? couponImage,
    Wrapped<UserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo?>? msgInfo,
  }) {
    return UserCouponAppHomeActivityPost$Response$Data$Item(
      userId: (userId != null ? userId.value : this.userId),
      tenantCode: (tenantCode != null ? tenantCode.value : this.tenantCode),
      couponCode: (couponCode != null ? couponCode.value : this.couponCode),
      couponTitle: (couponTitle != null ? couponTitle.value : this.couponTitle),
      isUsed: (isUsed != null ? isUsed.value : this.isUsed),
      gmtInvalid: (gmtInvalid != null ? gmtInvalid.value : this.gmtInvalid),
      type: (type != null ? type.value : this.type),
      discount: (discount != null ? discount.value : this.discount),
      limitAmount: (limitAmount != null ? limitAmount.value : this.limitAmount),
      currency: (currency != null ? currency.value : this.currency),
      discountTarget: (discountTarget != null
          ? discountTarget.value
          : this.discountTarget),
      limitAmountTarget: (limitAmountTarget != null
          ? limitAmountTarget.value
          : this.limitAmountTarget),
      currencyTarget: (currencyTarget != null
          ? currencyTarget.value
          : this.currencyTarget),
      couponImage: (couponImage != null ? couponImage.value : this.couponImage),
      msgInfo: (msgInfo != null ? msgInfo.value : this.msgInfo),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserCouponActivityInfoGet$Response$Data$CouponList$Item {
  const UserCouponActivityInfoGet$Response$Data$CouponList$Item({
    required this.currencySymbol,
    required this.discountType,
    required this.discountInfo,
    required this.limitAmount,
    this.invalidPeriod,
    this.userCouponCode,
  });

  factory UserCouponActivityInfoGet$Response$Data$CouponList$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCouponActivityInfoGet$Response$Data$CouponList$ItemFromJson(json);

  static const toJsonFactory =
      _$UserCouponActivityInfoGet$Response$Data$CouponList$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserCouponActivityInfoGet$Response$Data$CouponList$ItemToJson(this);

  @JsonKey(name: 'currencySymbol')
  final String currencySymbol;
  @JsonKey(name: 'discountType')
  final double discountType;
  @JsonKey(name: 'discountInfo')
  final double discountInfo;
  @JsonKey(name: 'limitAmount')
  final double limitAmount;
  @JsonKey(name: 'invalidPeriod')
  final double? invalidPeriod;
  @JsonKey(name: 'userCouponCode')
  final String? userCouponCode;
  static const fromJsonFactory =
      _$UserCouponActivityInfoGet$Response$Data$CouponList$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponActivityInfoGet$Response$Data$CouponList$Item &&
            (identical(other.currencySymbol, currencySymbol) ||
                const DeepCollectionEquality().equals(
                  other.currencySymbol,
                  currencySymbol,
                )) &&
            (identical(other.discountType, discountType) ||
                const DeepCollectionEquality().equals(
                  other.discountType,
                  discountType,
                )) &&
            (identical(other.discountInfo, discountInfo) ||
                const DeepCollectionEquality().equals(
                  other.discountInfo,
                  discountInfo,
                )) &&
            (identical(other.limitAmount, limitAmount) ||
                const DeepCollectionEquality().equals(
                  other.limitAmount,
                  limitAmount,
                )) &&
            (identical(other.invalidPeriod, invalidPeriod) ||
                const DeepCollectionEquality().equals(
                  other.invalidPeriod,
                  invalidPeriod,
                )) &&
            (identical(other.userCouponCode, userCouponCode) ||
                const DeepCollectionEquality().equals(
                  other.userCouponCode,
                  userCouponCode,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(currencySymbol) ^
      const DeepCollectionEquality().hash(discountType) ^
      const DeepCollectionEquality().hash(discountInfo) ^
      const DeepCollectionEquality().hash(limitAmount) ^
      const DeepCollectionEquality().hash(invalidPeriod) ^
      const DeepCollectionEquality().hash(userCouponCode) ^
      runtimeType.hashCode;
}

extension $UserCouponActivityInfoGet$Response$Data$CouponList$ItemExtension
    on UserCouponActivityInfoGet$Response$Data$CouponList$Item {
  UserCouponActivityInfoGet$Response$Data$CouponList$Item copyWith({
    String? currencySymbol,
    double? discountType,
    double? discountInfo,
    double? limitAmount,
    double? invalidPeriod,
    String? userCouponCode,
  }) {
    return UserCouponActivityInfoGet$Response$Data$CouponList$Item(
      currencySymbol: currencySymbol ?? this.currencySymbol,
      discountType: discountType ?? this.discountType,
      discountInfo: discountInfo ?? this.discountInfo,
      limitAmount: limitAmount ?? this.limitAmount,
      invalidPeriod: invalidPeriod ?? this.invalidPeriod,
      userCouponCode: userCouponCode ?? this.userCouponCode,
    );
  }

  UserCouponActivityInfoGet$Response$Data$CouponList$Item copyWithWrapped({
    Wrapped<String>? currencySymbol,
    Wrapped<double>? discountType,
    Wrapped<double>? discountInfo,
    Wrapped<double>? limitAmount,
    Wrapped<double?>? invalidPeriod,
    Wrapped<String?>? userCouponCode,
  }) {
    return UserCouponActivityInfoGet$Response$Data$CouponList$Item(
      currencySymbol: (currencySymbol != null
          ? currencySymbol.value
          : this.currencySymbol),
      discountType: (discountType != null
          ? discountType.value
          : this.discountType),
      discountInfo: (discountInfo != null
          ? discountInfo.value
          : this.discountInfo),
      limitAmount: (limitAmount != null ? limitAmount.value : this.limitAmount),
      invalidPeriod: (invalidPeriod != null
          ? invalidPeriod.value
          : this.invalidPeriod),
      userCouponCode: (userCouponCode != null
          ? userCouponCode.value
          : this.userCouponCode),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserCouponActivityInfosGet$Response$Data$Item$CouponList$Item {
  const UserCouponActivityInfosGet$Response$Data$Item$CouponList$Item({
    this.couponCode,
    this.invalidPeriod,
    this.currencySymbol,
    this.discountType,
    this.discountInfo,
    this.limitAmount,
  });

  factory UserCouponActivityInfosGet$Response$Data$Item$CouponList$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCouponActivityInfosGet$Response$Data$Item$CouponList$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$UserCouponActivityInfosGet$Response$Data$Item$CouponList$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserCouponActivityInfosGet$Response$Data$Item$CouponList$ItemToJson(
        this,
      );

  @JsonKey(name: 'couponCode')
  final String? couponCode;
  @JsonKey(name: 'invalidPeriod')
  final double? invalidPeriod;
  @JsonKey(name: 'currencySymbol')
  final String? currencySymbol;
  @JsonKey(name: 'discountType')
  final int? discountType;
  @JsonKey(name: 'discountInfo')
  final double? discountInfo;
  @JsonKey(name: 'limitAmount')
  final double? limitAmount;
  static const fromJsonFactory =
      _$UserCouponActivityInfosGet$Response$Data$Item$CouponList$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is UserCouponActivityInfosGet$Response$Data$Item$CouponList$Item &&
            (identical(other.couponCode, couponCode) ||
                const DeepCollectionEquality().equals(
                  other.couponCode,
                  couponCode,
                )) &&
            (identical(other.invalidPeriod, invalidPeriod) ||
                const DeepCollectionEquality().equals(
                  other.invalidPeriod,
                  invalidPeriod,
                )) &&
            (identical(other.currencySymbol, currencySymbol) ||
                const DeepCollectionEquality().equals(
                  other.currencySymbol,
                  currencySymbol,
                )) &&
            (identical(other.discountType, discountType) ||
                const DeepCollectionEquality().equals(
                  other.discountType,
                  discountType,
                )) &&
            (identical(other.discountInfo, discountInfo) ||
                const DeepCollectionEquality().equals(
                  other.discountInfo,
                  discountInfo,
                )) &&
            (identical(other.limitAmount, limitAmount) ||
                const DeepCollectionEquality().equals(
                  other.limitAmount,
                  limitAmount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(couponCode) ^
      const DeepCollectionEquality().hash(invalidPeriod) ^
      const DeepCollectionEquality().hash(currencySymbol) ^
      const DeepCollectionEquality().hash(discountType) ^
      const DeepCollectionEquality().hash(discountInfo) ^
      const DeepCollectionEquality().hash(limitAmount) ^
      runtimeType.hashCode;
}

extension $UserCouponActivityInfosGet$Response$Data$Item$CouponList$ItemExtension
    on UserCouponActivityInfosGet$Response$Data$Item$CouponList$Item {
  UserCouponActivityInfosGet$Response$Data$Item$CouponList$Item copyWith({
    String? couponCode,
    double? invalidPeriod,
    String? currencySymbol,
    int? discountType,
    double? discountInfo,
    double? limitAmount,
  }) {
    return UserCouponActivityInfosGet$Response$Data$Item$CouponList$Item(
      couponCode: couponCode ?? this.couponCode,
      invalidPeriod: invalidPeriod ?? this.invalidPeriod,
      currencySymbol: currencySymbol ?? this.currencySymbol,
      discountType: discountType ?? this.discountType,
      discountInfo: discountInfo ?? this.discountInfo,
      limitAmount: limitAmount ?? this.limitAmount,
    );
  }

  UserCouponActivityInfosGet$Response$Data$Item$CouponList$Item
  copyWithWrapped({
    Wrapped<String?>? couponCode,
    Wrapped<double?>? invalidPeriod,
    Wrapped<String?>? currencySymbol,
    Wrapped<int?>? discountType,
    Wrapped<double?>? discountInfo,
    Wrapped<double?>? limitAmount,
  }) {
    return UserCouponActivityInfosGet$Response$Data$Item$CouponList$Item(
      couponCode: (couponCode != null ? couponCode.value : this.couponCode),
      invalidPeriod: (invalidPeriod != null
          ? invalidPeriod.value
          : this.invalidPeriod),
      currencySymbol: (currencySymbol != null
          ? currencySymbol.value
          : this.currencySymbol),
      discountType: (discountType != null
          ? discountType.value
          : this.discountType),
      discountInfo: (discountInfo != null
          ? discountInfo.value
          : this.discountInfo),
      limitAmount: (limitAmount != null ? limitAmount.value : this.limitAmount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item {
  const UserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item({
    this.userId,
    this.tenantCode,
    this.couponCode,
    this.couponTitle,
    this.isUsed,
    this.gmtInvalid,
    this.type,
    this.discount,
    this.limitAmount,
    this.currency,
    this.discountTarget,
    this.limitAmountTarget,
    this.currencyTarget,
    this.couponImage,
    this.invalidPeriod,
  });

  factory UserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCouponGetListGet$Response$Data$Item$UserCouponDtos$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$UserCouponGetListGet$Response$Data$Item$UserCouponDtos$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserCouponGetListGet$Response$Data$Item$UserCouponDtos$ItemToJson(this);

  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'tenantCode')
  final String? tenantCode;
  @JsonKey(name: 'couponCode')
  final String? couponCode;
  @JsonKey(name: 'couponTitle')
  final String? couponTitle;
  @JsonKey(name: 'isUsed')
  final double? isUsed;
  @JsonKey(name: 'gmtInvalid')
  final String? gmtInvalid;
  @JsonKey(name: 'type')
  final double? type;
  @JsonKey(name: 'discount')
  final String? discount;
  @JsonKey(name: 'limitAmount')
  final String? limitAmount;
  @JsonKey(name: 'currency')
  final String? currency;
  @JsonKey(name: 'discountTarget')
  final String? discountTarget;
  @JsonKey(name: 'limitAmountTarget')
  final String? limitAmountTarget;
  @JsonKey(name: 'currencyTarget')
  final String? currencyTarget;
  @JsonKey(name: 'couponImage')
  final String? couponImage;
  @JsonKey(name: 'invalidPeriod')
  final double? invalidPeriod;
  static const fromJsonFactory =
      _$UserCouponGetListGet$Response$Data$Item$UserCouponDtos$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.tenantCode, tenantCode) ||
                const DeepCollectionEquality().equals(
                  other.tenantCode,
                  tenantCode,
                )) &&
            (identical(other.couponCode, couponCode) ||
                const DeepCollectionEquality().equals(
                  other.couponCode,
                  couponCode,
                )) &&
            (identical(other.couponTitle, couponTitle) ||
                const DeepCollectionEquality().equals(
                  other.couponTitle,
                  couponTitle,
                )) &&
            (identical(other.isUsed, isUsed) ||
                const DeepCollectionEquality().equals(other.isUsed, isUsed)) &&
            (identical(other.gmtInvalid, gmtInvalid) ||
                const DeepCollectionEquality().equals(
                  other.gmtInvalid,
                  gmtInvalid,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality().equals(
                  other.discount,
                  discount,
                )) &&
            (identical(other.limitAmount, limitAmount) ||
                const DeepCollectionEquality().equals(
                  other.limitAmount,
                  limitAmount,
                )) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality().equals(
                  other.currency,
                  currency,
                )) &&
            (identical(other.discountTarget, discountTarget) ||
                const DeepCollectionEquality().equals(
                  other.discountTarget,
                  discountTarget,
                )) &&
            (identical(other.limitAmountTarget, limitAmountTarget) ||
                const DeepCollectionEquality().equals(
                  other.limitAmountTarget,
                  limitAmountTarget,
                )) &&
            (identical(other.currencyTarget, currencyTarget) ||
                const DeepCollectionEquality().equals(
                  other.currencyTarget,
                  currencyTarget,
                )) &&
            (identical(other.couponImage, couponImage) ||
                const DeepCollectionEquality().equals(
                  other.couponImage,
                  couponImage,
                )) &&
            (identical(other.invalidPeriod, invalidPeriod) ||
                const DeepCollectionEquality().equals(
                  other.invalidPeriod,
                  invalidPeriod,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(tenantCode) ^
      const DeepCollectionEquality().hash(couponCode) ^
      const DeepCollectionEquality().hash(couponTitle) ^
      const DeepCollectionEquality().hash(isUsed) ^
      const DeepCollectionEquality().hash(gmtInvalid) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(limitAmount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(discountTarget) ^
      const DeepCollectionEquality().hash(limitAmountTarget) ^
      const DeepCollectionEquality().hash(currencyTarget) ^
      const DeepCollectionEquality().hash(couponImage) ^
      const DeepCollectionEquality().hash(invalidPeriod) ^
      runtimeType.hashCode;
}

extension $UserCouponGetListGet$Response$Data$Item$UserCouponDtos$ItemExtension
    on UserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item {
  UserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item copyWith({
    String? userId,
    String? tenantCode,
    String? couponCode,
    String? couponTitle,
    double? isUsed,
    String? gmtInvalid,
    double? type,
    String? discount,
    String? limitAmount,
    String? currency,
    String? discountTarget,
    String? limitAmountTarget,
    String? currencyTarget,
    String? couponImage,
    double? invalidPeriod,
  }) {
    return UserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item(
      userId: userId ?? this.userId,
      tenantCode: tenantCode ?? this.tenantCode,
      couponCode: couponCode ?? this.couponCode,
      couponTitle: couponTitle ?? this.couponTitle,
      isUsed: isUsed ?? this.isUsed,
      gmtInvalid: gmtInvalid ?? this.gmtInvalid,
      type: type ?? this.type,
      discount: discount ?? this.discount,
      limitAmount: limitAmount ?? this.limitAmount,
      currency: currency ?? this.currency,
      discountTarget: discountTarget ?? this.discountTarget,
      limitAmountTarget: limitAmountTarget ?? this.limitAmountTarget,
      currencyTarget: currencyTarget ?? this.currencyTarget,
      couponImage: couponImage ?? this.couponImage,
      invalidPeriod: invalidPeriod ?? this.invalidPeriod,
    );
  }

  UserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item copyWithWrapped({
    Wrapped<String?>? userId,
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? couponCode,
    Wrapped<String?>? couponTitle,
    Wrapped<double?>? isUsed,
    Wrapped<String?>? gmtInvalid,
    Wrapped<double?>? type,
    Wrapped<String?>? discount,
    Wrapped<String?>? limitAmount,
    Wrapped<String?>? currency,
    Wrapped<String?>? discountTarget,
    Wrapped<String?>? limitAmountTarget,
    Wrapped<String?>? currencyTarget,
    Wrapped<String?>? couponImage,
    Wrapped<double?>? invalidPeriod,
  }) {
    return UserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item(
      userId: (userId != null ? userId.value : this.userId),
      tenantCode: (tenantCode != null ? tenantCode.value : this.tenantCode),
      couponCode: (couponCode != null ? couponCode.value : this.couponCode),
      couponTitle: (couponTitle != null ? couponTitle.value : this.couponTitle),
      isUsed: (isUsed != null ? isUsed.value : this.isUsed),
      gmtInvalid: (gmtInvalid != null ? gmtInvalid.value : this.gmtInvalid),
      type: (type != null ? type.value : this.type),
      discount: (discount != null ? discount.value : this.discount),
      limitAmount: (limitAmount != null ? limitAmount.value : this.limitAmount),
      currency: (currency != null ? currency.value : this.currency),
      discountTarget: (discountTarget != null
          ? discountTarget.value
          : this.discountTarget),
      limitAmountTarget: (limitAmountTarget != null
          ? limitAmountTarget.value
          : this.limitAmountTarget),
      currencyTarget: (currencyTarget != null
          ? currencyTarget.value
          : this.currencyTarget),
      couponImage: (couponImage != null ? couponImage.value : this.couponImage),
      invalidPeriod: (invalidPeriod != null
          ? invalidPeriod.value
          : this.invalidPeriod),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item {
  const UserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item({
    required this.currencySymbol,
    required this.discountType,
    required this.discountInfo,
    required this.limitAmount,
  });

  factory UserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCouponNoAuthActivityInfoGet$Response$Data$CouponList$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$UserCouponNoAuthActivityInfoGet$Response$Data$CouponList$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserCouponNoAuthActivityInfoGet$Response$Data$CouponList$ItemToJson(
        this,
      );

  @JsonKey(name: 'currencySymbol')
  final String currencySymbol;
  @JsonKey(name: 'discountType')
  final double discountType;
  @JsonKey(name: 'discountInfo')
  final double discountInfo;
  @JsonKey(name: 'limitAmount')
  final double limitAmount;
  static const fromJsonFactory =
      _$UserCouponNoAuthActivityInfoGet$Response$Data$CouponList$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is UserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item &&
            (identical(other.currencySymbol, currencySymbol) ||
                const DeepCollectionEquality().equals(
                  other.currencySymbol,
                  currencySymbol,
                )) &&
            (identical(other.discountType, discountType) ||
                const DeepCollectionEquality().equals(
                  other.discountType,
                  discountType,
                )) &&
            (identical(other.discountInfo, discountInfo) ||
                const DeepCollectionEquality().equals(
                  other.discountInfo,
                  discountInfo,
                )) &&
            (identical(other.limitAmount, limitAmount) ||
                const DeepCollectionEquality().equals(
                  other.limitAmount,
                  limitAmount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(currencySymbol) ^
      const DeepCollectionEquality().hash(discountType) ^
      const DeepCollectionEquality().hash(discountInfo) ^
      const DeepCollectionEquality().hash(limitAmount) ^
      runtimeType.hashCode;
}

extension $UserCouponNoAuthActivityInfoGet$Response$Data$CouponList$ItemExtension
    on UserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item {
  UserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item copyWith({
    String? currencySymbol,
    double? discountType,
    double? discountInfo,
    double? limitAmount,
  }) {
    return UserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item(
      currencySymbol: currencySymbol ?? this.currencySymbol,
      discountType: discountType ?? this.discountType,
      discountInfo: discountInfo ?? this.discountInfo,
      limitAmount: limitAmount ?? this.limitAmount,
    );
  }

  UserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item
  copyWithWrapped({
    Wrapped<String>? currencySymbol,
    Wrapped<double>? discountType,
    Wrapped<double>? discountInfo,
    Wrapped<double>? limitAmount,
  }) {
    return UserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item(
      currencySymbol: (currencySymbol != null
          ? currencySymbol.value
          : this.currencySymbol),
      discountType: (discountType != null
          ? discountType.value
          : this.discountType),
      discountInfo: (discountInfo != null
          ? discountInfo.value
          : this.discountInfo),
      limitAmount: (limitAmount != null ? limitAmount.value : this.limitAmount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserCouponGetGet$Response$Data$Item$MsgInfo {
  const UserCouponGetGet$Response$Data$Item$MsgInfo({
    this.name,
    this.limit,
    this.usage,
    required this.discountStr,
    required this.discountUnit,
  });

  factory UserCouponGetGet$Response$Data$Item$MsgInfo.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCouponGetGet$Response$Data$Item$MsgInfoFromJson(json);

  static const toJsonFactory =
      _$UserCouponGetGet$Response$Data$Item$MsgInfoToJson;
  Map<String, dynamic> toJson() =>
      _$UserCouponGetGet$Response$Data$Item$MsgInfoToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'limit')
  final String? limit;
  @JsonKey(name: 'usage')
  final String? usage;
  @JsonKey(name: 'discountStr')
  final String discountStr;
  @JsonKey(name: 'discountUnit')
  final String discountUnit;
  static const fromJsonFactory =
      _$UserCouponGetGet$Response$Data$Item$MsgInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponGetGet$Response$Data$Item$MsgInfo &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.usage, usage) ||
                const DeepCollectionEquality().equals(other.usage, usage)) &&
            (identical(other.discountStr, discountStr) ||
                const DeepCollectionEquality().equals(
                  other.discountStr,
                  discountStr,
                )) &&
            (identical(other.discountUnit, discountUnit) ||
                const DeepCollectionEquality().equals(
                  other.discountUnit,
                  discountUnit,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(usage) ^
      const DeepCollectionEquality().hash(discountStr) ^
      const DeepCollectionEquality().hash(discountUnit) ^
      runtimeType.hashCode;
}

extension $UserCouponGetGet$Response$Data$Item$MsgInfoExtension
    on UserCouponGetGet$Response$Data$Item$MsgInfo {
  UserCouponGetGet$Response$Data$Item$MsgInfo copyWith({
    String? name,
    String? limit,
    String? usage,
    String? discountStr,
    String? discountUnit,
  }) {
    return UserCouponGetGet$Response$Data$Item$MsgInfo(
      name: name ?? this.name,
      limit: limit ?? this.limit,
      usage: usage ?? this.usage,
      discountStr: discountStr ?? this.discountStr,
      discountUnit: discountUnit ?? this.discountUnit,
    );
  }

  UserCouponGetGet$Response$Data$Item$MsgInfo copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<String?>? limit,
    Wrapped<String?>? usage,
    Wrapped<String>? discountStr,
    Wrapped<String>? discountUnit,
  }) {
    return UserCouponGetGet$Response$Data$Item$MsgInfo(
      name: (name != null ? name.value : this.name),
      limit: (limit != null ? limit.value : this.limit),
      usage: (usage != null ? usage.value : this.usage),
      discountStr: (discountStr != null ? discountStr.value : this.discountStr),
      discountUnit: (discountUnit != null
          ? discountUnit.value
          : this.discountUnit),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImGetInfoPost$Response$Data$WhiteList$Item {
  const ImGetInfoPost$Response$Data$WhiteList$Item({
    required this.channelId,
    required this.channelType,
  });

  factory ImGetInfoPost$Response$Data$WhiteList$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$ImGetInfoPost$Response$Data$WhiteList$ItemFromJson(json);

  static const toJsonFactory =
      _$ImGetInfoPost$Response$Data$WhiteList$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ImGetInfoPost$Response$Data$WhiteList$ItemToJson(this);

  @JsonKey(name: 'channelId')
  final String channelId;
  @JsonKey(name: 'channelType')
  final String channelType;
  static const fromJsonFactory =
      _$ImGetInfoPost$Response$Data$WhiteList$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImGetInfoPost$Response$Data$WhiteList$Item &&
            (identical(other.channelId, channelId) ||
                const DeepCollectionEquality().equals(
                  other.channelId,
                  channelId,
                )) &&
            (identical(other.channelType, channelType) ||
                const DeepCollectionEquality().equals(
                  other.channelType,
                  channelType,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(channelId) ^
      const DeepCollectionEquality().hash(channelType) ^
      runtimeType.hashCode;
}

extension $ImGetInfoPost$Response$Data$WhiteList$ItemExtension
    on ImGetInfoPost$Response$Data$WhiteList$Item {
  ImGetInfoPost$Response$Data$WhiteList$Item copyWith({
    String? channelId,
    String? channelType,
  }) {
    return ImGetInfoPost$Response$Data$WhiteList$Item(
      channelId: channelId ?? this.channelId,
      channelType: channelType ?? this.channelType,
    );
  }

  ImGetInfoPost$Response$Data$WhiteList$Item copyWithWrapped({
    Wrapped<String>? channelId,
    Wrapped<String>? channelType,
  }) {
    return ImGetInfoPost$Response$Data$WhiteList$Item(
      channelId: (channelId != null ? channelId.value : this.channelId),
      channelType: (channelType != null ? channelType.value : this.channelType),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ImGetInfoPost$Response$Data$Setting {
  const ImGetInfoPost$Response$Data$Setting({
    this.searchByPhone,
    this.searchByShort,
    this.newMsgNotice,
    this.msgShowDetail,
    this.voiceOn,
    this.shockOn,
    this.offlineProtection,
    this.deviceLock,
    this.muteOfApp,
  });

  factory ImGetInfoPost$Response$Data$Setting.fromJson(
    Map<String, dynamic> json,
  ) => _$ImGetInfoPost$Response$Data$SettingFromJson(json);

  static const toJsonFactory = _$ImGetInfoPost$Response$Data$SettingToJson;
  Map<String, dynamic> toJson() =>
      _$ImGetInfoPost$Response$Data$SettingToJson(this);

  @JsonKey(name: 'search_by_phone')
  final double? searchByPhone;
  @JsonKey(name: 'search_by_short')
  final double? searchByShort;
  @JsonKey(name: 'new_msg_notice')
  final double? newMsgNotice;
  @JsonKey(name: 'msg_show_detail')
  final double? msgShowDetail;
  @JsonKey(name: 'voice_on')
  final double? voiceOn;
  @JsonKey(name: 'shock_on')
  final double? shockOn;
  @JsonKey(name: 'offline_protection')
  final double? offlineProtection;
  @JsonKey(name: 'device_lock')
  final double? deviceLock;
  @JsonKey(name: 'mute_of_app')
  final double? muteOfApp;
  static const fromJsonFactory = _$ImGetInfoPost$Response$Data$SettingFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ImGetInfoPost$Response$Data$Setting &&
            (identical(other.searchByPhone, searchByPhone) ||
                const DeepCollectionEquality().equals(
                  other.searchByPhone,
                  searchByPhone,
                )) &&
            (identical(other.searchByShort, searchByShort) ||
                const DeepCollectionEquality().equals(
                  other.searchByShort,
                  searchByShort,
                )) &&
            (identical(other.newMsgNotice, newMsgNotice) ||
                const DeepCollectionEquality().equals(
                  other.newMsgNotice,
                  newMsgNotice,
                )) &&
            (identical(other.msgShowDetail, msgShowDetail) ||
                const DeepCollectionEquality().equals(
                  other.msgShowDetail,
                  msgShowDetail,
                )) &&
            (identical(other.voiceOn, voiceOn) ||
                const DeepCollectionEquality().equals(
                  other.voiceOn,
                  voiceOn,
                )) &&
            (identical(other.shockOn, shockOn) ||
                const DeepCollectionEquality().equals(
                  other.shockOn,
                  shockOn,
                )) &&
            (identical(other.offlineProtection, offlineProtection) ||
                const DeepCollectionEquality().equals(
                  other.offlineProtection,
                  offlineProtection,
                )) &&
            (identical(other.deviceLock, deviceLock) ||
                const DeepCollectionEquality().equals(
                  other.deviceLock,
                  deviceLock,
                )) &&
            (identical(other.muteOfApp, muteOfApp) ||
                const DeepCollectionEquality().equals(
                  other.muteOfApp,
                  muteOfApp,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(searchByPhone) ^
      const DeepCollectionEquality().hash(searchByShort) ^
      const DeepCollectionEquality().hash(newMsgNotice) ^
      const DeepCollectionEquality().hash(msgShowDetail) ^
      const DeepCollectionEquality().hash(voiceOn) ^
      const DeepCollectionEquality().hash(shockOn) ^
      const DeepCollectionEquality().hash(offlineProtection) ^
      const DeepCollectionEquality().hash(deviceLock) ^
      const DeepCollectionEquality().hash(muteOfApp) ^
      runtimeType.hashCode;
}

extension $ImGetInfoPost$Response$Data$SettingExtension
    on ImGetInfoPost$Response$Data$Setting {
  ImGetInfoPost$Response$Data$Setting copyWith({
    double? searchByPhone,
    double? searchByShort,
    double? newMsgNotice,
    double? msgShowDetail,
    double? voiceOn,
    double? shockOn,
    double? offlineProtection,
    double? deviceLock,
    double? muteOfApp,
  }) {
    return ImGetInfoPost$Response$Data$Setting(
      searchByPhone: searchByPhone ?? this.searchByPhone,
      searchByShort: searchByShort ?? this.searchByShort,
      newMsgNotice: newMsgNotice ?? this.newMsgNotice,
      msgShowDetail: msgShowDetail ?? this.msgShowDetail,
      voiceOn: voiceOn ?? this.voiceOn,
      shockOn: shockOn ?? this.shockOn,
      offlineProtection: offlineProtection ?? this.offlineProtection,
      deviceLock: deviceLock ?? this.deviceLock,
      muteOfApp: muteOfApp ?? this.muteOfApp,
    );
  }

  ImGetInfoPost$Response$Data$Setting copyWithWrapped({
    Wrapped<double?>? searchByPhone,
    Wrapped<double?>? searchByShort,
    Wrapped<double?>? newMsgNotice,
    Wrapped<double?>? msgShowDetail,
    Wrapped<double?>? voiceOn,
    Wrapped<double?>? shockOn,
    Wrapped<double?>? offlineProtection,
    Wrapped<double?>? deviceLock,
    Wrapped<double?>? muteOfApp,
  }) {
    return ImGetInfoPost$Response$Data$Setting(
      searchByPhone: (searchByPhone != null
          ? searchByPhone.value
          : this.searchByPhone),
      searchByShort: (searchByShort != null
          ? searchByShort.value
          : this.searchByShort),
      newMsgNotice: (newMsgNotice != null
          ? newMsgNotice.value
          : this.newMsgNotice),
      msgShowDetail: (msgShowDetail != null
          ? msgShowDetail.value
          : this.msgShowDetail),
      voiceOn: (voiceOn != null ? voiceOn.value : this.voiceOn),
      shockOn: (shockOn != null ? shockOn.value : this.shockOn),
      offlineProtection: (offlineProtection != null
          ? offlineProtection.value
          : this.offlineProtection),
      deviceLock: (deviceLock != null ? deviceLock.value : this.deviceLock),
      muteOfApp: (muteOfApp != null ? muteOfApp.value : this.muteOfApp),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo {
  const UserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo({
    this.name,
    this.usage,
  });

  factory UserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCouponAppHomeActivityPost$Response$Data$Item$MsgInfoFromJson(json);

  static const toJsonFactory =
      _$UserCouponAppHomeActivityPost$Response$Data$Item$MsgInfoToJson;
  Map<String, dynamic> toJson() =>
      _$UserCouponAppHomeActivityPost$Response$Data$Item$MsgInfoToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'usage')
  final String? usage;
  static const fromJsonFactory =
      _$UserCouponAppHomeActivityPost$Response$Data$Item$MsgInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.usage, usage) ||
                const DeepCollectionEquality().equals(other.usage, usage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(usage) ^
      runtimeType.hashCode;
}

extension $UserCouponAppHomeActivityPost$Response$Data$Item$MsgInfoExtension
    on UserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo {
  UserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo copyWith({
    String? name,
    String? usage,
  }) {
    return UserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo(
      name: name ?? this.name,
      usage: usage ?? this.usage,
    );
  }

  UserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<String?>? usage,
  }) {
    return UserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo(
      name: (name != null ? name.value : this.name),
      usage: (usage != null ? usage.value : this.usage),
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
