// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_debit_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentDebitTypeSentImpl _$$PaymentDebitTypeSentImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentDebitTypeSentImpl(
      debit: json['debit'] as bool? ?? true,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PaymentDebitTypeSentImplToJson(
        _$PaymentDebitTypeSentImpl instance) =>
    <String, dynamic>{
      'debit': instance.debit,
      'runtimeType': instance.$type,
    };

_$PaymentDebitTypeReceivedImpl _$$PaymentDebitTypeReceivedImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentDebitTypeReceivedImpl(
      debit: json['debit'] as bool? ?? false,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PaymentDebitTypeReceivedImplToJson(
        _$PaymentDebitTypeReceivedImpl instance) =>
    <String, dynamic>{
      'debit': instance.debit,
      'runtimeType': instance.$type,
    };
