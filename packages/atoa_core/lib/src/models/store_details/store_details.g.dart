// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreDetailsImpl _$$StoreDetailsImplFromJson(Map<String, dynamic> json) =>
    _$StoreDetailsImpl(
      id: json['id'] as String,
      locationName: _locationNameFromJson(json['locationName'] as String?),
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$StoreDetailsImplToJson(_$StoreDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      if (instance.locationName case final value?) 'locationName': value,
      'address': instance.address,
    };
