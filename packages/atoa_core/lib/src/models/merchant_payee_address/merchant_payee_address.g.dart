// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_payee_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MerchantPayeeAddressImpl _$$MerchantPayeeAddressImplFromJson(
        Map<String, dynamic> json) =>
    _$MerchantPayeeAddressImpl(
      country: json['country'] as String?,
      postCode: json['postCode'] as String?,
      townName: json['townName'] as String?,
    );

Map<String, dynamic> _$$MerchantPayeeAddressImplToJson(
        _$MerchantPayeeAddressImpl instance) =>
    <String, dynamic>{
      'country': instance.country,
      'postCode': instance.postCode,
      'townName': instance.townName,
    };
