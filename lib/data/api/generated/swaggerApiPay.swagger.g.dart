// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swaggerApiPay.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WithdrawOrdersGet$Response _$WithdrawOrdersGet$ResponseFromJson(
  Map<String, dynamic> json,
) => WithdrawOrdersGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : WithdrawOrdersGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$WithdrawOrdersGet$ResponseToJson(
  WithdrawOrdersGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'success': instance.success,
};

WithdrawApplyPost$Response _$WithdrawApplyPost$ResponseFromJson(
  Map<String, dynamic> json,
) => WithdrawApplyPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : WithdrawApplyPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$WithdrawApplyPost$ResponseToJson(
  WithdrawApplyPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'success': instance.success,
};

CommissionSummaryGet$Response _$CommissionSummaryGet$ResponseFromJson(
  Map<String, dynamic> json,
) => CommissionSummaryGet$Response(
  code: (json['code'] as num).toDouble(),
  message: json['message'] as String,
  data: CommissionSummaryGet$Response$Data.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$CommissionSummaryGet$ResponseToJson(
  CommissionSummaryGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};

CommissionTransactionGet$Response _$CommissionTransactionGet$ResponseFromJson(
  Map<String, dynamic> json,
) => CommissionTransactionGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : CommissionTransactionGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$CommissionTransactionGet$ResponseToJson(
  CommissionTransactionGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

RechargeBalanceGet$Response _$RechargeBalanceGet$ResponseFromJson(
  Map<String, dynamic> json,
) => RechargeBalanceGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : RechargeBalanceGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$RechargeBalanceGet$ResponseToJson(
  RechargeBalanceGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

RechargeOrdersGet$Response _$RechargeOrdersGet$ResponseFromJson(
  Map<String, dynamic> json,
) => RechargeOrdersGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : RechargeOrdersGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$RechargeOrdersGet$ResponseToJson(
  RechargeOrdersGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'success': instance.success,
};

RechargeCreateOrderPost$Response _$RechargeCreateOrderPost$ResponseFromJson(
  Map<String, dynamic> json,
) => RechargeCreateOrderPost$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : RechargeCreateOrderPost$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$RechargeCreateOrderPost$ResponseToJson(
  RechargeCreateOrderPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

PayPayPost$Response _$PayPayPost$ResponseFromJson(Map<String, dynamic> json) =>
    PayPayPost$Response(
      code: (json['code'] as num?)?.toDouble(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : PayPayPost$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      traceId: json['traceId'] as String?,
      placeholder: json['placeholder'],
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$PayPayPost$ResponseToJson(
  PayPayPost$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

PayPayResultGet$Response _$PayPayResultGet$ResponseFromJson(
  Map<String, dynamic> json,
) => PayPayResultGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : PayPayResultGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$PayPayResultGet$ResponseToJson(
  PayPayResultGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

PayPayTypeGet$Response _$PayPayTypeGet$ResponseFromJson(
  Map<String, dynamic> json,
) => PayPayTypeGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : PayPayTypeGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$PayPayTypeGet$ResponseToJson(
  PayPayTypeGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

EchoooCoinTypeGet$Response _$EchoooCoinTypeGet$ResponseFromJson(
  Map<String, dynamic> json,
) => EchoooCoinTypeGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) => EchoooCoinTypeGet$Response$Data$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$EchoooCoinTypeGet$ResponseToJson(
  EchoooCoinTypeGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

EchoooCoinInfoGet$Response _$EchoooCoinInfoGet$ResponseFromJson(
  Map<String, dynamic> json,
) => EchoooCoinInfoGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : EchoooCoinInfoGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$EchoooCoinInfoGet$ResponseToJson(
  EchoooCoinInfoGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

EchoooCoinLogGet$Response _$EchoooCoinLogGet$ResponseFromJson(
  Map<String, dynamic> json,
) => EchoooCoinLogGet$Response(
  code: (json['code'] as num?)?.toDouble(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : EchoooCoinLogGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
  traceId: json['traceId'] as String?,
  placeholder: json['placeholder'],
  success: json['success'] as bool?,
);

Map<String, dynamic> _$EchoooCoinLogGet$ResponseToJson(
  EchoooCoinLogGet$Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'traceId': instance.traceId,
  'placeholder': instance.placeholder,
  'success': instance.success,
};

WithdrawOrdersGet$Response$Data _$WithdrawOrdersGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => WithdrawOrdersGet$Response$Data(
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) => WithdrawOrdersGet$Response$Data$Records$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  total: (json['total'] as num?)?.toDouble(),
  size: (json['size'] as num?)?.toDouble(),
  current: (json['current'] as num?)?.toDouble(),
  pages: (json['pages'] as num?)?.toDouble(),
);

Map<String, dynamic> _$WithdrawOrdersGet$Response$DataToJson(
  WithdrawOrdersGet$Response$Data instance,
) => <String, dynamic>{
  'records': instance.records?.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'size': instance.size,
  'current': instance.current,
  'pages': instance.pages,
};

WithdrawApplyPost$Response$Data _$WithdrawApplyPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => WithdrawApplyPost$Response$Data(
  orderNo: json['orderNo'] as String?,
  amount: json['amount'] as String?,
  currency: json['currency'] as String?,
  status: (json['status'] as num?)?.toDouble(),
  rejectReason: json['rejectReason'] as String?,
  createTime: json['createTime'] as String?,
  completedTime: json['completedTime'] as String?,
);

Map<String, dynamic> _$WithdrawApplyPost$Response$DataToJson(
  WithdrawApplyPost$Response$Data instance,
) => <String, dynamic>{
  'orderNo': instance.orderNo,
  'amount': instance.amount,
  'currency': instance.currency,
  'status': instance.status,
  'rejectReason': instance.rejectReason,
  'createTime': instance.createTime,
  'completedTime': instance.completedTime,
};

CommissionSummaryGet$Response$Data _$CommissionSummaryGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => CommissionSummaryGet$Response$Data(
  commissionTotal: json['commissionTotal'] as String,
  targetCurrencyTotal: json['targetCurrencyTotal'] as String,
  withdrawAmount: json['withdrawAmount'] as String,
  withdrawableBalance: json['withdrawableBalance'] as String,
  pendingCommission: json['pendingCommission'] as String,
  totalPoints: (json['totalPoints'] as num).toDouble(),
  pendingWithdrawAmount: json['pendingWithdrawAmount'] as String,
);

Map<String, dynamic> _$CommissionSummaryGet$Response$DataToJson(
  CommissionSummaryGet$Response$Data instance,
) => <String, dynamic>{
  'commissionTotal': instance.commissionTotal,
  'targetCurrencyTotal': instance.targetCurrencyTotal,
  'withdrawAmount': instance.withdrawAmount,
  'withdrawableBalance': instance.withdrawableBalance,
  'pendingCommission': instance.pendingCommission,
  'totalPoints': instance.totalPoints,
  'pendingWithdrawAmount': instance.pendingWithdrawAmount,
};

CommissionTransactionGet$Response$Data
_$CommissionTransactionGet$Response$DataFromJson(Map<String, dynamic> json) =>
    CommissionTransactionGet$Response$Data(
      total: (json['total'] as num?)?.toDouble(),
      pageSize: (json['pageSize'] as num?)?.toDouble(),
      totalPages: (json['totalPages'] as num?)?.toDouble(),
      current: (json['current'] as num?)?.toDouble(),
      records: (json['records'] as List<dynamic>?)
          ?.map(
            (e) => CommissionTransactionGet$Response$Data$Records$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    );

Map<String, dynamic> _$CommissionTransactionGet$Response$DataToJson(
  CommissionTransactionGet$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

RechargeBalanceGet$Response$Data _$RechargeBalanceGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => RechargeBalanceGet$Response$Data(
  balance: json['balance'] as String?,
  currency: json['currency'] == null
      ? null
      : RechargeBalanceGet$Response$Data$Currency.fromJson(
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
      : RechargeBalanceGet$Response$Data$RechargeReward.fromJson(
          json['rechargeReward'] as Map<String, dynamic>,
        ),
  targetCurrency: json['targetCurrency'] == null
      ? null
      : RechargeBalanceGet$Response$Data$TargetCurrency.fromJson(
          json['targetCurrency'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$RechargeBalanceGet$Response$DataToJson(
  RechargeBalanceGet$Response$Data instance,
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

RechargeOrdersGet$Response$Data _$RechargeOrdersGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => RechargeOrdersGet$Response$Data(
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) => RechargeOrdersGet$Response$Data$Records$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  total: (json['total'] as num?)?.toDouble(),
  size: (json['size'] as num?)?.toDouble(),
  current: (json['current'] as num?)?.toDouble(),
  pages: (json['pages'] as num?)?.toDouble(),
);

Map<String, dynamic> _$RechargeOrdersGet$Response$DataToJson(
  RechargeOrdersGet$Response$Data instance,
) => <String, dynamic>{
  'records': instance.records?.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'size': instance.size,
  'current': instance.current,
  'pages': instance.pages,
};

RechargeCreateOrderPost$Response$Data
_$RechargeCreateOrderPost$Response$DataFromJson(Map<String, dynamic> json) =>
    RechargeCreateOrderPost$Response$Data(orderId: json['orderId'] as String?);

Map<String, dynamic> _$RechargeCreateOrderPost$Response$DataToJson(
  RechargeCreateOrderPost$Response$Data instance,
) => <String, dynamic>{'orderId': instance.orderId};

PayPayPost$Response$Data _$PayPayPost$Response$DataFromJson(
  Map<String, dynamic> json,
) => PayPayPost$Response$Data(
  thirdPayParam: json['thirdPayParam'] as String?,
  receiptAddress: json['receiptAddress'] as String,
);

Map<String, dynamic> _$PayPayPost$Response$DataToJson(
  PayPayPost$Response$Data instance,
) => <String, dynamic>{
  'thirdPayParam': instance.thirdPayParam,
  'receiptAddress': instance.receiptAddress,
};

PayPayResultGet$Response$Data _$PayPayResultGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => PayPayResultGet$Response$Data(
  payStatus: (json['payStatus'] as num?)?.toDouble(),
  orderType: (json['orderType'] as num?)?.toDouble(),
  currency: json['currency'] == null
      ? null
      : PayPayResultGet$Response$Data$Currency.fromJson(
          json['currency'] as Map<String, dynamic>,
        ),
  payAmount: json['payAmount'] as String?,
);

Map<String, dynamic> _$PayPayResultGet$Response$DataToJson(
  PayPayResultGet$Response$Data instance,
) => <String, dynamic>{
  'payStatus': instance.payStatus,
  'orderType': instance.orderType,
  'currency': instance.currency?.toJson(),
  'payAmount': instance.payAmount,
};

PayPayTypeGet$Response$Data _$PayPayTypeGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => PayPayTypeGet$Response$Data(
  list: (json['list'] as List<dynamic>?)
      ?.map(
        (e) => PayPayTypeGet$Response$Data$List$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$PayPayTypeGet$Response$DataToJson(
  PayPayTypeGet$Response$Data instance,
) => <String, dynamic>{'list': instance.list?.map((e) => e.toJson()).toList()};

EchoooCoinTypeGet$Response$Data$Item
_$EchoooCoinTypeGet$Response$Data$ItemFromJson(Map<String, dynamic> json) =>
    EchoooCoinTypeGet$Response$Data$Item(
      type: (json['type'] as num).toDouble(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$EchoooCoinTypeGet$Response$Data$ItemToJson(
  EchoooCoinTypeGet$Response$Data$Item instance,
) => <String, dynamic>{'type': instance.type, 'name': instance.name};

EchoooCoinInfoGet$Response$Data _$EchoooCoinInfoGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => EchoooCoinInfoGet$Response$Data(
  balance: (json['balance'] as num).toDouble(),
  percentage: json['percentage'] as String,
  deductibleAmount: json['deductibleAmount'] as String,
  accumulateAmount: json['accumulateAmount'] as String,
  currency: EchoooCoinInfoGet$Response$Data$Currency.fromJson(
    json['currency'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$EchoooCoinInfoGet$Response$DataToJson(
  EchoooCoinInfoGet$Response$Data instance,
) => <String, dynamic>{
  'balance': instance.balance,
  'percentage': instance.percentage,
  'deductibleAmount': instance.deductibleAmount,
  'accumulateAmount': instance.accumulateAmount,
  'currency': instance.currency.toJson(),
};

EchoooCoinLogGet$Response$Data _$EchoooCoinLogGet$Response$DataFromJson(
  Map<String, dynamic> json,
) => EchoooCoinLogGet$Response$Data(
  total: (json['total'] as num?)?.toDouble(),
  pageSize: (json['pageSize'] as num?)?.toDouble(),
  totalPages: (json['totalPages'] as num?)?.toDouble(),
  current: (json['current'] as num?)?.toDouble(),
  records: (json['records'] as List<dynamic>?)
      ?.map(
        (e) => EchoooCoinLogGet$Response$Data$Records$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$EchoooCoinLogGet$Response$DataToJson(
  EchoooCoinLogGet$Response$Data instance,
) => <String, dynamic>{
  'total': instance.total,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'current': instance.current,
  'records': instance.records?.map((e) => e.toJson()).toList(),
};

WithdrawOrdersGet$Response$Data$Records$Item
_$WithdrawOrdersGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => WithdrawOrdersGet$Response$Data$Records$Item(
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

Map<String, dynamic> _$WithdrawOrdersGet$Response$Data$Records$ItemToJson(
  WithdrawOrdersGet$Response$Data$Records$Item instance,
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

CommissionTransactionGet$Response$Data$Records$Item
_$CommissionTransactionGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => CommissionTransactionGet$Response$Data$Records$Item(
  amount: json['amount'] as String,
  time: json['time'] as String,
  typeName: json['typeName'] as String,
  currency: json['currency'] as String,
);

Map<String, dynamic>
_$CommissionTransactionGet$Response$Data$Records$ItemToJson(
  CommissionTransactionGet$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'amount': instance.amount,
  'time': instance.time,
  'typeName': instance.typeName,
  'currency': instance.currency,
};

RechargeBalanceGet$Response$Data$Currency
_$RechargeBalanceGet$Response$Data$CurrencyFromJson(
  Map<String, dynamic> json,
) => RechargeBalanceGet$Response$Data$Currency(
  name: json['name'] as String?,
  symbol: json['symbol'] as String?,
);

Map<String, dynamic> _$RechargeBalanceGet$Response$Data$CurrencyToJson(
  RechargeBalanceGet$Response$Data$Currency instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

RechargeBalanceGet$Response$Data$RechargeReward
_$RechargeBalanceGet$Response$Data$RechargeRewardFromJson(
  Map<String, dynamic> json,
) => RechargeBalanceGet$Response$Data$RechargeReward(
  amount: json['amount'] as String?,
  expireAt: (json['expireAt'] as num?)?.toDouble(),
);

Map<String, dynamic> _$RechargeBalanceGet$Response$Data$RechargeRewardToJson(
  RechargeBalanceGet$Response$Data$RechargeReward instance,
) => <String, dynamic>{
  'amount': instance.amount,
  'expireAt': instance.expireAt,
};

RechargeBalanceGet$Response$Data$TargetCurrency
_$RechargeBalanceGet$Response$Data$TargetCurrencyFromJson(
  Map<String, dynamic> json,
) => RechargeBalanceGet$Response$Data$TargetCurrency(
  name: json['name'] as String?,
  symbol: json['symbol'] as String?,
);

Map<String, dynamic> _$RechargeBalanceGet$Response$Data$TargetCurrencyToJson(
  RechargeBalanceGet$Response$Data$TargetCurrency instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

RechargeOrdersGet$Response$Data$Records$Item
_$RechargeOrdersGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => RechargeOrdersGet$Response$Data$Records$Item(
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

Map<String, dynamic> _$RechargeOrdersGet$Response$Data$Records$ItemToJson(
  RechargeOrdersGet$Response$Data$Records$Item instance,
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

PayPayResultGet$Response$Data$Currency
_$PayPayResultGet$Response$Data$CurrencyFromJson(Map<String, dynamic> json) =>
    PayPayResultGet$Response$Data$Currency(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic> _$PayPayResultGet$Response$Data$CurrencyToJson(
  PayPayResultGet$Response$Data$Currency instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

PayPayTypeGet$Response$Data$List$Item
_$PayPayTypeGet$Response$Data$List$ItemFromJson(Map<String, dynamic> json) =>
    PayPayTypeGet$Response$Data$List$Item(
      payType: json['payType'] as String?,
      payAmount: json['payAmount'] as String?,
      currency: json['currency'] == null
          ? null
          : PayPayTypeGet$Response$Data$List$Item$Currency.fromJson(
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

Map<String, dynamic> _$PayPayTypeGet$Response$Data$List$ItemToJson(
  PayPayTypeGet$Response$Data$List$Item instance,
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

EchoooCoinInfoGet$Response$Data$Currency
_$EchoooCoinInfoGet$Response$Data$CurrencyFromJson(Map<String, dynamic> json) =>
    EchoooCoinInfoGet$Response$Data$Currency(
      name: json['name'] as String,
      symbol: json['symbol'] as String,
    );

Map<String, dynamic> _$EchoooCoinInfoGet$Response$Data$CurrencyToJson(
  EchoooCoinInfoGet$Response$Data$Currency instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};

EchoooCoinLogGet$Response$Data$Records$Item
_$EchoooCoinLogGet$Response$Data$Records$ItemFromJson(
  Map<String, dynamic> json,
) => EchoooCoinLogGet$Response$Data$Records$Item(
  actualAmount: (json['actualAmount'] as num).toDouble(),
  gmtCreate: (json['gmtCreate'] as num).toDouble(),
  type: (json['type'] as num).toDouble(),
  name: json['name'] as String,
);

Map<String, dynamic> _$EchoooCoinLogGet$Response$Data$Records$ItemToJson(
  EchoooCoinLogGet$Response$Data$Records$Item instance,
) => <String, dynamic>{
  'actualAmount': instance.actualAmount,
  'gmtCreate': instance.gmtCreate,
  'type': instance.type,
  'name': instance.name,
};

PayPayTypeGet$Response$Data$List$Item$Currency
_$PayPayTypeGet$Response$Data$List$Item$CurrencyFromJson(
  Map<String, dynamic> json,
) => PayPayTypeGet$Response$Data$List$Item$Currency(
  name: json['name'] as String?,
  symbol: json['symbol'] as String?,
);

Map<String, dynamic> _$PayPayTypeGet$Response$Data$List$Item$CurrencyToJson(
  PayPayTypeGet$Response$Data$List$Item$Currency instance,
) => <String, dynamic>{'name': instance.name, 'symbol': instance.symbol};
