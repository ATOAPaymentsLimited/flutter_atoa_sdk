// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account_identifications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankAccountIdentificationsImpl _$$BankAccountIdentificationsImplFromJson(
        Map<String, dynamic> json) =>
    _$BankAccountIdentificationsImpl(
      type: json['type'] as String,
      identification: json['identification'] as String?,
    );

Map<String, dynamic> _$$BankAccountIdentificationsImplToJson(
        _$BankAccountIdentificationsImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'identification': instance.identification,
    };
