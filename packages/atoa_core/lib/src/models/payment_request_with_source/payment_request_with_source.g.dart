// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_request_with_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentRequestWithSourceImpl _$$PaymentRequestWithSourceImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentRequestWithSourceImpl(
      paymentRequestSourcetype:
          _jsonToEnum(json['paymentRequestSourcetype'] as int),
      qrId: json['qrId'] as String?,
      paymentRequestId: json['paymentRequestId'] as String?,
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
    _$PaymentRequestWithSourceImpl instance) {
  final val = <String, dynamic>{
    'paymentRequestSourcetype':
        _parseEnumToIndex(instance.paymentRequestSourcetype),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('qrId', instance.qrId);
  writeNotNull('paymentRequestId', instance.paymentRequestId);
  writeNotNull('paymentLinkId', instance.paymentLinkId);
  writeNotNull('paymentRequest', instance.paymentRequest);
  writeNotNull('auditTrailDetails', instance.auditTrailDetails);
  val['splitBill'] = instance.splitBill;
  val['expiresIn'] = instance.expiresIn;
  val['requestCreatedAt'] = instance.requestCreatedAt;
  val['strictExpiry'] = instance.strictExpiry;
  val['allowSdkRetry'] = instance.allowSdkRetry;
  return val;
}
