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
import 'package:w2capp/shared/utils/json_coerce.dart';

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
      baseUrl: baseUrl ?? Uri.parse('http://'),
    );
    return _$SwaggerApiUser(newClient);
  }

  ///修改地址
  ///@param root
  Future<chopper.Response<UserServiceAddressUpdatePost$Response>>
  userServiceAddressUpdatePost({UserServiceAddressUpdatePostRequest? root}) {
    generatedMapping.putIfAbsent(
      UserServiceAddressUpdatePostRequest,
      () => UserServiceAddressUpdatePostRequest.fromJsonFactory,
    );
    generatedMapping.putIfAbsent(
      UserServiceAddressUpdatePost$Response,
      () => UserServiceAddressUpdatePost$Response.fromJsonFactory,
    );

    return _userServiceAddressUpdatePost(root: root);
  }

  ///修改地址
  ///@param root
  @POST(path: '/user-service/address/update')
  Future<chopper.Response<UserServiceAddressUpdatePost$Response>>
  _userServiceAddressUpdatePost({
    @Body() UserServiceAddressUpdatePostRequest? root,
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
  Future<chopper.Response<UserServiceAddressDeleteDelete$Response>>
  userServiceAddressDeleteDelete({required String? id}) {
    generatedMapping.putIfAbsent(
      UserServiceAddressDeleteDelete$Response,
      () => UserServiceAddressDeleteDelete$Response.fromJsonFactory,
    );

    return _userServiceAddressDeleteDelete(id: id);
  }

  ///删除地址
  ///@param id id
  @DELETE(path: '/user-service/address/delete')
  Future<chopper.Response<UserServiceAddressDeleteDelete$Response>>
  _userServiceAddressDeleteDelete({
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
  Future<chopper.Response<UserServiceAddressQueryGet$Response>>
  userServiceAddressQueryGet({
    String? searchAddress,
    required String? portalCode,
  }) {
    generatedMapping.putIfAbsent(
      UserServiceAddressQueryGet$Response,
      () => UserServiceAddressQueryGet$Response.fromJsonFactory,
    );

    return _userServiceAddressQueryGet(
      searchAddress: searchAddress,
      portalCode: portalCode,
    );
  }

  ///地址联想
  ///@param searchAddress
  ///@param portalCode
  @GET(path: '/user-service/address/query')
  Future<chopper.Response<UserServiceAddressQueryGet$Response>>
  _userServiceAddressQueryGet({
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
  Future<chopper.Response<UserServiceNoAuthSupportCountryGet$Response>>
  userServiceNoAuthSupportCountryGet() {
    generatedMapping.putIfAbsent(
      UserServiceNoAuthSupportCountryGet$Response,
      () => UserServiceNoAuthSupportCountryGet$Response.fromJsonFactory,
    );

    return _userServiceNoAuthSupportCountryGet();
  }

  ///支持国家
  @GET(path: '/user-service/no-auth/support/country')
  Future<chopper.Response<UserServiceNoAuthSupportCountryGet$Response>>
  _userServiceNoAuthSupportCountryGet({
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
  Future<chopper.Response<UserServiceAddressListGet$Response>>
  userServiceAddressListGet() {
    generatedMapping.putIfAbsent(
      UserServiceAddressListGet$Response,
      () => UserServiceAddressListGet$Response.fromJsonFactory,
    );

    return _userServiceAddressListGet();
  }

  ///收货地址列表
  @GET(path: '/user-service/address/list')
  Future<chopper.Response<UserServiceAddressListGet$Response>>
  _userServiceAddressListGet({
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
  Future<chopper.Response<UserServiceGetShippingAddressByCountryGet$Response>>
  userServiceGetShippingAddressByCountryGet({required String? country}) {
    generatedMapping.putIfAbsent(
      UserServiceGetShippingAddressByCountryGet$Response,
      () => UserServiceGetShippingAddressByCountryGet$Response.fromJsonFactory,
    );

    return _userServiceGetShippingAddressByCountryGet(country: country);
  }

  ///收货地址（按国家查询）
  ///@param country
  @GET(path: '/user-service/getShippingAddressByCountry')
  Future<chopper.Response<UserServiceGetShippingAddressByCountryGet$Response>>
  _userServiceGetShippingAddressByCountryGet({
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
  Future<chopper.Response<UserServiceAddressAddPost$Response>>
  userServiceAddressAddPost({UserServiceAddressAddPostRequest? root}) {
    generatedMapping.putIfAbsent(
      UserServiceAddressAddPostRequest,
      () => UserServiceAddressAddPostRequest.fromJsonFactory,
    );
    generatedMapping.putIfAbsent(
      UserServiceAddressAddPost$Response,
      () => UserServiceAddressAddPost$Response.fromJsonFactory,
    );

    return _userServiceAddressAddPost(root: root);
  }

  ///新增用户地址
  ///@param root
  @POST(path: '/user-service/address/add')
  Future<chopper.Response<UserServiceAddressAddPost$Response>>
  _userServiceAddressAddPost({
    @Body() UserServiceAddressAddPostRequest? root,
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
  Future<chopper.Response<UserServiceGetDefaultShippingAddressGet$Response>>
  userServiceGetDefaultShippingAddressGet({
    String? authorization,
    String? userId,
  }) {
    generatedMapping.putIfAbsent(
      UserServiceGetDefaultShippingAddressGet$Response,
      () => UserServiceGetDefaultShippingAddressGet$Response.fromJsonFactory,
    );

    return _userServiceGetDefaultShippingAddressGet(
      authorization: authorization?.toString(),
      userId: userId,
    );
  }

  ///查询默认收货地址
  ///@param Authorization Authorization (Only:)
  ///@param userId
  @GET(path: '/user-service/getDefaultShippingAddress')
  Future<chopper.Response<UserServiceGetDefaultShippingAddressGet$Response>>
  _userServiceGetDefaultShippingAddressGet({
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
  Future<chopper.Response<UserServiceAddressCountryGet$Response>>
  userServiceAddressCountryGet({
    String? areaCode,
    required String? portalCode,
  }) {
    generatedMapping.putIfAbsent(
      UserServiceAddressCountryGet$Response,
      () => UserServiceAddressCountryGet$Response.fromJsonFactory,
    );

    return _userServiceAddressCountryGet(
      areaCode: areaCode,
      portalCode: portalCode,
    );
  }

  ///省市区列表
  ///@param areaCode
  ///@param portalCode CA,US
  @GET(path: '/user-service/address/country')
  Future<chopper.Response<UserServiceAddressCountryGet$Response>>
  _userServiceAddressCountryGet({
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
  Future<chopper.Response<UserServiceAddressQueryByZipCodeGet$Response>>
  userServiceAddressQueryByZipCodeGet({
    required String? zipCode,
    required String? portalCode,
  }) {
    generatedMapping.putIfAbsent(
      UserServiceAddressQueryByZipCodeGet$Response,
      () => UserServiceAddressQueryByZipCodeGet$Response.fromJsonFactory,
    );

    return _userServiceAddressQueryByZipCodeGet(
      zipCode: zipCode,
      portalCode: portalCode,
    );
  }

  ///邮编查询
  ///@param zipCode
  ///@param portalCode
  @GET(path: '/user-service/address/queryByZipCode')
  Future<chopper.Response<UserServiceAddressQueryByZipCodeGet$Response>>
  _userServiceAddressQueryByZipCodeGet({
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
  Future<chopper.Response<UserServiceUserInnerUpdUserLevelPost$Response>>
  userServiceUserInnerUpdUserLevelPost({
    UserServiceUserInnerUpdUserLevelPostRequest? root,
  }) {
    generatedMapping.putIfAbsent(
      UserServiceUserInnerUpdUserLevelPostRequest,
      () => UserServiceUserInnerUpdUserLevelPostRequest.fromJsonFactory,
    );
    generatedMapping.putIfAbsent(
      UserServiceUserInnerUpdUserLevelPost$Response,
      () => UserServiceUserInnerUpdUserLevelPost$Response.fromJsonFactory,
    );

    return _userServiceUserInnerUpdUserLevelPost(root: root);
  }

  ///更新用户等级
  ///@param root
  @POST(path: '/user-service/user/inner/upd/user-level')
  Future<chopper.Response<UserServiceUserInnerUpdUserLevelPost$Response>>
  _userServiceUserInnerUpdUserLevelPost({
    @Body() UserServiceUserInnerUpdUserLevelPostRequest? root,
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
  Future<chopper.Response<UserServiceSigninSwitchPortalPost$Response>>
  userServiceSigninSwitchPortalPost({
    UserServiceSigninSwitchportalPostRequest? root,
  }) {
    generatedMapping.putIfAbsent(
      UserServiceSigninSwitchportalPostRequest,
      () => UserServiceSigninSwitchportalPostRequest.fromJsonFactory,
    );
    generatedMapping.putIfAbsent(
      UserServiceSigninSwitchPortalPost$Response,
      () => UserServiceSigninSwitchPortalPost$Response.fromJsonFactory,
    );

    return _userServiceSigninSwitchPortalPost(root: root);
  }

  ///切换国家
  ///@param root
  @POST(path: '/user-service/signin/switchPortal')
  Future<chopper.Response<UserServiceSigninSwitchPortalPost$Response>>
  _userServiceSigninSwitchPortalPost({
    @Body() UserServiceSigninSwitchportalPostRequest? root,
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
  Future<chopper.Response<UserServiceSignInInitPost$Response>>
  userServiceSignInInitPost({UserServiceSigninInitPostRequest? root}) {
    generatedMapping.putIfAbsent(
      UserServiceSigninInitPostRequest,
      () => UserServiceSigninInitPostRequest.fromJsonFactory,
    );
    generatedMapping.putIfAbsent(
      UserServiceSignInInitPost$Response,
      () => UserServiceSignInInitPost$Response.fromJsonFactory,
    );

    return _userServiceSignInInitPost(root: root);
  }

  ///发送验证码
  ///@param root
  @POST(path: '/user-service/signIn/init')
  Future<chopper.Response<UserServiceSignInInitPost$Response>>
  _userServiceSignInInitPost({
    @Body() UserServiceSigninInitPostRequest? root,
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
  Future<chopper.Response<UserServiceOtpApplyPost$Response>>
  userServiceOtpApplyPost({UserServiceOtpApplyPostRequest? root}) {
    generatedMapping.putIfAbsent(
      UserServiceOtpApplyPostRequest,
      () => UserServiceOtpApplyPostRequest.fromJsonFactory,
    );
    generatedMapping.putIfAbsent(
      UserServiceOtpApplyPost$Response,
      () => UserServiceOtpApplyPost$Response.fromJsonFactory,
    );

    return _userServiceOtpApplyPost(root: root);
  }

  ///生成临时token
  ///@param root
  @POST(path: '/user-service/otp/apply')
  Future<chopper.Response<UserServiceOtpApplyPost$Response>>
  _userServiceOtpApplyPost({
    @Body() UserServiceOtpApplyPostRequest? root,
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
  Future<chopper.Response<String>> userServiceSignOutPost({
    String? authorization,
  }) {
    return _userServiceSignOutPost(authorization: authorization?.toString());
  }

  ///登出
  ///@param Authorization Authorization (Only:)
  @POST(path: '/user-service/signOut', optionalBody: true)
  Future<chopper.Response<String>> _userServiceSignOutPost({
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
  Future<chopper.Response<UserServiceSignInVerifyPost$Response>>
  userServiceSignInVerifyPost({UserServiceSigninVerifyPostRequest? root}) {
    generatedMapping.putIfAbsent(
      UserServiceSigninVerifyPostRequest,
      () => UserServiceSigninVerifyPostRequest.fromJsonFactory,
    );
    generatedMapping.putIfAbsent(
      UserServiceSignInVerifyPost$Response,
      () => UserServiceSignInVerifyPost$Response.fromJsonFactory,
    );

    return _userServiceSignInVerifyPost(root: root);
  }

  ///登录校验密码\验证码
  ///@param root
  @POST(path: '/user-service/signIn/verify')
  Future<chopper.Response<UserServiceSignInVerifyPost$Response>>
  _userServiceSignInVerifyPost({
    @Body() UserServiceSigninVerifyPostRequest? root,
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
  Future<chopper.Response<UserServiceSignInCallPost$Response>>
  userServiceSignInCallPost({UserServiceSigninCallPostRequest? root}) {
    generatedMapping.putIfAbsent(
      UserServiceSigninCallPostRequest,
      () => UserServiceSigninCallPostRequest.fromJsonFactory,
    );
    generatedMapping.putIfAbsent(
      UserServiceSignInCallPost$Response,
      () => UserServiceSignInCallPost$Response.fromJsonFactory,
    );

    return _userServiceSignInCallPost(root: root);
  }

  ///轮询登录信息
  ///@param root
  @POST(path: '/user-service/signIn/call')
  Future<chopper.Response<UserServiceSignInCallPost$Response>>
  _userServiceSignInCallPost({
    @Body() UserServiceSigninCallPostRequest? root,
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
  Future<chopper.Response<UserServiceNoAuthOtpVerifyPost$Response>>
  userServiceNoAuthOtpVerifyPost({
    UserServiceNoAuthOtpVerifyPostRequest? root,
  }) {
    generatedMapping.putIfAbsent(
      UserServiceNoAuthOtpVerifyPostRequest,
      () => UserServiceNoAuthOtpVerifyPostRequest.fromJsonFactory,
    );
    generatedMapping.putIfAbsent(
      UserServiceNoAuthOtpVerifyPost$Response,
      () => UserServiceNoAuthOtpVerifyPost$Response.fromJsonFactory,
    );

    return _userServiceNoAuthOtpVerifyPost(root: root);
  }

  ///验证临时token
  ///@param root
  @POST(path: '/user-service/no-auth/otp/verify')
  Future<chopper.Response<UserServiceNoAuthOtpVerifyPost$Response>>
  _userServiceNoAuthOtpVerifyPost({
    @Body() UserServiceNoAuthOtpVerifyPostRequest? root,
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
  Future<chopper.Response<Object>> userServiceNoAuthEmailUnsubscribePost({
    UserServiceNoAuthEmailUnsubscribePostRequest? root,
  }) {
    generatedMapping.putIfAbsent(
      UserServiceNoAuthEmailUnsubscribePostRequest,
      () => UserServiceNoAuthEmailUnsubscribePostRequest.fromJsonFactory,
    );

    return _userServiceNoAuthEmailUnsubscribePost(root: root);
  }

  ///邮箱取消订阅
  ///@param root
  @POST(path: '/user-service/no-auth/email/unsubscribe')
  Future<chopper.Response<Object>> _userServiceNoAuthEmailUnsubscribePost({
    @Body() UserServiceNoAuthEmailUnsubscribePostRequest? root,
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
  Future<
    chopper.Response<UserServiceNoAuthCommonConfigDefaultSettingGet$Response>
  >
  userServiceNoAuthCommonConfigDefaultSettingGet() {
    generatedMapping.putIfAbsent(
      UserServiceNoAuthCommonConfigDefaultSettingGet$Response,
      () => UserServiceNoAuthCommonConfigDefaultSettingGet$Response
          .fromJsonFactory,
    );

    return _userServiceNoAuthCommonConfigDefaultSettingGet();
  }

  ///默认国家和语言
  @GET(path: '/user-service/no-auth/common-config/default-setting')
  Future<
    chopper.Response<UserServiceNoAuthCommonConfigDefaultSettingGet$Response>
  >
  _userServiceNoAuthCommonConfigDefaultSettingGet({
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
  Future<chopper.Response<UserServiceFileImUploadPost$Response>>
  userServiceFileImUploadPost({
    required List<int>? files,
    required List<int>? files$,
  }) {
    generatedMapping.putIfAbsent(
      UserServiceFileImUploadPost$Response,
      () => UserServiceFileImUploadPost$Response.fromJsonFactory,
    );

    return _userServiceFileImUploadPost(files: files, files$: files$);
  }

  ///IM多文件上传
  ///@param files 最大7M
  ///@param files
  @POST(path: '/user-service/file/im/upload', optionalBody: true)
  Future<chopper.Response<UserServiceFileImUploadPost$Response>>
  _userServiceFileImUploadPost({
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
  Future<chopper.Response<UserServiceFileLogoUploadPost$Response>>
  userServiceFileLogoUploadPost({required List<int>? file}) {
    generatedMapping.putIfAbsent(
      UserServiceFileLogoUploadPost$Response,
      () => UserServiceFileLogoUploadPost$Response.fromJsonFactory,
    );

    return _userServiceFileLogoUploadPost(file: file);
  }

  ///上传头像
  ///@param file 最大7M
  @POST(path: '/user-service/file/logo/upload', optionalBody: true)
  Future<chopper.Response<UserServiceFileLogoUploadPost$Response>>
  _userServiceFileLogoUploadPost({
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
  Future<chopper.Response<UserServiceUserCouponCountGet$Response>>
  userServiceUserCouponCountGet() {
    generatedMapping.putIfAbsent(
      UserServiceUserCouponCountGet$Response,
      () => UserServiceUserCouponCountGet$Response.fromJsonFactory,
    );

    return _userServiceUserCouponCountGet();
  }

  ///优惠券数量列表
  @GET(path: '/user-service/user/coupon/count')
  Future<chopper.Response<UserServiceUserCouponCountGet$Response>>
  _userServiceUserCouponCountGet({
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
  Future<chopper.Response<UserServiceUserCouponActivityInfoGet$Response>>
  userServiceUserCouponActivityInfoGet({
    required String? couponActivityCode,
    String? received,
  }) {
    generatedMapping.putIfAbsent(
      UserServiceUserCouponActivityInfoGet$Response,
      () => UserServiceUserCouponActivityInfoGet$Response.fromJsonFactory,
    );

    return _userServiceUserCouponActivityInfoGet(
      couponActivityCode: couponActivityCode,
      received: received,
    );
  }

  ///优惠券活动信息
  ///@param couponActivityCode new_comer_voucher
  ///@param received
  @GET(path: '/user-service/user/coupon/activityInfo')
  Future<chopper.Response<UserServiceUserCouponActivityInfoGet$Response>>
  _userServiceUserCouponActivityInfoGet({
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
  Future<chopper.Response<UserServiceUserCouponCode2CouponGet$Response>>
  userServiceUserCouponCode2CouponGet({
    required String? code,
    String? isDiscount,
    UserServiceUserCouponCode2couponGetRequest? root,
  }) {
    generatedMapping.putIfAbsent(
      UserServiceUserCouponCode2couponGetRequest,
      () => UserServiceUserCouponCode2couponGetRequest.fromJsonFactory,
    );
    generatedMapping.putIfAbsent(
      UserServiceUserCouponCode2CouponGet$Response,
      () => UserServiceUserCouponCode2CouponGet$Response.fromJsonFactory,
    );

    return _userServiceUserCouponCode2CouponGet(
      code: code,
      isDiscount: isDiscount,
      root: root,
    );
  }

  ///按code领取
  ///@param code
  ///@param isDiscount
  ///@param root
  @GET(path: '/user-service/user/coupon/code2Coupon')
  Future<chopper.Response<UserServiceUserCouponCode2CouponGet$Response>>
  _userServiceUserCouponCode2CouponGet({
    @Query('code') required String? code,
    @Query('isDiscount') String? isDiscount,
    @Body() UserServiceUserCouponCode2couponGetRequest? root,
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
  Future<chopper.Response<UserServiceUserCouponActivityInfosGet$Response>>
  userServiceUserCouponActivityInfosGet({String? couponActivityCodes}) {
    generatedMapping.putIfAbsent(
      UserServiceUserCouponActivityInfosGet$Response,
      () => UserServiceUserCouponActivityInfosGet$Response.fromJsonFactory,
    );

    return _userServiceUserCouponActivityInfosGet(
      couponActivityCodes: couponActivityCodes,
    );
  }

  ///活动信息(多活动)
  ///@param couponActivityCodes 如多个，数组结构
  @GET(path: '/user-service/user/coupon/activityInfos')
  Future<chopper.Response<UserServiceUserCouponActivityInfosGet$Response>>
  _userServiceUserCouponActivityInfosGet({
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
  Future<chopper.Response<UserServiceUserCouponGetActivitiesGet$Response>>
  userServiceUserCouponGetActivitiesGet() {
    generatedMapping.putIfAbsent(
      UserServiceUserCouponGetActivitiesGet$Response,
      () => UserServiceUserCouponGetActivitiesGet$Response.fromJsonFactory,
    );

    return _userServiceUserCouponGetActivitiesGet();
  }

  ///用户优惠券ActivityCodes
  @GET(path: '/user-service/user/coupon/getActivities')
  Future<chopper.Response<UserServiceUserCouponGetActivitiesGet$Response>>
  _userServiceUserCouponGetActivitiesGet({
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
  Future<chopper.Response<UserServiceUserCouponGetListGet$Response>>
  userServiceUserCouponGetListGet({required String? userCouponState}) {
    generatedMapping.putIfAbsent(
      UserServiceUserCouponGetListGet$Response,
      () => UserServiceUserCouponGetListGet$Response.fromJsonFactory,
    );

    return _userServiceUserCouponGetListGet(userCouponState: userCouponState);
  }

  ///用户优惠券列表（多活动分组）
  ///@param userCouponState 0未使用，1下单占用，2支付已使用
  @GET(path: '/user-service/user/coupon/getList')
  Future<chopper.Response<UserServiceUserCouponGetListGet$Response>>
  _userServiceUserCouponGetListGet({
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
  Future<
    chopper.Response<UserServiceUserCouponGetUserCouponByActivityPost$Response>
  >
  userServiceUserCouponGetUserCouponByActivityPost({
    UserServiceUserCouponGetusercouponbyactivityPostRequest? root,
  }) {
    generatedMapping.putIfAbsent(
      UserServiceUserCouponGetusercouponbyactivityPostRequest,
      () => UserServiceUserCouponGetusercouponbyactivityPostRequest
          .fromJsonFactory,
    );
    generatedMapping.putIfAbsent(
      UserServiceUserCouponGetUserCouponByActivityPost$Response,
      () => UserServiceUserCouponGetUserCouponByActivityPost$Response
          .fromJsonFactory,
    );

    return _userServiceUserCouponGetUserCouponByActivityPost(root: root);
  }

  ///领取优惠券（多活动）
  ///@param root
  @POST(path: '/user-service/user/coupon/getUserCouponByActivity')
  Future<
    chopper.Response<UserServiceUserCouponGetUserCouponByActivityPost$Response>
  >
  _userServiceUserCouponGetUserCouponByActivityPost({
    @Body() UserServiceUserCouponGetusercouponbyactivityPostRequest? root,
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
  Future<chopper.Response<UserServiceUserCouponSaveGet$Response>>
  userServiceUserCouponSaveGet({required String? couponActivityCode}) {
    generatedMapping.putIfAbsent(
      UserServiceUserCouponSaveGet$Response,
      () => UserServiceUserCouponSaveGet$Response.fromJsonFactory,
    );

    return _userServiceUserCouponSaveGet(
      couponActivityCode: couponActivityCode,
    );
  }

  ///发放优惠券
  ///@param couponActivityCode 0未使用，1下单占用，2支付已使用
  @GET(path: '/user-service/user/coupon/save')
  Future<chopper.Response<UserServiceUserCouponSaveGet$Response>>
  _userServiceUserCouponSaveGet({
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
  Future<chopper.Response<UserServiceUserCouponNoAuthActivityInfoGet$Response>>
  userServiceUserCouponNoAuthActivityInfoGet({
    required String? couponActivityCode,
  }) {
    generatedMapping.putIfAbsent(
      UserServiceUserCouponNoAuthActivityInfoGet$Response,
      () => UserServiceUserCouponNoAuthActivityInfoGet$Response.fromJsonFactory,
    );

    return _userServiceUserCouponNoAuthActivityInfoGet(
      couponActivityCode: couponActivityCode,
    );
  }

  ///活动信息（非验权）
  ///@param couponActivityCode
  @GET(path: '/user-service/user/coupon/no-auth/activityInfo')
  Future<chopper.Response<UserServiceUserCouponNoAuthActivityInfoGet$Response>>
  _userServiceUserCouponNoAuthActivityInfoGet({
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
  Future<
    chopper.Response<UserServiceUserCouponGetCouponByActivityPost$Response>
  >
  userServiceUserCouponGetCouponByActivityPost({
    required String? couponActivityCode,
  }) {
    generatedMapping.putIfAbsent(
      UserServiceUserCouponGetCouponByActivityPost$Response,
      () =>
          UserServiceUserCouponGetCouponByActivityPost$Response.fromJsonFactory,
    );

    return _userServiceUserCouponGetCouponByActivityPost(
      couponActivityCode: couponActivityCode,
    );
  }

  ///领取活动优惠券
  ///@param couponActivityCode new_comer_voucher   写死
  @POST(
    path: '/user-service/user/coupon/getCouponByActivity',
    optionalBody: true,
  )
  Future<
    chopper.Response<UserServiceUserCouponGetCouponByActivityPost$Response>
  >
  _userServiceUserCouponGetCouponByActivityPost({
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
  Future<chopper.Response<UserServiceUserCouponGetGet$Response>>
  userServiceUserCouponGetGet({required String? userCouponState}) {
    generatedMapping.putIfAbsent(
      UserServiceUserCouponGetGet$Response,
      () => UserServiceUserCouponGetGet$Response.fromJsonFactory,
    );

    return _userServiceUserCouponGetGet(userCouponState: userCouponState);
  }

  ///用户优惠券列表
  ///@param userCouponState 0未使用，1下单占用，2支付已使用 3过期  4 无效(已用+过期)
  @GET(path: '/user-service/user/coupon/get')
  Future<chopper.Response<UserServiceUserCouponGetGet$Response>>
  _userServiceUserCouponGetGet({
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
  Future<chopper.Response<UserServiceImGetInfoPost$Response>>
  userServiceImGetInfoPost({UserServiceImGetinfoPostRequest? root}) {
    generatedMapping.putIfAbsent(
      UserServiceImGetinfoPostRequest,
      () => UserServiceImGetinfoPostRequest.fromJsonFactory,
    );
    generatedMapping.putIfAbsent(
      UserServiceImGetInfoPost$Response,
      () => UserServiceImGetInfoPost$Response.fromJsonFactory,
    );

    return _userServiceImGetInfoPost(root: root);
  }

  ///交换IMtoken
  ///@param root
  @POST(path: '/user-service/im/getInfo')
  Future<chopper.Response<UserServiceImGetInfoPost$Response>>
  _userServiceImGetInfoPost({
    @Body() UserServiceImGetinfoPostRequest? root,
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
  Future<chopper.Response<UserServiceUserShareListGet$Response>>
  userServiceUserShareListGet({UserServiceUserShareListGetRequest? root}) {
    generatedMapping.putIfAbsent(
      UserServiceUserShareListGetRequest,
      () => UserServiceUserShareListGetRequest.fromJsonFactory,
    );
    generatedMapping.putIfAbsent(
      UserServiceUserShareListGet$Response,
      () => UserServiceUserShareListGet$Response.fromJsonFactory,
    );

    return _userServiceUserShareListGet(root: root);
  }

  ///分享列表
  ///@param root
  @GET(path: '/user-service/user/share/list')
  Future<chopper.Response<UserServiceUserShareListGet$Response>>
  _userServiceUserShareListGet({
    @Body() UserServiceUserShareListGetRequest? root,
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
  Future<chopper.Response<UserServiceUserShareRewardInfoGet$Response>>
  userServiceUserShareRewardInfoGet({
    required String? orderId,
    UserServiceUserShareRewardinfoGetRequest? root,
  }) {
    generatedMapping.putIfAbsent(
      UserServiceUserShareRewardinfoGetRequest,
      () => UserServiceUserShareRewardinfoGetRequest.fromJsonFactory,
    );
    generatedMapping.putIfAbsent(
      UserServiceUserShareRewardInfoGet$Response,
      () => UserServiceUserShareRewardInfoGet$Response.fromJsonFactory,
    );

    return _userServiceUserShareRewardInfoGet(orderId: orderId, root: root);
  }

  ///分享返利信息
  ///@param orderId
  ///@param root
  @GET(path: '/user-service/user/share/rewardInfo')
  Future<chopper.Response<UserServiceUserShareRewardInfoGet$Response>>
  _userServiceUserShareRewardInfoGet({
    @Query('orderId') required String? orderId,
    @Body() UserServiceUserShareRewardinfoGetRequest? root,
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
  Future<chopper.Response<UserServiceUserShareSubmitPost$Response>>
  userServiceUserShareSubmitPost({
    UserServiceUserShareSubmitPostRequest? root,
  }) {
    generatedMapping.putIfAbsent(
      UserServiceUserShareSubmitPostRequest,
      () => UserServiceUserShareSubmitPostRequest.fromJsonFactory,
    );
    generatedMapping.putIfAbsent(
      UserServiceUserShareSubmitPost$Response,
      () => UserServiceUserShareSubmitPost$Response.fromJsonFactory,
    );

    return _userServiceUserShareSubmitPost(root: root);
  }

  ///提交分享
  ///@param root
  @POST(path: '/user-service/user/share/submit')
  Future<chopper.Response<UserServiceUserShareSubmitPost$Response>>
  _userServiceUserShareSubmitPost({
    @Body() UserServiceUserShareSubmitPostRequest? root,
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
  Future<chopper.Response<UserServiceUserDeleteGet$Response>>
  userServiceUserDeleteGet() {
    generatedMapping.putIfAbsent(
      UserServiceUserDeleteGet$Response,
      () => UserServiceUserDeleteGet$Response.fromJsonFactory,
    );

    return _userServiceUserDeleteGet();
  }

  ///注销发送验证码
  @GET(path: '/user-service/user/delete')
  Future<chopper.Response<UserServiceUserDeleteGet$Response>>
  _userServiceUserDeleteGet({
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
  Future<chopper.Response<UserServiceUserDeleteConfirmGet$Response>>
  userServiceUserDeleteConfirmGet({required String? code}) {
    generatedMapping.putIfAbsent(
      UserServiceUserDeleteConfirmGet$Response,
      () => UserServiceUserDeleteConfirmGet$Response.fromJsonFactory,
    );

    return _userServiceUserDeleteConfirmGet(code: code);
  }

  ///注销确认
  ///@param code
  @GET(path: '/user-service/user/delete/confirm')
  Future<chopper.Response<UserServiceUserDeleteConfirmGet$Response>>
  _userServiceUserDeleteConfirmGet({
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
  Future<chopper.Response<Object>> userServiceUserUpdatePost({
    String? authorization,
    UserServiceUserUpdatePostRequest? root,
  }) {
    generatedMapping.putIfAbsent(
      UserServiceUserUpdatePostRequest,
      () => UserServiceUserUpdatePostRequest.fromJsonFactory,
    );

    return _userServiceUserUpdatePost(
      authorization: authorization?.toString(),
      root: root,
    );
  }

  ///用户修改
  ///@param Authorization Authorization (Only:undefined)
  ///@param root
  @POST(path: '/user-service/user/update')
  Future<chopper.Response<Object>> _userServiceUserUpdatePost({
    @Header('Authorization') String? authorization,
    @Body() UserServiceUserUpdatePostRequest? root,
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
  Future<chopper.Response<UserServiceUserGetGet$Response>>
  userServiceUserGetGet({String? authorization}) {
    generatedMapping.putIfAbsent(
      UserServiceUserGetGet$Response,
      () => UserServiceUserGetGet$Response.fromJsonFactory,
    );

    return _userServiceUserGetGet(authorization: authorization?.toString());
  }

  ///用户查询
  ///@param Authorization Authorization (Only:)
  @GET(path: '/user-service/user/get')
  Future<chopper.Response<UserServiceUserGetGet$Response>>
  _userServiceUserGetGet({
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
  Future<chopper.Response<UserServiceUserUserCommissionGet$Response>>
  userServiceUserUserCommissionGet() {
    generatedMapping.putIfAbsent(
      UserServiceUserUserCommissionGet$Response,
      () => UserServiceUserUserCommissionGet$Response.fromJsonFactory,
    );

    return _userServiceUserUserCommissionGet();
  }

  ///用户积分信息
  @GET(path: '/user-service/user/user-commission')
  Future<chopper.Response<UserServiceUserUserCommissionGet$Response>>
  _userServiceUserUserCommissionGet({
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
  Future<chopper.Response<UserServiceUserConfigureSettingGet$Response>>
  userServiceUserConfigureSettingGet() {
    generatedMapping.putIfAbsent(
      UserServiceUserConfigureSettingGet$Response,
      () => UserServiceUserConfigureSettingGet$Response.fromJsonFactory,
    );

    return _userServiceUserConfigureSettingGet();
  }

  ///用户配置
  @GET(path: '/user-service/user/configure-setting')
  Future<chopper.Response<UserServiceUserConfigureSettingGet$Response>>
  _userServiceUserConfigureSettingGet({
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
  Future<chopper.Response<UserServiceUserInviteCountGet$Response>>
  userServiceUserInviteCountGet() {
    generatedMapping.putIfAbsent(
      UserServiceUserInviteCountGet$Response,
      () => UserServiceUserInviteCountGet$Response.fromJsonFactory,
    );

    return _userServiceUserInviteCountGet();
  }

  ///邀请数量
  @GET(path: '/user-service/user/invite/count')
  Future<chopper.Response<UserServiceUserInviteCountGet$Response>>
  _userServiceUserInviteCountGet({
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
  Future<chopper.Response<UserServiceUserInviteNumGet$Response>>
  userServiceUserInviteNumGet() {
    generatedMapping.putIfAbsent(
      UserServiceUserInviteNumGet$Response,
      () => UserServiceUserInviteNumGet$Response.fromJsonFactory,
    );

    return _userServiceUserInviteNumGet();
  }

  ///邀请统计
  @GET(path: '/user-service/user/invite/num')
  Future<chopper.Response<UserServiceUserInviteNumGet$Response>>
  _userServiceUserInviteNumGet({
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
  Future<chopper.Response<UserServiceUserShareUpdatePost$Response>>
  userServiceUserShareUpdatePost({
    UserServiceUserShareUpdatePostRequest? root,
  }) {
    generatedMapping.putIfAbsent(
      UserServiceUserShareUpdatePostRequest,
      () => UserServiceUserShareUpdatePostRequest.fromJsonFactory,
    );
    generatedMapping.putIfAbsent(
      UserServiceUserShareUpdatePost$Response,
      () => UserServiceUserShareUpdatePost$Response.fromJsonFactory,
    );

    return _userServiceUserShareUpdatePost(root: root);
  }

  ///重新提交分享
  ///@param root
  @POST(path: '/user-service/user/share/update')
  Future<chopper.Response<UserServiceUserShareUpdatePost$Response>>
  _userServiceUserShareUpdatePost({
    @Body() UserServiceUserShareUpdatePostRequest? root,
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
  Future<chopper.Response<UserServiceUserUserRewardGet$Response>>
  userServiceUserUserRewardGet({required String? rewardType, String? expire}) {
    generatedMapping.putIfAbsent(
      UserServiceUserUserRewardGet$Response,
      () => UserServiceUserUserRewardGet$Response.fromJsonFactory,
    );

    return _userServiceUserUserRewardGet(
      rewardType: rewardType,
      expire: expire,
    );
  }

  ///领取奖励
  ///@param rewardType
  ///@param expire
  @GET(path: '/user-service/user/user-reward')
  Future<chopper.Response<UserServiceUserUserRewardGet$Response>>
  _userServiceUserUserRewardGet({
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
  Future<chopper.Response<UserServiceUserTagPortraitAiToPortraitPost$Response>>
  userServiceUserTagPortraitAiToPortraitPost({List<String>? root}) {
    generatedMapping.putIfAbsent(
      UserServiceUserTagPortraitAiToPortraitPost$Response,
      () => UserServiceUserTagPortraitAiToPortraitPost$Response.fromJsonFactory,
    );

    return _userServiceUserTagPortraitAiToPortraitPost(root: root);
  }

  ///ai解析画像
  ///@param root 用户回答记录，每一个问题一条
  @POST(path: '/user-service/user-tag-portrait/ai-to-portrait')
  Future<chopper.Response<UserServiceUserTagPortraitAiToPortraitPost$Response>>
  _userServiceUserTagPortraitAiToPortraitPost({
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
  Future<
    chopper.Response<UserServiceUserTagPortraitAiToPortraitV2Post$Response>
  >
  userServiceUserTagPortraitAiToPortraitV2Post({
    UserServiceUserTagPortraitAiToPortraitV2PostRequest? root,
  }) {
    generatedMapping.putIfAbsent(
      UserServiceUserTagPortraitAiToPortraitV2PostRequest,
      () => UserServiceUserTagPortraitAiToPortraitV2PostRequest.fromJsonFactory,
    );
    generatedMapping.putIfAbsent(
      UserServiceUserTagPortraitAiToPortraitV2Post$Response,
      () =>
          UserServiceUserTagPortraitAiToPortraitV2Post$Response.fromJsonFactory,
    );

    return _userServiceUserTagPortraitAiToPortraitV2Post(root: root);
  }

  ///ai解析画像V2
  ///@param root
  @POST(path: '/user-service/user-tag-portrait/ai-to-portrait-v2')
  Future<
    chopper.Response<UserServiceUserTagPortraitAiToPortraitV2Post$Response>
  >
  _userServiceUserTagPortraitAiToPortraitV2Post({
    @Body() UserServiceUserTagPortraitAiToPortraitV2PostRequest? root,
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
  Future<
    chopper.Response<UserServiceUserTagPortraitUpdatePortraitPost$Response>
  >
  userServiceUserTagPortraitUpdatePortraitPost({
    UserServiceUserTagPortraitUpdatePortraitPostRequest? root,
  }) {
    generatedMapping.putIfAbsent(
      UserServiceUserTagPortraitUpdatePortraitPostRequest,
      () => UserServiceUserTagPortraitUpdatePortraitPostRequest.fromJsonFactory,
    );
    generatedMapping.putIfAbsent(
      UserServiceUserTagPortraitUpdatePortraitPost$Response,
      () =>
          UserServiceUserTagPortraitUpdatePortraitPost$Response.fromJsonFactory,
    );

    return _userServiceUserTagPortraitUpdatePortraitPost(root: root);
  }

  ///更新用户画像
  ///@param root
  @POST(path: '/user-service/user-tag-portrait/update-portrait')
  Future<
    chopper.Response<UserServiceUserTagPortraitUpdatePortraitPost$Response>
  >
  _userServiceUserTagPortraitUpdatePortraitPost({
    @Body() UserServiceUserTagPortraitUpdatePortraitPostRequest? root,
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
  Future<chopper.Response<UserServiceUserTagPortraitGetPortraitGet$Response>>
  userServiceUserTagPortraitGetPortraitGet({
    UserServiceUserTagPortraitGetPortraitGetRequest? root,
  }) {
    generatedMapping.putIfAbsent(
      UserServiceUserTagPortraitGetPortraitGetRequest,
      () => UserServiceUserTagPortraitGetPortraitGetRequest.fromJsonFactory,
    );
    generatedMapping.putIfAbsent(
      UserServiceUserTagPortraitGetPortraitGet$Response,
      () => UserServiceUserTagPortraitGetPortraitGet$Response.fromJsonFactory,
    );

    return _userServiceUserTagPortraitGetPortraitGet(root: root);
  }

  ///获取用户画像
  ///@param root
  @GET(path: '/user-service/user-tag-portrait/get-portrait')
  Future<chopper.Response<UserServiceUserTagPortraitGetPortraitGet$Response>>
  _userServiceUserTagPortraitGetPortraitGet({
    @Body() UserServiceUserTagPortraitGetPortraitGetRequest? root,
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
  Future<chopper.Response<UserServiceUserCouponAppHomeActivityPost$Response>>
  userServiceUserCouponAppHomeActivityPost() {
    generatedMapping.putIfAbsent(
      UserServiceUserCouponAppHomeActivityPost$Response,
      () => UserServiceUserCouponAppHomeActivityPost$Response.fromJsonFactory,
    );

    return _userServiceUserCouponAppHomeActivityPost();
  }

  ///首页活动
  @POST(path: '/user-service/user/coupon/app/homeActivity', optionalBody: true)
  Future<chopper.Response<UserServiceUserCouponAppHomeActivityPost$Response>>
  _userServiceUserCouponAppHomeActivityPost({
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
class UserServiceAddressUpdatePostRequest {
  const UserServiceAddressUpdatePostRequest({
    this.isDefault,
    this.country,
    this.countryCode,
    this.state,
    this.stateCode,
    this.city,
    this.cityCode,
    this.street,
    this.apartment,
    this.address,
    this.coordinate,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.zipCode,
    this.userId,
    this.id,
    this.remark,
    this.accessCode,
    this.email,
    this.tin,
  });

  factory UserServiceAddressUpdatePostRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceAddressUpdatePostRequestFromJson(json);

  static const toJsonFactory = _$UserServiceAddressUpdatePostRequestToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceAddressUpdatePostRequestToJson(this);

  @JsonKey(name: 'isDefault', fromJson: JsonCoerce.asInt)
  final int? isDefault;
  @JsonKey(name: 'country', fromJson: JsonCoerce.asString)
  final String? country;
  @JsonKey(name: 'countryCode', fromJson: JsonCoerce.asString)
  final String? countryCode;
  @JsonKey(name: 'state', fromJson: JsonCoerce.asString)
  final String? state;
  @JsonKey(name: 'stateCode', fromJson: JsonCoerce.asString)
  final String? stateCode;
  @JsonKey(name: 'city', fromJson: JsonCoerce.asString)
  final String? city;
  @JsonKey(name: 'cityCode', fromJson: JsonCoerce.asString)
  final String? cityCode;
  @JsonKey(name: 'street', fromJson: JsonCoerce.asString)
  final String? street;
  @JsonKey(name: 'apartment', fromJson: JsonCoerce.asString)
  final String? apartment;
  @JsonKey(name: 'address', fromJson: JsonCoerce.asString)
  final String? address;
  @JsonKey(name: 'coordinate', fromJson: JsonCoerce.asString)
  final String? coordinate;
  @JsonKey(name: 'firstName', fromJson: JsonCoerce.asString)
  final String? firstName;
  @JsonKey(name: 'lastName', fromJson: JsonCoerce.asString)
  final String? lastName;
  @JsonKey(name: 'phoneNumber', fromJson: JsonCoerce.asString)
  final String? phoneNumber;
  @JsonKey(name: 'zipCode', fromJson: JsonCoerce.asString)
  final String? zipCode;
  @JsonKey(name: 'userId', fromJson: JsonCoerce.asString)
  final String? userId;
  @JsonKey(name: 'id', fromJson: JsonCoerce.asInt)
  final int? id;
  @JsonKey(name: 'remark', fromJson: JsonCoerce.asString)
  final String? remark;
  @JsonKey(name: 'accessCode', fromJson: JsonCoerce.asString)
  final String? accessCode;
  @JsonKey(name: 'email', fromJson: JsonCoerce.asString)
  final String? email;
  @JsonKey(name: 'tin', fromJson: JsonCoerce.asString)
  final String? tin;
  static const fromJsonFactory = _$UserServiceAddressUpdatePostRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceAddressUpdatePostRequest &&
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
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.accessCode, accessCode) ||
                const DeepCollectionEquality().equals(
                  other.accessCode,
                  accessCode,
                )) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.tin, tin) ||
                const DeepCollectionEquality().equals(other.tin, tin)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
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
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(accessCode) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(tin) ^
      runtimeType.hashCode;
}

extension $UserServiceAddressUpdatePostRequestExtension
    on UserServiceAddressUpdatePostRequest {
  UserServiceAddressUpdatePostRequest copyWith({
    int? isDefault,
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
    String? userId,
    int? id,
    String? remark,
    String? accessCode,
    String? email,
    String? tin,
  }) {
    return UserServiceAddressUpdatePostRequest(
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
      userId: userId ?? this.userId,
      id: id ?? this.id,
      remark: remark ?? this.remark,
      accessCode: accessCode ?? this.accessCode,
      email: email ?? this.email,
      tin: tin ?? this.tin,
    );
  }

  UserServiceAddressUpdatePostRequest copyWithWrapped({
    Wrapped<int?>? isDefault,
    Wrapped<String?>? country,
    Wrapped<String?>? countryCode,
    Wrapped<String?>? state,
    Wrapped<String?>? stateCode,
    Wrapped<String?>? city,
    Wrapped<String?>? cityCode,
    Wrapped<String?>? street,
    Wrapped<String?>? apartment,
    Wrapped<String?>? address,
    Wrapped<String?>? coordinate,
    Wrapped<String?>? firstName,
    Wrapped<String?>? lastName,
    Wrapped<String?>? phoneNumber,
    Wrapped<String?>? zipCode,
    Wrapped<String?>? userId,
    Wrapped<int?>? id,
    Wrapped<String?>? remark,
    Wrapped<String?>? accessCode,
    Wrapped<String?>? email,
    Wrapped<String?>? tin,
  }) {
    return UserServiceAddressUpdatePostRequest(
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
      userId: (userId != null ? userId.value : this.userId),
      id: (id != null ? id.value : this.id),
      remark: (remark != null ? remark.value : this.remark),
      accessCode: (accessCode != null ? accessCode.value : this.accessCode),
      email: (email != null ? email.value : this.email),
      tin: (tin != null ? tin.value : this.tin),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceAddressAddPostRequest {
  const UserServiceAddressAddPostRequest({
    this.isDefault,
    this.username,
    this.country,
    this.countryCode,
    this.state,
    this.stateCode,
    this.city,
    this.cityCode,
    this.street,
    this.apartment,
    this.address,
    this.coordinate,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.zipCode,
    this.remark,
    this.accessCode,
    this.email,
    this.tin,
  });

  factory UserServiceAddressAddPostRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceAddressAddPostRequestFromJson(json);

  static const toJsonFactory = _$UserServiceAddressAddPostRequestToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceAddressAddPostRequestToJson(this);

  @JsonKey(name: 'isDefault', fromJson: JsonCoerce.asInt)
  final int? isDefault;
  @JsonKey(name: 'username', fromJson: JsonCoerce.asString)
  final String? username;
  @JsonKey(name: 'country', fromJson: JsonCoerce.asString)
  final String? country;
  @JsonKey(name: 'countryCode', fromJson: JsonCoerce.asString)
  final String? countryCode;
  @JsonKey(name: 'state', fromJson: JsonCoerce.asString)
  final String? state;
  @JsonKey(name: 'stateCode', fromJson: JsonCoerce.asString)
  final String? stateCode;
  @JsonKey(name: 'city', fromJson: JsonCoerce.asString)
  final String? city;
  @JsonKey(name: 'cityCode', fromJson: JsonCoerce.asString)
  final String? cityCode;
  @JsonKey(name: 'street', fromJson: JsonCoerce.asString)
  final String? street;
  @JsonKey(name: 'apartment', fromJson: JsonCoerce.asString)
  final String? apartment;
  @JsonKey(name: 'address', fromJson: JsonCoerce.asString)
  final String? address;
  @JsonKey(name: 'coordinate', fromJson: JsonCoerce.asString)
  final String? coordinate;
  @JsonKey(name: 'firstName', fromJson: JsonCoerce.asString)
  final String? firstName;
  @JsonKey(name: 'lastName', fromJson: JsonCoerce.asString)
  final String? lastName;
  @JsonKey(name: 'phoneNumber', fromJson: JsonCoerce.asString)
  final String? phoneNumber;
  @JsonKey(name: 'zipCode', fromJson: JsonCoerce.asString)
  final String? zipCode;
  @JsonKey(name: 'remark', fromJson: JsonCoerce.asString)
  final String? remark;
  @JsonKey(name: 'accessCode', fromJson: JsonCoerce.asString)
  final String? accessCode;
  @JsonKey(name: 'email', fromJson: JsonCoerce.asString)
  final String? email;
  @JsonKey(name: 'tin', fromJson: JsonCoerce.asString)
  final String? tin;
  static const fromJsonFactory = _$UserServiceAddressAddPostRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceAddressAddPostRequest &&
            (identical(other.isDefault, isDefault) ||
                const DeepCollectionEquality().equals(
                  other.isDefault,
                  isDefault,
                )) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality().equals(
                  other.username,
                  username,
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
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.accessCode, accessCode) ||
                const DeepCollectionEquality().equals(
                  other.accessCode,
                  accessCode,
                )) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.tin, tin) ||
                const DeepCollectionEquality().equals(other.tin, tin)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isDefault) ^
      const DeepCollectionEquality().hash(username) ^
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
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(accessCode) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(tin) ^
      runtimeType.hashCode;
}

extension $UserServiceAddressAddPostRequestExtension
    on UserServiceAddressAddPostRequest {
  UserServiceAddressAddPostRequest copyWith({
    int? isDefault,
    String? username,
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
    String? remark,
    String? accessCode,
    String? email,
    String? tin,
  }) {
    return UserServiceAddressAddPostRequest(
      isDefault: isDefault ?? this.isDefault,
      username: username ?? this.username,
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
      remark: remark ?? this.remark,
      accessCode: accessCode ?? this.accessCode,
      email: email ?? this.email,
      tin: tin ?? this.tin,
    );
  }

  UserServiceAddressAddPostRequest copyWithWrapped({
    Wrapped<int?>? isDefault,
    Wrapped<String?>? username,
    Wrapped<String?>? country,
    Wrapped<String?>? countryCode,
    Wrapped<String?>? state,
    Wrapped<String?>? stateCode,
    Wrapped<String?>? city,
    Wrapped<String?>? cityCode,
    Wrapped<String?>? street,
    Wrapped<String?>? apartment,
    Wrapped<String?>? address,
    Wrapped<String?>? coordinate,
    Wrapped<String?>? firstName,
    Wrapped<String?>? lastName,
    Wrapped<String?>? phoneNumber,
    Wrapped<String?>? zipCode,
    Wrapped<String?>? remark,
    Wrapped<String?>? accessCode,
    Wrapped<String?>? email,
    Wrapped<String?>? tin,
  }) {
    return UserServiceAddressAddPostRequest(
      isDefault: (isDefault != null ? isDefault.value : this.isDefault),
      username: (username != null ? username.value : this.username),
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
      remark: (remark != null ? remark.value : this.remark),
      accessCode: (accessCode != null ? accessCode.value : this.accessCode),
      email: (email != null ? email.value : this.email),
      tin: (tin != null ? tin.value : this.tin),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserInnerUpdUserLevelPostRequest {
  const UserServiceUserInnerUpdUserLevelPostRequest({
    this.userId,
    this.tenantCode,
    this.level,
  });

  factory UserServiceUserInnerUpdUserLevelPostRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserInnerUpdUserLevelPostRequestFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserInnerUpdUserLevelPostRequestToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserInnerUpdUserLevelPostRequestToJson(this);

  @JsonKey(name: 'userId', fromJson: JsonCoerce.asString)
  final String? userId;
  @JsonKey(name: 'tenantCode', fromJson: JsonCoerce.asString)
  final String? tenantCode;
  @JsonKey(name: 'level', fromJson: JsonCoerce.asString)
  final String? level;
  static const fromJsonFactory =
      _$UserServiceUserInnerUpdUserLevelPostRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserInnerUpdUserLevelPostRequest &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.tenantCode, tenantCode) ||
                const DeepCollectionEquality().equals(
                  other.tenantCode,
                  tenantCode,
                )) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(tenantCode) ^
      const DeepCollectionEquality().hash(level) ^
      runtimeType.hashCode;
}

extension $UserServiceUserInnerUpdUserLevelPostRequestExtension
    on UserServiceUserInnerUpdUserLevelPostRequest {
  UserServiceUserInnerUpdUserLevelPostRequest copyWith({
    String? userId,
    String? tenantCode,
    String? level,
  }) {
    return UserServiceUserInnerUpdUserLevelPostRequest(
      userId: userId ?? this.userId,
      tenantCode: tenantCode ?? this.tenantCode,
      level: level ?? this.level,
    );
  }

  UserServiceUserInnerUpdUserLevelPostRequest copyWithWrapped({
    Wrapped<String?>? userId,
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? level,
  }) {
    return UserServiceUserInnerUpdUserLevelPostRequest(
      userId: (userId != null ? userId.value : this.userId),
      tenantCode: (tenantCode != null ? tenantCode.value : this.tenantCode),
      level: (level != null ? level.value : this.level),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceSigninSwitchportalPostRequest {
  const UserServiceSigninSwitchportalPostRequest({this.dstPortalCode});

  factory UserServiceSigninSwitchportalPostRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceSigninSwitchportalPostRequestFromJson(json);

  static const toJsonFactory = _$UserServiceSigninSwitchportalPostRequestToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceSigninSwitchportalPostRequestToJson(this);

  @JsonKey(name: 'dstPortalCode', fromJson: JsonCoerce.asString)
  final String? dstPortalCode;
  static const fromJsonFactory =
      _$UserServiceSigninSwitchportalPostRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceSigninSwitchportalPostRequest &&
            (identical(other.dstPortalCode, dstPortalCode) ||
                const DeepCollectionEquality().equals(
                  other.dstPortalCode,
                  dstPortalCode,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(dstPortalCode) ^ runtimeType.hashCode;
}

extension $UserServiceSigninSwitchportalPostRequestExtension
    on UserServiceSigninSwitchportalPostRequest {
  UserServiceSigninSwitchportalPostRequest copyWith({String? dstPortalCode}) {
    return UserServiceSigninSwitchportalPostRequest(
      dstPortalCode: dstPortalCode ?? this.dstPortalCode,
    );
  }

  UserServiceSigninSwitchportalPostRequest copyWithWrapped({
    Wrapped<String?>? dstPortalCode,
  }) {
    return UserServiceSigninSwitchportalPostRequest(
      dstPortalCode: (dstPortalCode != null
          ? dstPortalCode.value
          : this.dstPortalCode),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceSigninInitPostRequest {
  const UserServiceSigninInitPostRequest({
    this.loginName,
    this.authWay,
    this.source,
  });

  factory UserServiceSigninInitPostRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceSigninInitPostRequestFromJson(json);

  static const toJsonFactory = _$UserServiceSigninInitPostRequestToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceSigninInitPostRequestToJson(this);

  @JsonKey(name: 'loginName', fromJson: JsonCoerce.asString)
  final String? loginName;
  @JsonKey(name: 'authWay', fromJson: JsonCoerce.asInt)
  final int? authWay;
  @JsonKey(name: 'source', fromJson: JsonCoerce.asInt)
  final int? source;
  static const fromJsonFactory = _$UserServiceSigninInitPostRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceSigninInitPostRequest &&
            (identical(other.loginName, loginName) ||
                const DeepCollectionEquality().equals(
                  other.loginName,
                  loginName,
                )) &&
            (identical(other.authWay, authWay) ||
                const DeepCollectionEquality().equals(
                  other.authWay,
                  authWay,
                )) &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(loginName) ^
      const DeepCollectionEquality().hash(authWay) ^
      const DeepCollectionEquality().hash(source) ^
      runtimeType.hashCode;
}

extension $UserServiceSigninInitPostRequestExtension
    on UserServiceSigninInitPostRequest {
  UserServiceSigninInitPostRequest copyWith({
    String? loginName,
    int? authWay,
    int? source,
  }) {
    return UserServiceSigninInitPostRequest(
      loginName: loginName ?? this.loginName,
      authWay: authWay ?? this.authWay,
      source: source ?? this.source,
    );
  }

  UserServiceSigninInitPostRequest copyWithWrapped({
    Wrapped<String?>? loginName,
    Wrapped<int?>? authWay,
    Wrapped<int?>? source,
  }) {
    return UserServiceSigninInitPostRequest(
      loginName: (loginName != null ? loginName.value : this.loginName),
      authWay: (authWay != null ? authWay.value : this.authWay),
      source: (source != null ? source.value : this.source),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceOtpApplyPostRequest {
  const UserServiceOtpApplyPostRequest();

  factory UserServiceOtpApplyPostRequest.fromJson(Map<String, dynamic> json) =>
      _$UserServiceOtpApplyPostRequestFromJson(json);

  static const toJsonFactory = _$UserServiceOtpApplyPostRequestToJson;
  Map<String, dynamic> toJson() => _$UserServiceOtpApplyPostRequestToJson(this);

  static const fromJsonFactory = _$UserServiceOtpApplyPostRequestFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class UserServiceSigninVerifyPostRequest {
  const UserServiceSigninVerifyPostRequest({
    this.loginName,
    this.authWay,
    this.code,
    this.source,
    this.inviteCode,
    this.portalCode,
  });

  factory UserServiceSigninVerifyPostRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceSigninVerifyPostRequestFromJson(json);

  static const toJsonFactory = _$UserServiceSigninVerifyPostRequestToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceSigninVerifyPostRequestToJson(this);

  @JsonKey(name: 'loginName', fromJson: JsonCoerce.asString)
  final String? loginName;
  @JsonKey(name: 'authWay', fromJson: JsonCoerce.asString)
  final String? authWay;
  @JsonKey(name: 'code', fromJson: JsonCoerce.asString)
  final String? code;
  @JsonKey(name: 'source', fromJson: JsonCoerce.asInt)
  final int? source;
  @JsonKey(name: 'inviteCode', fromJson: JsonCoerce.asString)
  final String? inviteCode;
  @JsonKey(name: 'portalCode', fromJson: JsonCoerce.asString)
  final String? portalCode;
  static const fromJsonFactory = _$UserServiceSigninVerifyPostRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceSigninVerifyPostRequest &&
            (identical(other.loginName, loginName) ||
                const DeepCollectionEquality().equals(
                  other.loginName,
                  loginName,
                )) &&
            (identical(other.authWay, authWay) ||
                const DeepCollectionEquality().equals(
                  other.authWay,
                  authWay,
                )) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)) &&
            (identical(other.inviteCode, inviteCode) ||
                const DeepCollectionEquality().equals(
                  other.inviteCode,
                  inviteCode,
                )) &&
            (identical(other.portalCode, portalCode) ||
                const DeepCollectionEquality().equals(
                  other.portalCode,
                  portalCode,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(loginName) ^
      const DeepCollectionEquality().hash(authWay) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(source) ^
      const DeepCollectionEquality().hash(inviteCode) ^
      const DeepCollectionEquality().hash(portalCode) ^
      runtimeType.hashCode;
}

extension $UserServiceSigninVerifyPostRequestExtension
    on UserServiceSigninVerifyPostRequest {
  UserServiceSigninVerifyPostRequest copyWith({
    String? loginName,
    String? authWay,
    String? code,
    int? source,
    String? inviteCode,
    String? portalCode,
  }) {
    return UserServiceSigninVerifyPostRequest(
      loginName: loginName ?? this.loginName,
      authWay: authWay ?? this.authWay,
      code: code ?? this.code,
      source: source ?? this.source,
      inviteCode: inviteCode ?? this.inviteCode,
      portalCode: portalCode ?? this.portalCode,
    );
  }

  UserServiceSigninVerifyPostRequest copyWithWrapped({
    Wrapped<String?>? loginName,
    Wrapped<String?>? authWay,
    Wrapped<String?>? code,
    Wrapped<int?>? source,
    Wrapped<String?>? inviteCode,
    Wrapped<String?>? portalCode,
  }) {
    return UserServiceSigninVerifyPostRequest(
      loginName: (loginName != null ? loginName.value : this.loginName),
      authWay: (authWay != null ? authWay.value : this.authWay),
      code: (code != null ? code.value : this.code),
      source: (source != null ? source.value : this.source),
      inviteCode: (inviteCode != null ? inviteCode.value : this.inviteCode),
      portalCode: (portalCode != null ? portalCode.value : this.portalCode),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceSigninCallPostRequest {
  const UserServiceSigninCallPostRequest({
    this.authWay,
    this.code,
    this.inviteCode,
    this.portalCode,
  });

  factory UserServiceSigninCallPostRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceSigninCallPostRequestFromJson(json);

  static const toJsonFactory = _$UserServiceSigninCallPostRequestToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceSigninCallPostRequestToJson(this);

  @JsonKey(name: 'authWay', fromJson: JsonCoerce.asInt)
  final int? authWay;
  @JsonKey(name: 'code', fromJson: JsonCoerce.asString)
  final String? code;
  @JsonKey(name: 'inviteCode', fromJson: JsonCoerce.asString)
  final String? inviteCode;
  @JsonKey(name: 'portalCode', fromJson: JsonCoerce.asString)
  final String? portalCode;
  static const fromJsonFactory = _$UserServiceSigninCallPostRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceSigninCallPostRequest &&
            (identical(other.authWay, authWay) ||
                const DeepCollectionEquality().equals(
                  other.authWay,
                  authWay,
                )) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.inviteCode, inviteCode) ||
                const DeepCollectionEquality().equals(
                  other.inviteCode,
                  inviteCode,
                )) &&
            (identical(other.portalCode, portalCode) ||
                const DeepCollectionEquality().equals(
                  other.portalCode,
                  portalCode,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(authWay) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(inviteCode) ^
      const DeepCollectionEquality().hash(portalCode) ^
      runtimeType.hashCode;
}

extension $UserServiceSigninCallPostRequestExtension
    on UserServiceSigninCallPostRequest {
  UserServiceSigninCallPostRequest copyWith({
    int? authWay,
    String? code,
    String? inviteCode,
    String? portalCode,
  }) {
    return UserServiceSigninCallPostRequest(
      authWay: authWay ?? this.authWay,
      code: code ?? this.code,
      inviteCode: inviteCode ?? this.inviteCode,
      portalCode: portalCode ?? this.portalCode,
    );
  }

  UserServiceSigninCallPostRequest copyWithWrapped({
    Wrapped<int?>? authWay,
    Wrapped<String?>? code,
    Wrapped<String?>? inviteCode,
    Wrapped<String?>? portalCode,
  }) {
    return UserServiceSigninCallPostRequest(
      authWay: (authWay != null ? authWay.value : this.authWay),
      code: (code != null ? code.value : this.code),
      inviteCode: (inviteCode != null ? inviteCode.value : this.inviteCode),
      portalCode: (portalCode != null ? portalCode.value : this.portalCode),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceNoAuthOtpVerifyPostRequest {
  const UserServiceNoAuthOtpVerifyPostRequest({this.code});

  factory UserServiceNoAuthOtpVerifyPostRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceNoAuthOtpVerifyPostRequestFromJson(json);

  static const toJsonFactory = _$UserServiceNoAuthOtpVerifyPostRequestToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceNoAuthOtpVerifyPostRequestToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asString)
  final String? code;
  static const fromJsonFactory =
      _$UserServiceNoAuthOtpVerifyPostRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceNoAuthOtpVerifyPostRequest &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^ runtimeType.hashCode;
}

extension $UserServiceNoAuthOtpVerifyPostRequestExtension
    on UserServiceNoAuthOtpVerifyPostRequest {
  UserServiceNoAuthOtpVerifyPostRequest copyWith({String? code}) {
    return UserServiceNoAuthOtpVerifyPostRequest(code: code ?? this.code);
  }

  UserServiceNoAuthOtpVerifyPostRequest copyWithWrapped({
    Wrapped<String?>? code,
  }) {
    return UserServiceNoAuthOtpVerifyPostRequest(
      code: (code != null ? code.value : this.code),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceNoAuthEmailUnsubscribePostRequest {
  const UserServiceNoAuthEmailUnsubscribePostRequest({
    this.email,
    this.token,
    this.source,
  });

  factory UserServiceNoAuthEmailUnsubscribePostRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceNoAuthEmailUnsubscribePostRequestFromJson(json);

  static const toJsonFactory =
      _$UserServiceNoAuthEmailUnsubscribePostRequestToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceNoAuthEmailUnsubscribePostRequestToJson(this);

  @JsonKey(name: 'email', fromJson: JsonCoerce.asString)
  final String? email;
  @JsonKey(name: 'token', fromJson: JsonCoerce.asString)
  final String? token;
  @JsonKey(name: 'source', fromJson: JsonCoerce.asString)
  final String? source;
  static const fromJsonFactory =
      _$UserServiceNoAuthEmailUnsubscribePostRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceNoAuthEmailUnsubscribePostRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(source) ^
      runtimeType.hashCode;
}

extension $UserServiceNoAuthEmailUnsubscribePostRequestExtension
    on UserServiceNoAuthEmailUnsubscribePostRequest {
  UserServiceNoAuthEmailUnsubscribePostRequest copyWith({
    String? email,
    String? token,
    String? source,
  }) {
    return UserServiceNoAuthEmailUnsubscribePostRequest(
      email: email ?? this.email,
      token: token ?? this.token,
      source: source ?? this.source,
    );
  }

  UserServiceNoAuthEmailUnsubscribePostRequest copyWithWrapped({
    Wrapped<String?>? email,
    Wrapped<String?>? token,
    Wrapped<String?>? source,
  }) {
    return UserServiceNoAuthEmailUnsubscribePostRequest(
      email: (email != null ? email.value : this.email),
      token: (token != null ? token.value : this.token),
      source: (source != null ? source.value : this.source),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserCouponCode2couponGetRequest {
  const UserServiceUserCouponCode2couponGetRequest({
    this.sourceCode,
    this.isDiscount,
  });

  factory UserServiceUserCouponCode2couponGetRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserCouponCode2couponGetRequestFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserCouponCode2couponGetRequestToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponCode2couponGetRequestToJson(this);

  @JsonKey(name: 'sourceCode', fromJson: JsonCoerce.asString)
  final String? sourceCode;
  @JsonKey(name: 'isDiscount', fromJson: JsonCoerce.asString)
  final String? isDiscount;
  static const fromJsonFactory =
      _$UserServiceUserCouponCode2couponGetRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponCode2couponGetRequest &&
            (identical(other.sourceCode, sourceCode) ||
                const DeepCollectionEquality().equals(
                  other.sourceCode,
                  sourceCode,
                )) &&
            (identical(other.isDiscount, isDiscount) ||
                const DeepCollectionEquality().equals(
                  other.isDiscount,
                  isDiscount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(sourceCode) ^
      const DeepCollectionEquality().hash(isDiscount) ^
      runtimeType.hashCode;
}

extension $UserServiceUserCouponCode2couponGetRequestExtension
    on UserServiceUserCouponCode2couponGetRequest {
  UserServiceUserCouponCode2couponGetRequest copyWith({
    String? sourceCode,
    String? isDiscount,
  }) {
    return UserServiceUserCouponCode2couponGetRequest(
      sourceCode: sourceCode ?? this.sourceCode,
      isDiscount: isDiscount ?? this.isDiscount,
    );
  }

  UserServiceUserCouponCode2couponGetRequest copyWithWrapped({
    Wrapped<String?>? sourceCode,
    Wrapped<String?>? isDiscount,
  }) {
    return UserServiceUserCouponCode2couponGetRequest(
      sourceCode: (sourceCode != null ? sourceCode.value : this.sourceCode),
      isDiscount: (isDiscount != null ? isDiscount.value : this.isDiscount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserCouponGetusercouponbyactivityPostRequest {
  const UserServiceUserCouponGetusercouponbyactivityPostRequest({
    this.couponActivityCodes,
  });

  factory UserServiceUserCouponGetusercouponbyactivityPostRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserCouponGetusercouponbyactivityPostRequestFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserCouponGetusercouponbyactivityPostRequestToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponGetusercouponbyactivityPostRequestToJson(this);

  @JsonKey(
    name: 'couponActivityCodes',
    fromJson: JsonCoerce.asStringList,
    defaultValue: <String>[],
  )
  final List<String>? couponActivityCodes;
  static const fromJsonFactory =
      _$UserServiceUserCouponGetusercouponbyactivityPostRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponGetusercouponbyactivityPostRequest &&
            (identical(other.couponActivityCodes, couponActivityCodes) ||
                const DeepCollectionEquality().equals(
                  other.couponActivityCodes,
                  couponActivityCodes,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(couponActivityCodes) ^
      runtimeType.hashCode;
}

extension $UserServiceUserCouponGetusercouponbyactivityPostRequestExtension
    on UserServiceUserCouponGetusercouponbyactivityPostRequest {
  UserServiceUserCouponGetusercouponbyactivityPostRequest copyWith({
    List<String>? couponActivityCodes,
  }) {
    return UserServiceUserCouponGetusercouponbyactivityPostRequest(
      couponActivityCodes: couponActivityCodes ?? this.couponActivityCodes,
    );
  }

  UserServiceUserCouponGetusercouponbyactivityPostRequest copyWithWrapped({
    Wrapped<List<String>?>? couponActivityCodes,
  }) {
    return UserServiceUserCouponGetusercouponbyactivityPostRequest(
      couponActivityCodes: (couponActivityCodes != null
          ? couponActivityCodes.value
          : this.couponActivityCodes),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceImGetinfoPostRequest {
  const UserServiceImGetinfoPostRequest();

  factory UserServiceImGetinfoPostRequest.fromJson(Map<String, dynamic> json) =>
      _$UserServiceImGetinfoPostRequestFromJson(json);

  static const toJsonFactory = _$UserServiceImGetinfoPostRequestToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceImGetinfoPostRequestToJson(this);

  static const fromJsonFactory = _$UserServiceImGetinfoPostRequestFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserShareListGetRequest {
  const UserServiceUserShareListGetRequest({
    this.orderId,
    this.tiktokUrl,
    this.insUrl,
  });

  factory UserServiceUserShareListGetRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserShareListGetRequestFromJson(json);

  static const toJsonFactory = _$UserServiceUserShareListGetRequestToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserShareListGetRequestToJson(this);

  @JsonKey(name: 'orderId', fromJson: JsonCoerce.asString)
  final String? orderId;
  @JsonKey(name: 'tiktokUrl', fromJson: JsonCoerce.asString)
  final String? tiktokUrl;
  @JsonKey(name: 'insUrl', fromJson: JsonCoerce.asString)
  final String? insUrl;
  static const fromJsonFactory = _$UserServiceUserShareListGetRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserShareListGetRequest &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality().equals(
                  other.orderId,
                  orderId,
                )) &&
            (identical(other.tiktokUrl, tiktokUrl) ||
                const DeepCollectionEquality().equals(
                  other.tiktokUrl,
                  tiktokUrl,
                )) &&
            (identical(other.insUrl, insUrl) ||
                const DeepCollectionEquality().equals(other.insUrl, insUrl)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(tiktokUrl) ^
      const DeepCollectionEquality().hash(insUrl) ^
      runtimeType.hashCode;
}

extension $UserServiceUserShareListGetRequestExtension
    on UserServiceUserShareListGetRequest {
  UserServiceUserShareListGetRequest copyWith({
    String? orderId,
    String? tiktokUrl,
    String? insUrl,
  }) {
    return UserServiceUserShareListGetRequest(
      orderId: orderId ?? this.orderId,
      tiktokUrl: tiktokUrl ?? this.tiktokUrl,
      insUrl: insUrl ?? this.insUrl,
    );
  }

  UserServiceUserShareListGetRequest copyWithWrapped({
    Wrapped<String?>? orderId,
    Wrapped<String?>? tiktokUrl,
    Wrapped<String?>? insUrl,
  }) {
    return UserServiceUserShareListGetRequest(
      orderId: (orderId != null ? orderId.value : this.orderId),
      tiktokUrl: (tiktokUrl != null ? tiktokUrl.value : this.tiktokUrl),
      insUrl: (insUrl != null ? insUrl.value : this.insUrl),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserShareRewardinfoGetRequest {
  const UserServiceUserShareRewardinfoGetRequest({
    this.orderId,
    this.tiktokUrl,
    this.insUrl,
  });

  factory UserServiceUserShareRewardinfoGetRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserShareRewardinfoGetRequestFromJson(json);

  static const toJsonFactory = _$UserServiceUserShareRewardinfoGetRequestToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserShareRewardinfoGetRequestToJson(this);

  @JsonKey(name: 'orderId', fromJson: JsonCoerce.asString)
  final String? orderId;
  @JsonKey(name: 'tiktokUrl', fromJson: JsonCoerce.asString)
  final String? tiktokUrl;
  @JsonKey(name: 'insUrl', fromJson: JsonCoerce.asString)
  final String? insUrl;
  static const fromJsonFactory =
      _$UserServiceUserShareRewardinfoGetRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserShareRewardinfoGetRequest &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality().equals(
                  other.orderId,
                  orderId,
                )) &&
            (identical(other.tiktokUrl, tiktokUrl) ||
                const DeepCollectionEquality().equals(
                  other.tiktokUrl,
                  tiktokUrl,
                )) &&
            (identical(other.insUrl, insUrl) ||
                const DeepCollectionEquality().equals(other.insUrl, insUrl)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(tiktokUrl) ^
      const DeepCollectionEquality().hash(insUrl) ^
      runtimeType.hashCode;
}

extension $UserServiceUserShareRewardinfoGetRequestExtension
    on UserServiceUserShareRewardinfoGetRequest {
  UserServiceUserShareRewardinfoGetRequest copyWith({
    String? orderId,
    String? tiktokUrl,
    String? insUrl,
  }) {
    return UserServiceUserShareRewardinfoGetRequest(
      orderId: orderId ?? this.orderId,
      tiktokUrl: tiktokUrl ?? this.tiktokUrl,
      insUrl: insUrl ?? this.insUrl,
    );
  }

  UserServiceUserShareRewardinfoGetRequest copyWithWrapped({
    Wrapped<String?>? orderId,
    Wrapped<String?>? tiktokUrl,
    Wrapped<String?>? insUrl,
  }) {
    return UserServiceUserShareRewardinfoGetRequest(
      orderId: (orderId != null ? orderId.value : this.orderId),
      tiktokUrl: (tiktokUrl != null ? tiktokUrl.value : this.tiktokUrl),
      insUrl: (insUrl != null ? insUrl.value : this.insUrl),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserShareSubmitPostRequest {
  const UserServiceUserShareSubmitPostRequest({
    this.orderId,
    this.tiktokUrl,
    this.insUrl,
  });

  factory UserServiceUserShareSubmitPostRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserShareSubmitPostRequestFromJson(json);

  static const toJsonFactory = _$UserServiceUserShareSubmitPostRequestToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserShareSubmitPostRequestToJson(this);

  @JsonKey(name: 'orderId', fromJson: JsonCoerce.asString)
  final String? orderId;
  @JsonKey(name: 'tiktokUrl', fromJson: JsonCoerce.asString)
  final String? tiktokUrl;
  @JsonKey(name: 'insUrl', fromJson: JsonCoerce.asString)
  final String? insUrl;
  static const fromJsonFactory =
      _$UserServiceUserShareSubmitPostRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserShareSubmitPostRequest &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality().equals(
                  other.orderId,
                  orderId,
                )) &&
            (identical(other.tiktokUrl, tiktokUrl) ||
                const DeepCollectionEquality().equals(
                  other.tiktokUrl,
                  tiktokUrl,
                )) &&
            (identical(other.insUrl, insUrl) ||
                const DeepCollectionEquality().equals(other.insUrl, insUrl)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(tiktokUrl) ^
      const DeepCollectionEquality().hash(insUrl) ^
      runtimeType.hashCode;
}

extension $UserServiceUserShareSubmitPostRequestExtension
    on UserServiceUserShareSubmitPostRequest {
  UserServiceUserShareSubmitPostRequest copyWith({
    String? orderId,
    String? tiktokUrl,
    String? insUrl,
  }) {
    return UserServiceUserShareSubmitPostRequest(
      orderId: orderId ?? this.orderId,
      tiktokUrl: tiktokUrl ?? this.tiktokUrl,
      insUrl: insUrl ?? this.insUrl,
    );
  }

  UserServiceUserShareSubmitPostRequest copyWithWrapped({
    Wrapped<String?>? orderId,
    Wrapped<String?>? tiktokUrl,
    Wrapped<String?>? insUrl,
  }) {
    return UserServiceUserShareSubmitPostRequest(
      orderId: (orderId != null ? orderId.value : this.orderId),
      tiktokUrl: (tiktokUrl != null ? tiktokUrl.value : this.tiktokUrl),
      insUrl: (insUrl != null ? insUrl.value : this.insUrl),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserUpdatePostRequest {
  const UserServiceUserUpdatePostRequest({
    this.userId,
    this.nickname,
    this.description,
    this.gender,
    this.birthday,
    this.photo,
    this.phoneNumber,
    this.email,
    this.platform,
    this.delete,
  });

  factory UserServiceUserUpdatePostRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserUpdatePostRequestFromJson(json);

  static const toJsonFactory = _$UserServiceUserUpdatePostRequestToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserUpdatePostRequestToJson(this);

  @JsonKey(name: 'userId', fromJson: JsonCoerce.asString)
  final String? userId;
  @JsonKey(name: 'nickname', fromJson: JsonCoerce.asString)
  final String? nickname;
  @JsonKey(name: 'description', fromJson: JsonCoerce.asString)
  final String? description;
  @JsonKey(name: 'gender', fromJson: JsonCoerce.asInt)
  final int? gender;
  @JsonKey(name: 'birthday', fromJson: JsonCoerce.asString)
  final String? birthday;
  @JsonKey(name: 'photo', fromJson: JsonCoerce.asString)
  final String? photo;
  @JsonKey(name: 'phoneNumber', fromJson: JsonCoerce.asString)
  final String? phoneNumber;
  @JsonKey(name: 'email', fromJson: JsonCoerce.asString)
  final String? email;
  @JsonKey(name: 'platform', fromJson: JsonCoerce.asString)
  final String? platform;
  @JsonKey(name: 'delete', fromJson: JsonCoerce.asBool)
  final bool? delete;
  static const fromJsonFactory = _$UserServiceUserUpdatePostRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserUpdatePostRequest &&
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
            (identical(other.platform, platform) ||
                const DeepCollectionEquality().equals(
                  other.platform,
                  platform,
                )) &&
            (identical(other.delete, delete) ||
                const DeepCollectionEquality().equals(other.delete, delete)));
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
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(delete) ^
      runtimeType.hashCode;
}

extension $UserServiceUserUpdatePostRequestExtension
    on UserServiceUserUpdatePostRequest {
  UserServiceUserUpdatePostRequest copyWith({
    String? userId,
    String? nickname,
    String? description,
    int? gender,
    String? birthday,
    String? photo,
    String? phoneNumber,
    String? email,
    String? platform,
    bool? delete,
  }) {
    return UserServiceUserUpdatePostRequest(
      userId: userId ?? this.userId,
      nickname: nickname ?? this.nickname,
      description: description ?? this.description,
      gender: gender ?? this.gender,
      birthday: birthday ?? this.birthday,
      photo: photo ?? this.photo,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      platform: platform ?? this.platform,
      delete: delete ?? this.delete,
    );
  }

  UserServiceUserUpdatePostRequest copyWithWrapped({
    Wrapped<String?>? userId,
    Wrapped<String?>? nickname,
    Wrapped<String?>? description,
    Wrapped<int?>? gender,
    Wrapped<String?>? birthday,
    Wrapped<String?>? photo,
    Wrapped<String?>? phoneNumber,
    Wrapped<String?>? email,
    Wrapped<String?>? platform,
    Wrapped<bool?>? delete,
  }) {
    return UserServiceUserUpdatePostRequest(
      userId: (userId != null ? userId.value : this.userId),
      nickname: (nickname != null ? nickname.value : this.nickname),
      description: (description != null ? description.value : this.description),
      gender: (gender != null ? gender.value : this.gender),
      birthday: (birthday != null ? birthday.value : this.birthday),
      photo: (photo != null ? photo.value : this.photo),
      phoneNumber: (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
      email: (email != null ? email.value : this.email),
      platform: (platform != null ? platform.value : this.platform),
      delete: (delete != null ? delete.value : this.delete),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserShareUpdatePostRequest {
  const UserServiceUserShareUpdatePostRequest({
    this.rewardId,
    this.tiktokUrl,
    this.insUrl,
  });

  factory UserServiceUserShareUpdatePostRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserShareUpdatePostRequestFromJson(json);

  static const toJsonFactory = _$UserServiceUserShareUpdatePostRequestToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserShareUpdatePostRequestToJson(this);

  @JsonKey(name: 'rewardId', fromJson: JsonCoerce.asString)
  final String? rewardId;
  @JsonKey(name: 'tiktokUrl', fromJson: JsonCoerce.asString)
  final String? tiktokUrl;
  @JsonKey(name: 'insUrl', fromJson: JsonCoerce.asString)
  final String? insUrl;
  static const fromJsonFactory =
      _$UserServiceUserShareUpdatePostRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserShareUpdatePostRequest &&
            (identical(other.rewardId, rewardId) ||
                const DeepCollectionEquality().equals(
                  other.rewardId,
                  rewardId,
                )) &&
            (identical(other.tiktokUrl, tiktokUrl) ||
                const DeepCollectionEquality().equals(
                  other.tiktokUrl,
                  tiktokUrl,
                )) &&
            (identical(other.insUrl, insUrl) ||
                const DeepCollectionEquality().equals(other.insUrl, insUrl)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(rewardId) ^
      const DeepCollectionEquality().hash(tiktokUrl) ^
      const DeepCollectionEquality().hash(insUrl) ^
      runtimeType.hashCode;
}

extension $UserServiceUserShareUpdatePostRequestExtension
    on UserServiceUserShareUpdatePostRequest {
  UserServiceUserShareUpdatePostRequest copyWith({
    String? rewardId,
    String? tiktokUrl,
    String? insUrl,
  }) {
    return UserServiceUserShareUpdatePostRequest(
      rewardId: rewardId ?? this.rewardId,
      tiktokUrl: tiktokUrl ?? this.tiktokUrl,
      insUrl: insUrl ?? this.insUrl,
    );
  }

  UserServiceUserShareUpdatePostRequest copyWithWrapped({
    Wrapped<String?>? rewardId,
    Wrapped<String?>? tiktokUrl,
    Wrapped<String?>? insUrl,
  }) {
    return UserServiceUserShareUpdatePostRequest(
      rewardId: (rewardId != null ? rewardId.value : this.rewardId),
      tiktokUrl: (tiktokUrl != null ? tiktokUrl.value : this.tiktokUrl),
      insUrl: (insUrl != null ? insUrl.value : this.insUrl),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserTagPortraitAiToPortraitV2PostRequest {
  const UserServiceUserTagPortraitAiToPortraitV2PostRequest({this.userAnswers});

  factory UserServiceUserTagPortraitAiToPortraitV2PostRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserTagPortraitAiToPortraitV2PostRequestFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserTagPortraitAiToPortraitV2PostRequestToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserTagPortraitAiToPortraitV2PostRequestToJson(this);

  @JsonKey(
    name: 'userAnswers',
    fromJson: JsonCoerce.asStringList,
    defaultValue: <String>[],
  )
  final List<String>? userAnswers;
  static const fromJsonFactory =
      _$UserServiceUserTagPortraitAiToPortraitV2PostRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserTagPortraitAiToPortraitV2PostRequest &&
            (identical(other.userAnswers, userAnswers) ||
                const DeepCollectionEquality().equals(
                  other.userAnswers,
                  userAnswers,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userAnswers) ^ runtimeType.hashCode;
}

extension $UserServiceUserTagPortraitAiToPortraitV2PostRequestExtension
    on UserServiceUserTagPortraitAiToPortraitV2PostRequest {
  UserServiceUserTagPortraitAiToPortraitV2PostRequest copyWith({
    List<String>? userAnswers,
  }) {
    return UserServiceUserTagPortraitAiToPortraitV2PostRequest(
      userAnswers: userAnswers ?? this.userAnswers,
    );
  }

  UserServiceUserTagPortraitAiToPortraitV2PostRequest copyWithWrapped({
    Wrapped<List<String>?>? userAnswers,
  }) {
    return UserServiceUserTagPortraitAiToPortraitV2PostRequest(
      userAnswers: (userAnswers != null ? userAnswers.value : this.userAnswers),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserTagPortraitUpdatePortraitPostRequest {
  const UserServiceUserTagPortraitUpdatePortraitPostRequest({
    this.age,
    this.sex,
    this.birthday,
    this.nickname,
    this.avatarUrl,
    this.favoriteShoppingPlatforms,
    this.favoriteBrands,
  });

  factory UserServiceUserTagPortraitUpdatePortraitPostRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserTagPortraitUpdatePortraitPostRequestFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserTagPortraitUpdatePortraitPostRequestToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserTagPortraitUpdatePortraitPostRequestToJson(this);

  @JsonKey(name: 'age', fromJson: JsonCoerce.asInt)
  final int? age;
  @JsonKey(name: 'sex', fromJson: JsonCoerce.asInt)
  final int? sex;
  @JsonKey(name: 'birthday', fromJson: JsonCoerce.asInt)
  final int? birthday;
  @JsonKey(name: 'nickname', fromJson: JsonCoerce.asString)
  final String? nickname;
  @JsonKey(name: 'avatarUrl', fromJson: JsonCoerce.asString)
  final String? avatarUrl;
  @JsonKey(
    name: 'favoriteShoppingPlatforms',
    fromJson: JsonCoerce.asStringList,
    defaultValue: <String>[],
  )
  final List<String>? favoriteShoppingPlatforms;
  @JsonKey(name: 'favoriteBrands', fromJson: JsonCoerce.asString)
  final String? favoriteBrands;
  static const fromJsonFactory =
      _$UserServiceUserTagPortraitUpdatePortraitPostRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserTagPortraitUpdatePortraitPostRequest &&
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

extension $UserServiceUserTagPortraitUpdatePortraitPostRequestExtension
    on UserServiceUserTagPortraitUpdatePortraitPostRequest {
  UserServiceUserTagPortraitUpdatePortraitPostRequest copyWith({
    int? age,
    int? sex,
    int? birthday,
    String? nickname,
    String? avatarUrl,
    List<String>? favoriteShoppingPlatforms,
    String? favoriteBrands,
  }) {
    return UserServiceUserTagPortraitUpdatePortraitPostRequest(
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

  UserServiceUserTagPortraitUpdatePortraitPostRequest copyWithWrapped({
    Wrapped<int?>? age,
    Wrapped<int?>? sex,
    Wrapped<int?>? birthday,
    Wrapped<String?>? nickname,
    Wrapped<String?>? avatarUrl,
    Wrapped<List<String>?>? favoriteShoppingPlatforms,
    Wrapped<String?>? favoriteBrands,
  }) {
    return UserServiceUserTagPortraitUpdatePortraitPostRequest(
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
class UserServiceUserTagPortraitGetPortraitGetRequest {
  const UserServiceUserTagPortraitGetPortraitGetRequest({
    this.age,
    this.sex,
    this.birthday,
    this.nickname,
    this.favoriteShoppingPlatforms,
    this.favoriteBrands,
  });

  factory UserServiceUserTagPortraitGetPortraitGetRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserTagPortraitGetPortraitGetRequestFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserTagPortraitGetPortraitGetRequestToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserTagPortraitGetPortraitGetRequestToJson(this);

  @JsonKey(name: 'age', fromJson: JsonCoerce.asInt)
  final int? age;
  @JsonKey(name: 'sex', fromJson: JsonCoerce.asInt)
  final int? sex;
  @JsonKey(name: 'birthday', fromJson: JsonCoerce.asInt)
  final int? birthday;
  @JsonKey(name: 'nickname', fromJson: JsonCoerce.asString)
  final String? nickname;
  @JsonKey(
    name: 'favoriteShoppingPlatforms',
    fromJson: JsonCoerce.asStringList,
    defaultValue: <String>[],
  )
  final List<String>? favoriteShoppingPlatforms;
  @JsonKey(name: 'favoriteBrands', fromJson: JsonCoerce.asString)
  final String? favoriteBrands;
  static const fromJsonFactory =
      _$UserServiceUserTagPortraitGetPortraitGetRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserTagPortraitGetPortraitGetRequest &&
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

extension $UserServiceUserTagPortraitGetPortraitGetRequestExtension
    on UserServiceUserTagPortraitGetPortraitGetRequest {
  UserServiceUserTagPortraitGetPortraitGetRequest copyWith({
    int? age,
    int? sex,
    int? birthday,
    String? nickname,
    List<String>? favoriteShoppingPlatforms,
    String? favoriteBrands,
  }) {
    return UserServiceUserTagPortraitGetPortraitGetRequest(
      age: age ?? this.age,
      sex: sex ?? this.sex,
      birthday: birthday ?? this.birthday,
      nickname: nickname ?? this.nickname,
      favoriteShoppingPlatforms:
          favoriteShoppingPlatforms ?? this.favoriteShoppingPlatforms,
      favoriteBrands: favoriteBrands ?? this.favoriteBrands,
    );
  }

  UserServiceUserTagPortraitGetPortraitGetRequest copyWithWrapped({
    Wrapped<int?>? age,
    Wrapped<int?>? sex,
    Wrapped<int?>? birthday,
    Wrapped<String?>? nickname,
    Wrapped<List<String>?>? favoriteShoppingPlatforms,
    Wrapped<String?>? favoriteBrands,
  }) {
    return UserServiceUserTagPortraitGetPortraitGetRequest(
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
class UserServiceAddressUpdatePost$Response {
  const UserServiceAddressUpdatePost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory UserServiceAddressUpdatePost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceAddressUpdatePost$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceAddressUpdatePost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceAddressUpdatePost$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data', fromJson: JsonCoerce.asInt)
  final int? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$UserServiceAddressUpdatePost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceAddressUpdatePost$Response &&
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

extension $UserServiceAddressUpdatePost$ResponseExtension
    on UserServiceAddressUpdatePost$Response {
  UserServiceAddressUpdatePost$Response copyWith({
    int? code,
    String? message,
    int? data,
    String? traceId,
    bool? success,
  }) {
    return UserServiceAddressUpdatePost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  UserServiceAddressUpdatePost$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<int?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return UserServiceAddressUpdatePost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceAddressDeleteDelete$Response {
  const UserServiceAddressDeleteDelete$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory UserServiceAddressDeleteDelete$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceAddressDeleteDelete$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceAddressDeleteDelete$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceAddressDeleteDelete$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data', fromJson: JsonCoerce.asInt)
  final int? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$UserServiceAddressDeleteDelete$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceAddressDeleteDelete$Response &&
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

extension $UserServiceAddressDeleteDelete$ResponseExtension
    on UserServiceAddressDeleteDelete$Response {
  UserServiceAddressDeleteDelete$Response copyWith({
    int? code,
    String? message,
    int? data,
    String? traceId,
    bool? success,
  }) {
    return UserServiceAddressDeleteDelete$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  UserServiceAddressDeleteDelete$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<int?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return UserServiceAddressDeleteDelete$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceAddressQueryGet$Response {
  const UserServiceAddressQueryGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory UserServiceAddressQueryGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceAddressQueryGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceAddressQueryGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceAddressQueryGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final List<UserServiceAddressQueryGet$Response$Data$Item>? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder', fromJson: JsonCoerce.asString)
  final String? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory = _$UserServiceAddressQueryGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceAddressQueryGet$Response &&
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

extension $UserServiceAddressQueryGet$ResponseExtension
    on UserServiceAddressQueryGet$Response {
  UserServiceAddressQueryGet$Response copyWith({
    int? code,
    String? message,
    List<UserServiceAddressQueryGet$Response$Data$Item>? data,
    String? traceId,
    String? placeholder,
    bool? success,
  }) {
    return UserServiceAddressQueryGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  UserServiceAddressQueryGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<List<UserServiceAddressQueryGet$Response$Data$Item>?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return UserServiceAddressQueryGet$Response(
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
class UserServiceNoAuthSupportCountryGet$Response {
  const UserServiceNoAuthSupportCountryGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserServiceNoAuthSupportCountryGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceNoAuthSupportCountryGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserServiceNoAuthSupportCountryGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceNoAuthSupportCountryGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(
    name: 'data',
    fromJson: JsonCoerce.asStringList,
    defaultValue: <String>[],
  )
  final List<String>? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$UserServiceNoAuthSupportCountryGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceNoAuthSupportCountryGet$Response &&
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

extension $UserServiceNoAuthSupportCountryGet$ResponseExtension
    on UserServiceNoAuthSupportCountryGet$Response {
  UserServiceNoAuthSupportCountryGet$Response copyWith({
    int? code,
    String? message,
    List<String>? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserServiceNoAuthSupportCountryGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserServiceNoAuthSupportCountryGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<List<String>?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserServiceNoAuthSupportCountryGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceAddressListGet$Response {
  const UserServiceAddressListGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory UserServiceAddressListGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceAddressListGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceAddressListGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceAddressListGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final List<UserServiceAddressListGet$Response$Data$Item>? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder', fromJson: JsonCoerce.asString)
  final String? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory = _$UserServiceAddressListGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceAddressListGet$Response &&
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

extension $UserServiceAddressListGet$ResponseExtension
    on UserServiceAddressListGet$Response {
  UserServiceAddressListGet$Response copyWith({
    int? code,
    String? message,
    List<UserServiceAddressListGet$Response$Data$Item>? data,
    String? traceId,
    String? placeholder,
    bool? success,
  }) {
    return UserServiceAddressListGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  UserServiceAddressListGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<List<UserServiceAddressListGet$Response$Data$Item>?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return UserServiceAddressListGet$Response(
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
class UserServiceGetShippingAddressByCountryGet$Response {
  const UserServiceGetShippingAddressByCountryGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserServiceGetShippingAddressByCountryGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceGetShippingAddressByCountryGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserServiceGetShippingAddressByCountryGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceGetShippingAddressByCountryGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final UserServiceGetShippingAddressByCountryGet$Response$Data? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$UserServiceGetShippingAddressByCountryGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceGetShippingAddressByCountryGet$Response &&
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

extension $UserServiceGetShippingAddressByCountryGet$ResponseExtension
    on UserServiceGetShippingAddressByCountryGet$Response {
  UserServiceGetShippingAddressByCountryGet$Response copyWith({
    int? code,
    String? message,
    UserServiceGetShippingAddressByCountryGet$Response$Data? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserServiceGetShippingAddressByCountryGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserServiceGetShippingAddressByCountryGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<UserServiceGetShippingAddressByCountryGet$Response$Data?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserServiceGetShippingAddressByCountryGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceAddressAddPost$Response {
  const UserServiceAddressAddPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory UserServiceAddressAddPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceAddressAddPost$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceAddressAddPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceAddressAddPost$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data', fromJson: JsonCoerce.asInt)
  final int? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory = _$UserServiceAddressAddPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceAddressAddPost$Response &&
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

extension $UserServiceAddressAddPost$ResponseExtension
    on UserServiceAddressAddPost$Response {
  UserServiceAddressAddPost$Response copyWith({
    int? code,
    String? message,
    int? data,
    String? traceId,
    bool? success,
  }) {
    return UserServiceAddressAddPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  UserServiceAddressAddPost$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<int?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return UserServiceAddressAddPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceGetDefaultShippingAddressGet$Response {
  const UserServiceGetDefaultShippingAddressGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserServiceGetDefaultShippingAddressGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceGetDefaultShippingAddressGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserServiceGetDefaultShippingAddressGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceGetDefaultShippingAddressGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final UserServiceGetDefaultShippingAddressGet$Response$Data? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$UserServiceGetDefaultShippingAddressGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceGetDefaultShippingAddressGet$Response &&
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

extension $UserServiceGetDefaultShippingAddressGet$ResponseExtension
    on UserServiceGetDefaultShippingAddressGet$Response {
  UserServiceGetDefaultShippingAddressGet$Response copyWith({
    int? code,
    String? message,
    UserServiceGetDefaultShippingAddressGet$Response$Data? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserServiceGetDefaultShippingAddressGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserServiceGetDefaultShippingAddressGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<UserServiceGetDefaultShippingAddressGet$Response$Data?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserServiceGetDefaultShippingAddressGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceAddressCountryGet$Response {
  const UserServiceAddressCountryGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserServiceAddressCountryGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceAddressCountryGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceAddressCountryGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceAddressCountryGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final List<UserServiceAddressCountryGet$Response$Data$Item>? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$UserServiceAddressCountryGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceAddressCountryGet$Response &&
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

extension $UserServiceAddressCountryGet$ResponseExtension
    on UserServiceAddressCountryGet$Response {
  UserServiceAddressCountryGet$Response copyWith({
    int? code,
    String? message,
    List<UserServiceAddressCountryGet$Response$Data$Item>? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserServiceAddressCountryGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserServiceAddressCountryGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<List<UserServiceAddressCountryGet$Response$Data$Item>?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserServiceAddressCountryGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceAddressQueryByZipCodeGet$Response {
  const UserServiceAddressQueryByZipCodeGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory UserServiceAddressQueryByZipCodeGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceAddressQueryByZipCodeGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserServiceAddressQueryByZipCodeGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceAddressQueryByZipCodeGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final List<UserServiceAddressQueryByZipCodeGet$Response$Data$Item>? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$UserServiceAddressQueryByZipCodeGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceAddressQueryByZipCodeGet$Response &&
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

extension $UserServiceAddressQueryByZipCodeGet$ResponseExtension
    on UserServiceAddressQueryByZipCodeGet$Response {
  UserServiceAddressQueryByZipCodeGet$Response copyWith({
    int? code,
    String? message,
    List<UserServiceAddressQueryByZipCodeGet$Response$Data$Item>? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return UserServiceAddressQueryByZipCodeGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  UserServiceAddressQueryByZipCodeGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<List<UserServiceAddressQueryByZipCodeGet$Response$Data$Item>?>?
    data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return UserServiceAddressQueryByZipCodeGet$Response(
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
class UserServiceUserInnerUpdUserLevelPost$Response {
  const UserServiceUserInnerUpdUserLevelPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory UserServiceUserInnerUpdUserLevelPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserInnerUpdUserLevelPost$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserInnerUpdUserLevelPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserInnerUpdUserLevelPost$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final Object? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$UserServiceUserInnerUpdUserLevelPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserInnerUpdUserLevelPost$Response &&
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

extension $UserServiceUserInnerUpdUserLevelPost$ResponseExtension
    on UserServiceUserInnerUpdUserLevelPost$Response {
  UserServiceUserInnerUpdUserLevelPost$Response copyWith({
    int? code,
    String? message,
    Object? data,
    String? traceId,
    bool? success,
  }) {
    return UserServiceUserInnerUpdUserLevelPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  UserServiceUserInnerUpdUserLevelPost$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<Object?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return UserServiceUserInnerUpdUserLevelPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceSigninSwitchPortalPost$Response {
  const UserServiceSigninSwitchPortalPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
    this.url,
  });

  factory UserServiceSigninSwitchPortalPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceSigninSwitchPortalPost$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserServiceSigninSwitchPortalPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceSigninSwitchPortalPost$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final UserServiceSigninSwitchPortalPost$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder', fromJson: JsonCoerce.asString)
  final String? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$UserServiceSigninSwitchPortalPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceSigninSwitchPortalPost$Response &&
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

extension $UserServiceSigninSwitchPortalPost$ResponseExtension
    on UserServiceSigninSwitchPortalPost$Response {
  UserServiceSigninSwitchPortalPost$Response copyWith({
    int? code,
    String? message,
    UserServiceSigninSwitchPortalPost$Response$Data? data,
    String? traceId,
    String? placeholder,
    bool? success,
    String? url,
  }) {
    return UserServiceSigninSwitchPortalPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
      url: url ?? this.url,
    );
  }

  UserServiceSigninSwitchPortalPost$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<UserServiceSigninSwitchPortalPost$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
    Wrapped<String?>? url,
  }) {
    return UserServiceSigninSwitchPortalPost$Response(
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
class UserServiceSignInInitPost$Response {
  const UserServiceSignInInitPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
  });

  factory UserServiceSignInInitPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceSignInInitPost$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceSignInInitPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceSignInInitPost$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final UserServiceSignInInitPost$Response$Data? data;
  @JsonKey(name: 'traceId')
  final Object? traceId;
  static const fromJsonFactory = _$UserServiceSignInInitPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceSignInInitPost$Response &&
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

extension $UserServiceSignInInitPost$ResponseExtension
    on UserServiceSignInInitPost$Response {
  UserServiceSignInInitPost$Response copyWith({
    int? code,
    String? message,
    UserServiceSignInInitPost$Response$Data? data,
    Object? traceId,
  }) {
    return UserServiceSignInInitPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  UserServiceSignInInitPost$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<UserServiceSignInInitPost$Response$Data?>? data,
    Wrapped<Object?>? traceId,
  }) {
    return UserServiceSignInInitPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceOtpApplyPost$Response {
  const UserServiceOtpApplyPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
  });

  factory UserServiceOtpApplyPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceOtpApplyPost$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceOtpApplyPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceOtpApplyPost$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data', fromJson: JsonCoerce.asString)
  final String? data;
  @JsonKey(name: 'traceId')
  final Object? traceId;
  static const fromJsonFactory = _$UserServiceOtpApplyPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceOtpApplyPost$Response &&
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

extension $UserServiceOtpApplyPost$ResponseExtension
    on UserServiceOtpApplyPost$Response {
  UserServiceOtpApplyPost$Response copyWith({
    int? code,
    String? message,
    String? data,
    Object? traceId,
  }) {
    return UserServiceOtpApplyPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
    );
  }

  UserServiceOtpApplyPost$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<String?>? data,
    Wrapped<Object?>? traceId,
  }) {
    return UserServiceOtpApplyPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceSignInVerifyPost$Response {
  const UserServiceSignInVerifyPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
    this.url,
  });

  factory UserServiceSignInVerifyPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceSignInVerifyPost$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceSignInVerifyPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceSignInVerifyPost$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final UserServiceSignInVerifyPost$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder', fromJson: JsonCoerce.asString)
  final String? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory = _$UserServiceSignInVerifyPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceSignInVerifyPost$Response &&
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

extension $UserServiceSignInVerifyPost$ResponseExtension
    on UserServiceSignInVerifyPost$Response {
  UserServiceSignInVerifyPost$Response copyWith({
    int? code,
    String? message,
    UserServiceSignInVerifyPost$Response$Data? data,
    String? traceId,
    String? placeholder,
    bool? success,
    String? url,
  }) {
    return UserServiceSignInVerifyPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
      url: url ?? this.url,
    );
  }

  UserServiceSignInVerifyPost$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<UserServiceSignInVerifyPost$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
    Wrapped<String?>? url,
  }) {
    return UserServiceSignInVerifyPost$Response(
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
class UserServiceSignInCallPost$Response {
  const UserServiceSignInCallPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
    this.url,
  });

  factory UserServiceSignInCallPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceSignInCallPost$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceSignInCallPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceSignInCallPost$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final UserServiceSignInCallPost$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder', fromJson: JsonCoerce.asString)
  final String? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory = _$UserServiceSignInCallPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceSignInCallPost$Response &&
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

extension $UserServiceSignInCallPost$ResponseExtension
    on UserServiceSignInCallPost$Response {
  UserServiceSignInCallPost$Response copyWith({
    int? code,
    String? message,
    UserServiceSignInCallPost$Response$Data? data,
    String? traceId,
    String? placeholder,
    bool? success,
    String? url,
  }) {
    return UserServiceSignInCallPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
      url: url ?? this.url,
    );
  }

  UserServiceSignInCallPost$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<UserServiceSignInCallPost$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
    Wrapped<String?>? url,
  }) {
    return UserServiceSignInCallPost$Response(
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
class UserServiceNoAuthOtpVerifyPost$Response {
  const UserServiceNoAuthOtpVerifyPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
    this.url,
  });

  factory UserServiceNoAuthOtpVerifyPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceNoAuthOtpVerifyPost$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceNoAuthOtpVerifyPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceNoAuthOtpVerifyPost$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final UserServiceNoAuthOtpVerifyPost$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder', fromJson: JsonCoerce.asString)
  final String? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  static const fromJsonFactory =
      _$UserServiceNoAuthOtpVerifyPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceNoAuthOtpVerifyPost$Response &&
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

extension $UserServiceNoAuthOtpVerifyPost$ResponseExtension
    on UserServiceNoAuthOtpVerifyPost$Response {
  UserServiceNoAuthOtpVerifyPost$Response copyWith({
    int? code,
    String? message,
    UserServiceNoAuthOtpVerifyPost$Response$Data? data,
    String? traceId,
    String? placeholder,
    bool? success,
    String? url,
  }) {
    return UserServiceNoAuthOtpVerifyPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
      url: url ?? this.url,
    );
  }

  UserServiceNoAuthOtpVerifyPost$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<UserServiceNoAuthOtpVerifyPost$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
    Wrapped<String?>? url,
  }) {
    return UserServiceNoAuthOtpVerifyPost$Response(
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
class UserServiceNoAuthCommonConfigDefaultSettingGet$Response {
  const UserServiceNoAuthCommonConfigDefaultSettingGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserServiceNoAuthCommonConfigDefaultSettingGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceNoAuthCommonConfigDefaultSettingGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserServiceNoAuthCommonConfigDefaultSettingGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceNoAuthCommonConfigDefaultSettingGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final UserServiceNoAuthCommonConfigDefaultSettingGet$Response$Data? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$UserServiceNoAuthCommonConfigDefaultSettingGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceNoAuthCommonConfigDefaultSettingGet$Response &&
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

extension $UserServiceNoAuthCommonConfigDefaultSettingGet$ResponseExtension
    on UserServiceNoAuthCommonConfigDefaultSettingGet$Response {
  UserServiceNoAuthCommonConfigDefaultSettingGet$Response copyWith({
    int? code,
    String? message,
    UserServiceNoAuthCommonConfigDefaultSettingGet$Response$Data? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserServiceNoAuthCommonConfigDefaultSettingGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserServiceNoAuthCommonConfigDefaultSettingGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<UserServiceNoAuthCommonConfigDefaultSettingGet$Response$Data?>?
    data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserServiceNoAuthCommonConfigDefaultSettingGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceFileImUploadPost$Response {
  const UserServiceFileImUploadPost$Response({
    this.code,
    this.message,
    this.data,
  });

  factory UserServiceFileImUploadPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceFileImUploadPost$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceFileImUploadPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceFileImUploadPost$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final List<UserServiceFileImUploadPost$Response$Data$Item>? data;
  static const fromJsonFactory = _$UserServiceFileImUploadPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceFileImUploadPost$Response &&
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

extension $UserServiceFileImUploadPost$ResponseExtension
    on UserServiceFileImUploadPost$Response {
  UserServiceFileImUploadPost$Response copyWith({
    int? code,
    String? message,
    List<UserServiceFileImUploadPost$Response$Data$Item>? data,
  }) {
    return UserServiceFileImUploadPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  UserServiceFileImUploadPost$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<List<UserServiceFileImUploadPost$Response$Data$Item>?>? data,
  }) {
    return UserServiceFileImUploadPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceFileLogoUploadPost$Response {
  const UserServiceFileLogoUploadPost$Response({
    this.code,
    this.message,
    this.data,
  });

  factory UserServiceFileLogoUploadPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceFileLogoUploadPost$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceFileLogoUploadPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceFileLogoUploadPost$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asString)
  final String? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final UserServiceFileLogoUploadPost$Response$Data? data;
  static const fromJsonFactory =
      _$UserServiceFileLogoUploadPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceFileLogoUploadPost$Response &&
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

extension $UserServiceFileLogoUploadPost$ResponseExtension
    on UserServiceFileLogoUploadPost$Response {
  UserServiceFileLogoUploadPost$Response copyWith({
    String? code,
    String? message,
    UserServiceFileLogoUploadPost$Response$Data? data,
  }) {
    return UserServiceFileLogoUploadPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  UserServiceFileLogoUploadPost$Response copyWithWrapped({
    Wrapped<String?>? code,
    Wrapped<String?>? message,
    Wrapped<UserServiceFileLogoUploadPost$Response$Data?>? data,
  }) {
    return UserServiceFileLogoUploadPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserCouponCountGet$Response {
  const UserServiceUserCouponCountGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory UserServiceUserCouponCountGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserCouponCountGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceUserCouponCountGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponCountGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final UserServiceUserCouponCountGet$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder', fromJson: JsonCoerce.asString)
  final String? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$UserServiceUserCouponCountGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponCountGet$Response &&
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

extension $UserServiceUserCouponCountGet$ResponseExtension
    on UserServiceUserCouponCountGet$Response {
  UserServiceUserCouponCountGet$Response copyWith({
    int? code,
    String? message,
    UserServiceUserCouponCountGet$Response$Data? data,
    String? traceId,
    String? placeholder,
    bool? success,
  }) {
    return UserServiceUserCouponCountGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  UserServiceUserCouponCountGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<UserServiceUserCouponCountGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return UserServiceUserCouponCountGet$Response(
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
class UserServiceUserCouponActivityInfoGet$Response {
  const UserServiceUserCouponActivityInfoGet$Response({
    this.success,
    this.data,
  });

  factory UserServiceUserCouponActivityInfoGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserCouponActivityInfoGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserCouponActivityInfoGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponActivityInfoGet$ResponseToJson(this);

  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  @JsonKey(name: 'data')
  final UserServiceUserCouponActivityInfoGet$Response$Data? data;
  static const fromJsonFactory =
      _$UserServiceUserCouponActivityInfoGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponActivityInfoGet$Response &&
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

extension $UserServiceUserCouponActivityInfoGet$ResponseExtension
    on UserServiceUserCouponActivityInfoGet$Response {
  UserServiceUserCouponActivityInfoGet$Response copyWith({
    bool? success,
    UserServiceUserCouponActivityInfoGet$Response$Data? data,
  }) {
    return UserServiceUserCouponActivityInfoGet$Response(
      success: success ?? this.success,
      data: data ?? this.data,
    );
  }

  UserServiceUserCouponActivityInfoGet$Response copyWithWrapped({
    Wrapped<bool?>? success,
    Wrapped<UserServiceUserCouponActivityInfoGet$Response$Data?>? data,
  }) {
    return UserServiceUserCouponActivityInfoGet$Response(
      success: (success != null ? success.value : this.success),
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserCouponCode2CouponGet$Response {
  const UserServiceUserCouponCode2CouponGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory UserServiceUserCouponCode2CouponGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserCouponCode2CouponGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserCouponCode2CouponGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponCode2CouponGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final UserServiceUserCouponCode2CouponGet$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder', fromJson: JsonCoerce.asString)
  final String? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$UserServiceUserCouponCode2CouponGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponCode2CouponGet$Response &&
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

extension $UserServiceUserCouponCode2CouponGet$ResponseExtension
    on UserServiceUserCouponCode2CouponGet$Response {
  UserServiceUserCouponCode2CouponGet$Response copyWith({
    int? code,
    String? message,
    UserServiceUserCouponCode2CouponGet$Response$Data? data,
    String? traceId,
    String? placeholder,
    bool? success,
  }) {
    return UserServiceUserCouponCode2CouponGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  UserServiceUserCouponCode2CouponGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<UserServiceUserCouponCode2CouponGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return UserServiceUserCouponCode2CouponGet$Response(
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
class UserServiceUserCouponActivityInfosGet$Response {
  const UserServiceUserCouponActivityInfosGet$Response({
    this.success,
    this.data,
  });

  factory UserServiceUserCouponActivityInfosGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserCouponActivityInfosGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserCouponActivityInfosGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponActivityInfosGet$ResponseToJson(this);

  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  @JsonKey(name: 'data')
  final List<UserServiceUserCouponActivityInfosGet$Response$Data$Item>? data;
  static const fromJsonFactory =
      _$UserServiceUserCouponActivityInfosGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponActivityInfosGet$Response &&
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

extension $UserServiceUserCouponActivityInfosGet$ResponseExtension
    on UserServiceUserCouponActivityInfosGet$Response {
  UserServiceUserCouponActivityInfosGet$Response copyWith({
    bool? success,
    List<UserServiceUserCouponActivityInfosGet$Response$Data$Item>? data,
  }) {
    return UserServiceUserCouponActivityInfosGet$Response(
      success: success ?? this.success,
      data: data ?? this.data,
    );
  }

  UserServiceUserCouponActivityInfosGet$Response copyWithWrapped({
    Wrapped<bool?>? success,
    Wrapped<List<UserServiceUserCouponActivityInfosGet$Response$Data$Item>?>?
    data,
  }) {
    return UserServiceUserCouponActivityInfosGet$Response(
      success: (success != null ? success.value : this.success),
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserCouponGetActivitiesGet$Response {
  const UserServiceUserCouponGetActivitiesGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory UserServiceUserCouponGetActivitiesGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserCouponGetActivitiesGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserCouponGetActivitiesGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponGetActivitiesGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(
    name: 'data',
    fromJson: JsonCoerce.asStringList,
    defaultValue: <String>[],
  )
  final List<String>? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder', fromJson: JsonCoerce.asString)
  final String? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$UserServiceUserCouponGetActivitiesGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponGetActivitiesGet$Response &&
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

extension $UserServiceUserCouponGetActivitiesGet$ResponseExtension
    on UserServiceUserCouponGetActivitiesGet$Response {
  UserServiceUserCouponGetActivitiesGet$Response copyWith({
    int? code,
    String? message,
    List<String>? data,
    String? traceId,
    String? placeholder,
    bool? success,
  }) {
    return UserServiceUserCouponGetActivitiesGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  UserServiceUserCouponGetActivitiesGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<List<String>?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return UserServiceUserCouponGetActivitiesGet$Response(
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
class UserServiceUserCouponGetListGet$Response {
  const UserServiceUserCouponGetListGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory UserServiceUserCouponGetListGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserCouponGetListGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceUserCouponGetListGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponGetListGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final List<UserServiceUserCouponGetListGet$Response$Data$Item>? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder', fromJson: JsonCoerce.asString)
  final String? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$UserServiceUserCouponGetListGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponGetListGet$Response &&
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

extension $UserServiceUserCouponGetListGet$ResponseExtension
    on UserServiceUserCouponGetListGet$Response {
  UserServiceUserCouponGetListGet$Response copyWith({
    int? code,
    String? message,
    List<UserServiceUserCouponGetListGet$Response$Data$Item>? data,
    String? traceId,
    String? placeholder,
    bool? success,
  }) {
    return UserServiceUserCouponGetListGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  UserServiceUserCouponGetListGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<List<UserServiceUserCouponGetListGet$Response$Data$Item>?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return UserServiceUserCouponGetListGet$Response(
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
class UserServiceUserCouponGetUserCouponByActivityPost$Response {
  const UserServiceUserCouponGetUserCouponByActivityPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory UserServiceUserCouponGetUserCouponByActivityPost$Response.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UserServiceUserCouponGetUserCouponByActivityPost$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserCouponGetUserCouponByActivityPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponGetUserCouponByActivityPost$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data', fromJson: JsonCoerce.asBool)
  final bool? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$UserServiceUserCouponGetUserCouponByActivityPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponGetUserCouponByActivityPost$Response &&
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

extension $UserServiceUserCouponGetUserCouponByActivityPost$ResponseExtension
    on UserServiceUserCouponGetUserCouponByActivityPost$Response {
  UserServiceUserCouponGetUserCouponByActivityPost$Response copyWith({
    int? code,
    String? message,
    bool? data,
    String? traceId,
    Object? placeholder,
    bool? success,
  }) {
    return UserServiceUserCouponGetUserCouponByActivityPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  UserServiceUserCouponGetUserCouponByActivityPost$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<bool?>? data,
    Wrapped<String?>? traceId,
    Wrapped<Object?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return UserServiceUserCouponGetUserCouponByActivityPost$Response(
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
class UserServiceUserCouponSaveGet$Response {
  const UserServiceUserCouponSaveGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory UserServiceUserCouponSaveGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserCouponSaveGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceUserCouponSaveGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponSaveGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data', fromJson: JsonCoerce.asString)
  final String? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder', fromJson: JsonCoerce.asString)
  final String? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$UserServiceUserCouponSaveGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponSaveGet$Response &&
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

extension $UserServiceUserCouponSaveGet$ResponseExtension
    on UserServiceUserCouponSaveGet$Response {
  UserServiceUserCouponSaveGet$Response copyWith({
    int? code,
    String? message,
    String? data,
    String? traceId,
    String? placeholder,
    bool? success,
  }) {
    return UserServiceUserCouponSaveGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  UserServiceUserCouponSaveGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<String?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return UserServiceUserCouponSaveGet$Response(
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
class UserServiceUserCouponNoAuthActivityInfoGet$Response {
  const UserServiceUserCouponNoAuthActivityInfoGet$Response({
    this.success,
    this.data,
  });

  factory UserServiceUserCouponNoAuthActivityInfoGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserCouponNoAuthActivityInfoGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserCouponNoAuthActivityInfoGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponNoAuthActivityInfoGet$ResponseToJson(this);

  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  @JsonKey(name: 'data')
  final UserServiceUserCouponNoAuthActivityInfoGet$Response$Data? data;
  static const fromJsonFactory =
      _$UserServiceUserCouponNoAuthActivityInfoGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponNoAuthActivityInfoGet$Response &&
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

extension $UserServiceUserCouponNoAuthActivityInfoGet$ResponseExtension
    on UserServiceUserCouponNoAuthActivityInfoGet$Response {
  UserServiceUserCouponNoAuthActivityInfoGet$Response copyWith({
    bool? success,
    UserServiceUserCouponNoAuthActivityInfoGet$Response$Data? data,
  }) {
    return UserServiceUserCouponNoAuthActivityInfoGet$Response(
      success: success ?? this.success,
      data: data ?? this.data,
    );
  }

  UserServiceUserCouponNoAuthActivityInfoGet$Response copyWithWrapped({
    Wrapped<bool?>? success,
    Wrapped<UserServiceUserCouponNoAuthActivityInfoGet$Response$Data?>? data,
  }) {
    return UserServiceUserCouponNoAuthActivityInfoGet$Response(
      success: (success != null ? success.value : this.success),
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserCouponGetCouponByActivityPost$Response {
  const UserServiceUserCouponGetCouponByActivityPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory UserServiceUserCouponGetCouponByActivityPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserCouponGetCouponByActivityPost$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserCouponGetCouponByActivityPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponGetCouponByActivityPost$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final List<UserServiceUserCouponGetCouponByActivityPost$Response$Data$Item>?
  data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder', fromJson: JsonCoerce.asString)
  final String? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$UserServiceUserCouponGetCouponByActivityPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponGetCouponByActivityPost$Response &&
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

extension $UserServiceUserCouponGetCouponByActivityPost$ResponseExtension
    on UserServiceUserCouponGetCouponByActivityPost$Response {
  UserServiceUserCouponGetCouponByActivityPost$Response copyWith({
    int? code,
    String? message,
    List<UserServiceUserCouponGetCouponByActivityPost$Response$Data$Item>? data,
    String? traceId,
    String? placeholder,
    bool? success,
  }) {
    return UserServiceUserCouponGetCouponByActivityPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  UserServiceUserCouponGetCouponByActivityPost$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<
      List<UserServiceUserCouponGetCouponByActivityPost$Response$Data$Item>?
    >?
    data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return UserServiceUserCouponGetCouponByActivityPost$Response(
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
class UserServiceUserCouponGetGet$Response {
  const UserServiceUserCouponGetGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory UserServiceUserCouponGetGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserCouponGetGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceUserCouponGetGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponGetGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final List<UserServiceUserCouponGetGet$Response$Data$Item>? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder', fromJson: JsonCoerce.asString)
  final String? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory = _$UserServiceUserCouponGetGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponGetGet$Response &&
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

extension $UserServiceUserCouponGetGet$ResponseExtension
    on UserServiceUserCouponGetGet$Response {
  UserServiceUserCouponGetGet$Response copyWith({
    int? code,
    String? message,
    List<UserServiceUserCouponGetGet$Response$Data$Item>? data,
    String? traceId,
    String? placeholder,
    bool? success,
  }) {
    return UserServiceUserCouponGetGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  UserServiceUserCouponGetGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<List<UserServiceUserCouponGetGet$Response$Data$Item>?>? data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return UserServiceUserCouponGetGet$Response(
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
class UserServiceImGetInfoPost$Response {
  const UserServiceImGetInfoPost$Response({
    this.data,
    this.message,
    this.traceId,
  });

  factory UserServiceImGetInfoPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceImGetInfoPost$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceImGetInfoPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceImGetInfoPost$ResponseToJson(this);

  @JsonKey(name: 'data')
  final UserServiceImGetInfoPost$Response$Data? data;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory = _$UserServiceImGetInfoPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceImGetInfoPost$Response &&
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

extension $UserServiceImGetInfoPost$ResponseExtension
    on UserServiceImGetInfoPost$Response {
  UserServiceImGetInfoPost$Response copyWith({
    UserServiceImGetInfoPost$Response$Data? data,
    String? message,
    String? traceId,
  }) {
    return UserServiceImGetInfoPost$Response(
      data: data ?? this.data,
      message: message ?? this.message,
      traceId: traceId ?? this.traceId,
    );
  }

  UserServiceImGetInfoPost$Response copyWithWrapped({
    Wrapped<UserServiceImGetInfoPost$Response$Data?>? data,
    Wrapped<String?>? message,
    Wrapped<String?>? traceId,
  }) {
    return UserServiceImGetInfoPost$Response(
      data: (data != null ? data.value : this.data),
      message: (message != null ? message.value : this.message),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserShareListGet$Response {
  const UserServiceUserShareListGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserServiceUserShareListGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserShareListGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceUserShareListGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserShareListGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final List<UserServiceUserShareListGet$Response$Data$Item>? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory = _$UserServiceUserShareListGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserShareListGet$Response &&
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

extension $UserServiceUserShareListGet$ResponseExtension
    on UserServiceUserShareListGet$Response {
  UserServiceUserShareListGet$Response copyWith({
    int? code,
    String? message,
    List<UserServiceUserShareListGet$Response$Data$Item>? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserServiceUserShareListGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserServiceUserShareListGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<List<UserServiceUserShareListGet$Response$Data$Item>?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserServiceUserShareListGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserShareRewardInfoGet$Response {
  const UserServiceUserShareRewardInfoGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserServiceUserShareRewardInfoGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserShareRewardInfoGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserShareRewardInfoGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserShareRewardInfoGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final UserServiceUserShareRewardInfoGet$Response$Data? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$UserServiceUserShareRewardInfoGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserShareRewardInfoGet$Response &&
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

extension $UserServiceUserShareRewardInfoGet$ResponseExtension
    on UserServiceUserShareRewardInfoGet$Response {
  UserServiceUserShareRewardInfoGet$Response copyWith({
    int? code,
    String? message,
    UserServiceUserShareRewardInfoGet$Response$Data? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserServiceUserShareRewardInfoGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserServiceUserShareRewardInfoGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<UserServiceUserShareRewardInfoGet$Response$Data?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserServiceUserShareRewardInfoGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserShareSubmitPost$Response {
  const UserServiceUserShareSubmitPost$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserServiceUserShareSubmitPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserShareSubmitPost$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceUserShareSubmitPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserShareSubmitPost$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data', fromJson: JsonCoerce.asString)
  final String? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$UserServiceUserShareSubmitPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserShareSubmitPost$Response &&
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

extension $UserServiceUserShareSubmitPost$ResponseExtension
    on UserServiceUserShareSubmitPost$Response {
  UserServiceUserShareSubmitPost$Response copyWith({
    int? code,
    String? message,
    String? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserServiceUserShareSubmitPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserServiceUserShareSubmitPost$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<String?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserServiceUserShareSubmitPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserDeleteGet$Response {
  const UserServiceUserDeleteGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserServiceUserDeleteGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserDeleteGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceUserDeleteGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserDeleteGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final UserServiceUserDeleteGet$Response$Data? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory = _$UserServiceUserDeleteGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserDeleteGet$Response &&
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

extension $UserServiceUserDeleteGet$ResponseExtension
    on UserServiceUserDeleteGet$Response {
  UserServiceUserDeleteGet$Response copyWith({
    int? code,
    String? message,
    UserServiceUserDeleteGet$Response$Data? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserServiceUserDeleteGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserServiceUserDeleteGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<UserServiceUserDeleteGet$Response$Data?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserServiceUserDeleteGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserDeleteConfirmGet$Response {
  const UserServiceUserDeleteConfirmGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserServiceUserDeleteConfirmGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserDeleteConfirmGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceUserDeleteConfirmGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserDeleteConfirmGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data', fromJson: JsonCoerce.asBool)
  final bool? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$UserServiceUserDeleteConfirmGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserDeleteConfirmGet$Response &&
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

extension $UserServiceUserDeleteConfirmGet$ResponseExtension
    on UserServiceUserDeleteConfirmGet$Response {
  UserServiceUserDeleteConfirmGet$Response copyWith({
    int? code,
    String? message,
    bool? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserServiceUserDeleteConfirmGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserServiceUserDeleteConfirmGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<bool?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserServiceUserDeleteConfirmGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserGetGet$Response {
  const UserServiceUserGetGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserServiceUserGetGet$Response.fromJson(Map<String, dynamic> json) =>
      _$UserServiceUserGetGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceUserGetGet$ResponseToJson;
  Map<String, dynamic> toJson() => _$UserServiceUserGetGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final UserServiceUserGetGet$Response$Data? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory = _$UserServiceUserGetGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserGetGet$Response &&
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

extension $UserServiceUserGetGet$ResponseExtension
    on UserServiceUserGetGet$Response {
  UserServiceUserGetGet$Response copyWith({
    int? code,
    String? message,
    UserServiceUserGetGet$Response$Data? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserServiceUserGetGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserServiceUserGetGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<UserServiceUserGetGet$Response$Data?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserServiceUserGetGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserUserCommissionGet$Response {
  const UserServiceUserUserCommissionGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserServiceUserUserCommissionGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserUserCommissionGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserUserCommissionGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserUserCommissionGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final UserServiceUserUserCommissionGet$Response$Data? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$UserServiceUserUserCommissionGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserUserCommissionGet$Response &&
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

extension $UserServiceUserUserCommissionGet$ResponseExtension
    on UserServiceUserUserCommissionGet$Response {
  UserServiceUserUserCommissionGet$Response copyWith({
    int? code,
    String? message,
    UserServiceUserUserCommissionGet$Response$Data? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserServiceUserUserCommissionGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserServiceUserUserCommissionGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<UserServiceUserUserCommissionGet$Response$Data?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserServiceUserUserCommissionGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserConfigureSettingGet$Response {
  const UserServiceUserConfigureSettingGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserServiceUserConfigureSettingGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserConfigureSettingGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserConfigureSettingGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserConfigureSettingGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final UserServiceUserConfigureSettingGet$Response$Data? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$UserServiceUserConfigureSettingGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserConfigureSettingGet$Response &&
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

extension $UserServiceUserConfigureSettingGet$ResponseExtension
    on UserServiceUserConfigureSettingGet$Response {
  UserServiceUserConfigureSettingGet$Response copyWith({
    int? code,
    String? message,
    UserServiceUserConfigureSettingGet$Response$Data? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserServiceUserConfigureSettingGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserServiceUserConfigureSettingGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<UserServiceUserConfigureSettingGet$Response$Data?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserServiceUserConfigureSettingGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserInviteCountGet$Response {
  const UserServiceUserInviteCountGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserServiceUserInviteCountGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserInviteCountGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceUserInviteCountGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserInviteCountGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data', fromJson: JsonCoerce.asInt)
  final int? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$UserServiceUserInviteCountGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserInviteCountGet$Response &&
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

extension $UserServiceUserInviteCountGet$ResponseExtension
    on UserServiceUserInviteCountGet$Response {
  UserServiceUserInviteCountGet$Response copyWith({
    int? code,
    String? message,
    int? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserServiceUserInviteCountGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserServiceUserInviteCountGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<int?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserServiceUserInviteCountGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserInviteNumGet$Response {
  const UserServiceUserInviteNumGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserServiceUserInviteNumGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserInviteNumGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceUserInviteNumGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserInviteNumGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final UserServiceUserInviteNumGet$Response$Data? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory = _$UserServiceUserInviteNumGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserInviteNumGet$Response &&
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

extension $UserServiceUserInviteNumGet$ResponseExtension
    on UserServiceUserInviteNumGet$Response {
  UserServiceUserInviteNumGet$Response copyWith({
    int? code,
    String? message,
    UserServiceUserInviteNumGet$Response$Data? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserServiceUserInviteNumGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserServiceUserInviteNumGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<UserServiceUserInviteNumGet$Response$Data?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserServiceUserInviteNumGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserShareUpdatePost$Response {
  const UserServiceUserShareUpdatePost$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserServiceUserShareUpdatePost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserShareUpdatePost$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceUserShareUpdatePost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserShareUpdatePost$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data', fromJson: JsonCoerce.asString)
  final String? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$UserServiceUserShareUpdatePost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserShareUpdatePost$Response &&
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

extension $UserServiceUserShareUpdatePost$ResponseExtension
    on UserServiceUserShareUpdatePost$Response {
  UserServiceUserShareUpdatePost$Response copyWith({
    int? code,
    String? message,
    String? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserServiceUserShareUpdatePost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserServiceUserShareUpdatePost$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<String?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserServiceUserShareUpdatePost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserUserRewardGet$Response {
  const UserServiceUserUserRewardGet$Response({
    this.code,
    this.message,
    this.data,
    this.placeholder,
    this.traceId,
  });

  factory UserServiceUserUserRewardGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserUserRewardGet$ResponseFromJson(json);

  static const toJsonFactory = _$UserServiceUserUserRewardGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserUserRewardGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data', fromJson: JsonCoerce.asBool)
  final bool? data;
  @JsonKey(name: 'placeholder')
  final Object? placeholder;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  static const fromJsonFactory =
      _$UserServiceUserUserRewardGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserUserRewardGet$Response &&
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

extension $UserServiceUserUserRewardGet$ResponseExtension
    on UserServiceUserUserRewardGet$Response {
  UserServiceUserUserRewardGet$Response copyWith({
    int? code,
    String? message,
    bool? data,
    Object? placeholder,
    String? traceId,
  }) {
    return UserServiceUserUserRewardGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      placeholder: placeholder ?? this.placeholder,
      traceId: traceId ?? this.traceId,
    );
  }

  UserServiceUserUserRewardGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<bool?>? data,
    Wrapped<Object?>? placeholder,
    Wrapped<String?>? traceId,
  }) {
    return UserServiceUserUserRewardGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      placeholder: (placeholder != null ? placeholder.value : this.placeholder),
      traceId: (traceId != null ? traceId.value : this.traceId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserTagPortraitAiToPortraitPost$Response {
  const UserServiceUserTagPortraitAiToPortraitPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory UserServiceUserTagPortraitAiToPortraitPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserTagPortraitAiToPortraitPost$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserTagPortraitAiToPortraitPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserTagPortraitAiToPortraitPost$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final UserServiceUserTagPortraitAiToPortraitPost$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$UserServiceUserTagPortraitAiToPortraitPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserTagPortraitAiToPortraitPost$Response &&
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

extension $UserServiceUserTagPortraitAiToPortraitPost$ResponseExtension
    on UserServiceUserTagPortraitAiToPortraitPost$Response {
  UserServiceUserTagPortraitAiToPortraitPost$Response copyWith({
    int? code,
    String? message,
    UserServiceUserTagPortraitAiToPortraitPost$Response$Data? data,
    String? traceId,
    bool? success,
  }) {
    return UserServiceUserTagPortraitAiToPortraitPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  UserServiceUserTagPortraitAiToPortraitPost$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<UserServiceUserTagPortraitAiToPortraitPost$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return UserServiceUserTagPortraitAiToPortraitPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserTagPortraitAiToPortraitV2Post$Response {
  const UserServiceUserTagPortraitAiToPortraitV2Post$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory UserServiceUserTagPortraitAiToPortraitV2Post$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserTagPortraitAiToPortraitV2Post$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserTagPortraitAiToPortraitV2Post$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserTagPortraitAiToPortraitV2Post$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final UserServiceUserTagPortraitAiToPortraitV2Post$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$UserServiceUserTagPortraitAiToPortraitV2Post$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserTagPortraitAiToPortraitV2Post$Response &&
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

extension $UserServiceUserTagPortraitAiToPortraitV2Post$ResponseExtension
    on UserServiceUserTagPortraitAiToPortraitV2Post$Response {
  UserServiceUserTagPortraitAiToPortraitV2Post$Response copyWith({
    int? code,
    String? message,
    UserServiceUserTagPortraitAiToPortraitV2Post$Response$Data? data,
    String? traceId,
    bool? success,
  }) {
    return UserServiceUserTagPortraitAiToPortraitV2Post$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  UserServiceUserTagPortraitAiToPortraitV2Post$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<UserServiceUserTagPortraitAiToPortraitV2Post$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return UserServiceUserTagPortraitAiToPortraitV2Post$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserTagPortraitUpdatePortraitPost$Response {
  const UserServiceUserTagPortraitUpdatePortraitPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory UserServiceUserTagPortraitUpdatePortraitPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserTagPortraitUpdatePortraitPost$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserTagPortraitUpdatePortraitPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserTagPortraitUpdatePortraitPost$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data', fromJson: JsonCoerce.asBool)
  final bool? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$UserServiceUserTagPortraitUpdatePortraitPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserTagPortraitUpdatePortraitPost$Response &&
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

extension $UserServiceUserTagPortraitUpdatePortraitPost$ResponseExtension
    on UserServiceUserTagPortraitUpdatePortraitPost$Response {
  UserServiceUserTagPortraitUpdatePortraitPost$Response copyWith({
    int? code,
    String? message,
    bool? data,
    String? traceId,
    bool? success,
  }) {
    return UserServiceUserTagPortraitUpdatePortraitPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  UserServiceUserTagPortraitUpdatePortraitPost$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<bool?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return UserServiceUserTagPortraitUpdatePortraitPost$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserTagPortraitGetPortraitGet$Response {
  const UserServiceUserTagPortraitGetPortraitGet$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.success,
  });

  factory UserServiceUserTagPortraitGetPortraitGet$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserTagPortraitGetPortraitGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserTagPortraitGetPortraitGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserTagPortraitGetPortraitGet$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final UserServiceUserTagPortraitGetPortraitGet$Response$Data? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$UserServiceUserTagPortraitGetPortraitGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserTagPortraitGetPortraitGet$Response &&
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

extension $UserServiceUserTagPortraitGetPortraitGet$ResponseExtension
    on UserServiceUserTagPortraitGetPortraitGet$Response {
  UserServiceUserTagPortraitGetPortraitGet$Response copyWith({
    int? code,
    String? message,
    UserServiceUserTagPortraitGetPortraitGet$Response$Data? data,
    String? traceId,
    bool? success,
  }) {
    return UserServiceUserTagPortraitGetPortraitGet$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      success: success ?? this.success,
    );
  }

  UserServiceUserTagPortraitGetPortraitGet$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<UserServiceUserTagPortraitGetPortraitGet$Response$Data?>? data,
    Wrapped<String?>? traceId,
    Wrapped<bool?>? success,
  }) {
    return UserServiceUserTagPortraitGetPortraitGet$Response(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      traceId: (traceId != null ? traceId.value : this.traceId),
      success: (success != null ? success.value : this.success),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserCouponAppHomeActivityPost$Response {
  const UserServiceUserCouponAppHomeActivityPost$Response({
    this.code,
    this.message,
    this.data,
    this.traceId,
    this.placeholder,
    this.success,
  });

  factory UserServiceUserCouponAppHomeActivityPost$Response.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserCouponAppHomeActivityPost$ResponseFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserCouponAppHomeActivityPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponAppHomeActivityPost$ResponseToJson(this);

  @JsonKey(name: 'code', fromJson: JsonCoerce.asInt)
  final int? code;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'data')
  final List<UserServiceUserCouponAppHomeActivityPost$Response$Data$Item>? data;
  @JsonKey(name: 'traceId', fromJson: JsonCoerce.asString)
  final String? traceId;
  @JsonKey(name: 'placeholder', fromJson: JsonCoerce.asString)
  final String? placeholder;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  static const fromJsonFactory =
      _$UserServiceUserCouponAppHomeActivityPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponAppHomeActivityPost$Response &&
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

extension $UserServiceUserCouponAppHomeActivityPost$ResponseExtension
    on UserServiceUserCouponAppHomeActivityPost$Response {
  UserServiceUserCouponAppHomeActivityPost$Response copyWith({
    int? code,
    String? message,
    List<UserServiceUserCouponAppHomeActivityPost$Response$Data$Item>? data,
    String? traceId,
    String? placeholder,
    bool? success,
  }) {
    return UserServiceUserCouponAppHomeActivityPost$Response(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
      traceId: traceId ?? this.traceId,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
    );
  }

  UserServiceUserCouponAppHomeActivityPost$Response copyWithWrapped({
    Wrapped<int?>? code,
    Wrapped<String?>? message,
    Wrapped<List<UserServiceUserCouponAppHomeActivityPost$Response$Data$Item>?>?
    data,
    Wrapped<String?>? traceId,
    Wrapped<String?>? placeholder,
    Wrapped<bool?>? success,
  }) {
    return UserServiceUserCouponAppHomeActivityPost$Response(
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
class UserServiceAddressQueryGet$Response$Data$Item {
  const UserServiceAddressQueryGet$Response$Data$Item({
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

  factory UserServiceAddressQueryGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceAddressQueryGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$UserServiceAddressQueryGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceAddressQueryGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'apartment', fromJson: JsonCoerce.asString)
  final String? apartment;
  @JsonKey(name: 'street', fromJson: JsonCoerce.asString)
  final String? street;
  @JsonKey(name: 'city', fromJson: JsonCoerce.asString)
  final String? city;
  @JsonKey(name: 'cityCode', fromJson: JsonCoerce.asString)
  final String? cityCode;
  @JsonKey(name: 'state', fromJson: JsonCoerce.asString)
  final String? state;
  @JsonKey(name: 'stateCode', fromJson: JsonCoerce.asString)
  final String? stateCode;
  @JsonKey(name: 'country', fromJson: JsonCoerce.asString)
  final String? country;
  @JsonKey(name: 'countryCode', fromJson: JsonCoerce.asString)
  final String? countryCode;
  @JsonKey(name: 'address', fromJson: JsonCoerce.asString)
  final String? address;
  @JsonKey(name: 'zipCode', fromJson: JsonCoerce.asString)
  final String? zipCode;
  @JsonKey(name: 'latitude', fromJson: JsonCoerce.asInt)
  final int? latitude;
  @JsonKey(name: 'longitude', fromJson: JsonCoerce.asInt)
  final int? longitude;
  static const fromJsonFactory =
      _$UserServiceAddressQueryGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceAddressQueryGet$Response$Data$Item &&
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

extension $UserServiceAddressQueryGet$Response$Data$ItemExtension
    on UserServiceAddressQueryGet$Response$Data$Item {
  UserServiceAddressQueryGet$Response$Data$Item copyWith({
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
    int? latitude,
    int? longitude,
  }) {
    return UserServiceAddressQueryGet$Response$Data$Item(
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

  UserServiceAddressQueryGet$Response$Data$Item copyWithWrapped({
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
    Wrapped<int?>? latitude,
    Wrapped<int?>? longitude,
  }) {
    return UserServiceAddressQueryGet$Response$Data$Item(
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
class UserServiceAddressListGet$Response$Data$Item {
  const UserServiceAddressListGet$Response$Data$Item({
    this.id,
    this.tenantCode,
    this.userId,
    this.isDefault,
    this.country,
    this.countryCode,
    this.state,
    this.stateCode,
    this.city,
    this.cityCode,
    this.street,
    this.apartment,
    this.address,
    this.coordinate,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.zipCode,
    this.deleted,
    this.isDelivered,
    this.gmtCreate,
    this.gmtUpdate,
    this.tin,
  });

  factory UserServiceAddressListGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceAddressListGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$UserServiceAddressListGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceAddressListGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'id', fromJson: JsonCoerce.asInt)
  final int? id;
  @JsonKey(name: 'tenantCode', fromJson: JsonCoerce.asString)
  final String? tenantCode;
  @JsonKey(name: 'userId', fromJson: JsonCoerce.asString)
  final String? userId;
  @JsonKey(name: 'isDefault', fromJson: JsonCoerce.asInt)
  final int? isDefault;
  @JsonKey(name: 'country', fromJson: JsonCoerce.asString)
  final String? country;
  @JsonKey(name: 'countryCode', fromJson: JsonCoerce.asString)
  final String? countryCode;
  @JsonKey(name: 'state', fromJson: JsonCoerce.asString)
  final String? state;
  @JsonKey(name: 'stateCode', fromJson: JsonCoerce.asString)
  final String? stateCode;
  @JsonKey(name: 'city', fromJson: JsonCoerce.asString)
  final String? city;
  @JsonKey(name: 'cityCode', fromJson: JsonCoerce.asString)
  final String? cityCode;
  @JsonKey(name: 'street', fromJson: JsonCoerce.asString)
  final String? street;
  @JsonKey(name: 'apartment', fromJson: JsonCoerce.asString)
  final String? apartment;
  @JsonKey(name: 'address', fromJson: JsonCoerce.asString)
  final String? address;
  @JsonKey(name: 'coordinate', fromJson: JsonCoerce.asString)
  final String? coordinate;
  @JsonKey(name: 'firstName', fromJson: JsonCoerce.asString)
  final String? firstName;
  @JsonKey(name: 'lastName', fromJson: JsonCoerce.asString)
  final String? lastName;
  @JsonKey(name: 'phoneNumber', fromJson: JsonCoerce.asString)
  final String? phoneNumber;
  @JsonKey(name: 'zipCode', fromJson: JsonCoerce.asString)
  final String? zipCode;
  @JsonKey(name: 'deleted', fromJson: JsonCoerce.asInt)
  final int? deleted;
  @JsonKey(name: 'isDelivered', fromJson: JsonCoerce.asInt)
  final int? isDelivered;
  @JsonKey(name: 'gmtCreate', fromJson: JsonCoerce.asString)
  final String? gmtCreate;
  @JsonKey(name: 'gmtUpdate', fromJson: JsonCoerce.asString)
  final String? gmtUpdate;
  @JsonKey(name: 'tin', fromJson: JsonCoerce.asString)
  final String? tin;
  static const fromJsonFactory =
      _$UserServiceAddressListGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceAddressListGet$Response$Data$Item &&
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

extension $UserServiceAddressListGet$Response$Data$ItemExtension
    on UserServiceAddressListGet$Response$Data$Item {
  UserServiceAddressListGet$Response$Data$Item copyWith({
    int? id,
    String? tenantCode,
    String? userId,
    int? isDefault,
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
    int? deleted,
    int? isDelivered,
    String? gmtCreate,
    String? gmtUpdate,
    String? tin,
  }) {
    return UserServiceAddressListGet$Response$Data$Item(
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

  UserServiceAddressListGet$Response$Data$Item copyWithWrapped({
    Wrapped<int?>? id,
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? userId,
    Wrapped<int?>? isDefault,
    Wrapped<String?>? country,
    Wrapped<String?>? countryCode,
    Wrapped<String?>? state,
    Wrapped<String?>? stateCode,
    Wrapped<String?>? city,
    Wrapped<String?>? cityCode,
    Wrapped<String?>? street,
    Wrapped<String?>? apartment,
    Wrapped<String?>? address,
    Wrapped<String?>? coordinate,
    Wrapped<String?>? firstName,
    Wrapped<String?>? lastName,
    Wrapped<String?>? phoneNumber,
    Wrapped<String?>? zipCode,
    Wrapped<int?>? deleted,
    Wrapped<int?>? isDelivered,
    Wrapped<String?>? gmtCreate,
    Wrapped<String?>? gmtUpdate,
    Wrapped<String?>? tin,
  }) {
    return UserServiceAddressListGet$Response$Data$Item(
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
class UserServiceGetShippingAddressByCountryGet$Response$Data {
  const UserServiceGetShippingAddressByCountryGet$Response$Data({
    this.id,
    this.isDefault,
    this.country,
    this.countryCode,
    this.state,
    this.stateCode,
    this.simpleStateCode,
    this.city,
    this.cityCode,
    this.apartment,
    this.address,
    this.coordinate,
    this.firstName,
    this.lastName,
    this.phoneNumber,
  });

  factory UserServiceGetShippingAddressByCountryGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceGetShippingAddressByCountryGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$UserServiceGetShippingAddressByCountryGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceGetShippingAddressByCountryGet$Response$DataToJson(this);

  @JsonKey(name: 'id', fromJson: JsonCoerce.asString)
  final String? id;
  @JsonKey(name: 'isDefault', fromJson: JsonCoerce.asBool)
  final bool? isDefault;
  @JsonKey(name: 'country', fromJson: JsonCoerce.asString)
  final String? country;
  @JsonKey(name: 'countryCode', fromJson: JsonCoerce.asString)
  final String? countryCode;
  @JsonKey(name: 'state', fromJson: JsonCoerce.asString)
  final String? state;
  @JsonKey(name: 'stateCode', fromJson: JsonCoerce.asString)
  final String? stateCode;
  @JsonKey(name: 'simpleStateCode', fromJson: JsonCoerce.asString)
  final String? simpleStateCode;
  @JsonKey(name: 'city', fromJson: JsonCoerce.asString)
  final String? city;
  @JsonKey(name: 'cityCode', fromJson: JsonCoerce.asString)
  final String? cityCode;
  @JsonKey(name: 'apartment', fromJson: JsonCoerce.asString)
  final String? apartment;
  @JsonKey(name: 'address', fromJson: JsonCoerce.asString)
  final String? address;
  @JsonKey(name: 'coordinate', fromJson: JsonCoerce.asString)
  final String? coordinate;
  @JsonKey(name: 'firstName', fromJson: JsonCoerce.asString)
  final String? firstName;
  @JsonKey(name: 'lastName', fromJson: JsonCoerce.asString)
  final String? lastName;
  @JsonKey(name: 'phoneNumber', fromJson: JsonCoerce.asString)
  final String? phoneNumber;
  static const fromJsonFactory =
      _$UserServiceGetShippingAddressByCountryGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceGetShippingAddressByCountryGet$Response$Data &&
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

extension $UserServiceGetShippingAddressByCountryGet$Response$DataExtension
    on UserServiceGetShippingAddressByCountryGet$Response$Data {
  UserServiceGetShippingAddressByCountryGet$Response$Data copyWith({
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
    return UserServiceGetShippingAddressByCountryGet$Response$Data(
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

  UserServiceGetShippingAddressByCountryGet$Response$Data copyWithWrapped({
    Wrapped<String?>? id,
    Wrapped<bool?>? isDefault,
    Wrapped<String?>? country,
    Wrapped<String?>? countryCode,
    Wrapped<String?>? state,
    Wrapped<String?>? stateCode,
    Wrapped<String?>? simpleStateCode,
    Wrapped<String?>? city,
    Wrapped<String?>? cityCode,
    Wrapped<String?>? apartment,
    Wrapped<String?>? address,
    Wrapped<String?>? coordinate,
    Wrapped<String?>? firstName,
    Wrapped<String?>? lastName,
    Wrapped<String?>? phoneNumber,
  }) {
    return UserServiceGetShippingAddressByCountryGet$Response$Data(
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
class UserServiceGetDefaultShippingAddressGet$Response$Data {
  const UserServiceGetDefaultShippingAddressGet$Response$Data({
    this.id,
    this.isDefault,
    this.country,
    this.countryCode,
    this.state,
    this.stateCode,
    this.simpleStateCode,
    this.city,
    this.cityCode,
    this.apartment,
    this.address,
    this.coordinate,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.street,
    this.zipCode,
    this.email,
  });

  factory UserServiceGetDefaultShippingAddressGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceGetDefaultShippingAddressGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$UserServiceGetDefaultShippingAddressGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceGetDefaultShippingAddressGet$Response$DataToJson(this);

  @JsonKey(name: 'id', fromJson: JsonCoerce.asString)
  final String? id;
  @JsonKey(name: 'isDefault', fromJson: JsonCoerce.asBool)
  final bool? isDefault;
  @JsonKey(name: 'country', fromJson: JsonCoerce.asString)
  final String? country;
  @JsonKey(name: 'countryCode', fromJson: JsonCoerce.asString)
  final String? countryCode;
  @JsonKey(name: 'state', fromJson: JsonCoerce.asString)
  final String? state;
  @JsonKey(name: 'stateCode', fromJson: JsonCoerce.asString)
  final String? stateCode;
  @JsonKey(name: 'simpleStateCode', fromJson: JsonCoerce.asString)
  final String? simpleStateCode;
  @JsonKey(name: 'city', fromJson: JsonCoerce.asString)
  final String? city;
  @JsonKey(name: 'cityCode', fromJson: JsonCoerce.asString)
  final String? cityCode;
  @JsonKey(name: 'apartment', fromJson: JsonCoerce.asString)
  final String? apartment;
  @JsonKey(name: 'address', fromJson: JsonCoerce.asString)
  final String? address;
  @JsonKey(name: 'coordinate', fromJson: JsonCoerce.asString)
  final String? coordinate;
  @JsonKey(name: 'firstName', fromJson: JsonCoerce.asString)
  final String? firstName;
  @JsonKey(name: 'lastName', fromJson: JsonCoerce.asString)
  final String? lastName;
  @JsonKey(name: 'phoneNumber', fromJson: JsonCoerce.asString)
  final String? phoneNumber;
  @JsonKey(name: 'street', fromJson: JsonCoerce.asString)
  final String? street;
  @JsonKey(name: 'zipCode', fromJson: JsonCoerce.asString)
  final String? zipCode;
  @JsonKey(name: 'email', fromJson: JsonCoerce.asString)
  final String? email;
  static const fromJsonFactory =
      _$UserServiceGetDefaultShippingAddressGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceGetDefaultShippingAddressGet$Response$Data &&
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

extension $UserServiceGetDefaultShippingAddressGet$Response$DataExtension
    on UserServiceGetDefaultShippingAddressGet$Response$Data {
  UserServiceGetDefaultShippingAddressGet$Response$Data copyWith({
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
    return UserServiceGetDefaultShippingAddressGet$Response$Data(
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

  UserServiceGetDefaultShippingAddressGet$Response$Data copyWithWrapped({
    Wrapped<String?>? id,
    Wrapped<bool?>? isDefault,
    Wrapped<String?>? country,
    Wrapped<String?>? countryCode,
    Wrapped<String?>? state,
    Wrapped<String?>? stateCode,
    Wrapped<String?>? simpleStateCode,
    Wrapped<String?>? city,
    Wrapped<String?>? cityCode,
    Wrapped<String?>? apartment,
    Wrapped<String?>? address,
    Wrapped<String?>? coordinate,
    Wrapped<String?>? firstName,
    Wrapped<String?>? lastName,
    Wrapped<String?>? phoneNumber,
    Wrapped<String?>? street,
    Wrapped<String?>? zipCode,
    Wrapped<String?>? email,
  }) {
    return UserServiceGetDefaultShippingAddressGet$Response$Data(
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
class UserServiceAddressCountryGet$Response$Data$Item {
  const UserServiceAddressCountryGet$Response$Data$Item({
    this.areaCode,
    this.icon,
    this.name,
  });

  factory UserServiceAddressCountryGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceAddressCountryGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$UserServiceAddressCountryGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceAddressCountryGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'areaCode', fromJson: JsonCoerce.asString)
  final String? areaCode;
  @JsonKey(name: 'icon', fromJson: JsonCoerce.asString)
  final String? icon;
  @JsonKey(name: 'name', fromJson: JsonCoerce.asString)
  final String? name;
  static const fromJsonFactory =
      _$UserServiceAddressCountryGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceAddressCountryGet$Response$Data$Item &&
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

extension $UserServiceAddressCountryGet$Response$Data$ItemExtension
    on UserServiceAddressCountryGet$Response$Data$Item {
  UserServiceAddressCountryGet$Response$Data$Item copyWith({
    String? areaCode,
    String? icon,
    String? name,
  }) {
    return UserServiceAddressCountryGet$Response$Data$Item(
      areaCode: areaCode ?? this.areaCode,
      icon: icon ?? this.icon,
      name: name ?? this.name,
    );
  }

  UserServiceAddressCountryGet$Response$Data$Item copyWithWrapped({
    Wrapped<String?>? areaCode,
    Wrapped<String?>? icon,
    Wrapped<String?>? name,
  }) {
    return UserServiceAddressCountryGet$Response$Data$Item(
      areaCode: (areaCode != null ? areaCode.value : this.areaCode),
      icon: (icon != null ? icon.value : this.icon),
      name: (name != null ? name.value : this.name),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceAddressQueryByZipCodeGet$Response$Data$Item {
  const UserServiceAddressQueryByZipCodeGet$Response$Data$Item({
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

  factory UserServiceAddressQueryByZipCodeGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceAddressQueryByZipCodeGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$UserServiceAddressQueryByZipCodeGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceAddressQueryByZipCodeGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'apartment')
  final Object? apartment;
  @JsonKey(name: 'street', fromJson: JsonCoerce.asString)
  final String? street;
  @JsonKey(name: 'city', fromJson: JsonCoerce.asString)
  final String? city;
  @JsonKey(name: 'cityCode', fromJson: JsonCoerce.asString)
  final String? cityCode;
  @JsonKey(name: 'state', fromJson: JsonCoerce.asString)
  final String? state;
  @JsonKey(name: 'stateCode', fromJson: JsonCoerce.asString)
  final String? stateCode;
  @JsonKey(name: 'country', fromJson: JsonCoerce.asString)
  final String? country;
  @JsonKey(name: 'countryCode', fromJson: JsonCoerce.asString)
  final String? countryCode;
  @JsonKey(name: 'address')
  final Object? address;
  @JsonKey(name: 'zipCode', fromJson: JsonCoerce.asString)
  final String? zipCode;
  @JsonKey(name: 'latitude')
  final Object? latitude;
  @JsonKey(name: 'longitude')
  final Object? longitude;
  static const fromJsonFactory =
      _$UserServiceAddressQueryByZipCodeGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceAddressQueryByZipCodeGet$Response$Data$Item &&
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

extension $UserServiceAddressQueryByZipCodeGet$Response$Data$ItemExtension
    on UserServiceAddressQueryByZipCodeGet$Response$Data$Item {
  UserServiceAddressQueryByZipCodeGet$Response$Data$Item copyWith({
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
    return UserServiceAddressQueryByZipCodeGet$Response$Data$Item(
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

  UserServiceAddressQueryByZipCodeGet$Response$Data$Item copyWithWrapped({
    Wrapped<Object?>? apartment,
    Wrapped<String?>? street,
    Wrapped<String?>? city,
    Wrapped<String?>? cityCode,
    Wrapped<String?>? state,
    Wrapped<String?>? stateCode,
    Wrapped<String?>? country,
    Wrapped<String?>? countryCode,
    Wrapped<Object?>? address,
    Wrapped<String?>? zipCode,
    Wrapped<Object?>? latitude,
    Wrapped<Object?>? longitude,
  }) {
    return UserServiceAddressQueryByZipCodeGet$Response$Data$Item(
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
class UserServiceSigninSwitchPortalPost$Response$Data {
  const UserServiceSigninSwitchPortalPost$Response$Data({
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

  factory UserServiceSigninSwitchPortalPost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceSigninSwitchPortalPost$Response$DataFromJson(json);

  static const toJsonFactory =
      _$UserServiceSigninSwitchPortalPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceSigninSwitchPortalPost$Response$DataToJson(this);

  @JsonKey(name: 'tenantCode', fromJson: JsonCoerce.asString)
  final String? tenantCode;
  @JsonKey(name: 'userId', fromJson: JsonCoerce.asString)
  final String? userId;
  @JsonKey(name: 'nickname', fromJson: JsonCoerce.asString)
  final String? nickname;
  @JsonKey(name: 'email', fromJson: JsonCoerce.asString)
  final String? email;
  @JsonKey(name: 'photo', fromJson: JsonCoerce.asString)
  final String? photo;
  @JsonKey(name: 'phoneNumber', fromJson: JsonCoerce.asString)
  final String? phoneNumber;
  @JsonKey(name: 'signUpType', fromJson: JsonCoerce.asString)
  final String? signUpType;
  @JsonKey(name: 'signUpName', fromJson: JsonCoerce.asString)
  final String? signUpName;
  @JsonKey(name: 'accessToken', fromJson: JsonCoerce.asString)
  final String? accessToken;
  @JsonKey(name: 'refreshToken', fromJson: JsonCoerce.asString)
  final String? refreshToken;
  @JsonKey(name: 'expiresIn', fromJson: JsonCoerce.asInt)
  final int? expiresIn;
  @JsonKey(name: 'tokenType', fromJson: JsonCoerce.asString)
  final String? tokenType;
  @JsonKey(name: 'authWay', fromJson: JsonCoerce.asString)
  final String? authWay;
  @JsonKey(name: 'remainTimes', fromJson: JsonCoerce.asString)
  final String? remainTimes;
  @JsonKey(name: 'lockTime', fromJson: JsonCoerce.asString)
  final String? lockTime;
  @JsonKey(name: 'loginStatus', fromJson: JsonCoerce.asInt)
  final int? loginStatus;
  @JsonKey(name: 'timestamp', fromJson: JsonCoerce.asInt)
  final int? timestamp;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  @JsonKey(name: 'portalCode', fromJson: JsonCoerce.asString)
  final String? portalCode;
  @JsonKey(name: 'source', fromJson: JsonCoerce.asString)
  final String? source;
  @JsonKey(name: 'newUser', fromJson: JsonCoerce.asBool)
  final bool? newUser;
  @JsonKey(name: 'compliance', fromJson: JsonCoerce.asString)
  final String? compliance;
  @JsonKey(name: 'finalSuccess', fromJson: JsonCoerce.asInt)
  final int? finalSuccess;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'currency', fromJson: JsonCoerce.asString)
  final String? currency;
  static const fromJsonFactory =
      _$UserServiceSigninSwitchPortalPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceSigninSwitchPortalPost$Response$Data &&
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

extension $UserServiceSigninSwitchPortalPost$Response$DataExtension
    on UserServiceSigninSwitchPortalPost$Response$Data {
  UserServiceSigninSwitchPortalPost$Response$Data copyWith({
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
    int? expiresIn,
    String? tokenType,
    String? authWay,
    String? remainTimes,
    String? lockTime,
    int? loginStatus,
    int? timestamp,
    bool? success,
    String? portalCode,
    String? source,
    bool? newUser,
    String? compliance,
    int? finalSuccess,
    String? message,
    String? currency,
  }) {
    return UserServiceSigninSwitchPortalPost$Response$Data(
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

  UserServiceSigninSwitchPortalPost$Response$Data copyWithWrapped({
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
    Wrapped<int?>? expiresIn,
    Wrapped<String?>? tokenType,
    Wrapped<String?>? authWay,
    Wrapped<String?>? remainTimes,
    Wrapped<String?>? lockTime,
    Wrapped<int?>? loginStatus,
    Wrapped<int?>? timestamp,
    Wrapped<bool?>? success,
    Wrapped<String?>? portalCode,
    Wrapped<String?>? source,
    Wrapped<bool?>? newUser,
    Wrapped<String?>? compliance,
    Wrapped<int?>? finalSuccess,
    Wrapped<String?>? message,
    Wrapped<String?>? currency,
  }) {
    return UserServiceSigninSwitchPortalPost$Response$Data(
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
class UserServiceSignInInitPost$Response$Data {
  const UserServiceSignInInitPost$Response$Data({
    this.authWay,
    this.code,
    this.jumpUrl,
  });

  factory UserServiceSignInInitPost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceSignInInitPost$Response$DataFromJson(json);

  static const toJsonFactory = _$UserServiceSignInInitPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceSignInInitPost$Response$DataToJson(this);

  @JsonKey(name: 'authWay', fromJson: JsonCoerce.asString)
  final String? authWay;
  @JsonKey(name: 'code', fromJson: JsonCoerce.asString)
  final String? code;
  @JsonKey(name: 'jumpUrl', fromJson: JsonCoerce.asString)
  final String? jumpUrl;
  static const fromJsonFactory =
      _$UserServiceSignInInitPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceSignInInitPost$Response$Data &&
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

extension $UserServiceSignInInitPost$Response$DataExtension
    on UserServiceSignInInitPost$Response$Data {
  UserServiceSignInInitPost$Response$Data copyWith({
    String? authWay,
    String? code,
    String? jumpUrl,
  }) {
    return UserServiceSignInInitPost$Response$Data(
      authWay: authWay ?? this.authWay,
      code: code ?? this.code,
      jumpUrl: jumpUrl ?? this.jumpUrl,
    );
  }

  UserServiceSignInInitPost$Response$Data copyWithWrapped({
    Wrapped<String?>? authWay,
    Wrapped<String?>? code,
    Wrapped<String?>? jumpUrl,
  }) {
    return UserServiceSignInInitPost$Response$Data(
      authWay: (authWay != null ? authWay.value : this.authWay),
      code: (code != null ? code.value : this.code),
      jumpUrl: (jumpUrl != null ? jumpUrl.value : this.jumpUrl),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceSignInVerifyPost$Response$Data {
  const UserServiceSignInVerifyPost$Response$Data({
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

  factory UserServiceSignInVerifyPost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceSignInVerifyPost$Response$DataFromJson(json);

  static const toJsonFactory =
      _$UserServiceSignInVerifyPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceSignInVerifyPost$Response$DataToJson(this);

  @JsonKey(name: 'tenantCode', fromJson: JsonCoerce.asString)
  final String? tenantCode;
  @JsonKey(name: 'userId', fromJson: JsonCoerce.asString)
  final String? userId;
  @JsonKey(name: 'nickname', fromJson: JsonCoerce.asString)
  final String? nickname;
  @JsonKey(name: 'email', fromJson: JsonCoerce.asString)
  final String? email;
  @JsonKey(name: 'photo', fromJson: JsonCoerce.asString)
  final String? photo;
  @JsonKey(name: 'phoneNumber', fromJson: JsonCoerce.asString)
  final String? phoneNumber;
  @JsonKey(name: 'signUpType', fromJson: JsonCoerce.asString)
  final String? signUpType;
  @JsonKey(name: 'signUpName', fromJson: JsonCoerce.asString)
  final String? signUpName;
  @JsonKey(name: 'accessToken', fromJson: JsonCoerce.asString)
  final String? accessToken;
  @JsonKey(name: 'refreshToken', fromJson: JsonCoerce.asString)
  final String? refreshToken;
  @JsonKey(name: 'expiresIn', fromJson: JsonCoerce.asInt)
  final int? expiresIn;
  @JsonKey(name: 'tokenType', fromJson: JsonCoerce.asString)
  final String? tokenType;
  @JsonKey(name: 'authWay', fromJson: JsonCoerce.asString)
  final String? authWay;
  @JsonKey(name: 'remainTimes', fromJson: JsonCoerce.asString)
  final String? remainTimes;
  @JsonKey(name: 'lockTime', fromJson: JsonCoerce.asString)
  final String? lockTime;
  @JsonKey(name: 'loginStatus', fromJson: JsonCoerce.asInt)
  final int? loginStatus;
  @JsonKey(name: 'timestamp', fromJson: JsonCoerce.asInt)
  final int? timestamp;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  @JsonKey(name: 'portalCode', fromJson: JsonCoerce.asString)
  final String? portalCode;
  @JsonKey(name: 'source', fromJson: JsonCoerce.asString)
  final String? source;
  @JsonKey(name: 'newUser', fromJson: JsonCoerce.asBool)
  final bool? newUser;
  @JsonKey(name: 'compliance', fromJson: JsonCoerce.asString)
  final String? compliance;
  @JsonKey(name: 'finalSuccess', fromJson: JsonCoerce.asInt)
  final int? finalSuccess;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'currency', fromJson: JsonCoerce.asString)
  final String? currency;
  static const fromJsonFactory =
      _$UserServiceSignInVerifyPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceSignInVerifyPost$Response$Data &&
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

extension $UserServiceSignInVerifyPost$Response$DataExtension
    on UserServiceSignInVerifyPost$Response$Data {
  UserServiceSignInVerifyPost$Response$Data copyWith({
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
    int? expiresIn,
    String? tokenType,
    String? authWay,
    String? remainTimes,
    String? lockTime,
    int? loginStatus,
    int? timestamp,
    bool? success,
    String? portalCode,
    String? source,
    bool? newUser,
    String? compliance,
    int? finalSuccess,
    String? message,
    String? currency,
  }) {
    return UserServiceSignInVerifyPost$Response$Data(
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

  UserServiceSignInVerifyPost$Response$Data copyWithWrapped({
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
    Wrapped<int?>? expiresIn,
    Wrapped<String?>? tokenType,
    Wrapped<String?>? authWay,
    Wrapped<String?>? remainTimes,
    Wrapped<String?>? lockTime,
    Wrapped<int?>? loginStatus,
    Wrapped<int?>? timestamp,
    Wrapped<bool?>? success,
    Wrapped<String?>? portalCode,
    Wrapped<String?>? source,
    Wrapped<bool?>? newUser,
    Wrapped<String?>? compliance,
    Wrapped<int?>? finalSuccess,
    Wrapped<String?>? message,
    Wrapped<String?>? currency,
  }) {
    return UserServiceSignInVerifyPost$Response$Data(
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
class UserServiceSignInCallPost$Response$Data {
  const UserServiceSignInCallPost$Response$Data({
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

  factory UserServiceSignInCallPost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceSignInCallPost$Response$DataFromJson(json);

  static const toJsonFactory = _$UserServiceSignInCallPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceSignInCallPost$Response$DataToJson(this);

  @JsonKey(name: 'tenantCode', fromJson: JsonCoerce.asString)
  final String? tenantCode;
  @JsonKey(name: 'userId', fromJson: JsonCoerce.asString)
  final String? userId;
  @JsonKey(name: 'nickname', fromJson: JsonCoerce.asString)
  final String? nickname;
  @JsonKey(name: 'email', fromJson: JsonCoerce.asString)
  final String? email;
  @JsonKey(name: 'photo', fromJson: JsonCoerce.asString)
  final String? photo;
  @JsonKey(name: 'phoneNumber', fromJson: JsonCoerce.asString)
  final String? phoneNumber;
  @JsonKey(name: 'signUpType', fromJson: JsonCoerce.asString)
  final String? signUpType;
  @JsonKey(name: 'signUpName', fromJson: JsonCoerce.asString)
  final String? signUpName;
  @JsonKey(name: 'accessToken', fromJson: JsonCoerce.asString)
  final String? accessToken;
  @JsonKey(name: 'refreshToken', fromJson: JsonCoerce.asString)
  final String? refreshToken;
  @JsonKey(name: 'expiresIn', fromJson: JsonCoerce.asInt)
  final int? expiresIn;
  @JsonKey(name: 'tokenType', fromJson: JsonCoerce.asString)
  final String? tokenType;
  @JsonKey(name: 'authWay', fromJson: JsonCoerce.asString)
  final String? authWay;
  @JsonKey(name: 'remainTimes', fromJson: JsonCoerce.asString)
  final String? remainTimes;
  @JsonKey(name: 'lockTime', fromJson: JsonCoerce.asString)
  final String? lockTime;
  @JsonKey(name: 'loginStatus', fromJson: JsonCoerce.asInt)
  final int? loginStatus;
  @JsonKey(name: 'timestamp', fromJson: JsonCoerce.asInt)
  final int? timestamp;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  @JsonKey(name: 'portalCode', fromJson: JsonCoerce.asString)
  final String? portalCode;
  @JsonKey(name: 'source', fromJson: JsonCoerce.asString)
  final String? source;
  @JsonKey(name: 'newUser', fromJson: JsonCoerce.asBool)
  final bool? newUser;
  @JsonKey(name: 'compliance', fromJson: JsonCoerce.asString)
  final String? compliance;
  @JsonKey(name: 'finalSuccess', fromJson: JsonCoerce.asInt)
  final int? finalSuccess;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  static const fromJsonFactory =
      _$UserServiceSignInCallPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceSignInCallPost$Response$Data &&
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

extension $UserServiceSignInCallPost$Response$DataExtension
    on UserServiceSignInCallPost$Response$Data {
  UserServiceSignInCallPost$Response$Data copyWith({
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
    int? expiresIn,
    String? tokenType,
    String? authWay,
    String? remainTimes,
    String? lockTime,
    int? loginStatus,
    int? timestamp,
    bool? success,
    String? portalCode,
    String? source,
    bool? newUser,
    String? compliance,
    int? finalSuccess,
    String? message,
  }) {
    return UserServiceSignInCallPost$Response$Data(
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

  UserServiceSignInCallPost$Response$Data copyWithWrapped({
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
    Wrapped<int?>? expiresIn,
    Wrapped<String?>? tokenType,
    Wrapped<String?>? authWay,
    Wrapped<String?>? remainTimes,
    Wrapped<String?>? lockTime,
    Wrapped<int?>? loginStatus,
    Wrapped<int?>? timestamp,
    Wrapped<bool?>? success,
    Wrapped<String?>? portalCode,
    Wrapped<String?>? source,
    Wrapped<bool?>? newUser,
    Wrapped<String?>? compliance,
    Wrapped<int?>? finalSuccess,
    Wrapped<String?>? message,
  }) {
    return UserServiceSignInCallPost$Response$Data(
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
class UserServiceNoAuthOtpVerifyPost$Response$Data {
  const UserServiceNoAuthOtpVerifyPost$Response$Data({
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

  factory UserServiceNoAuthOtpVerifyPost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceNoAuthOtpVerifyPost$Response$DataFromJson(json);

  static const toJsonFactory =
      _$UserServiceNoAuthOtpVerifyPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceNoAuthOtpVerifyPost$Response$DataToJson(this);

  @JsonKey(name: 'tenantCode', fromJson: JsonCoerce.asString)
  final String? tenantCode;
  @JsonKey(name: 'userId', fromJson: JsonCoerce.asString)
  final String? userId;
  @JsonKey(name: 'nickname', fromJson: JsonCoerce.asString)
  final String? nickname;
  @JsonKey(name: 'email', fromJson: JsonCoerce.asString)
  final String? email;
  @JsonKey(name: 'photo', fromJson: JsonCoerce.asString)
  final String? photo;
  @JsonKey(name: 'phoneNumber', fromJson: JsonCoerce.asString)
  final String? phoneNumber;
  @JsonKey(name: 'signUpType', fromJson: JsonCoerce.asString)
  final String? signUpType;
  @JsonKey(name: 'signUpName', fromJson: JsonCoerce.asString)
  final String? signUpName;
  @JsonKey(name: 'accessToken', fromJson: JsonCoerce.asString)
  final String? accessToken;
  @JsonKey(name: 'refreshToken', fromJson: JsonCoerce.asString)
  final String? refreshToken;
  @JsonKey(name: 'expiresIn', fromJson: JsonCoerce.asInt)
  final int? expiresIn;
  @JsonKey(name: 'tokenType', fromJson: JsonCoerce.asString)
  final String? tokenType;
  @JsonKey(name: 'authWay', fromJson: JsonCoerce.asString)
  final String? authWay;
  @JsonKey(name: 'remainTimes', fromJson: JsonCoerce.asString)
  final String? remainTimes;
  @JsonKey(name: 'lockTime', fromJson: JsonCoerce.asString)
  final String? lockTime;
  @JsonKey(name: 'loginStatus', fromJson: JsonCoerce.asInt)
  final int? loginStatus;
  @JsonKey(name: 'timestamp', fromJson: JsonCoerce.asInt)
  final int? timestamp;
  @JsonKey(name: 'success', fromJson: JsonCoerce.asBool)
  final bool? success;
  @JsonKey(name: 'portalCode', fromJson: JsonCoerce.asString)
  final String? portalCode;
  @JsonKey(name: 'source', fromJson: JsonCoerce.asString)
  final String? source;
  @JsonKey(name: 'newUser', fromJson: JsonCoerce.asBool)
  final bool? newUser;
  @JsonKey(name: 'compliance', fromJson: JsonCoerce.asString)
  final String? compliance;
  @JsonKey(name: 'finalSuccess', fromJson: JsonCoerce.asInt)
  final int? finalSuccess;
  @JsonKey(name: 'message', fromJson: JsonCoerce.asString)
  final String? message;
  @JsonKey(name: 'currency', fromJson: JsonCoerce.asString)
  final String? currency;
  static const fromJsonFactory =
      _$UserServiceNoAuthOtpVerifyPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceNoAuthOtpVerifyPost$Response$Data &&
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

extension $UserServiceNoAuthOtpVerifyPost$Response$DataExtension
    on UserServiceNoAuthOtpVerifyPost$Response$Data {
  UserServiceNoAuthOtpVerifyPost$Response$Data copyWith({
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
    int? expiresIn,
    String? tokenType,
    String? authWay,
    String? remainTimes,
    String? lockTime,
    int? loginStatus,
    int? timestamp,
    bool? success,
    String? portalCode,
    String? source,
    bool? newUser,
    String? compliance,
    int? finalSuccess,
    String? message,
    String? currency,
  }) {
    return UserServiceNoAuthOtpVerifyPost$Response$Data(
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

  UserServiceNoAuthOtpVerifyPost$Response$Data copyWithWrapped({
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
    Wrapped<int?>? expiresIn,
    Wrapped<String?>? tokenType,
    Wrapped<String?>? authWay,
    Wrapped<String?>? remainTimes,
    Wrapped<String?>? lockTime,
    Wrapped<int?>? loginStatus,
    Wrapped<int?>? timestamp,
    Wrapped<bool?>? success,
    Wrapped<String?>? portalCode,
    Wrapped<String?>? source,
    Wrapped<bool?>? newUser,
    Wrapped<String?>? compliance,
    Wrapped<int?>? finalSuccess,
    Wrapped<String?>? message,
    Wrapped<String?>? currency,
  }) {
    return UserServiceNoAuthOtpVerifyPost$Response$Data(
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
class UserServiceNoAuthCommonConfigDefaultSettingGet$Response$Data {
  const UserServiceNoAuthCommonConfigDefaultSettingGet$Response$Data({
    this.countryCode,
    this.lang,
    this.currency,
  });

  factory UserServiceNoAuthCommonConfigDefaultSettingGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceNoAuthCommonConfigDefaultSettingGet$Response$DataFromJson(
    json,
  );

  static const toJsonFactory =
      _$UserServiceNoAuthCommonConfigDefaultSettingGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceNoAuthCommonConfigDefaultSettingGet$Response$DataToJson(
        this,
      );

  @JsonKey(name: 'countryCode', fromJson: JsonCoerce.asString)
  final String? countryCode;
  @JsonKey(name: 'lang', fromJson: JsonCoerce.asString)
  final String? lang;
  @JsonKey(name: 'currency', fromJson: JsonCoerce.asString)
  final String? currency;
  static const fromJsonFactory =
      _$UserServiceNoAuthCommonConfigDefaultSettingGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is UserServiceNoAuthCommonConfigDefaultSettingGet$Response$Data &&
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

extension $UserServiceNoAuthCommonConfigDefaultSettingGet$Response$DataExtension
    on UserServiceNoAuthCommonConfigDefaultSettingGet$Response$Data {
  UserServiceNoAuthCommonConfigDefaultSettingGet$Response$Data copyWith({
    String? countryCode,
    String? lang,
    String? currency,
  }) {
    return UserServiceNoAuthCommonConfigDefaultSettingGet$Response$Data(
      countryCode: countryCode ?? this.countryCode,
      lang: lang ?? this.lang,
      currency: currency ?? this.currency,
    );
  }

  UserServiceNoAuthCommonConfigDefaultSettingGet$Response$Data copyWithWrapped({
    Wrapped<String?>? countryCode,
    Wrapped<String?>? lang,
    Wrapped<String?>? currency,
  }) {
    return UserServiceNoAuthCommonConfigDefaultSettingGet$Response$Data(
      countryCode: (countryCode != null ? countryCode.value : this.countryCode),
      lang: (lang != null ? lang.value : this.lang),
      currency: (currency != null ? currency.value : this.currency),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceFileImUploadPost$Response$Data$Item {
  const UserServiceFileImUploadPost$Response$Data$Item({this.url, this.fileId});

  factory UserServiceFileImUploadPost$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceFileImUploadPost$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$UserServiceFileImUploadPost$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceFileImUploadPost$Response$Data$ItemToJson(this);

  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  @JsonKey(name: 'fileId', fromJson: JsonCoerce.asString)
  final String? fileId;
  static const fromJsonFactory =
      _$UserServiceFileImUploadPost$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceFileImUploadPost$Response$Data$Item &&
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

extension $UserServiceFileImUploadPost$Response$Data$ItemExtension
    on UserServiceFileImUploadPost$Response$Data$Item {
  UserServiceFileImUploadPost$Response$Data$Item copyWith({
    String? url,
    String? fileId,
  }) {
    return UserServiceFileImUploadPost$Response$Data$Item(
      url: url ?? this.url,
      fileId: fileId ?? this.fileId,
    );
  }

  UserServiceFileImUploadPost$Response$Data$Item copyWithWrapped({
    Wrapped<String?>? url,
    Wrapped<String?>? fileId,
  }) {
    return UserServiceFileImUploadPost$Response$Data$Item(
      url: (url != null ? url.value : this.url),
      fileId: (fileId != null ? fileId.value : this.fileId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceFileLogoUploadPost$Response$Data {
  const UserServiceFileLogoUploadPost$Response$Data({this.url, this.fileId});

  factory UserServiceFileLogoUploadPost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceFileLogoUploadPost$Response$DataFromJson(json);

  static const toJsonFactory =
      _$UserServiceFileLogoUploadPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceFileLogoUploadPost$Response$DataToJson(this);

  @JsonKey(name: 'url', fromJson: JsonCoerce.asString)
  final String? url;
  @JsonKey(name: 'fileId', fromJson: JsonCoerce.asString)
  final String? fileId;
  static const fromJsonFactory =
      _$UserServiceFileLogoUploadPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceFileLogoUploadPost$Response$Data &&
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

extension $UserServiceFileLogoUploadPost$Response$DataExtension
    on UserServiceFileLogoUploadPost$Response$Data {
  UserServiceFileLogoUploadPost$Response$Data copyWith({
    String? url,
    String? fileId,
  }) {
    return UserServiceFileLogoUploadPost$Response$Data(
      url: url ?? this.url,
      fileId: fileId ?? this.fileId,
    );
  }

  UserServiceFileLogoUploadPost$Response$Data copyWithWrapped({
    Wrapped<String?>? url,
    Wrapped<String?>? fileId,
  }) {
    return UserServiceFileLogoUploadPost$Response$Data(
      url: (url != null ? url.value : this.url),
      fileId: (fileId != null ? fileId.value : this.fileId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserCouponCountGet$Response$Data {
  const UserServiceUserCouponCountGet$Response$Data({
    this.total,
    this.unUsed,
    this.locked,
    this.used,
    this.invalid,
  });

  factory UserServiceUserCouponCountGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserCouponCountGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserCouponCountGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponCountGet$Response$DataToJson(this);

  @JsonKey(name: 'total', fromJson: JsonCoerce.asString)
  final String? total;
  @JsonKey(name: 'unUsed', fromJson: JsonCoerce.asString)
  final String? unUsed;
  @JsonKey(name: 'locked', fromJson: JsonCoerce.asString)
  final String? locked;
  @JsonKey(name: 'used', fromJson: JsonCoerce.asString)
  final String? used;
  @JsonKey(name: 'invalid', fromJson: JsonCoerce.asString)
  final String? invalid;
  static const fromJsonFactory =
      _$UserServiceUserCouponCountGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponCountGet$Response$Data &&
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

extension $UserServiceUserCouponCountGet$Response$DataExtension
    on UserServiceUserCouponCountGet$Response$Data {
  UserServiceUserCouponCountGet$Response$Data copyWith({
    String? total,
    String? unUsed,
    String? locked,
    String? used,
    String? invalid,
  }) {
    return UserServiceUserCouponCountGet$Response$Data(
      total: total ?? this.total,
      unUsed: unUsed ?? this.unUsed,
      locked: locked ?? this.locked,
      used: used ?? this.used,
      invalid: invalid ?? this.invalid,
    );
  }

  UserServiceUserCouponCountGet$Response$Data copyWithWrapped({
    Wrapped<String?>? total,
    Wrapped<String?>? unUsed,
    Wrapped<String?>? locked,
    Wrapped<String?>? used,
    Wrapped<String?>? invalid,
  }) {
    return UserServiceUserCouponCountGet$Response$Data(
      total: (total != null ? total.value : this.total),
      unUsed: (unUsed != null ? unUsed.value : this.unUsed),
      locked: (locked != null ? locked.value : this.locked),
      used: (used != null ? used.value : this.used),
      invalid: (invalid != null ? invalid.value : this.invalid),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserCouponActivityInfoGet$Response$Data {
  const UserServiceUserCouponActivityInfoGet$Response$Data({
    this.couponList,
    this.received,
  });

  factory UserServiceUserCouponActivityInfoGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserCouponActivityInfoGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserCouponActivityInfoGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponActivityInfoGet$Response$DataToJson(this);

  @JsonKey(name: 'couponList')
  final List<
    UserServiceUserCouponActivityInfoGet$Response$Data$CouponList$Item
  >?
  couponList;
  @JsonKey(name: 'received', fromJson: JsonCoerce.asBool)
  final bool? received;
  static const fromJsonFactory =
      _$UserServiceUserCouponActivityInfoGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponActivityInfoGet$Response$Data &&
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

extension $UserServiceUserCouponActivityInfoGet$Response$DataExtension
    on UserServiceUserCouponActivityInfoGet$Response$Data {
  UserServiceUserCouponActivityInfoGet$Response$Data copyWith({
    List<UserServiceUserCouponActivityInfoGet$Response$Data$CouponList$Item>?
    couponList,
    bool? received,
  }) {
    return UserServiceUserCouponActivityInfoGet$Response$Data(
      couponList: couponList ?? this.couponList,
      received: received ?? this.received,
    );
  }

  UserServiceUserCouponActivityInfoGet$Response$Data copyWithWrapped({
    Wrapped<
      List<UserServiceUserCouponActivityInfoGet$Response$Data$CouponList$Item>?
    >?
    couponList,
    Wrapped<bool?>? received,
  }) {
    return UserServiceUserCouponActivityInfoGet$Response$Data(
      couponList: (couponList != null ? couponList.value : this.couponList),
      received: (received != null ? received.value : this.received),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserCouponCode2CouponGet$Response$Data {
  const UserServiceUserCouponCode2CouponGet$Response$Data({
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

  factory UserServiceUserCouponCode2CouponGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserCouponCode2CouponGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserCouponCode2CouponGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponCode2CouponGet$Response$DataToJson(this);

  @JsonKey(name: 'userId', fromJson: JsonCoerce.asString)
  final String? userId;
  @JsonKey(name: 'tenantCode', fromJson: JsonCoerce.asString)
  final String? tenantCode;
  @JsonKey(name: 'couponCode', fromJson: JsonCoerce.asString)
  final String? couponCode;
  @JsonKey(name: 'couponTitle', fromJson: JsonCoerce.asString)
  final String? couponTitle;
  @JsonKey(name: 'isUsed', fromJson: JsonCoerce.asInt)
  final int? isUsed;
  @JsonKey(name: 'gmtInvalid', fromJson: JsonCoerce.asString)
  final String? gmtInvalid;
  @JsonKey(name: 'type', fromJson: JsonCoerce.asInt)
  final int? type;
  @JsonKey(name: 'discount', fromJson: JsonCoerce.asString)
  final String? discount;
  @JsonKey(name: 'limitAmount', fromJson: JsonCoerce.asString)
  final String? limitAmount;
  @JsonKey(name: 'currency', fromJson: JsonCoerce.asString)
  final String? currency;
  @JsonKey(name: 'discountTarget', fromJson: JsonCoerce.asString)
  final String? discountTarget;
  @JsonKey(name: 'limitAmountTarget', fromJson: JsonCoerce.asString)
  final String? limitAmountTarget;
  @JsonKey(name: 'currencyTarget', fromJson: JsonCoerce.asString)
  final String? currencyTarget;
  @JsonKey(name: 'couponImage', fromJson: JsonCoerce.asString)
  final String? couponImage;
  static const fromJsonFactory =
      _$UserServiceUserCouponCode2CouponGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponCode2CouponGet$Response$Data &&
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

extension $UserServiceUserCouponCode2CouponGet$Response$DataExtension
    on UserServiceUserCouponCode2CouponGet$Response$Data {
  UserServiceUserCouponCode2CouponGet$Response$Data copyWith({
    String? userId,
    String? tenantCode,
    String? couponCode,
    String? couponTitle,
    int? isUsed,
    String? gmtInvalid,
    int? type,
    String? discount,
    String? limitAmount,
    String? currency,
    String? discountTarget,
    String? limitAmountTarget,
    String? currencyTarget,
    String? couponImage,
  }) {
    return UserServiceUserCouponCode2CouponGet$Response$Data(
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

  UserServiceUserCouponCode2CouponGet$Response$Data copyWithWrapped({
    Wrapped<String?>? userId,
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? couponCode,
    Wrapped<String?>? couponTitle,
    Wrapped<int?>? isUsed,
    Wrapped<String?>? gmtInvalid,
    Wrapped<int?>? type,
    Wrapped<String?>? discount,
    Wrapped<String?>? limitAmount,
    Wrapped<String?>? currency,
    Wrapped<String?>? discountTarget,
    Wrapped<String?>? limitAmountTarget,
    Wrapped<String?>? currencyTarget,
    Wrapped<String?>? couponImage,
  }) {
    return UserServiceUserCouponCode2CouponGet$Response$Data(
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
class UserServiceUserCouponActivityInfosGet$Response$Data$Item {
  const UserServiceUserCouponActivityInfosGet$Response$Data$Item({
    this.sourceCode,
    this.received,
    this.couponList,
  });

  factory UserServiceUserCouponActivityInfosGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserCouponActivityInfosGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserCouponActivityInfosGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponActivityInfosGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'sourceCode', fromJson: JsonCoerce.asString)
  final String? sourceCode;
  @JsonKey(name: 'received', fromJson: JsonCoerce.asBool)
  final bool? received;
  @JsonKey(name: 'couponList')
  final List<
    UserServiceUserCouponActivityInfosGet$Response$Data$Item$CouponList$Item
  >?
  couponList;
  static const fromJsonFactory =
      _$UserServiceUserCouponActivityInfosGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponActivityInfosGet$Response$Data$Item &&
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

extension $UserServiceUserCouponActivityInfosGet$Response$Data$ItemExtension
    on UserServiceUserCouponActivityInfosGet$Response$Data$Item {
  UserServiceUserCouponActivityInfosGet$Response$Data$Item copyWith({
    String? sourceCode,
    bool? received,
    List<
      UserServiceUserCouponActivityInfosGet$Response$Data$Item$CouponList$Item
    >?
    couponList,
  }) {
    return UserServiceUserCouponActivityInfosGet$Response$Data$Item(
      sourceCode: sourceCode ?? this.sourceCode,
      received: received ?? this.received,
      couponList: couponList ?? this.couponList,
    );
  }

  UserServiceUserCouponActivityInfosGet$Response$Data$Item copyWithWrapped({
    Wrapped<String?>? sourceCode,
    Wrapped<bool?>? received,
    Wrapped<
      List<
        UserServiceUserCouponActivityInfosGet$Response$Data$Item$CouponList$Item
      >?
    >?
    couponList,
  }) {
    return UserServiceUserCouponActivityInfosGet$Response$Data$Item(
      sourceCode: (sourceCode != null ? sourceCode.value : this.sourceCode),
      received: (received != null ? received.value : this.received),
      couponList: (couponList != null ? couponList.value : this.couponList),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserCouponGetListGet$Response$Data$Item {
  const UserServiceUserCouponGetListGet$Response$Data$Item({
    this.sourceCode,
    this.userCouponDtos,
  });

  factory UserServiceUserCouponGetListGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserCouponGetListGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserCouponGetListGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponGetListGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'sourceCode', fromJson: JsonCoerce.asString)
  final String? sourceCode;
  @JsonKey(name: 'userCouponDtos')
  final List<
    UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item
  >?
  userCouponDtos;
  static const fromJsonFactory =
      _$UserServiceUserCouponGetListGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponGetListGet$Response$Data$Item &&
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

extension $UserServiceUserCouponGetListGet$Response$Data$ItemExtension
    on UserServiceUserCouponGetListGet$Response$Data$Item {
  UserServiceUserCouponGetListGet$Response$Data$Item copyWith({
    String? sourceCode,
    List<
      UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item
    >?
    userCouponDtos,
  }) {
    return UserServiceUserCouponGetListGet$Response$Data$Item(
      sourceCode: sourceCode ?? this.sourceCode,
      userCouponDtos: userCouponDtos ?? this.userCouponDtos,
    );
  }

  UserServiceUserCouponGetListGet$Response$Data$Item copyWithWrapped({
    Wrapped<String?>? sourceCode,
    Wrapped<
      List<
        UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item
      >?
    >?
    userCouponDtos,
  }) {
    return UserServiceUserCouponGetListGet$Response$Data$Item(
      sourceCode: (sourceCode != null ? sourceCode.value : this.sourceCode),
      userCouponDtos: (userCouponDtos != null
          ? userCouponDtos.value
          : this.userCouponDtos),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserCouponNoAuthActivityInfoGet$Response$Data {
  const UserServiceUserCouponNoAuthActivityInfoGet$Response$Data({
    this.couponList,
    this.received,
  });

  factory UserServiceUserCouponNoAuthActivityInfoGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserCouponNoAuthActivityInfoGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserCouponNoAuthActivityInfoGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponNoAuthActivityInfoGet$Response$DataToJson(this);

  @JsonKey(name: 'couponList')
  final List<
    UserServiceUserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item
  >?
  couponList;
  @JsonKey(name: 'received', fromJson: JsonCoerce.asBool)
  final bool? received;
  static const fromJsonFactory =
      _$UserServiceUserCouponNoAuthActivityInfoGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponNoAuthActivityInfoGet$Response$Data &&
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

extension $UserServiceUserCouponNoAuthActivityInfoGet$Response$DataExtension
    on UserServiceUserCouponNoAuthActivityInfoGet$Response$Data {
  UserServiceUserCouponNoAuthActivityInfoGet$Response$Data copyWith({
    List<
      UserServiceUserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item
    >?
    couponList,
    bool? received,
  }) {
    return UserServiceUserCouponNoAuthActivityInfoGet$Response$Data(
      couponList: couponList ?? this.couponList,
      received: received ?? this.received,
    );
  }

  UserServiceUserCouponNoAuthActivityInfoGet$Response$Data copyWithWrapped({
    Wrapped<
      List<
        UserServiceUserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item
      >?
    >?
    couponList,
    Wrapped<bool?>? received,
  }) {
    return UserServiceUserCouponNoAuthActivityInfoGet$Response$Data(
      couponList: (couponList != null ? couponList.value : this.couponList),
      received: (received != null ? received.value : this.received),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserCouponGetCouponByActivityPost$Response$Data$Item {
  const UserServiceUserCouponGetCouponByActivityPost$Response$Data$Item({
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

  factory UserServiceUserCouponGetCouponByActivityPost$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UserServiceUserCouponGetCouponByActivityPost$Response$Data$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$UserServiceUserCouponGetCouponByActivityPost$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponGetCouponByActivityPost$Response$Data$ItemToJson(
        this,
      );

  @JsonKey(name: 'userId', fromJson: JsonCoerce.asString)
  final String? userId;
  @JsonKey(name: 'tenantCode', fromJson: JsonCoerce.asString)
  final String? tenantCode;
  @JsonKey(name: 'couponCode', fromJson: JsonCoerce.asString)
  final String? couponCode;
  @JsonKey(name: 'couponTitle', fromJson: JsonCoerce.asString)
  final String? couponTitle;
  @JsonKey(name: 'isUsed', fromJson: JsonCoerce.asInt)
  final int? isUsed;
  @JsonKey(name: 'gmtInvalid', fromJson: JsonCoerce.asString)
  final String? gmtInvalid;
  @JsonKey(name: 'type', fromJson: JsonCoerce.asInt)
  final int? type;
  @JsonKey(name: 'discount', fromJson: JsonCoerce.asString)
  final String? discount;
  @JsonKey(name: 'limitAmount', fromJson: JsonCoerce.asString)
  final String? limitAmount;
  @JsonKey(name: 'currency', fromJson: JsonCoerce.asString)
  final String? currency;
  @JsonKey(name: 'discountTarget', fromJson: JsonCoerce.asString)
  final String? discountTarget;
  @JsonKey(name: 'limitAmountTarget', fromJson: JsonCoerce.asString)
  final String? limitAmountTarget;
  @JsonKey(name: 'currencyTarget', fromJson: JsonCoerce.asString)
  final String? currencyTarget;
  @JsonKey(name: 'couponImage', fromJson: JsonCoerce.asString)
  final String? couponImage;
  static const fromJsonFactory =
      _$UserServiceUserCouponGetCouponByActivityPost$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is UserServiceUserCouponGetCouponByActivityPost$Response$Data$Item &&
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

extension $UserServiceUserCouponGetCouponByActivityPost$Response$Data$ItemExtension
    on UserServiceUserCouponGetCouponByActivityPost$Response$Data$Item {
  UserServiceUserCouponGetCouponByActivityPost$Response$Data$Item copyWith({
    String? userId,
    String? tenantCode,
    String? couponCode,
    String? couponTitle,
    int? isUsed,
    String? gmtInvalid,
    int? type,
    String? discount,
    String? limitAmount,
    String? currency,
    String? discountTarget,
    String? limitAmountTarget,
    String? currencyTarget,
    String? couponImage,
  }) {
    return UserServiceUserCouponGetCouponByActivityPost$Response$Data$Item(
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

  UserServiceUserCouponGetCouponByActivityPost$Response$Data$Item
  copyWithWrapped({
    Wrapped<String?>? userId,
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? couponCode,
    Wrapped<String?>? couponTitle,
    Wrapped<int?>? isUsed,
    Wrapped<String?>? gmtInvalid,
    Wrapped<int?>? type,
    Wrapped<String?>? discount,
    Wrapped<String?>? limitAmount,
    Wrapped<String?>? currency,
    Wrapped<String?>? discountTarget,
    Wrapped<String?>? limitAmountTarget,
    Wrapped<String?>? currencyTarget,
    Wrapped<String?>? couponImage,
  }) {
    return UserServiceUserCouponGetCouponByActivityPost$Response$Data$Item(
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
class UserServiceUserCouponGetGet$Response$Data$Item {
  const UserServiceUserCouponGetGet$Response$Data$Item({
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
    this.couponStatus,
    this.msgInfo,
  });

  factory UserServiceUserCouponGetGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserCouponGetGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserCouponGetGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponGetGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'userId', fromJson: JsonCoerce.asString)
  final String? userId;
  @JsonKey(name: 'tenantCode', fromJson: JsonCoerce.asString)
  final String? tenantCode;
  @JsonKey(name: 'couponCode', fromJson: JsonCoerce.asString)
  final String? couponCode;
  @JsonKey(name: 'couponTitle', fromJson: JsonCoerce.asString)
  final String? couponTitle;
  @JsonKey(name: 'isUsed', fromJson: JsonCoerce.asInt)
  final int? isUsed;
  @JsonKey(name: 'gmtInvalid', fromJson: JsonCoerce.asString)
  final String? gmtInvalid;
  @JsonKey(name: 'type', fromJson: JsonCoerce.asInt)
  final int? type;
  @JsonKey(name: 'discount', fromJson: JsonCoerce.asString)
  final String? discount;
  @JsonKey(name: 'limitAmount', fromJson: JsonCoerce.asString)
  final String? limitAmount;
  @JsonKey(name: 'currency', fromJson: JsonCoerce.asString)
  final String? currency;
  @JsonKey(name: 'discountTarget', fromJson: JsonCoerce.asString)
  final String? discountTarget;
  @JsonKey(name: 'limitAmountTarget', fromJson: JsonCoerce.asString)
  final String? limitAmountTarget;
  @JsonKey(name: 'currencyTarget', fromJson: JsonCoerce.asString)
  final String? currencyTarget;
  @JsonKey(name: 'couponImage', fromJson: JsonCoerce.asString)
  final String? couponImage;
  @JsonKey(name: 'couponStatus', fromJson: JsonCoerce.asString)
  final String? couponStatus;
  @JsonKey(name: 'msgInfo')
  final UserServiceUserCouponGetGet$Response$Data$Item$MsgInfo? msgInfo;
  static const fromJsonFactory =
      _$UserServiceUserCouponGetGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponGetGet$Response$Data$Item &&
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

extension $UserServiceUserCouponGetGet$Response$Data$ItemExtension
    on UserServiceUserCouponGetGet$Response$Data$Item {
  UserServiceUserCouponGetGet$Response$Data$Item copyWith({
    String? userId,
    String? tenantCode,
    String? couponCode,
    String? couponTitle,
    int? isUsed,
    String? gmtInvalid,
    int? type,
    String? discount,
    String? limitAmount,
    String? currency,
    String? discountTarget,
    String? limitAmountTarget,
    String? currencyTarget,
    String? couponImage,
    String? couponStatus,
    UserServiceUserCouponGetGet$Response$Data$Item$MsgInfo? msgInfo,
  }) {
    return UserServiceUserCouponGetGet$Response$Data$Item(
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

  UserServiceUserCouponGetGet$Response$Data$Item copyWithWrapped({
    Wrapped<String?>? userId,
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? couponCode,
    Wrapped<String?>? couponTitle,
    Wrapped<int?>? isUsed,
    Wrapped<String?>? gmtInvalid,
    Wrapped<int?>? type,
    Wrapped<String?>? discount,
    Wrapped<String?>? limitAmount,
    Wrapped<String?>? currency,
    Wrapped<String?>? discountTarget,
    Wrapped<String?>? limitAmountTarget,
    Wrapped<String?>? currencyTarget,
    Wrapped<String?>? couponImage,
    Wrapped<String?>? couponStatus,
    Wrapped<UserServiceUserCouponGetGet$Response$Data$Item$MsgInfo?>? msgInfo,
  }) {
    return UserServiceUserCouponGetGet$Response$Data$Item(
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
class UserServiceImGetInfoPost$Response$Data {
  const UserServiceImGetInfoPost$Response$Data({
    this.api,
    this.longConnectApi,
    this.wsApi,
    this.longConnectKeep,
    this.whiteList,
    this.uid,
    this.appId,
    this.name,
    this.username,
    this.sex,
    this.category,
    this.shortNo,
    this.zone,
    this.phone,
    this.token,
    this.chatPwd,
    this.lockScreenPwd,
    this.lockAfterMinute,
    this.setting,
    this.rsaPublicKey,
    this.shortStatus,
    this.msgExpireSecond,
    this.showStatus,
  });

  factory UserServiceImGetInfoPost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceImGetInfoPost$Response$DataFromJson(json);

  static const toJsonFactory = _$UserServiceImGetInfoPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceImGetInfoPost$Response$DataToJson(this);

  @JsonKey(name: 'api', fromJson: JsonCoerce.asString)
  final String? api;
  @JsonKey(name: 'longConnectApi', fromJson: JsonCoerce.asString)
  final String? longConnectApi;
  @JsonKey(name: 'wsApi', fromJson: JsonCoerce.asString)
  final String? wsApi;
  @JsonKey(name: 'longConnectKeep', fromJson: JsonCoerce.asBool)
  final bool? longConnectKeep;
  @JsonKey(name: 'whiteList')
  final List<UserServiceImGetInfoPost$Response$Data$WhiteList$Item>? whiteList;
  @JsonKey(name: 'uid', fromJson: JsonCoerce.asString)
  final String? uid;
  @JsonKey(name: 'app_id', fromJson: JsonCoerce.asString)
  final String? appId;
  @JsonKey(name: 'name', fromJson: JsonCoerce.asString)
  final String? name;
  @JsonKey(name: 'username', fromJson: JsonCoerce.asString)
  final String? username;
  @JsonKey(name: 'sex', fromJson: JsonCoerce.asInt)
  final int? sex;
  @JsonKey(name: 'category', fromJson: JsonCoerce.asString)
  final String? category;
  @JsonKey(name: 'short_no', fromJson: JsonCoerce.asString)
  final String? shortNo;
  @JsonKey(name: 'zone', fromJson: JsonCoerce.asString)
  final String? zone;
  @JsonKey(name: 'phone', fromJson: JsonCoerce.asString)
  final String? phone;
  @JsonKey(name: 'token', fromJson: JsonCoerce.asString)
  final String? token;
  @JsonKey(name: 'chat_pwd', fromJson: JsonCoerce.asString)
  final String? chatPwd;
  @JsonKey(name: 'lock_screen_pwd', fromJson: JsonCoerce.asString)
  final String? lockScreenPwd;
  @JsonKey(name: 'lock_after_minute', fromJson: JsonCoerce.asInt)
  final int? lockAfterMinute;
  @JsonKey(name: 'setting')
  final UserServiceImGetInfoPost$Response$Data$Setting? setting;
  @JsonKey(name: 'rsa_public_key', fromJson: JsonCoerce.asString)
  final String? rsaPublicKey;
  @JsonKey(name: 'short_status', fromJson: JsonCoerce.asInt)
  final int? shortStatus;
  @JsonKey(name: 'msg_expire_second', fromJson: JsonCoerce.asInt)
  final int? msgExpireSecond;
  @JsonKey(name: 'showStatus', fromJson: JsonCoerce.asInt)
  final int? showStatus;
  static const fromJsonFactory =
      _$UserServiceImGetInfoPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceImGetInfoPost$Response$Data &&
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

extension $UserServiceImGetInfoPost$Response$DataExtension
    on UserServiceImGetInfoPost$Response$Data {
  UserServiceImGetInfoPost$Response$Data copyWith({
    String? api,
    String? longConnectApi,
    String? wsApi,
    bool? longConnectKeep,
    List<UserServiceImGetInfoPost$Response$Data$WhiteList$Item>? whiteList,
    String? uid,
    String? appId,
    String? name,
    String? username,
    int? sex,
    String? category,
    String? shortNo,
    String? zone,
    String? phone,
    String? token,
    String? chatPwd,
    String? lockScreenPwd,
    int? lockAfterMinute,
    UserServiceImGetInfoPost$Response$Data$Setting? setting,
    String? rsaPublicKey,
    int? shortStatus,
    int? msgExpireSecond,
    int? showStatus,
  }) {
    return UserServiceImGetInfoPost$Response$Data(
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

  UserServiceImGetInfoPost$Response$Data copyWithWrapped({
    Wrapped<String?>? api,
    Wrapped<String?>? longConnectApi,
    Wrapped<String?>? wsApi,
    Wrapped<bool?>? longConnectKeep,
    Wrapped<List<UserServiceImGetInfoPost$Response$Data$WhiteList$Item>?>?
    whiteList,
    Wrapped<String?>? uid,
    Wrapped<String?>? appId,
    Wrapped<String?>? name,
    Wrapped<String?>? username,
    Wrapped<int?>? sex,
    Wrapped<String?>? category,
    Wrapped<String?>? shortNo,
    Wrapped<String?>? zone,
    Wrapped<String?>? phone,
    Wrapped<String?>? token,
    Wrapped<String?>? chatPwd,
    Wrapped<String?>? lockScreenPwd,
    Wrapped<int?>? lockAfterMinute,
    Wrapped<UserServiceImGetInfoPost$Response$Data$Setting?>? setting,
    Wrapped<String?>? rsaPublicKey,
    Wrapped<int?>? shortStatus,
    Wrapped<int?>? msgExpireSecond,
    Wrapped<int?>? showStatus,
  }) {
    return UserServiceImGetInfoPost$Response$Data(
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
class UserServiceUserShareListGet$Response$Data$Item {
  const UserServiceUserShareListGet$Response$Data$Item({
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

  factory UserServiceUserShareListGet$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserShareListGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserShareListGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserShareListGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'rewardId', fromJson: JsonCoerce.asString)
  final String? rewardId;
  @JsonKey(name: 'tenantCode', fromJson: JsonCoerce.asString)
  final String? tenantCode;
  @JsonKey(name: 'userId', fromJson: JsonCoerce.asString)
  final String? userId;
  @JsonKey(name: 'content', fromJson: JsonCoerce.asString)
  final String? content;
  @JsonKey(name: 'auditStatus', fromJson: JsonCoerce.asInt)
  final int? auditStatus;
  @JsonKey(name: 'auditTime', fromJson: JsonCoerce.asString)
  final String? auditTime;
  @JsonKey(name: 'rewardAmount', fromJson: JsonCoerce.asInt)
  final int? rewardAmount;
  @JsonKey(name: 'currency', fromJson: JsonCoerce.asString)
  final String? currency;
  @JsonKey(name: 'rewardType', fromJson: JsonCoerce.asInt)
  final int? rewardType;
  static const fromJsonFactory =
      _$UserServiceUserShareListGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserShareListGet$Response$Data$Item &&
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

extension $UserServiceUserShareListGet$Response$Data$ItemExtension
    on UserServiceUserShareListGet$Response$Data$Item {
  UserServiceUserShareListGet$Response$Data$Item copyWith({
    String? rewardId,
    String? tenantCode,
    String? userId,
    String? content,
    int? auditStatus,
    String? auditTime,
    int? rewardAmount,
    String? currency,
    int? rewardType,
  }) {
    return UserServiceUserShareListGet$Response$Data$Item(
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

  UserServiceUserShareListGet$Response$Data$Item copyWithWrapped({
    Wrapped<String?>? rewardId,
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? userId,
    Wrapped<String?>? content,
    Wrapped<int?>? auditStatus,
    Wrapped<String?>? auditTime,
    Wrapped<int?>? rewardAmount,
    Wrapped<String?>? currency,
    Wrapped<int?>? rewardType,
  }) {
    return UserServiceUserShareListGet$Response$Data$Item(
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
class UserServiceUserShareRewardInfoGet$Response$Data {
  const UserServiceUserShareRewardInfoGet$Response$Data({
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

  factory UserServiceUserShareRewardInfoGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserShareRewardInfoGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserShareRewardInfoGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserShareRewardInfoGet$Response$DataToJson(this);

  @JsonKey(name: 'rewardId', fromJson: JsonCoerce.asString)
  final String? rewardId;
  @JsonKey(name: 'tenantCode', fromJson: JsonCoerce.asString)
  final String? tenantCode;
  @JsonKey(name: 'userId', fromJson: JsonCoerce.asString)
  final String? userId;
  @JsonKey(name: 'content', fromJson: JsonCoerce.asString)
  final String? content;
  @JsonKey(name: 'auditStatus', fromJson: JsonCoerce.asInt)
  final int? auditStatus;
  @JsonKey(name: 'auditTime', fromJson: JsonCoerce.asString)
  final String? auditTime;
  @JsonKey(name: 'rewardAmount', fromJson: JsonCoerce.asInt)
  final int? rewardAmount;
  @JsonKey(name: 'currency', fromJson: JsonCoerce.asString)
  final String? currency;
  @JsonKey(name: 'rewardType', fromJson: JsonCoerce.asInt)
  final int? rewardType;
  static const fromJsonFactory =
      _$UserServiceUserShareRewardInfoGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserShareRewardInfoGet$Response$Data &&
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

extension $UserServiceUserShareRewardInfoGet$Response$DataExtension
    on UserServiceUserShareRewardInfoGet$Response$Data {
  UserServiceUserShareRewardInfoGet$Response$Data copyWith({
    String? rewardId,
    String? tenantCode,
    String? userId,
    String? content,
    int? auditStatus,
    String? auditTime,
    int? rewardAmount,
    String? currency,
    int? rewardType,
  }) {
    return UserServiceUserShareRewardInfoGet$Response$Data(
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

  UserServiceUserShareRewardInfoGet$Response$Data copyWithWrapped({
    Wrapped<String?>? rewardId,
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? userId,
    Wrapped<String?>? content,
    Wrapped<int?>? auditStatus,
    Wrapped<String?>? auditTime,
    Wrapped<int?>? rewardAmount,
    Wrapped<String?>? currency,
    Wrapped<int?>? rewardType,
  }) {
    return UserServiceUserShareRewardInfoGet$Response$Data(
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
class UserServiceUserDeleteGet$Response$Data {
  const UserServiceUserDeleteGet$Response$Data({this.authWay});

  factory UserServiceUserDeleteGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserDeleteGet$Response$DataFromJson(json);

  static const toJsonFactory = _$UserServiceUserDeleteGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserDeleteGet$Response$DataToJson(this);

  @JsonKey(name: 'authWay', fromJson: JsonCoerce.asString)
  final String? authWay;
  static const fromJsonFactory =
      _$UserServiceUserDeleteGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserDeleteGet$Response$Data &&
            (identical(other.authWay, authWay) ||
                const DeepCollectionEquality().equals(other.authWay, authWay)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(authWay) ^ runtimeType.hashCode;
}

extension $UserServiceUserDeleteGet$Response$DataExtension
    on UserServiceUserDeleteGet$Response$Data {
  UserServiceUserDeleteGet$Response$Data copyWith({String? authWay}) {
    return UserServiceUserDeleteGet$Response$Data(
      authWay: authWay ?? this.authWay,
    );
  }

  UserServiceUserDeleteGet$Response$Data copyWithWrapped({
    Wrapped<String?>? authWay,
  }) {
    return UserServiceUserDeleteGet$Response$Data(
      authWay: (authWay != null ? authWay.value : this.authWay),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserGetGet$Response$Data {
  const UserServiceUserGetGet$Response$Data({
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

  factory UserServiceUserGetGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserGetGet$Response$DataFromJson(json);

  static const toJsonFactory = _$UserServiceUserGetGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserGetGet$Response$DataToJson(this);

  @JsonKey(name: 'userId', fromJson: JsonCoerce.asString)
  final String? userId;
  @JsonKey(name: 'nickname', fromJson: JsonCoerce.asString)
  final String? nickname;
  @JsonKey(name: 'description', fromJson: JsonCoerce.asString)
  final String? description;
  @JsonKey(name: 'gender', fromJson: JsonCoerce.asInt)
  final int? gender;
  @JsonKey(name: 'birthday', fromJson: JsonCoerce.asString)
  final String? birthday;
  @JsonKey(name: 'photo', fromJson: JsonCoerce.asString)
  final String? photo;
  @JsonKey(name: 'phoneNumber', fromJson: JsonCoerce.asString)
  final String? phoneNumber;
  @JsonKey(name: 'email', fromJson: JsonCoerce.asString)
  final String? email;
  @JsonKey(name: 'signUpType', fromJson: JsonCoerce.asInt)
  final int? signUpType;
  @JsonKey(name: 'platform', fromJson: JsonCoerce.asString)
  final String? platform;
  @JsonKey(name: 'createTime', fromJson: JsonCoerce.asString)
  final String? createTime;
  @JsonKey(name: 'inviteCode', fromJson: JsonCoerce.asString)
  final String? inviteCode;
  @JsonKey(name: 'inviteCount', fromJson: JsonCoerce.asString)
  final String? inviteCount;
  @JsonKey(name: 'portalCode', fromJson: JsonCoerce.asString)
  final String? portalCode;
  @JsonKey(name: 'currency', fromJson: JsonCoerce.asString)
  final String? currency;
  @JsonKey(name: 'thirdAccount', fromJson: JsonCoerce.asString)
  final String? thirdAccount;
  @JsonKey(name: 'imUid', fromJson: JsonCoerce.asString)
  final String? imUid;
  @JsonKey(name: 'imUsername', fromJson: JsonCoerce.asString)
  final String? imUsername;
  static const fromJsonFactory = _$UserServiceUserGetGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserGetGet$Response$Data &&
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

extension $UserServiceUserGetGet$Response$DataExtension
    on UserServiceUserGetGet$Response$Data {
  UserServiceUserGetGet$Response$Data copyWith({
    String? userId,
    String? nickname,
    String? description,
    int? gender,
    String? birthday,
    String? photo,
    String? phoneNumber,
    String? email,
    int? signUpType,
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
    return UserServiceUserGetGet$Response$Data(
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

  UserServiceUserGetGet$Response$Data copyWithWrapped({
    Wrapped<String?>? userId,
    Wrapped<String?>? nickname,
    Wrapped<String?>? description,
    Wrapped<int?>? gender,
    Wrapped<String?>? birthday,
    Wrapped<String?>? photo,
    Wrapped<String?>? phoneNumber,
    Wrapped<String?>? email,
    Wrapped<int?>? signUpType,
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
    return UserServiceUserGetGet$Response$Data(
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
class UserServiceUserUserCommissionGet$Response$Data {
  const UserServiceUserUserCommissionGet$Response$Data({
    this.currentUserLevel,
    this.nextUserLevel,
    this.nextUserLevelPoints,
  });

  factory UserServiceUserUserCommissionGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserUserCommissionGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserUserCommissionGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserUserCommissionGet$Response$DataToJson(this);

  @JsonKey(name: 'currentUserLevel', fromJson: JsonCoerce.asInt)
  final int? currentUserLevel;
  @JsonKey(name: 'nextUserLevel', fromJson: JsonCoerce.asInt)
  final int? nextUserLevel;
  @JsonKey(name: 'nextUserLevelPoints', fromJson: JsonCoerce.asInt)
  final int? nextUserLevelPoints;
  static const fromJsonFactory =
      _$UserServiceUserUserCommissionGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserUserCommissionGet$Response$Data &&
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

extension $UserServiceUserUserCommissionGet$Response$DataExtension
    on UserServiceUserUserCommissionGet$Response$Data {
  UserServiceUserUserCommissionGet$Response$Data copyWith({
    int? currentUserLevel,
    int? nextUserLevel,
    int? nextUserLevelPoints,
  }) {
    return UserServiceUserUserCommissionGet$Response$Data(
      currentUserLevel: currentUserLevel ?? this.currentUserLevel,
      nextUserLevel: nextUserLevel ?? this.nextUserLevel,
      nextUserLevelPoints: nextUserLevelPoints ?? this.nextUserLevelPoints,
    );
  }

  UserServiceUserUserCommissionGet$Response$Data copyWithWrapped({
    Wrapped<int?>? currentUserLevel,
    Wrapped<int?>? nextUserLevel,
    Wrapped<int?>? nextUserLevelPoints,
  }) {
    return UserServiceUserUserCommissionGet$Response$Data(
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
class UserServiceUserConfigureSettingGet$Response$Data {
  const UserServiceUserConfigureSettingGet$Response$Data({
    this.showGiveawayGift,
  });

  factory UserServiceUserConfigureSettingGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserConfigureSettingGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserConfigureSettingGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserConfigureSettingGet$Response$DataToJson(this);

  @JsonKey(name: 'showGiveawayGift', fromJson: JsonCoerce.asInt)
  final int? showGiveawayGift;
  static const fromJsonFactory =
      _$UserServiceUserConfigureSettingGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserConfigureSettingGet$Response$Data &&
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

extension $UserServiceUserConfigureSettingGet$Response$DataExtension
    on UserServiceUserConfigureSettingGet$Response$Data {
  UserServiceUserConfigureSettingGet$Response$Data copyWith({
    int? showGiveawayGift,
  }) {
    return UserServiceUserConfigureSettingGet$Response$Data(
      showGiveawayGift: showGiveawayGift ?? this.showGiveawayGift,
    );
  }

  UserServiceUserConfigureSettingGet$Response$Data copyWithWrapped({
    Wrapped<int?>? showGiveawayGift,
  }) {
    return UserServiceUserConfigureSettingGet$Response$Data(
      showGiveawayGift: (showGiveawayGift != null
          ? showGiveawayGift.value
          : this.showGiveawayGift),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceUserInviteNumGet$Response$Data {
  const UserServiceUserInviteNumGet$Response$Data({
    this.inviteTotalNum,
    this.inviteNum,
    this.subInviteNum,
  });

  factory UserServiceUserInviteNumGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserInviteNumGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserInviteNumGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserInviteNumGet$Response$DataToJson(this);

  @JsonKey(name: 'inviteTotalNum', fromJson: JsonCoerce.asInt)
  final int? inviteTotalNum;
  @JsonKey(name: 'inviteNum', fromJson: JsonCoerce.asInt)
  final int? inviteNum;
  @JsonKey(name: 'subInviteNum', fromJson: JsonCoerce.asInt)
  final int? subInviteNum;
  static const fromJsonFactory =
      _$UserServiceUserInviteNumGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserInviteNumGet$Response$Data &&
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

extension $UserServiceUserInviteNumGet$Response$DataExtension
    on UserServiceUserInviteNumGet$Response$Data {
  UserServiceUserInviteNumGet$Response$Data copyWith({
    int? inviteTotalNum,
    int? inviteNum,
    int? subInviteNum,
  }) {
    return UserServiceUserInviteNumGet$Response$Data(
      inviteTotalNum: inviteTotalNum ?? this.inviteTotalNum,
      inviteNum: inviteNum ?? this.inviteNum,
      subInviteNum: subInviteNum ?? this.subInviteNum,
    );
  }

  UserServiceUserInviteNumGet$Response$Data copyWithWrapped({
    Wrapped<int?>? inviteTotalNum,
    Wrapped<int?>? inviteNum,
    Wrapped<int?>? subInviteNum,
  }) {
    return UserServiceUserInviteNumGet$Response$Data(
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
class UserServiceUserTagPortraitAiToPortraitPost$Response$Data {
  const UserServiceUserTagPortraitAiToPortraitPost$Response$Data({
    this.age,
    this.sex,
    this.birthday,
    this.nickname,
    this.favoriteShoppingPlatforms,
    this.favoriteBrands,
  });

  factory UserServiceUserTagPortraitAiToPortraitPost$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserTagPortraitAiToPortraitPost$Response$DataFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserTagPortraitAiToPortraitPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserTagPortraitAiToPortraitPost$Response$DataToJson(this);

  @JsonKey(name: 'age', fromJson: JsonCoerce.asInt)
  final int? age;
  @JsonKey(name: 'sex', fromJson: JsonCoerce.asInt)
  final int? sex;
  @JsonKey(name: 'birthday', fromJson: JsonCoerce.asInt)
  final int? birthday;
  @JsonKey(name: 'nickname', fromJson: JsonCoerce.asString)
  final String? nickname;
  @JsonKey(
    name: 'favoriteShoppingPlatforms',
    fromJson: JsonCoerce.asStringList,
    defaultValue: <String>[],
  )
  final List<String>? favoriteShoppingPlatforms;
  @JsonKey(name: 'favoriteBrands', fromJson: JsonCoerce.asString)
  final String? favoriteBrands;
  static const fromJsonFactory =
      _$UserServiceUserTagPortraitAiToPortraitPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserTagPortraitAiToPortraitPost$Response$Data &&
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

extension $UserServiceUserTagPortraitAiToPortraitPost$Response$DataExtension
    on UserServiceUserTagPortraitAiToPortraitPost$Response$Data {
  UserServiceUserTagPortraitAiToPortraitPost$Response$Data copyWith({
    int? age,
    int? sex,
    int? birthday,
    String? nickname,
    List<String>? favoriteShoppingPlatforms,
    String? favoriteBrands,
  }) {
    return UserServiceUserTagPortraitAiToPortraitPost$Response$Data(
      age: age ?? this.age,
      sex: sex ?? this.sex,
      birthday: birthday ?? this.birthday,
      nickname: nickname ?? this.nickname,
      favoriteShoppingPlatforms:
          favoriteShoppingPlatforms ?? this.favoriteShoppingPlatforms,
      favoriteBrands: favoriteBrands ?? this.favoriteBrands,
    );
  }

  UserServiceUserTagPortraitAiToPortraitPost$Response$Data copyWithWrapped({
    Wrapped<int?>? age,
    Wrapped<int?>? sex,
    Wrapped<int?>? birthday,
    Wrapped<String?>? nickname,
    Wrapped<List<String>?>? favoriteShoppingPlatforms,
    Wrapped<String?>? favoriteBrands,
  }) {
    return UserServiceUserTagPortraitAiToPortraitPost$Response$Data(
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
class UserServiceUserTagPortraitAiToPortraitV2Post$Response$Data {
  const UserServiceUserTagPortraitAiToPortraitV2Post$Response$Data({
    this.age,
    this.sex,
    this.birthday,
    this.nickname,
    this.favoriteShoppingPlatforms,
    this.favoriteBrands,
  });

  factory UserServiceUserTagPortraitAiToPortraitV2Post$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserTagPortraitAiToPortraitV2Post$Response$DataFromJson(
    json,
  );

  static const toJsonFactory =
      _$UserServiceUserTagPortraitAiToPortraitV2Post$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserTagPortraitAiToPortraitV2Post$Response$DataToJson(this);

  @JsonKey(name: 'age', fromJson: JsonCoerce.asInt)
  final int? age;
  @JsonKey(name: 'sex', fromJson: JsonCoerce.asInt)
  final int? sex;
  @JsonKey(name: 'birthday', fromJson: JsonCoerce.asInt)
  final int? birthday;
  @JsonKey(name: 'nickname', fromJson: JsonCoerce.asString)
  final String? nickname;
  @JsonKey(
    name: 'favoriteShoppingPlatforms',
    fromJson: JsonCoerce.asStringList,
    defaultValue: <String>[],
  )
  final List<String>? favoriteShoppingPlatforms;
  @JsonKey(name: 'favoriteBrands', fromJson: JsonCoerce.asString)
  final String? favoriteBrands;
  static const fromJsonFactory =
      _$UserServiceUserTagPortraitAiToPortraitV2Post$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserTagPortraitAiToPortraitV2Post$Response$Data &&
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

extension $UserServiceUserTagPortraitAiToPortraitV2Post$Response$DataExtension
    on UserServiceUserTagPortraitAiToPortraitV2Post$Response$Data {
  UserServiceUserTagPortraitAiToPortraitV2Post$Response$Data copyWith({
    int? age,
    int? sex,
    int? birthday,
    String? nickname,
    List<String>? favoriteShoppingPlatforms,
    String? favoriteBrands,
  }) {
    return UserServiceUserTagPortraitAiToPortraitV2Post$Response$Data(
      age: age ?? this.age,
      sex: sex ?? this.sex,
      birthday: birthday ?? this.birthday,
      nickname: nickname ?? this.nickname,
      favoriteShoppingPlatforms:
          favoriteShoppingPlatforms ?? this.favoriteShoppingPlatforms,
      favoriteBrands: favoriteBrands ?? this.favoriteBrands,
    );
  }

  UserServiceUserTagPortraitAiToPortraitV2Post$Response$Data copyWithWrapped({
    Wrapped<int?>? age,
    Wrapped<int?>? sex,
    Wrapped<int?>? birthday,
    Wrapped<String?>? nickname,
    Wrapped<List<String>?>? favoriteShoppingPlatforms,
    Wrapped<String?>? favoriteBrands,
  }) {
    return UserServiceUserTagPortraitAiToPortraitV2Post$Response$Data(
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
class UserServiceUserTagPortraitGetPortraitGet$Response$Data {
  const UserServiceUserTagPortraitGetPortraitGet$Response$Data({
    this.age,
    this.sex,
    this.birthday,
    this.nickname,
    this.avatarUrl,
    this.favoriteShoppingPlatforms,
    this.favoriteBrands,
  });

  factory UserServiceUserTagPortraitGetPortraitGet$Response$Data.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserTagPortraitGetPortraitGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserTagPortraitGetPortraitGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserTagPortraitGetPortraitGet$Response$DataToJson(this);

  @JsonKey(name: 'age', fromJson: JsonCoerce.asInt)
  final int? age;
  @JsonKey(name: 'sex', fromJson: JsonCoerce.asInt)
  final int? sex;
  @JsonKey(name: 'birthday', fromJson: JsonCoerce.asInt)
  final int? birthday;
  @JsonKey(name: 'nickname', fromJson: JsonCoerce.asString)
  final String? nickname;
  @JsonKey(name: 'avatarUrl', fromJson: JsonCoerce.asString)
  final String? avatarUrl;
  @JsonKey(
    name: 'favoriteShoppingPlatforms',
    fromJson: JsonCoerce.asStringList,
    defaultValue: <String>[],
  )
  final List<String>? favoriteShoppingPlatforms;
  @JsonKey(name: 'favoriteBrands', fromJson: JsonCoerce.asString)
  final String? favoriteBrands;
  static const fromJsonFactory =
      _$UserServiceUserTagPortraitGetPortraitGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserTagPortraitGetPortraitGet$Response$Data &&
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

extension $UserServiceUserTagPortraitGetPortraitGet$Response$DataExtension
    on UserServiceUserTagPortraitGetPortraitGet$Response$Data {
  UserServiceUserTagPortraitGetPortraitGet$Response$Data copyWith({
    int? age,
    int? sex,
    int? birthday,
    String? nickname,
    String? avatarUrl,
    List<String>? favoriteShoppingPlatforms,
    String? favoriteBrands,
  }) {
    return UserServiceUserTagPortraitGetPortraitGet$Response$Data(
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

  UserServiceUserTagPortraitGetPortraitGet$Response$Data copyWithWrapped({
    Wrapped<int?>? age,
    Wrapped<int?>? sex,
    Wrapped<int?>? birthday,
    Wrapped<String?>? nickname,
    Wrapped<String?>? avatarUrl,
    Wrapped<List<String>?>? favoriteShoppingPlatforms,
    Wrapped<String?>? favoriteBrands,
  }) {
    return UserServiceUserTagPortraitGetPortraitGet$Response$Data(
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
class UserServiceUserCouponAppHomeActivityPost$Response$Data$Item {
  const UserServiceUserCouponAppHomeActivityPost$Response$Data$Item({
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

  factory UserServiceUserCouponAppHomeActivityPost$Response$Data$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserCouponAppHomeActivityPost$Response$Data$ItemFromJson(
    json,
  );

  static const toJsonFactory =
      _$UserServiceUserCouponAppHomeActivityPost$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponAppHomeActivityPost$Response$Data$ItemToJson(this);

  @JsonKey(name: 'userId', fromJson: JsonCoerce.asString)
  final String? userId;
  @JsonKey(name: 'tenantCode', fromJson: JsonCoerce.asString)
  final String? tenantCode;
  @JsonKey(name: 'couponCode', fromJson: JsonCoerce.asString)
  final String? couponCode;
  @JsonKey(name: 'couponTitle', fromJson: JsonCoerce.asString)
  final String? couponTitle;
  @JsonKey(name: 'isUsed', fromJson: JsonCoerce.asInt)
  final int? isUsed;
  @JsonKey(name: 'gmtInvalid', fromJson: JsonCoerce.asString)
  final String? gmtInvalid;
  @JsonKey(name: 'type', fromJson: JsonCoerce.asInt)
  final int? type;
  @JsonKey(name: 'discount', fromJson: JsonCoerce.asString)
  final String? discount;
  @JsonKey(name: 'limitAmount', fromJson: JsonCoerce.asString)
  final String? limitAmount;
  @JsonKey(name: 'currency', fromJson: JsonCoerce.asString)
  final String? currency;
  @JsonKey(name: 'discountTarget', fromJson: JsonCoerce.asString)
  final String? discountTarget;
  @JsonKey(name: 'limitAmountTarget', fromJson: JsonCoerce.asString)
  final String? limitAmountTarget;
  @JsonKey(name: 'currencyTarget', fromJson: JsonCoerce.asString)
  final String? currencyTarget;
  @JsonKey(name: 'couponImage', fromJson: JsonCoerce.asString)
  final String? couponImage;
  @JsonKey(name: 'msgInfo')
  final UserServiceUserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo?
  msgInfo;
  static const fromJsonFactory =
      _$UserServiceUserCouponAppHomeActivityPost$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponAppHomeActivityPost$Response$Data$Item &&
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

extension $UserServiceUserCouponAppHomeActivityPost$Response$Data$ItemExtension
    on UserServiceUserCouponAppHomeActivityPost$Response$Data$Item {
  UserServiceUserCouponAppHomeActivityPost$Response$Data$Item copyWith({
    String? userId,
    String? tenantCode,
    String? couponCode,
    String? couponTitle,
    int? isUsed,
    String? gmtInvalid,
    int? type,
    String? discount,
    String? limitAmount,
    String? currency,
    String? discountTarget,
    String? limitAmountTarget,
    String? currencyTarget,
    String? couponImage,
    UserServiceUserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo?
    msgInfo,
  }) {
    return UserServiceUserCouponAppHomeActivityPost$Response$Data$Item(
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

  UserServiceUserCouponAppHomeActivityPost$Response$Data$Item copyWithWrapped({
    Wrapped<String?>? userId,
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? couponCode,
    Wrapped<String?>? couponTitle,
    Wrapped<int?>? isUsed,
    Wrapped<String?>? gmtInvalid,
    Wrapped<int?>? type,
    Wrapped<String?>? discount,
    Wrapped<String?>? limitAmount,
    Wrapped<String?>? currency,
    Wrapped<String?>? discountTarget,
    Wrapped<String?>? limitAmountTarget,
    Wrapped<String?>? currencyTarget,
    Wrapped<String?>? couponImage,
    Wrapped<
      UserServiceUserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo?
    >?
    msgInfo,
  }) {
    return UserServiceUserCouponAppHomeActivityPost$Response$Data$Item(
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
class UserServiceUserCouponActivityInfoGet$Response$Data$CouponList$Item {
  const UserServiceUserCouponActivityInfoGet$Response$Data$CouponList$Item({
    this.currencySymbol,
    this.discountType,
    this.discountInfo,
    this.limitAmount,
    this.invalidPeriod,
    this.userCouponCode,
  });

  factory UserServiceUserCouponActivityInfoGet$Response$Data$CouponList$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UserServiceUserCouponActivityInfoGet$Response$Data$CouponList$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$UserServiceUserCouponActivityInfoGet$Response$Data$CouponList$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponActivityInfoGet$Response$Data$CouponList$ItemToJson(
        this,
      );

  @JsonKey(name: 'currencySymbol', fromJson: JsonCoerce.asString)
  final String? currencySymbol;
  @JsonKey(name: 'discountType', fromJson: JsonCoerce.asInt)
  final int? discountType;
  @JsonKey(name: 'discountInfo', fromJson: JsonCoerce.asInt)
  final int? discountInfo;
  @JsonKey(name: 'limitAmount', fromJson: JsonCoerce.asInt)
  final int? limitAmount;
  @JsonKey(name: 'invalidPeriod', fromJson: JsonCoerce.asInt)
  final int? invalidPeriod;
  @JsonKey(name: 'userCouponCode', fromJson: JsonCoerce.asString)
  final String? userCouponCode;
  static const fromJsonFactory =
      _$UserServiceUserCouponActivityInfoGet$Response$Data$CouponList$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is UserServiceUserCouponActivityInfoGet$Response$Data$CouponList$Item &&
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

extension $UserServiceUserCouponActivityInfoGet$Response$Data$CouponList$ItemExtension
    on UserServiceUserCouponActivityInfoGet$Response$Data$CouponList$Item {
  UserServiceUserCouponActivityInfoGet$Response$Data$CouponList$Item copyWith({
    String? currencySymbol,
    int? discountType,
    int? discountInfo,
    int? limitAmount,
    int? invalidPeriod,
    String? userCouponCode,
  }) {
    return UserServiceUserCouponActivityInfoGet$Response$Data$CouponList$Item(
      currencySymbol: currencySymbol ?? this.currencySymbol,
      discountType: discountType ?? this.discountType,
      discountInfo: discountInfo ?? this.discountInfo,
      limitAmount: limitAmount ?? this.limitAmount,
      invalidPeriod: invalidPeriod ?? this.invalidPeriod,
      userCouponCode: userCouponCode ?? this.userCouponCode,
    );
  }

  UserServiceUserCouponActivityInfoGet$Response$Data$CouponList$Item
  copyWithWrapped({
    Wrapped<String?>? currencySymbol,
    Wrapped<int?>? discountType,
    Wrapped<int?>? discountInfo,
    Wrapped<int?>? limitAmount,
    Wrapped<int?>? invalidPeriod,
    Wrapped<String?>? userCouponCode,
  }) {
    return UserServiceUserCouponActivityInfoGet$Response$Data$CouponList$Item(
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
class UserServiceUserCouponActivityInfosGet$Response$Data$Item$CouponList$Item {
  const UserServiceUserCouponActivityInfosGet$Response$Data$Item$CouponList$Item({
    this.couponCode,
    this.invalidPeriod,
    this.currencySymbol,
    this.discountType,
    this.discountInfo,
    this.limitAmount,
  });

  factory UserServiceUserCouponActivityInfosGet$Response$Data$Item$CouponList$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UserServiceUserCouponActivityInfosGet$Response$Data$Item$CouponList$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$UserServiceUserCouponActivityInfosGet$Response$Data$Item$CouponList$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponActivityInfosGet$Response$Data$Item$CouponList$ItemToJson(
        this,
      );

  @JsonKey(name: 'couponCode', fromJson: JsonCoerce.asString)
  final String? couponCode;
  @JsonKey(name: 'invalidPeriod', fromJson: JsonCoerce.asInt)
  final int? invalidPeriod;
  @JsonKey(name: 'currencySymbol', fromJson: JsonCoerce.asString)
  final String? currencySymbol;
  @JsonKey(name: 'discountType', fromJson: JsonCoerce.asInt)
  final int? discountType;
  @JsonKey(name: 'discountInfo', fromJson: JsonCoerce.asInt)
  final int? discountInfo;
  @JsonKey(name: 'limitAmount', fromJson: JsonCoerce.asInt)
  final int? limitAmount;
  static const fromJsonFactory =
      _$UserServiceUserCouponActivityInfosGet$Response$Data$Item$CouponList$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is UserServiceUserCouponActivityInfosGet$Response$Data$Item$CouponList$Item &&
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

extension $UserServiceUserCouponActivityInfosGet$Response$Data$Item$CouponList$ItemExtension
    on UserServiceUserCouponActivityInfosGet$Response$Data$Item$CouponList$Item {
  UserServiceUserCouponActivityInfosGet$Response$Data$Item$CouponList$Item
  copyWith({
    String? couponCode,
    int? invalidPeriod,
    String? currencySymbol,
    int? discountType,
    int? discountInfo,
    int? limitAmount,
  }) {
    return UserServiceUserCouponActivityInfosGet$Response$Data$Item$CouponList$Item(
      couponCode: couponCode ?? this.couponCode,
      invalidPeriod: invalidPeriod ?? this.invalidPeriod,
      currencySymbol: currencySymbol ?? this.currencySymbol,
      discountType: discountType ?? this.discountType,
      discountInfo: discountInfo ?? this.discountInfo,
      limitAmount: limitAmount ?? this.limitAmount,
    );
  }

  UserServiceUserCouponActivityInfosGet$Response$Data$Item$CouponList$Item
  copyWithWrapped({
    Wrapped<String?>? couponCode,
    Wrapped<int?>? invalidPeriod,
    Wrapped<String?>? currencySymbol,
    Wrapped<int?>? discountType,
    Wrapped<int?>? discountInfo,
    Wrapped<int?>? limitAmount,
  }) {
    return UserServiceUserCouponActivityInfosGet$Response$Data$Item$CouponList$Item(
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
class UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item {
  const UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item({
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

  factory UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$ItemToJson(
        this,
      );

  @JsonKey(name: 'userId', fromJson: JsonCoerce.asString)
  final String? userId;
  @JsonKey(name: 'tenantCode', fromJson: JsonCoerce.asString)
  final String? tenantCode;
  @JsonKey(name: 'couponCode', fromJson: JsonCoerce.asString)
  final String? couponCode;
  @JsonKey(name: 'couponTitle', fromJson: JsonCoerce.asString)
  final String? couponTitle;
  @JsonKey(name: 'isUsed', fromJson: JsonCoerce.asInt)
  final int? isUsed;
  @JsonKey(name: 'gmtInvalid', fromJson: JsonCoerce.asString)
  final String? gmtInvalid;
  @JsonKey(name: 'type', fromJson: JsonCoerce.asInt)
  final int? type;
  @JsonKey(name: 'discount', fromJson: JsonCoerce.asString)
  final String? discount;
  @JsonKey(name: 'limitAmount', fromJson: JsonCoerce.asString)
  final String? limitAmount;
  @JsonKey(name: 'currency', fromJson: JsonCoerce.asString)
  final String? currency;
  @JsonKey(name: 'discountTarget', fromJson: JsonCoerce.asString)
  final String? discountTarget;
  @JsonKey(name: 'limitAmountTarget', fromJson: JsonCoerce.asString)
  final String? limitAmountTarget;
  @JsonKey(name: 'currencyTarget', fromJson: JsonCoerce.asString)
  final String? currencyTarget;
  @JsonKey(name: 'couponImage', fromJson: JsonCoerce.asString)
  final String? couponImage;
  @JsonKey(name: 'invalidPeriod', fromJson: JsonCoerce.asInt)
  final int? invalidPeriod;
  static const fromJsonFactory =
      _$UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item &&
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

extension $UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$ItemExtension
    on UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item {
  UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item
  copyWith({
    String? userId,
    String? tenantCode,
    String? couponCode,
    String? couponTitle,
    int? isUsed,
    String? gmtInvalid,
    int? type,
    String? discount,
    String? limitAmount,
    String? currency,
    String? discountTarget,
    String? limitAmountTarget,
    String? currencyTarget,
    String? couponImage,
    int? invalidPeriod,
  }) {
    return UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item(
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

  UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item
  copyWithWrapped({
    Wrapped<String?>? userId,
    Wrapped<String?>? tenantCode,
    Wrapped<String?>? couponCode,
    Wrapped<String?>? couponTitle,
    Wrapped<int?>? isUsed,
    Wrapped<String?>? gmtInvalid,
    Wrapped<int?>? type,
    Wrapped<String?>? discount,
    Wrapped<String?>? limitAmount,
    Wrapped<String?>? currency,
    Wrapped<String?>? discountTarget,
    Wrapped<String?>? limitAmountTarget,
    Wrapped<String?>? currencyTarget,
    Wrapped<String?>? couponImage,
    Wrapped<int?>? invalidPeriod,
  }) {
    return UserServiceUserCouponGetListGet$Response$Data$Item$UserCouponDtos$Item(
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
class UserServiceUserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item {
  const UserServiceUserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item({
    this.currencySymbol,
    this.discountType,
    this.discountInfo,
    this.limitAmount,
  });

  factory UserServiceUserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UserServiceUserCouponNoAuthActivityInfoGet$Response$Data$CouponList$ItemFromJson(
        json,
      );

  static const toJsonFactory =
      _$UserServiceUserCouponNoAuthActivityInfoGet$Response$Data$CouponList$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponNoAuthActivityInfoGet$Response$Data$CouponList$ItemToJson(
        this,
      );

  @JsonKey(name: 'currencySymbol', fromJson: JsonCoerce.asString)
  final String? currencySymbol;
  @JsonKey(name: 'discountType', fromJson: JsonCoerce.asInt)
  final int? discountType;
  @JsonKey(name: 'discountInfo', fromJson: JsonCoerce.asInt)
  final int? discountInfo;
  @JsonKey(name: 'limitAmount', fromJson: JsonCoerce.asInt)
  final int? limitAmount;
  static const fromJsonFactory =
      _$UserServiceUserCouponNoAuthActivityInfoGet$Response$Data$CouponList$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is UserServiceUserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item &&
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

extension $UserServiceUserCouponNoAuthActivityInfoGet$Response$Data$CouponList$ItemExtension
    on UserServiceUserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item {
  UserServiceUserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item
  copyWith({
    String? currencySymbol,
    int? discountType,
    int? discountInfo,
    int? limitAmount,
  }) {
    return UserServiceUserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item(
      currencySymbol: currencySymbol ?? this.currencySymbol,
      discountType: discountType ?? this.discountType,
      discountInfo: discountInfo ?? this.discountInfo,
      limitAmount: limitAmount ?? this.limitAmount,
    );
  }

  UserServiceUserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item
  copyWithWrapped({
    Wrapped<String?>? currencySymbol,
    Wrapped<int?>? discountType,
    Wrapped<int?>? discountInfo,
    Wrapped<int?>? limitAmount,
  }) {
    return UserServiceUserCouponNoAuthActivityInfoGet$Response$Data$CouponList$Item(
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
class UserServiceUserCouponGetGet$Response$Data$Item$MsgInfo {
  const UserServiceUserCouponGetGet$Response$Data$Item$MsgInfo({
    this.name,
    this.limit,
    this.usage,
    this.discountStr,
    this.discountUnit,
  });

  factory UserServiceUserCouponGetGet$Response$Data$Item$MsgInfo.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceUserCouponGetGet$Response$Data$Item$MsgInfoFromJson(json);

  static const toJsonFactory =
      _$UserServiceUserCouponGetGet$Response$Data$Item$MsgInfoToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponGetGet$Response$Data$Item$MsgInfoToJson(this);

  @JsonKey(name: 'name', fromJson: JsonCoerce.asString)
  final String? name;
  @JsonKey(name: 'limit', fromJson: JsonCoerce.asString)
  final String? limit;
  @JsonKey(name: 'usage', fromJson: JsonCoerce.asString)
  final String? usage;
  @JsonKey(name: 'discountStr', fromJson: JsonCoerce.asString)
  final String? discountStr;
  @JsonKey(name: 'discountUnit', fromJson: JsonCoerce.asString)
  final String? discountUnit;
  static const fromJsonFactory =
      _$UserServiceUserCouponGetGet$Response$Data$Item$MsgInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponGetGet$Response$Data$Item$MsgInfo &&
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

extension $UserServiceUserCouponGetGet$Response$Data$Item$MsgInfoExtension
    on UserServiceUserCouponGetGet$Response$Data$Item$MsgInfo {
  UserServiceUserCouponGetGet$Response$Data$Item$MsgInfo copyWith({
    String? name,
    String? limit,
    String? usage,
    String? discountStr,
    String? discountUnit,
  }) {
    return UserServiceUserCouponGetGet$Response$Data$Item$MsgInfo(
      name: name ?? this.name,
      limit: limit ?? this.limit,
      usage: usage ?? this.usage,
      discountStr: discountStr ?? this.discountStr,
      discountUnit: discountUnit ?? this.discountUnit,
    );
  }

  UserServiceUserCouponGetGet$Response$Data$Item$MsgInfo copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<String?>? limit,
    Wrapped<String?>? usage,
    Wrapped<String?>? discountStr,
    Wrapped<String?>? discountUnit,
  }) {
    return UserServiceUserCouponGetGet$Response$Data$Item$MsgInfo(
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
class UserServiceImGetInfoPost$Response$Data$WhiteList$Item {
  const UserServiceImGetInfoPost$Response$Data$WhiteList$Item({
    this.channelId,
    this.channelType,
  });

  factory UserServiceImGetInfoPost$Response$Data$WhiteList$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceImGetInfoPost$Response$Data$WhiteList$ItemFromJson(json);

  static const toJsonFactory =
      _$UserServiceImGetInfoPost$Response$Data$WhiteList$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceImGetInfoPost$Response$Data$WhiteList$ItemToJson(this);

  @JsonKey(name: 'channelId', fromJson: JsonCoerce.asString)
  final String? channelId;
  @JsonKey(name: 'channelType', fromJson: JsonCoerce.asString)
  final String? channelType;
  static const fromJsonFactory =
      _$UserServiceImGetInfoPost$Response$Data$WhiteList$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceImGetInfoPost$Response$Data$WhiteList$Item &&
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

extension $UserServiceImGetInfoPost$Response$Data$WhiteList$ItemExtension
    on UserServiceImGetInfoPost$Response$Data$WhiteList$Item {
  UserServiceImGetInfoPost$Response$Data$WhiteList$Item copyWith({
    String? channelId,
    String? channelType,
  }) {
    return UserServiceImGetInfoPost$Response$Data$WhiteList$Item(
      channelId: channelId ?? this.channelId,
      channelType: channelType ?? this.channelType,
    );
  }

  UserServiceImGetInfoPost$Response$Data$WhiteList$Item copyWithWrapped({
    Wrapped<String?>? channelId,
    Wrapped<String?>? channelType,
  }) {
    return UserServiceImGetInfoPost$Response$Data$WhiteList$Item(
      channelId: (channelId != null ? channelId.value : this.channelId),
      channelType: (channelType != null ? channelType.value : this.channelType),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserServiceImGetInfoPost$Response$Data$Setting {
  const UserServiceImGetInfoPost$Response$Data$Setting({
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

  factory UserServiceImGetInfoPost$Response$Data$Setting.fromJson(
    Map<String, dynamic> json,
  ) => _$UserServiceImGetInfoPost$Response$Data$SettingFromJson(json);

  static const toJsonFactory =
      _$UserServiceImGetInfoPost$Response$Data$SettingToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceImGetInfoPost$Response$Data$SettingToJson(this);

  @JsonKey(name: 'search_by_phone', fromJson: JsonCoerce.asInt)
  final int? searchByPhone;
  @JsonKey(name: 'search_by_short', fromJson: JsonCoerce.asInt)
  final int? searchByShort;
  @JsonKey(name: 'new_msg_notice', fromJson: JsonCoerce.asInt)
  final int? newMsgNotice;
  @JsonKey(name: 'msg_show_detail', fromJson: JsonCoerce.asInt)
  final int? msgShowDetail;
  @JsonKey(name: 'voice_on', fromJson: JsonCoerce.asInt)
  final int? voiceOn;
  @JsonKey(name: 'shock_on', fromJson: JsonCoerce.asInt)
  final int? shockOn;
  @JsonKey(name: 'offline_protection', fromJson: JsonCoerce.asInt)
  final int? offlineProtection;
  @JsonKey(name: 'device_lock', fromJson: JsonCoerce.asInt)
  final int? deviceLock;
  @JsonKey(name: 'mute_of_app', fromJson: JsonCoerce.asInt)
  final int? muteOfApp;
  static const fromJsonFactory =
      _$UserServiceImGetInfoPost$Response$Data$SettingFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceImGetInfoPost$Response$Data$Setting &&
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

extension $UserServiceImGetInfoPost$Response$Data$SettingExtension
    on UserServiceImGetInfoPost$Response$Data$Setting {
  UserServiceImGetInfoPost$Response$Data$Setting copyWith({
    int? searchByPhone,
    int? searchByShort,
    int? newMsgNotice,
    int? msgShowDetail,
    int? voiceOn,
    int? shockOn,
    int? offlineProtection,
    int? deviceLock,
    int? muteOfApp,
  }) {
    return UserServiceImGetInfoPost$Response$Data$Setting(
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

  UserServiceImGetInfoPost$Response$Data$Setting copyWithWrapped({
    Wrapped<int?>? searchByPhone,
    Wrapped<int?>? searchByShort,
    Wrapped<int?>? newMsgNotice,
    Wrapped<int?>? msgShowDetail,
    Wrapped<int?>? voiceOn,
    Wrapped<int?>? shockOn,
    Wrapped<int?>? offlineProtection,
    Wrapped<int?>? deviceLock,
    Wrapped<int?>? muteOfApp,
  }) {
    return UserServiceImGetInfoPost$Response$Data$Setting(
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
class UserServiceUserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo {
  const UserServiceUserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo({
    this.name,
    this.usage,
  });

  factory UserServiceUserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UserServiceUserCouponAppHomeActivityPost$Response$Data$Item$MsgInfoFromJson(
        json,
      );

  static const toJsonFactory =
      _$UserServiceUserCouponAppHomeActivityPost$Response$Data$Item$MsgInfoToJson;
  Map<String, dynamic> toJson() =>
      _$UserServiceUserCouponAppHomeActivityPost$Response$Data$Item$MsgInfoToJson(
        this,
      );

  @JsonKey(name: 'name', fromJson: JsonCoerce.asString)
  final String? name;
  @JsonKey(name: 'usage', fromJson: JsonCoerce.asString)
  final String? usage;
  static const fromJsonFactory =
      _$UserServiceUserCouponAppHomeActivityPost$Response$Data$Item$MsgInfoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserServiceUserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo &&
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

extension $UserServiceUserCouponAppHomeActivityPost$Response$Data$Item$MsgInfoExtension
    on UserServiceUserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo {
  UserServiceUserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo copyWith({
    String? name,
    String? usage,
  }) {
    return UserServiceUserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo(
      name: name ?? this.name,
      usage: usage ?? this.usage,
    );
  }

  UserServiceUserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo
  copyWithWrapped({Wrapped<String?>? name, Wrapped<String?>? usage}) {
    return UserServiceUserCouponAppHomeActivityPost$Response$Data$Item$MsgInfo(
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
