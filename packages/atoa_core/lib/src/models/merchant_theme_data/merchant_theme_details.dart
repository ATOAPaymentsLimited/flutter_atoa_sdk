// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchant_theme_details.freezed.dart';
part 'merchant_theme_details.g.dart';

@freezed
class MerchantThemeDetails with _$MerchantThemeDetails {
  const factory MerchantThemeDetails({
    String? colorCode,
    String? foregroundColor,
  }) = _MerchantThemeDetails;

  const MerchantThemeDetails._();

  factory MerchantThemeDetails.fromJson(Map<String, dynamic> json) =>
      _$MerchantThemeDetailsFromJson(json);
}
