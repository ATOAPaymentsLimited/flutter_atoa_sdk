// ignore_for_file: invalid_annotation_target

import 'package:atoa_core/src/models/enums/tips_info_type_enum.dart';
import 'package:atoa_core/src/models/tips/tips_option_details/tips_option_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tips_info.freezed.dart';
part 'tips_info.g.dart';

@freezed
class TipsInfo with _$TipsInfo {
  const factory TipsInfo({
    @JsonKey(toJson: _parseEnumToIndex, fromJson: _jsonToEnum)
    required TipsInfoTypeEnum tipType,
    required List<TipsOptionDetails> tipOptions,
    @JsonKey(includeIfNull: false) String? id,
    bool? status,
    @Default(true) bool? allowCustomTips,
  }) = _TipsInfo;

  const TipsInfo._();

  factory TipsInfo.fromJson(Map<String, dynamic> json) =>
      _$TipsInfoFromJson(json);
}

int _parseEnumToIndex(TipsInfoTypeEnum value) => value.index;

TipsInfoTypeEnum _jsonToEnum(int value) => TipsInfoTypeEnum.values[value];
