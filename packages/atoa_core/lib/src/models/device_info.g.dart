// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceInfoImpl _$$DeviceInfoImplFromJson(Map<String, dynamic> json) =>
    _$DeviceInfoImpl(
      platform: json['platform'] as String,
      osVersion: json['osVersion'] as String?,
      browser: json['browser'] as String?,
      manufacturer: json['manufacturer'] as String?,
      model: json['model'] as String?,
      deviceMemory: (json['deviceMemory'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DeviceInfoImplToJson(_$DeviceInfoImpl instance) =>
    <String, dynamic>{
      'platform': instance.platform,
      'osVersion': instance.osVersion,
      'browser': instance.browser,
      'manufacturer': instance.manufacturer,
      'model': instance.model,
      'deviceMemory': instance.deviceMemory,
    };
