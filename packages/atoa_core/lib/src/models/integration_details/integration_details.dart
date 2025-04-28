// ignore_for_file: invalid_annotation_target

import 'package:atoa_core/src/decorators/decorators.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'integration_details.freezed.dart';
part 'integration_details.g.dart';

@freezed
class IntegrationDetails with _$IntegrationDetails {
  factory IntegrationDetails({
    String? storeId,
    String? shopName,
    String? shopImage,
    @parseToStringNull String? orderId,
    @JsonKey(includeIfNull: false) String? paymentUrl,
  }) = _IntegrationDetails;

  factory IntegrationDetails.fromJson(Map<String, dynamic> json) =>
      _$IntegrationDetailsFromJson(json);
}
