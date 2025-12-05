// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_details.freezed.dart';
part 'store_details.g.dart';

@freezed
class StoreDetails with _$StoreDetails {
  const factory StoreDetails({
    required String id,
    @JsonKey(includeIfNull: false, fromJson: _locationNameFromJson)
    String? locationName,
    String? address,
  }) = _StoreDetails;

  const StoreDetails._();

  factory StoreDetails.fromJson(Map<String, dynamic> json) =>
      _$StoreDetailsFromJson(json);
}

String? _locationNameFromJson(String? value) {
  if (value == null || value == 'DEFAULT') {
    return null;
  }

  return value;
}
