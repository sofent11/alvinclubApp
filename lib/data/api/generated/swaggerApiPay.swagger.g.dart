// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swaggerApiPay.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayServiceWithdrawApplyPostRequest _$PayServiceWithdrawApplyPostRequestFromJson(
  Map<String, dynamic> json,
) => PayServiceWithdrawApplyPostRequest(
  amount: JsonCoerce.asString(json['amount']),
  accountType: JsonCoerce.asString(json['accountType']),
  accountNo: JsonCoerce.asString(json['accountNo']),
);

Map<String, dynamic> _$PayServiceWithdrawApplyPostRequestToJson(
  PayServiceWithdrawApplyPostRequest instance,
) => <String, dynamic>{
  'amount': instance.amount,
  'accountType': instance.accountType,
  'accountNo': instance.accountNo,
};

PayServiceRechargeCreateorderPostRequest
_$PayServiceRechargeCreateorderPostRequestFromJson(Map<String, dynamic> json) =>
    PayServiceRechargeCreateorderPostRequest(
      amount: JsonCoerce.asString(json['amount']),
      currency: JsonCoerce.asString(json['currency']),
      relatedOrderId: JsonCoerce.asString(json['relatedOrderId']),
      relatedOrderType: JsonCoerce.asInt(json['relatedOrderType']),
    );

Map<String, dynamic> _$PayServiceRechargeCreateorderPostRequestToJson(
  PayServiceRechargeCreateorderPostRequest instance,
) => <String, dynamic>{
  'amount': instance.amount,
  'currency': instance.currency,
  'relatedOrderId': instance.relatedOrderId,
  'relatedOrderType': instance.relatedOrderType,
};

PayServicePayPayPostRequest _$PayServicePayPayPostRequestFromJson(
  Map<String, dynamic> json,
) => PayServicePayPayPostRequest(
  orderId: JsonCoerce.asString(json['orderId']),
  payType: JsonCoerce.asString(json['payType']),
  orderType: JsonCoerce.asString(json['orderType']),
  chainId: JsonCoerce.asString(json['chainId']),
  payTokenSymbol: JsonCoerce.asString(json['payTokenSymbol']),
  callbackUrl: JsonCoerce.asString(json['callbackUrl']),
  uiType: JsonCoerce.asInt(json['uiType']),
);

Map<String, dynamic> _$PayServicePayPayPostRequestToJson(
  PayServicePayPayPostRequest instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'payType': instance.payType,
  'orderType': instance.orderType,
  'chainId': instance.chainId,
  'payTokenSymbol': instance.payTokenSymbol,
  'callbackUrl': instance.callbackUrl,
  'uiType': instance.uiType,
};

PayServiceWithdrawOrdersGet$Response
_$PayServiceWithdrawOrdersGet$ResponseFromJson(Map<String, dynamic> json) =>
    PayServiceWithdrawOrdersGet$Response(
      code: JsonCoerce.asInt(json['code']),
      message: JsonCoerce.asString(json['message']),
      data: json['data'] == null
          ? null
          : PayServiceWithdrawOrdersGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: JsonCoerce.asString(json['traceId']),
      success: JsonCoerce.asBool(json['success']),
    );

Map<String, dynamic> _$PayServiceWithdrawOrdersGet$ResponseToJson(
  PayServiceWithdrawOrdersGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'success': instance.success,
};

PayServiceWithdrawApplyPost$Response
_$PayServiceWithdrawApplyPost$ResponseFromJson(Map<String, dynamic> json) =>
    PayServiceWithdrawApplyPost$Response(
      code: JsonCoerce.asInt(json['code']),
      message: JsonCoerce.asString(json['message']),
      data: json['data'] == null
          ? null
          : PayServiceWithdrawApplyPost$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: JsonCoerce.asString(json['traceId']),
      success: JsonCoerce.asBool(json['success']),
    );

Map<String, dynamic> _$PayServiceWithdrawApplyPost$ResponseToJson(
  PayServiceWithdrawApplyPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'success': instance.success,
};

PayServiceCommissionSummaryGet$Response
_$PayServiceCommissionSummaryGet$ResponseFromJson(Map<String, dynamic> json) =>
    PayServiceCommissionSummaryGet$Response(
      code: JsonCoerce.asInt(json['code']),
      message: JsonCoerce.asString(json['message']),
      data: json['data'] == null
          ? null
          : PayServiceCommissionSummaryGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$PayServiceCommissionSummaryGet$ResponseToJson(
  PayServiceCommissionSummaryGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
};

PayServiceCommissionTransactionGet$Response
_$PayServiceCommissionTransactionGet$ResponseFromJson(
  Map<String, dynamic> json,
) => PayServiceCommissionTransactionGet$Response(
  code: JsonCoerce.asInt(json['code']),
  message: JsonCoerce.asString(json['message']),
  data: json['data'] == null
      ? null
      : PayServiceCommissionTransactionGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: JsonCoerce.asString(json['traceId']),
  placeholder: json['placeholder'],
  success: JsonCoerce.asBool(json['success']),
);

Map<String, dynamic> _$PayServiceCommissionTransactionGet$ResponseToJson(
  PayServiceCommissionTransactionGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

PayServiceRechargeBalanceGet$Response
_$PayServiceRechargeBalanceGet$ResponseFromJson(Map<String, dynamic> json) =>
    PayServiceRechargeBalanceGet$Response(
      code: JsonCoerce.asInt(json['code']),
      message: JsonCoerce.asString(json['message']),
      data: json['data'] == null
          ? null
          : PayServiceRechargeBalanceGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: JsonCoerce.asString(json['traceId']),
      placeholder: json['placeholder'],
      success: JsonCoerce.asBool(json['success']),
    );

Map<String, dynamic> _$PayServiceRechargeBalanceGet$ResponseToJson(
  PayServiceRechargeBalanceGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

PayServiceRechargeOrdersGet$Response
_$PayServiceRechargeOrdersGet$ResponseFromJson(Map<String, dynamic> json) =>
    PayServiceRechargeOrdersGet$Response(
      code: JsonCoerce.asInt(json['code']),
      message: JsonCoerce.asString(json['message']),
      data: json['data'] == null
          ? null
          : PayServiceRechargeOrdersGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: JsonCoerce.asString(json['traceId']),
      success: JsonCoerce.asBool(json['success']),
    );

Map<String, dynamic> _$PayServiceRechargeOrdersGet$ResponseToJson(
  PayServiceRechargeOrdersGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'success': instance.success,
};

PayServiceRechargeCreateOrderPost$Response
_$PayServiceRechargeCreateOrderPost$ResponseFromJson(
  Map<String, dynamic> json,
) => PayServiceRechargeCreateOrderPost$Response(
  code: JsonCoerce.asInt(json['code']),
  message: JsonCoerce.asString(json['message']),
  data: json['data'] == null
      ? null
      : PayServiceRechargeCreateOrderPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: JsonCoerce.asString(json['traceId']),
  placeholder: json['placeholder'],
  success: JsonCoerce.asBool(json['success']),
);

Map<String, dynamic> _$PayServiceRechargeCreateOrderPost$ResponseToJson(
  PayServiceRechargeCreateOrderPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

PayServicePayPayPost$Response _$PayServicePayPayPost$ResponseFromJson(
  Map<String, dynamic> json,
) => PayServicePayPayPost$Response(
  code: JsonCoerce.asInt(json['code']),
  message: JsonCoerce.asString(json['message']),
  data: json['data'] == null
      ? null
      : PayServicePayPayPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: JsonCoerce.asString(json['traceId']),
  placeholder: json['placeholder'],
  success: JsonCoerce.asBool(json['success']),
);

Map<String, dynamic> _$PayServicePayPayPost$ResponseToJson(
  PayServicePayPayPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

PayServicePayPayResultGet$Response _$PayServicePayPayResultGet$ResponseFromJson(
  Map<String, dynamic> json,
) => PayServicePayPayResultGet$Response(
  code: JsonCoerce.asInt(json['code']),
  message: JsonCoerce.asString(json['message']),
  data: json['data'] == null
      ? null
      : PayServicePayPayResultGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: JsonCoerce.asString(json['traceId']),
  placeholder: json['placeholder'],
  success: JsonCoerce.asBool(json['success']),
);

Map<String, dynamic> _$PayServicePayPayResultGet$ResponseToJson(
  PayServicePayPayResultGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

PayServicePayPayTypeGet$Response _$PayServicePayPayTypeGet$ResponseFromJson(
  Map<String, dynamic> json,
) => PayServicePayPayTypeGet$Response(
  code: JsonCoerce.asInt(json['code']),
  message: JsonCoerce.asString(json['message']),
  data: json['data'] == null
      ? null
      : PayServicePayPayTypeGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: JsonCoerce.asString(json['traceId']),
  placeholder: json['placeholder'],
  success: JsonCoerce.asBool(json['success']),
);

Map<String, dynamic> _$PayServicePayPayTypeGet$ResponseToJson(
  PayServicePayPayTypeGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

PayServiceEchoooCoinTypeGet$Response
_$PayServiceEchoooCoinTypeGet$ResponseFromJson(Map<String, dynamic> json) =>
    PayServiceEchoooCoinTypeGet$Response(
      code: JsonCoerce.asInt(json['code']),
      message: JsonCoerce.asString(json['message']),
      data: (json['data'] as List<dynamic>?)
          ?.map(
            (e) => PayServiceEchoooCoinTypeGet$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      traceId: JsonCoerce.asString(json['traceId']),
      placeholder: json['placeholder'],
      success: JsonCoerce.asBool(json['success']),
    );

Map<String, dynamic> _$PayServiceEchoooCoinTypeGet$ResponseToJson(
  PayServiceEchoooCoinTypeGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

PayServiceEchoooCoinInfoGet$Response
_$PayServiceEchoooCoinInfoGet$ResponseFromJson(Map<String, dynamic> json) =>
    PayServiceEchoooCoinInfoGet$Response(
      code: JsonCoerce.asInt(json['code']),
      message: JsonCoerce.asString(json['message']),
      data: json['data'] == null
          ? null
          : PayServiceEchoooCoinInfoGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: JsonCoerce.asString(json['traceId']),
      placeholder: json['placeholder'],
      success: JsonCoerce.asBool(json['success']),
    );

Map<String, dynamic> _$PayServiceEchoooCoinInfoGet$ResponseToJson(
  PayServiceEchoooCoinInfoGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

PayServiceEchoooCoinLogGet$Response
_$PayServiceEchoooCoinLogGet$ResponseFromJson(Map<String, dynamic> json) =>
    PayServiceEchoooCoinLogGet$Response(
      code: JsonCoerce.asInt(json['code']),
      message: JsonCoerce.asString(json['message']),
      data: json['data'] == null
          ? null
          : PayServiceEchoooCoinLogGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: JsonCoerce.asString(json['traceId']),
      placeholder: json['placeholder'],
      success: JsonCoerce.asBool(json['success']),
    );

Map<String, dynamic> _$PayServiceEchoooCoinLogGet$ResponseToJson(
  PayServiceEchoooCoinLogGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

PayServiceWithdrawOrdersGet$Response$Data
_$PayServiceWithdrawOrdersGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => PayServiceWithdrawOrdersGet$Response$Data(
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) => PayServiceWithdrawOrdersGet$Response$Data$Records$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  total: JsonCoerce.asInt(json['total']),
  size: JsonCoerce.asInt(json['size']),
  current: JsonCoerce.asInt(json['current']),
  pages: JsonCoerce.asInt(json['pages']),
);

Map<String, dynamic> _$PayServiceWithdrawOrdersGet$Response$DataToJson(
  PayServiceWithdrawOrdersGet$Response$Data instance,
) => <String, dynamic>{
  'records': instance.records?.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'size': instance.size,
  'current': instance.current,
  'pages': instance.pages,
};

PayServiceWithdrawApplyPost$Response$Data
_$PayServiceWithdrawApplyPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => PayServiceWithdrawApplyPost$Response$Data(
  orderNo: JsonCoerce.asString(json['orderNo']),
  amount: JsonCoerce.asString(json['amount']),
  currency: JsonCoerce.asString(json['currency']),
  status: JsonCoerce.asInt(json['status']),
  rejectReason: JsonCoerce.asString(json['rejectReason']),
  createTime: JsonCoerce.asString(json['createTime']),
  completedTime: JsonCoerce.asString(json['completedTime']),
);

Map<String, dynamic> _$PayServiceWithdrawApplyPost$Response$DataToJson(
  PayServiceWithdrawApplyPost$Response$Data instance,
) => <String, dynamic>{
  'orderNo': instance.orderNo,
  'amount': instance.amount,
  'currency': instance.currency,
  'status': instance.status,
  'rejectReason': instance.rejectReason,
  'createTime': instance.createTime,
  'completedTime': instance.completedTime,
};

PayServiceCommissionSummaryGet$Response$Data
_$PayServiceCommissionSummaryGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => PayServiceCommissionSummaryGet$Response$Data(
  commissionTotal: JsonCoerce.asString(json['commissionTotal']),
  targetCurrencyTotal: JsonCoerce.asString(json['targetCurrencyTotal']),
  withdrawAmount: JsonCoerce.asString(json['withdrawAmount']),
  withdrawableBalance: JsonCoerce.asString(json['withdrawableBalance']),
  pendingCommission: JsonCoerce.asString(json['pendingCommission']),
  totalPoints: JsonCoerce.asInt(json['totalPoints']),
  pendingWithdrawAmount: JsonCoerce.asString(json['pendingWithdrawAmount']),
);

Map<String, dynamic> _$PayServiceCommissionSummaryGet$Response$DataToJson(
  PayServiceCommissionSummaryGet$Response$Data instance,
) => <String, dynamic>{
  'commissionTotal': instance.commissionTotal,
  'targetCurrencyTotal': instance.targetCurrencyTotal,
  'withdrawAmount': instance.withdrawAmount,
  'withdrawableBalance': instance.withdrawableBalance,
  'pendingCommission': instance.pendingCommission,
  'totalPoints': instance.totalPoints,
  'pendingWithdrawAmount': instance.pendingWithdrawAmount,
};

PayServiceCommissionTransactionGet$Response$Data
_$PayServiceCommissionTransactionGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => PayServiceCommissionTransactionGet$Response$Data(
  total: JsonCoerce.asInt(json['total']),
  pageSize: JsonCoerce.asInt(json['pageSize']),
  totalPages: JsonCoerce.asInt(json['totalPages']),
  current: JsonCoerce.asInt(json['current']),
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) =>
            PayServiceCommissionTransactionGet$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
      )
      .toList(),
);

Map<String, dynamic> _$PayServiceCommissionTransactionGet$Response$DataToJson(
  PayServiceCommissionTransactionGet$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

PayServiceRechargeBalanceGet$Response$Data
_$PayServiceRechargeBalanceGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => PayServiceRechargeBalanceGet$Response$Data(
  balance: JsonCoerce.asString(json['balance']),
  currency: json['currency'] == null
      ? null
      : PayServiceRechargeBalanceGet$Response$Data$Currency.fromJson(
          json['currency'] as Map<String, dynamic>,
        ),
  yesterdayProfit: JsonCoerce.asString(json['yesterdayProfit']),
  totalProfit: JsonCoerce.asString(json['totalProfit']),
  rechargeAmounts: JsonCoerce.asString(json['rechargeAmounts']),
  rechargeAmountsText: JsonCoerce.asString(json['rechargeAmountsText']),
  rechargeRuleText: JsonCoerce.asString(json['rechargeRuleText']),
  rechargeRuleTitle: JsonCoerce.asString(json['rechargeRuleTitle']),
  targetBalance: JsonCoerce.asString(json['targetBalance']),
  rechargeReward: json['rechargeReward'] == null
      ? null
      : PayServiceRechargeBalanceGet$Response$Data$RechargeReward.fromJson(
          json['rechargeReward'] as Map<String, dynamic>,
        ),
  targetCurrency: json['targetCurrency'] == null
      ? null
      : PayServiceRechargeBalanceGet$Response$Data$TargetCurrency.fromJson(
          json['targetCurrency'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$PayServiceRechargeBalanceGet$Response$DataToJson(
  PayServiceRechargeBalanceGet$Response$Data instance,
) => <String, dynamic>{
  'balance': instance.balance,
  'currency': instance.currency?.toJson(),
  'yesterdayProfit': instance.yesterdayProfit,
  'totalProfit': instance.totalProfit,
  'rechargeAmounts': instance.rechargeAmounts,
  'rechargeAmountsText': instance.rechargeAmountsText,
  'rechargeRuleText': instance.rechargeRuleText,
  'rechargeRuleTitle': instance.rechargeRuleTitle,
  'targetBalance': instance.targetBalance,
  'rechargeReward': instance.rechargeReward?.toJson(),
  'targetCurrency': instance.targetCurrency?.toJson(),
};

PayServiceRechargeOrdersGet$Response$Data
_$PayServiceRechargeOrdersGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => PayServiceRechargeOrdersGet$Response$Data(
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) => PayServiceRechargeOrdersGet$Response$Data$Records$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  total: JsonCoerce.asInt(json['total']),
  size: JsonCoerce.asInt(json['size']),
  current: JsonCoerce.asInt(json['current']),
  pages: JsonCoerce.asInt(json['pages']),
);

Map<String, dynamic> _$PayServiceRechargeOrdersGet$Response$DataToJson(
  PayServiceRechargeOrdersGet$Response$Data instance,
) => <String, dynamic>{
  'records': instance.records?.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'size': instance.size,
  'current': instance.current,
  'pages': instance.pages,
};

PayServiceRechargeCreateOrderPost$Response$Data
_$PayServiceRechargeCreateOrderPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => PayServiceRechargeCreateOrderPost$Response$Data(
  orderId: JsonCoerce.asString(json['orderId']),
);

Map<String, dynamic> _$PayServiceRechargeCreateOrderPost$Response$DataToJson(
  PayServiceRechargeCreateOrderPost$Response$Data instance,
) => <String, dynamic>{'orderId': instance.orderId};

PayServicePayPayPost$Response$Data _$PayServicePayPayPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => PayServicePayPayPost$Response$Data(
  thirdPayParam: JsonCoerce.asString(json['thirdPayParam']),
  receiptAddress: JsonCoerce.asString(json['receiptAddress']),
);

Map<String, dynamic> _$PayServicePayPayPost$Response$DataToJson(
  PayServicePayPayPost$Response$Data instance,
) => <String, dynamic>{
  'thirdPayParam': instance.thirdPayParam,
  'receiptAddress': instance.receiptAddress,
};

PayServicePayPayResultGet$Response$Data
_$PayServicePayPayResultGet$Response$DataFromJson(Map<String, dynamic> json) =>
    PayServicePayPayResultGet$Response$Data(
      payStatus: JsonCoerce.asInt(json['payStatus']),
      orderType: JsonCoerce.asInt(json['orderType']),
      currency: json['currency'] == null
          ? null
          : PayServicePayPayResultGet$Response$Data$Currency.fromJson(
              json['currency'] as Map<String, dynamic>,
            ),
      payAmount: JsonCoerce.asString(json['payAmount']),
    );

Map<String, dynamic> _$PayServicePayPayResultGet$Response$DataToJson(
  PayServicePayPayResultGet$Response$Data instance,
) => <String, dynamic>{
  'payStatus': instance.payStatus,
  'orderType': instance.orderType,
  'currency': instance.currency?.toJson(),
  'payAmount': instance.payAmount,
};

PayServicePayPayTypeGet$Response$Data
_$PayServicePayPayTypeGet$Response$DataFromJson(Map<String, dynamic> json) =>
    PayServicePayPayTypeGet$Response$Data(
      list: (json['list'] as List<dynamic>?)
          ?.map(
            (e) => PayServicePayPayTypeGet$Response$Data$List$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    );

Map<String, dynamic> _$PayServicePayPayTypeGet$Response$DataToJson(
  PayServicePayPayTypeGet$Response$Data instance,
) => <String, dynamic>{'list': instance.list?.map((e) => e.toJson()).toList()};

PayServiceEchoooCoinTypeGet$Response$Data$Item
_$PayServiceEchoooCoinTypeGet$Response$Data$ItemFromJson(
  Map<String, dynamic> json,
) => PayServiceEchoooCoinTypeGet$Response$Data$Item(
  type: JsonCoerce.asInt(json['type']),
  name: JsonCoerce.asString(json['name']),
);

Map<String, dynamic> _$PayServiceEchoooCoinTypeGet$Response$Data$ItemToJson(
  PayServiceEchoooCoinTypeGet$Response$Data$Item instance,
) => <String, dynamic>{'type': instance.type, 'name': instance.name};

PayServiceEchoooCoinInfoGet$Response$Data
_$PayServiceEchoooCoinInfoGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => PayServiceEchoooCoinInfoGet$Response$Data(
  balance: JsonCoerce.asInt(json['balance']),
  percentage: JsonCoerce.asString(json['percentage']),
  deductibleAmount: JsonCoerce.asString(json['deductibleAmount']),
  accumulateAmount: JsonCoerce.asString(json['accumulateAmount']),
  currency: json['currency'] == null
      ? null
      : PayServiceEchoooCoinInfoGet$Response$Data$Currency.fromJson(
          json['currency'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$PayServiceEchoooCoinInfoGet$Response$DataToJson(
  PayServiceEchoooCoinInfoGet$Response$Data instance,
) => <String, dynamic>{
  'balance': instance.balance,
  'percentage': instance.percentage,
  'deductibleAmount': instance.deductibleAmount,
  'accumulateAmount': instance.accumulateAmount,
  'currency': instance.currency?.toJson(),
};

PayServiceEchoooCoinLogGet$Response$Data
_$PayServiceEchoooCoinLogGet$Response$DataFromJson(Map<String, dynamic> json) =>
    PayServiceEchoooCoinLogGet$Response$Data(
      total: JsonCoerce.asInt(json['total']),
      pageSize: JsonCoerce.asInt(json['pageSize']),
      totalPages: JsonCoerce.asInt(json['totalPages']),
      current: JsonCoerce.asInt(json['current']),
      records: (json['records'] as List<dynamic>?)
          ?.map(
            (e) =>
                PayServiceEchoooCoinLogGet$Response$Data$Records$Item.fromJson(
                  e as Map<String, dynamic>,
                ),
          )
          .toList(),
    );

Map<String, dynamic> _$PayServiceEchoooCoinLogGet$Response$DataToJson(
  PayServiceEchoooCoinLogGet$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

PayServiceWithdrawOrdersGet$Response$Data$Records$Item
_$PayServiceWithdrawOrdersGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => PayServiceWithdrawOrdersGet$Response$Data$Records$Item(
  orderNo: JsonCoerce.asString(json['orderNo']),
  amount: JsonCoerce.asString(json['amount']),
  currency: JsonCoerce.asString(json['currency']),
  status: JsonCoerce.asInt(json['status']),
  remark: JsonCoerce.asString(json['remark']),
  createTime: JsonCoerce.asString(json['createTime']),
  completedTime: JsonCoerce.asString(json['completedTime']),
  attach: JsonCoerce.asString(json['attach']),
  accountType: JsonCoerce.asString(json['accountType']),
  accountNo: JsonCoerce.asString(json['accountNo']),
);

Map<String, dynamic>
_$PayServiceWithdrawOrdersGet$Response$Data$Records$ItemToJson(
  PayServiceWithdrawOrdersGet$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'orderNo': instance.orderNo,
  'amount': instance.amount,
  'currency': instance.currency,
  'status': instance.status,
  'remark': instance.remark,
  'createTime': instance.createTime,
  'completedTime': instance.completedTime,
  'attach': instance.attach,
  'accountType': instance.accountType,
  'accountNo': instance.accountNo,
};

PayServiceCommissionTransactionGet$Response$Data$Records$Item
_$PayServiceCommissionTransactionGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => PayServiceCommissionTransactionGet$Response$Data$Records$Item(
  amount: JsonCoerce.asString(json['amount']),
  time: JsonCoerce.asString(json['time']),
  typeName: JsonCoerce.asString(json['typeName']),
  currency: JsonCoerce.asString(json['currency']),
);

Map<String, dynamic>
_$PayServiceCommissionTransactionGet$Response$Data$Records$ItemToJson(
  PayServiceCommissionTransactionGet$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'amount': instance.amount,
  'time': instance.time,
  'typeName': instance.typeName,
  'currency': instance.currency,
};

PayServiceRechargeBalanceGet$Response$Data$Currency
_$PayServiceRechargeBalanceGet$Response$Data$CurrencyFromJson(
  Map<String, dynamic> json,
) => PayServiceRechargeBalanceGet$Response$Data$Currency(
  name: JsonCoerce.asString(json['name']),
  symbol: JsonCoerce.asString(json['symbol']),
);

Map<String, dynamic>
_$PayServiceRechargeBalanceGet$Response$Data$CurrencyToJson(
  PayServiceRechargeBalanceGet$Response$Data$Currency instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

PayServiceRechargeBalanceGet$Response$Data$RechargeReward
_$PayServiceRechargeBalanceGet$Response$Data$RechargeRewardFromJson(
  Map<String, dynamic> json,
) => PayServiceRechargeBalanceGet$Response$Data$RechargeReward(
  amount: JsonCoerce.asString(json['amount']),
  expireAt: JsonCoerce.asInt(json['expireAt']),
);

Map<String, dynamic>
_$PayServiceRechargeBalanceGet$Response$Data$RechargeRewardToJson(
  PayServiceRechargeBalanceGet$Response$Data$RechargeReward instance,
) => <String, dynamic>{
  'amount': instance.amount,
  'expireAt': instance.expireAt,
};

PayServiceRechargeBalanceGet$Response$Data$TargetCurrency
_$PayServiceRechargeBalanceGet$Response$Data$TargetCurrencyFromJson(
  Map<String, dynamic> json,
) => PayServiceRechargeBalanceGet$Response$Data$TargetCurrency(
  name: JsonCoerce.asString(json['name']),
  symbol: JsonCoerce.asString(json['symbol']),
);

Map<String, dynamic>
_$PayServiceRechargeBalanceGet$Response$Data$TargetCurrencyToJson(
  PayServiceRechargeBalanceGet$Response$Data$TargetCurrency instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

PayServiceRechargeOrdersGet$Response$Data$Records$Item
_$PayServiceRechargeOrdersGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => PayServiceRechargeOrdersGet$Response$Data$Records$Item(
  id: JsonCoerce.asInt(json['id']),
  userId: JsonCoerce.asString(json['userId']),
  tenantCode: JsonCoerce.asString(json['tenantCode']),
  amount: JsonCoerce.asString(json['amount']),
  currency: JsonCoerce.asString(json['currency']),
  targetAmount: JsonCoerce.asString(json['targetAmount']),
  targetCurrency: JsonCoerce.asString(json['targetCurrency']),
  gmtCreate: JsonCoerce.asString(json['gmtCreate']),
  gmtUpdate: JsonCoerce.asString(json['gmtUpdate']),
  status: JsonCoerce.asInt(json['status']),
  payType: JsonCoerce.asInt(json['payType']),
  payAmount: JsonCoerce.asString(json['payAmount']),
  payFee: JsonCoerce.asString(json['payFee']),
  payOrderId: JsonCoerce.asString(json['payOrderId']),
);

Map<String, dynamic>
_$PayServiceRechargeOrdersGet$Response$Data$Records$ItemToJson(
  PayServiceRechargeOrdersGet$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'tenantCode': instance.tenantCode,
  'amount': instance.amount,
  'currency': instance.currency,
  'targetAmount': instance.targetAmount,
  'targetCurrency': instance.targetCurrency,
  'gmtCreate': instance.gmtCreate,
  'gmtUpdate': instance.gmtUpdate,
  'status': instance.status,
  'payType': instance.payType,
  'payAmount': instance.payAmount,
  'payFee': instance.payFee,
  'payOrderId': instance.payOrderId,
};

PayServicePayPayResultGet$Response$Data$Currency
_$PayServicePayPayResultGet$Response$Data$CurrencyFromJson(
  Map<String, dynamic> json,
) => PayServicePayPayResultGet$Response$Data$Currency(
  name: JsonCoerce.asString(json['name']),
  symbol: JsonCoerce.asString(json['symbol']),
);

Map<String, dynamic> _$PayServicePayPayResultGet$Response$Data$CurrencyToJson(
  PayServicePayPayResultGet$Response$Data$Currency instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

PayServicePayPayTypeGet$Response$Data$List$Item
_$PayServicePayPayTypeGet$Response$Data$List$ItemFromJson(
  Map<String, dynamic> json,
) => PayServicePayPayTypeGet$Response$Data$List$Item(
  payType: JsonCoerce.asString(json['payType']),
  payAmount: JsonCoerce.asString(json['payAmount']),
  currency: json['currency'] == null
      ? null
      : PayServicePayPayTypeGet$Response$Data$List$Item$Currency.fromJson(
          json['currency'] as Map<String, dynamic>,
        ),
  payTypeName: JsonCoerce.asString(json['payTypeName']),
  payTypeIcon: JsonCoerce.asString(json['payTypeIcon']),
  payTypeDesc: JsonCoerce.asString(json['payTypeDesc']),
  payFee: JsonCoerce.asString(json['payFee']),
  rechargeOnly: JsonCoerce.asString(json['rechargeOnly']),
  rechargeDifference: JsonCoerce.asString(json['rechargeDifference']),
  isDefault: JsonCoerce.asBool(json['isDefault']),
);

Map<String, dynamic> _$PayServicePayPayTypeGet$Response$Data$List$ItemToJson(
  PayServicePayPayTypeGet$Response$Data$List$Item instance,
) => <String, dynamic>{
  'payType': instance.payType,
  'payAmount': instance.payAmount,
  'currency': instance.currency?.toJson(),
  'payTypeName': instance.payTypeName,
  'payTypeIcon': instance.payTypeIcon,
  'payTypeDesc': instance.payTypeDesc,
  'payFee': instance.payFee,
  'rechargeOnly': instance.rechargeOnly,
  'rechargeDifference': instance.rechargeDifference,
  'isDefault': instance.isDefault,
};

PayServiceEchoooCoinInfoGet$Response$Data$Currency
_$PayServiceEchoooCoinInfoGet$Response$Data$CurrencyFromJson(
  Map<String, dynamic> json,
) => PayServiceEchoooCoinInfoGet$Response$Data$Currency(
  name: JsonCoerce.asString(json['name']),
  symbol: JsonCoerce.asString(json['symbol']),
);

Map<String, dynamic> _$PayServiceEchoooCoinInfoGet$Response$Data$CurrencyToJson(
  PayServiceEchoooCoinInfoGet$Response$Data$Currency instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

PayServiceEchoooCoinLogGet$Response$Data$Records$Item
_$PayServiceEchoooCoinLogGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => PayServiceEchoooCoinLogGet$Response$Data$Records$Item(
  actualAmount: JsonCoerce.asInt(json['actualAmount']),
  gmtCreate: JsonCoerce.asInt(json['gmtCreate']),
  type: JsonCoerce.asInt(json['type']),
  name: JsonCoerce.asString(json['name']),
);

Map<String, dynamic>
_$PayServiceEchoooCoinLogGet$Response$Data$Records$ItemToJson(
  PayServiceEchoooCoinLogGet$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'actualAmount': instance.actualAmount,
  'gmtCreate': instance.gmtCreate,
  'type': instance.type,
  'name': instance.name,
};

PayServicePayPayTypeGet$Response$Data$List$Item$Currency
_$PayServicePayPayTypeGet$Response$Data$List$Item$CurrencyFromJson(
  Map<String, dynamic> json,
) => PayServicePayPayTypeGet$Response$Data$List$Item$Currency(
  name: JsonCoerce.asString(json['name']),
  symbol: JsonCoerce.asString(json['symbol']),
);

Map<String, dynamic>
_$PayServicePayPayTypeGet$Response$Data$List$Item$CurrencyToJson(
  PayServicePayPayTypeGet$Response$Data$List$Item$Currency instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};
