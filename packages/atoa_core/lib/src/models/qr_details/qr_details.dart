// ignore_for_file: invalid_annotation_target

import 'package:atoa_core/src/models/integration_details/integration_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'qr_details.freezed.dart';
part 'qr_details.g.dart';

@freezed
class QrDetails with _$QrDetails {
  factory QrDetails({
    required String id,
    @JsonKey(includeIfNull: false) String? nickName,
    @JsonKey(includeIfNull: false) String? referenceId,
    @JsonKey(includeIfNull: false) String? integrationId,
    @JsonKey(includeIfNull: false) String? tableId,
    @JsonKey(includeIfNull: false) IntegrationDetails? integrationDetails,
    @JsonKey(includeIfNull: false) double? amount,
  }) = _QrDetails;

  factory QrDetails.fromJson(Map<String, dynamic> json) =>
      _$QrDetailsFromJson(json);
}
