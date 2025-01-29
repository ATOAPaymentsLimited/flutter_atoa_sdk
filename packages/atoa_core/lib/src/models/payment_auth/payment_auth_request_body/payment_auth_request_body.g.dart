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
      paymentDevice:
          DeviceInfo.fromJson(json['paymentDevice'] as Map<String, dynamic>),
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
      paymentSourceType: (json['paymentSourceType'] as num?)?.toInt(),
      tipAmount: (json['tipAmount'] as num?)?.toDouble(),
      notes: json['notes'] as String?,
      contextType: json['contextType'] as String?,
      orderId: json['orderId'] as String?,
      merchantPaymentOptions:
          json['merchantPaymentOptions'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$PaymentAuthRequestBodyImplToJson(
        _$PaymentAuthRequestBodyImpl instance) =>
    <String, dynamic>{
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
      'paymentDevice': instance.paymentDevice,
      'consumerName': instance.userName,
      'paymentRequest': instance.paymentRequest,
      'employeeId': instance.employeeId,
      'encryptedNotesDetails': instance.encryptedNotesDetails,
      if (instance.storeDetails case final value?) 'storeDetails': value,
      'callbackParams': instance.callbackParams,
      if (instance.paymentLinkId case final value?) 'paymentLinkId': value,
      'paymentRequestSource': instance.paymentRequestSource,
      'paymentSourceType': instance.paymentSourceType,
      'tipAmount': instance.tipAmount,
      if (instance.notes case final value?) 'notes': value,
      'contextType': instance.contextType,
      if (instance.orderId case final value?) 'orderId': value,
      if (instance.merchantPaymentOptions case final value?)
        'merchantPaymentOptions': value,
    };
