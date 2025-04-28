// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integration_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IntegrationDetailsImpl _$$IntegrationDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$IntegrationDetailsImpl(
      storeId: json['storeId'] as String?,
      shopName: json['shopName'] as String?,
      shopImage: json['shopImage'] as String?,
      orderId: parseNumToStringNull(json['orderId']),
      paymentUrl: json['paymentUrl'] as String?,
    );

Map<String, dynamic> _$$IntegrationDetailsImplToJson(
        _$IntegrationDetailsImpl instance) =>
    <String, dynamic>{
      'storeId': instance.storeId,
      'shopName': instance.shopName,
      'shopImage': instance.shopImage,
      'orderId': instance.orderId,
      if (instance.paymentUrl case final value?) 'paymentUrl': value,
    };
