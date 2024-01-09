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

Map<String, dynamic> _$$StoreDetailsImplToJson(_$StoreDetailsImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locationName', instance.locationName);
  val['address'] = instance.address;
  return val;
}
