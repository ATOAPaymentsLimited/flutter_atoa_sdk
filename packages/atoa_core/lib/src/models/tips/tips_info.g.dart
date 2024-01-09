// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tips_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TipsInfoImpl _$$TipsInfoImplFromJson(Map<String, dynamic> json) =>
    _$TipsInfoImpl(
      tipType: _jsonToEnum(json['tipType'] as int),
      tipOptions: (json['tipOptions'] as List<dynamic>)
          .map((e) => TipsOptionDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      status: json['status'] as bool?,
      allowCustomTips: json['allowCustomTips'] as bool? ?? true,
    );

Map<String, dynamic> _$$TipsInfoImplToJson(_$TipsInfoImpl instance) {
  final val = <String, dynamic>{
    'tipType': _parseEnumToIndex(instance.tipType),
    'tipOptions': instance.tipOptions,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['status'] = instance.status;
  val['allowCustomTips'] = instance.allowCustomTips;
  return val;
}
