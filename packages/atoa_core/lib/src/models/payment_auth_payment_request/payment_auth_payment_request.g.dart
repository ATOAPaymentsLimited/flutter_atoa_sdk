// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_auth_payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentAuthPaymentRequestImpl _$$PaymentAuthPaymentRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentAuthPaymentRequestImpl(
      payer: PayerBankDetails.fromJson(json['payer'] as Map<String, dynamic>),
      paymentType: json['paymentType'] as String?,
    );

Map<String, dynamic> _$$PaymentAuthPaymentRequestImplToJson(
        _$PaymentAuthPaymentRequestImpl instance) =>
    <String, dynamic>{
      'payer': instance.payer,
      'paymentType': instance.paymentType,
    };
