// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fraud_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FraudDetailsImpl _$$FraudDetailsImplFromJson(Map<String, dynamic> json) =>
    _$FraudDetailsImpl(
      merchantCreatedAt: json['merchantCreatedAt'] as String?,
      merchantCategory: json['merchantCategory'] as String?,
      fraudCheckEnabled: json['fraudCheckEnabled'] as String?,
    );

Map<String, dynamic> _$$FraudDetailsImplToJson(_$FraudDetailsImpl instance) =>
    <String, dynamic>{
      'merchantCreatedAt': instance.merchantCreatedAt,
      'merchantCategory': instance.merchantCategory,
      'fraudCheckEnabled': instance.fraudCheckEnabled,
    };
