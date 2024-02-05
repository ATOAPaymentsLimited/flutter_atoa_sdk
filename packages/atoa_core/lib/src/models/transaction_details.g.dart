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
      status: json['status'] as String,
      createdAt: json['createdAt'] as String,
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
      paymentSourceType: json['paymentSourceType'] as int? ?? 3,
      paymentLinkId: json['paymentLinkId'] as String?,
      employeeId: json['employeeId'] as String?,
      pendingTrasactionError: json['pendingTrasactionError'] as String?,
      orderId: json['orderId'] as String?,
    );

Map<String, dynamic> _$$TransactionDetailsImplToJson(
        _$TransactionDetailsImpl instance) =>
    <String, dynamic>{
      'paymentIdempotencyId': instance.paymentIdempotencyId,
      'applicationUserId': instance.applicationUserId,
      'paidAmount': instance.paidAmount,
      'currency': instance.currency,
      'status': instance.status,
      'createdAt': instance.createdAt,
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
    };
