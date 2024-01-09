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
      'fullName': instance.fullName,
      'dob': instance.dob,
      'citizenship': instance.citizenship,
      'homeAddress': instance.homeAddress,
      'occupation': instance.occupation,
      'sourceOfIncome': instance.sourceOfIncome,
    };
