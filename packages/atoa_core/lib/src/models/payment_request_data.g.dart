// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_request_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentRequestDataImpl _$$PaymentRequestDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentRequestDataImpl(
      merchantBusinessName: json['merchantBusinessName'] as String,
      merchantId: json['merchantId'] as String,
      amount: Amount.fromJson(json['amount'] as Map<String, dynamic>),
      taxPercentage: (json['taxPercentage'] as num).toDouble(),
      servicePercentage: (json['servicePercentage'] as num).toDouble(),
      employeeId: json['employeeId'] as String?,
      customerId: json['customerId'] as String?,
      consumerId: json['consumerId'] as String?,
      env: json['env'] as String?,
      encryptedNotesDetails: json['encryptedNotesDetails'] as String?,
      encryptedQrDetails: json['encryptedQrDetails'] as String?,
      merchantNotes: json['merchantNotes'] as String?,
      splitOutstandingAmount:
          (json['splitOutstandingAmount'] as num?)?.toDouble(),
      callbackParams: json['callbackParams'] as String?,
      notes: json['notes'] as String?,
      storeImg: json['storeImg'] as String?,
      contextType: json['contextType'] as String?,
      fraudDetails: json['fraudDetails'] == null
          ? null
          : FraudDetails.fromJson(json['fraudDetails'] as Map<String, dynamic>),
      storeDetails: json['storeDetails'] == null
          ? null
          : StoreDetails.fromJson(json['storeDetails'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : MerchantPayeeAddress.fromJson(
              json['address'] as Map<String, dynamic>),
      paymentType: json['paymentType'] as String?,
      expiresIn: parseStringToNumNull(json['expiresIn']),
      requestCreatedAt: json['requestCreatedAt'] as String?,
      strictExpiry: json['strictExpiry'] as bool?,
      allowSdkRetry: json['allowSdkRetry'] as bool?,
      splitBill: json['splitBill'] as bool? ?? false,
      options: json['options'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$PaymentRequestDataImplToJson(
    _$PaymentRequestDataImpl instance) {
  final val = <String, dynamic>{
    'merchantBusinessName': instance.merchantBusinessName,
    'merchantId': instance.merchantId,
    'amount': instance.amount,
    'taxPercentage': instance.taxPercentage,
    'servicePercentage': instance.servicePercentage,
    'employeeId': instance.employeeId,
    'customerId': instance.customerId,
    'consumerId': instance.consumerId,
    'env': instance.env,
    'encryptedNotesDetails': instance.encryptedNotesDetails,
    'encryptedQrDetails': instance.encryptedQrDetails,
    'merchantNotes': instance.merchantNotes,
    'splitOutstandingAmount': instance.splitOutstandingAmount,
    'callbackParams': instance.callbackParams,
    'notes': instance.notes,
    'storeImg': instance.storeImg,
    'contextType': instance.contextType,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fraudDetails', instance.fraudDetails);
  writeNotNull('storeDetails', instance.storeDetails);
  writeNotNull('address', instance.address);
  writeNotNull('paymentType', instance.paymentType);
  val['expiresIn'] = instance.expiresIn;
  val['requestCreatedAt'] = instance.requestCreatedAt;
  val['strictExpiry'] = instance.strictExpiry;
  val['allowSdkRetry'] = instance.allowSdkRetry;
  val['splitBill'] = instance.splitBill;
  writeNotNull('options', instance.options);
  return val;
}
