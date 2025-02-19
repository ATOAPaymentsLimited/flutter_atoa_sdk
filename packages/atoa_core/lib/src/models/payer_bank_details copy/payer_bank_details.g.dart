// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payer_bank_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayerBankDetailsImpl _$$PayerBankDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$PayerBankDetailsImpl(
      name: json['name'] as String?,
      accountIdentifications: (json['accountIdentifications'] as List<dynamic>?)
          ?.map((e) =>
              BankAccountIdentifications.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PayerBankDetailsImplToJson(
        _$PayerBankDetailsImpl instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      'accountIdentifications': instance.accountIdentifications,
    };
