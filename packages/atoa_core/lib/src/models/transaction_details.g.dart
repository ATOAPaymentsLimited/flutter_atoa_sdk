// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionDetailsImpl _$$TransactionDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionDetailsImpl(
      applicationUserId: json['applicationUserId'] as String,
      paidAmount: _parseAmount(json['paidAmount']),
      currency: json['currency'] as String,
      status: TransactionStatus.fromJson(json['status']),
      createdAt: json['createdAt'] as String,
      paymentIdempotencyId: json['paymentIdempotencyId'] as String,
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
      paymentRequest: json['paymentRequest'] == null
          ? null
          : PaymentRequest.fromJson(
              json['paymentRequest'] as Map<String, dynamic>),
      merchantName: json['merchantName'] as String?,
      avatar: json['avatar'] as String?,
      storeDetails: json['storeDetails'] == null
          ? null
          : StoreDetails.fromJson(json['storeDetails'] as Map<String, dynamic>),
      institutionId: json['institutionId'] as String?,
      signatureHash: json['signatureHash'] as String?,
      signature: json['signature'] as String?,
      redirectUrlParams:
          (json['redirectUrlParams'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$$TransactionDetailsImplToJson(
        _$TransactionDetailsImpl instance) =>
    <String, dynamic>{
      'applicationUserId': instance.applicationUserId,
      'paidAmount': instance.paidAmount,
      'currency': instance.currency,
      'createdAt': instance.createdAt,
      'paymentIdempotencyId': instance.paymentIdempotencyId,
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
      'paymentRequest': instance.paymentRequest,
      'merchantName': instance.merchantName,
      'avatar': instance.avatar,
      'storeDetails': instance.storeDetails,
      'institutionId': instance.institutionId,
      'signatureHash': instance.signatureHash,
      'signature': instance.signature,
      'redirectUrlParams': instance.redirectUrlParams,
    };
