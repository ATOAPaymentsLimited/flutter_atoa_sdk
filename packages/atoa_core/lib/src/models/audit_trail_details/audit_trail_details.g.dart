// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_trail_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuditTrailDetailsImpl _$$AuditTrailDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$AuditTrailDetailsImpl(
      fullName: json['fullName'] as String?,
      dob: json['dob'] as String?,
      citizenship: json['citizenship'] as String?,
      homeAddress: json['homeAddress'] as String?,
      occupation: json['occupation'] as String?,
      sourceOfIncome: json['sourceOfIncome'] as String?,
    );

Map<String, dynamic> _$$AuditTrailDetailsImplToJson(
        _$AuditTrailDetailsImpl instance) =>
    <String, dynamic>{
      if (instance.fullName case final value?) 'fullName': value,
      if (instance.dob case final value?) 'dob': value,
      if (instance.citizenship case final value?) 'citizenship': value,
      if (instance.homeAddress case final value?) 'homeAddress': value,
      if (instance.occupation case final value?) 'occupation': value,
      if (instance.sourceOfIncome case final value?) 'sourceOfIncome': value,
    };
