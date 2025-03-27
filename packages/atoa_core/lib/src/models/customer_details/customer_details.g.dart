// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerDetailsImpl _$$CustomerDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerDetailsImpl(
      phoneCountryCode: json['phoneCountryCode'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$CustomerDetailsImplToJson(
        _$CustomerDetailsImpl instance) =>
    <String, dynamic>{
      'phoneCountryCode': instance.phoneCountryCode,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
    };
