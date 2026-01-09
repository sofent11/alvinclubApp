// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swaggerApiPay.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayServiceWithdrawOrdersGet$Response
_$PayServiceWithdrawOrdersGet$ResponseFromJson(Map<String, dynamic> json) =>
    PayServiceWithdrawOrdersGet$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : PayServiceWithdrawOrdersGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      success: json['success'] as bool?,
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
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : PayServiceWithdrawApplyPost$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      success: json['success'] as bool?,
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
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
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
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : PayServiceCommissionTransactionGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
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
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : PayServiceRechargeBalanceGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'],
      success: json['success'] as bool?,
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
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : PayServiceRechargeOrdersGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      success: json['success'] as bool?,
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
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : PayServiceRechargeCreateOrderPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
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
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : PayServicePayPayPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
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
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : PayServicePayPayResultGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
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
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : PayServicePayPayTypeGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
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
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map(
            (e) => PayServiceEchoooCoinTypeGet$Response$Data$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'],
      success: json['success'] as bool?,
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
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : PayServiceEchoooCoinInfoGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'],
      success: json['success'] as bool?,
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
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : PayServiceEchoooCoinLogGet$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'],
      success: json['success'] as bool?,
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
  total: (json['total'] as num?)?.toDouble(),
  size: (json['size'] as num?)?.toDouble(),
  current: (json['current'] as num?)?.toDouble(),
  pages: (json['pages'] as num?)?.toDouble(),
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
  orderNo: json['orderNo'] as String?,
  amount: json['amount'] as String?,
  currency: json['currency'] as String?,
  status: (json['status'] as num?)?.toDouble(),
  rejectReason: json['rejectReason'] as String?,
  createTime: json['createTime'] as String?,
  completedTime: json['completedTime'] as String?,
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
  commissionTotal: json['commissionTotal'] as String?,
  targetCurrencyTotal: json['targetCurrencyTotal'] as String?,
  withdrawAmount: json['withdrawAmount'] as String?,
  withdrawableBalance: json['withdrawableBalance'] as String?,
  pendingCommission: json['pendingCommission'] as String?,
  totalPoints: (json['totalPoints'] as num?)?.toDouble(),
  pendingWithdrawAmount: json['pendingWithdrawAmount'] as String?,
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
  total: (json['total'] as num?)?.toDouble(),
  pageSize: (json['pageSize'] as num?)?.toDouble(),
  totalPages: (json['totalPages'] as num?)?.toDouble(),
  current: (json['current'] as num?)?.toDouble(),
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
  balance: json['balance'] as String?,
  currency: json['currency'] == null
      ? null
      : PayServiceRechargeBalanceGet$Response$Data$Currency.fromJson(
          json['currency'] as Map<String, dynamic>,
        ),
  yesterdayProfit: json['yesterdayProfit'] as String?,
  totalProfit: json['totalProfit'] as String?,
  rechargeAmounts: json['rechargeAmounts'] as String?,
  rechargeAmountsText: json['rechargeAmountsText'] as String?,
  rechargeRuleText: json['rechargeRuleText'] as String?,
  rechargeRuleTitle: json['rechargeRuleTitle'] as String?,
  targetBalance: json['targetBalance'] as String?,
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
  total: (json['total'] as num?)?.toDouble(),
  size: (json['size'] as num?)?.toDouble(),
  current: (json['current'] as num?)?.toDouble(),
  pages: (json['pages'] as num?)?.toDouble(),
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
  orderId: json['orderId'] as String?,
);

Map<String, dynamic> _$PayServiceRechargeCreateOrderPost$Response$DataToJson(
  PayServiceRechargeCreateOrderPost$Response$Data instance,
) => <String, dynamic>{'orderId': instance.orderId};

PayServicePayPayPost$Response$Data _$PayServicePayPayPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => PayServicePayPayPost$Response$Data(
  thirdPayParam: json['thirdPayParam'] as String?,
  receiptAddress: json['receiptAddress'] as String?,
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
      payStatus: (json['payStatus'] as num?)?.toDouble(),
      orderType: (json['orderType'] as num?)?.toDouble(),
      currency: json['currency'] == null
          ? null
          : PayServicePayPayResultGet$Response$Data$Currency.fromJson(
              json['currency'] as Map<String, dynamic>,
            ),
      payAmount: json['payAmount'] as String?,
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
  type: (json['type'] as num?)?.toDouble(),
  name: json['name'] as String?,
);

Map<String, dynamic> _$PayServiceEchoooCoinTypeGet$Response$Data$ItemToJson(
  PayServiceEchoooCoinTypeGet$Response$Data$Item instance,
) => <String, dynamic>{'type': instance.type, 'name': instance.name};

PayServiceEchoooCoinInfoGet$Response$Data
_$PayServiceEchoooCoinInfoGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => PayServiceEchoooCoinInfoGet$Response$Data(
  balance: (json['balance'] as num?)?.toDouble(),
  percentage: json['percentage'] as String?,
  deductibleAmount: json['deductibleAmount'] as String?,
  accumulateAmount: json['accumulateAmount'] as String?,
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
      total: (json['total'] as num?)?.toDouble(),
      pageSize: (json['pageSize'] as num?)?.toDouble(),
      totalPages: (json['totalPages'] as num?)?.toDouble(),
      current: (json['current'] as num?)?.toDouble(),
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
  orderNo: json['orderNo'] as String?,
  amount: json['amount'] as String?,
  currency: json['currency'] as String?,
  status: (json['status'] as num?)?.toDouble(),
  remark: json['remark'] as String?,
  createTime: json['createTime'] as String?,
  completedTime: json['completedTime'] as String?,
  attach: json['attach'] as String?,
  accountType: json['accountType'] as String?,
  accountNo: json['accountNo'] as String?,
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
  amount: json['amount'] as String?,
  time: json['time'] as String?,
  typeName: json['typeName'] as String?,
  currency: json['currency'] as String?,
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
  name: json['name'] as String?,
  symbol: json['symbol'] as String?,
);

Map<String, dynamic>
_$PayServiceRechargeBalanceGet$Response$Data$CurrencyToJson(
  PayServiceRechargeBalanceGet$Response$Data$Currency instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

PayServiceRechargeBalanceGet$Response$Data$RechargeReward
_$PayServiceRechargeBalanceGet$Response$Data$RechargeRewardFromJson(
  Map<String, dynamic> json,
) => PayServiceRechargeBalanceGet$Response$Data$RechargeReward(
  amount: json['amount'] as String?,
  expireAt: (json['expireAt'] as num?)?.toDouble(),
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
  name: json['name'] as String?,
  symbol: json['symbol'] as String?,
);

Map<String, dynamic>
_$PayServiceRechargeBalanceGet$Response$Data$TargetCurrencyToJson(
  PayServiceRechargeBalanceGet$Response$Data$TargetCurrency instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

PayServiceRechargeOrdersGet$Response$Data$Records$Item
_$PayServiceRechargeOrdersGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => PayServiceRechargeOrdersGet$Response$Data$Records$Item(
  id: (json['id'] as num?)?.toDouble(),
  userId: json['userId'] as String?,
  tenantCode: json['tenantCode'] as String?,
  amount: json['amount'] as String?,
  currency: json['currency'] as String?,
  targetAmount: json['targetAmount'] as String?,
  targetCurrency: json['targetCurrency'] as String?,
  gmtCreate: json['gmtCreate'] as String?,
  gmtUpdate: json['gmtUpdate'] as String?,
  status: (json['status'] as num?)?.toDouble(),
  payType: (json['payType'] as num?)?.toDouble(),
  payAmount: json['payAmount'] as String?,
  payFee: json['payFee'] as String?,
  payOrderId: json['payOrderId'] as String?,
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
  name: json['name'] as String?,
  symbol: json['symbol'] as String?,
);

Map<String, dynamic> _$PayServicePayPayResultGet$Response$Data$CurrencyToJson(
  PayServicePayPayResultGet$Response$Data$Currency instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

PayServicePayPayTypeGet$Response$Data$List$Item
_$PayServicePayPayTypeGet$Response$Data$List$ItemFromJson(
  Map<String, dynamic> json,
) => PayServicePayPayTypeGet$Response$Data$List$Item(
  payType: json['payType'] as String?,
  payAmount: json['payAmount'] as String?,
  currency: json['currency'] == null
      ? null
      : PayServicePayPayTypeGet$Response$Data$List$Item$Currency.fromJson(
          json['currency'] as Map<String, dynamic>,
        ),
  payTypeName: json['payTypeName'] as String?,
  payTypeIcon: json['payTypeIcon'] as String?,
  payTypeDesc: json['payTypeDesc'] as String?,
  payFee: json['payFee'] as String?,
  rechargeOnly: json['rechargeOnly'] as String?,
  rechargeDifference: json['rechargeDifference'] as String?,
  isDefault: json['isDefault'] as bool?,
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
  name: json['name'] as String?,
  symbol: json['symbol'] as String?,
);

Map<String, dynamic> _$PayServiceEchoooCoinInfoGet$Response$Data$CurrencyToJson(
  PayServiceEchoooCoinInfoGet$Response$Data$Currency instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

PayServiceEchoooCoinLogGet$Response$Data$Records$Item
_$PayServiceEchoooCoinLogGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => PayServiceEchoooCoinLogGet$Response$Data$Records$Item(
  actualAmount: (json['actualAmount'] as num?)?.toDouble(),
  gmtCreate: (json['gmtCreate'] as num?)?.toDouble(),
  type: (json['type'] as num?)?.toDouble(),
  name: json['name'] as String?,
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
  name: json['name'] as String?,
  symbol: json['symbol'] as String?,
);

Map<String, dynamic>
_$PayServicePayPayTypeGet$Response$Data$List$Item$CurrencyToJson(
  PayServicePayPayTypeGet$Response$Data$List$Item$Currency instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};
