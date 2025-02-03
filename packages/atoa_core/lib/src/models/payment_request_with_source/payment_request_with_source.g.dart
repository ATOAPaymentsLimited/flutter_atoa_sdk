// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_request_with_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentRequestWithSourceImpl _$$PaymentRequestWithSourceImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentRequestWithSourceImpl(
      paymentRequestId: json['paymentRequestId'] as String,
      paymentRequestSourcetype:
          (json['paymentRequestSourcetype'] as num?)?.toInt() ?? 3,
      qrId: json['qrId'] as String?,
      paymentLinkId: json['paymentLinkId'] as String?,
      paymentRequest: json['paymentRequest'] as String?,
      auditTrailDetails: json['auditTrailDetails'] == null
          ? null
          : AuditTrailDetails.fromJson(
              json['auditTrailDetails'] as Map<String, dynamic>),
      splitBill: json['splitBill'] as bool?,
      expiresIn: json['expiresIn'] as String?,
      requestCreatedAt: json['requestCreatedAt'] as String?,
      strictExpiry: json['strictExpiry'] as String?,
      allowSdkRetry: json['allowSdkRetry'] as String?,
    );

Map<String, dynamic> _$$PaymentRequestWithSourceImplToJson(
        _$PaymentRequestWithSourceImpl instance) =>
    <String, dynamic>{
      'paymentRequestId': instance.paymentRequestId,
      'paymentRequestSourcetype': instance.paymentRequestSourcetype,
      if (instance.qrId case final value?) 'qrId': value,
      if (instance.paymentLinkId case final value?) 'paymentLinkId': value,
      if (instance.paymentRequest case final value?) 'paymentRequest': value,
      if (instance.auditTrailDetails case final value?)
        'auditTrailDetails': value,
      'splitBill': instance.splitBill,
      'expiresIn': instance.expiresIn,
      'requestCreatedAt': instance.requestCreatedAt,
      'strictExpiry': instance.strictExpiry,
      'allowSdkRetry': instance.allowSdkRetry,
    };
