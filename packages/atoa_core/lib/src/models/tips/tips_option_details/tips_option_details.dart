import 'package:freezed_annotation/freezed_annotation.dart';

part 'tips_option_details.freezed.dart';
part 'tips_option_details.g.dart';

@freezed
class TipsOptionDetails with _$TipsOptionDetails {
  const factory TipsOptionDetails({
    required double value,
    @Default(false) bool mostTipped,
  }) = _TipsOptionDetails;

  const TipsOptionDetails._();

  factory TipsOptionDetails.fromJson(Map<String, dynamic> json) =>
      _$TipsOptionDetailsFromJson(json);
}
