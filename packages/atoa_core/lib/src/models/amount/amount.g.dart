// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AmountImpl _$$AmountImplFromJson(Map<String, dynamic> json) => _$AmountImpl(
      amount: (json['amount'] as num?)?.toDouble() ?? 0.0,
      currency: json['currency'] as String? ?? 'GBP',
    );

Map<String, dynamic> _$$AmountImplToJson(_$AmountImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };
