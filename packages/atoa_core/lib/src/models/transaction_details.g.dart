// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionDetailsImpl _$$TransactionDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionDetailsImpl(
      paymentIdempotencyId: json['paymentIdempotencyId'] as String,
      applicationUserId: json['applicationUserId'] as String,
      paidAmount: _parseAmount(json['paidAmount']),
      currency: json['currency'] as String,
      status: TransactionStatus.fromJson(json['status']),
      createdAt: json['createdAt'] as String,
      paymentType: $enumDecode(_$PaymentTypeEnumMap, json['paymentType']),
      paymentId: json['paymentId'] as String?,
      updatedAt: json['updatedAt'] as String?,
      bankName: json['bankName'] as String?,
      bankAccountNo: json['bankAccountNo'] as String?,
      notes: json['notes'] as String?,
      taxAmount:
          json['taxAmount'] == null ? 0.0 : _parseAmount(json['taxAmount']),
      serviceAmount: json['serviceAmount'] == null
          ? 0.0
          : _parseAmount(json['serviceAmount']),
      tipAmount:
          json['tipAmount'] == null ? 0.0 : _parseAmount(json['tipAmount']),
      qrId: json['qrId'] as String?,
      storeId: json['storeId'] as String?,
      qrNickName: json['qrNickName'] as String?,
      errorDescription: json['errorDescription'] as String?,
      paymentSourceType: (json['paymentSourceType'] as num?)?.toInt() ?? 3,
      paymentLinkId: json['paymentLinkId'] as String?,
      employeeId: json['employeeId'] as String?,
      pendingTrasactionError: json['pendingTrasactionError'] as String?,
      orderId: json['orderId'] as String?,
      statusDetails: json['statusDetails'] == null
          ? null
          : TransactionStatusDetails.fromJson(
              json['statusDetails'] as Map<String, dynamic>),
      merchantId: json['merchantId'] as String?,
      payer: json['payer'] == null
          ? null
          : PayerBankDetails.fromJson(json['payer'] as Map<String, dynamic>),
      merchantName: json['merchantName'] as String?,
      avatar: json['avatar'] as String?,
      storeDetails: json['storeDetails'] == null
          ? null
          : StoreDetails.fromJson(json['storeDetails'] as Map<String, dynamic>),
      institutionId: json['institutionId'] as String?,
    );

Map<String, dynamic> _$$TransactionDetailsImplToJson(
        _$TransactionDetailsImpl instance) =>
    <String, dynamic>{
      'paymentIdempotencyId': instance.paymentIdempotencyId,
      'applicationUserId': instance.applicationUserId,
      'paidAmount': instance.paidAmount,
      'currency': instance.currency,
      'createdAt': instance.createdAt,
      'paymentType': _$PaymentTypeEnumMap[instance.paymentType]!,
      'paymentId': instance.paymentId,
      'updatedAt': instance.updatedAt,
      'bankName': instance.bankName,
      'bankAccountNo': instance.bankAccountNo,
      'notes': instance.notes,
      'taxAmount': instance.taxAmount,
      'serviceAmount': instance.serviceAmount,
      'tipAmount': instance.tipAmount,
      'qrId': instance.qrId,
      'storeId': instance.storeId,
      'qrNickName': instance.qrNickName,
      'errorDescription': instance.errorDescription,
      'paymentSourceType': instance.paymentSourceType,
      'paymentLinkId': instance.paymentLinkId,
      'employeeId': instance.employeeId,
      'pendingTrasactionError': instance.pendingTrasactionError,
      'orderId': instance.orderId,
      'statusDetails': instance.statusDetails,
      'merchantId': instance.merchantId,
      'payer': instance.payer,
      'merchantName': instance.merchantName,
      'avatar': instance.avatar,
      'storeDetails': instance.storeDetails,
      'institutionId': instance.institutionId,
    };

const _$PaymentTypeEnumMap = {
  PaymentType.TRANSACTION: 'TRANSACTION',
  PaymentType.REFUND: 'REFUND',
  PaymentType.CONSUMERREWARD: 'CONSUMERREWARD',
  PaymentType.CONSUMERCASHBACK: 'CONSUMERCASHBACK',
  PaymentType.P2P: 'P2P',
  PaymentType.P2P_WEB: 'P2P_WEB',
  PaymentType.INVOICEPAYMENT: 'INVOICEPAYMENT',
};
