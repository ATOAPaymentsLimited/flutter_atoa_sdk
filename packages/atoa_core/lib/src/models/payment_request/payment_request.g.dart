// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentRequestImpl _$$PaymentRequestImplFromJson(Map<String, dynamic> json) =>
    _$PaymentRequestImpl(
      payee: json['payee'] == null
          ? null
          : PayerBankDetails.fromJson(json['payee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaymentRequestImplToJson(
        _$PaymentRequestImpl instance) =>
    <String, dynamic>{
      'payee': instance.payee,
    };
