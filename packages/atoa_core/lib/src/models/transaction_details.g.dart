// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionDetailsImpl _$$TransactionDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionDetailsImpl(
      paidAmount: _parseAmount(json['paidAmount']),
      status: TransactionStatus.fromJson(json['status']),
      currency: json['currency'] as String?,
      applicationUserId: json['applicationUserId'] as String?,
      paymentRequestId: json['paymentRequestId'] as String?,
      taxAmount:
          json['taxAmount'] == null ? 0.0 : _parseAmount(json['taxAmount']),
      serviceAmount: json['serviceAmount'] == null
          ? 0.0
          : _parseAmount(json['serviceAmount']),
      tipAmount:
          json['tipAmount'] == null ? 0.0 : _parseAmount(json['tipAmount']),
      qrId: json['qrId'] as String?,
      qrNickName: json['qrNickName'] as String?,
      orderId: json['orderId'] as String?,
      statusDetails: json['statusDetails'] == null
          ? null
          : TransactionStatusDetails.fromJson(
              json['statusDetails'] as Map<String, dynamic>),
      merchantId: json['merchantId'] as String?,
      merchantName: json['merchantName'] as String?,
      avatar: json['avatar'] as String?,
      storeDetails: json['storeDetails'] == null
          ? null
          : StoreDetails.fromJson(json['storeDetails'] as Map<String, dynamic>),
      transactionDetails: (json['transactionDetails'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : TransactionDetailsTransaction.fromJson(
                      e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TransactionDetailsImplToJson(
        _$TransactionDetailsImpl instance) =>
    <String, dynamic>{
      'paidAmount': instance.paidAmount,
      'currency': instance.currency,
      'applicationUserId': instance.applicationUserId,
      'paymentRequestId': instance.paymentRequestId,
      'taxAmount': instance.taxAmount,
      'serviceAmount': instance.serviceAmount,
      'tipAmount': instance.tipAmount,
      'qrId': instance.qrId,
      'qrNickName': instance.qrNickName,
      'orderId': instance.orderId,
      'statusDetails': instance.statusDetails,
      'merchantId': instance.merchantId,
      'merchantName': instance.merchantName,
      'avatar': instance.avatar,
      'storeDetails': instance.storeDetails,
      'transactionDetails': instance.transactionDetails,
    };
