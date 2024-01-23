// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_auth_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentAuthRequestBodyImpl _$$PaymentAuthRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentAuthRequestBodyImpl(
      merchantId: json['merchantId'] as String,
      uniqueUserId: json['consumerId'] as String,
      merchantName: json['merchantName'] as String,
      amount: Amount.fromJson(json['amount'] as Map<String, dynamic>),
      applicationUserId: json['applicationUserId'] as String,
      institutionId: json['institutionId'] as String,
      taxPercentage: (json['taxPercentage'] as num).toDouble(),
      servicePercentage: (json['servicePercentage'] as num).toDouble(),
      features: (json['features'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      deviceOrigin: json['deviceOrigin'] as String,
      totalAmountDue: json['totalAmountDue'] as num,
      userName: json['consumerName'] as String? ?? '',
      paymentRequest: json['paymentRequest'] == null
          ? const PaymentAuthPaymentRequest(paymentType: 'TRANSACTION')
          : PaymentAuthPaymentRequest.fromJson(
              json['paymentRequest'] as Map<String, dynamic>),
      employeeId: json['employeeId'] as String?,
      encryptedNotesDetails: json['encryptedNotesDetails'] as String?,
      storeDetails: json['storeDetails'] == null
          ? null
          : StoreDetails.fromJson(json['storeDetails'] as Map<String, dynamic>),
      callbackParams: json['callbackParams'] as String?,
      paymentLinkId: json['paymentLinkId'] as String?,
      paymentRequestSource: json['paymentRequestSource'] == null
          ? null
          : PaymentRequestWithSource.fromJson(
              json['paymentRequestSource'] as Map<String, dynamic>),
      paymentSourceType: json['paymentSourceType'] as int?,
      tipAmount: (json['tipAmount'] as num?)?.toDouble(),
      notes: json['notes'] as String?,
      contextType: json['contextType'] as String?,
      orderId: json['orderId'] as String?,
      merchantPaymentOptions:
          json['merchantPaymentOptions'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$PaymentAuthRequestBodyImplToJson(
    _$PaymentAuthRequestBodyImpl instance) {
  final val = <String, dynamic>{
    'merchantId': instance.merchantId,
    'consumerId': instance.uniqueUserId,
    'merchantName': instance.merchantName,
    'amount': instance.amount,
    'applicationUserId': instance.applicationUserId,
    'institutionId': instance.institutionId,
    'taxPercentage': instance.taxPercentage,
    'servicePercentage': instance.servicePercentage,
    'features': instance.features,
    'deviceOrigin': instance.deviceOrigin,
    'totalAmountDue': instance.totalAmountDue,
    'consumerName': instance.userName,
    'paymentRequest': instance.paymentRequest,
    'employeeId': instance.employeeId,
    'encryptedNotesDetails': instance.encryptedNotesDetails,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('storeDetails', instance.storeDetails);
  val['callbackParams'] = instance.callbackParams;
  writeNotNull('paymentLinkId', instance.paymentLinkId);
  val['paymentRequestSource'] = instance.paymentRequestSource;
  val['paymentSourceType'] = instance.paymentSourceType;
  val['tipAmount'] = instance.tipAmount;
  writeNotNull('notes', instance.notes);
  val['contextType'] = instance.contextType;
  val['orderId'] = instance.orderId;
  writeNotNull('merchantPaymentOptions', instance.merchantPaymentOptions);
  return val;
}
