// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tips_option_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TipsOptionDetailsImpl _$$TipsOptionDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$TipsOptionDetailsImpl(
      value: (json['value'] as num).toDouble(),
      mostTipped: json['mostTipped'] as bool? ?? false,
    );

Map<String, dynamic> _$$TipsOptionDetailsImplToJson(
        _$TipsOptionDetailsImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'mostTipped': instance.mostTipped,
    };
