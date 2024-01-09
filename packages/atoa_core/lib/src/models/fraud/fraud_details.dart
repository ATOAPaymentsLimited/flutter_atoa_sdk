import 'package:freezed_annotation/freezed_annotation.dart';
part 'fraud_details.freezed.dart';
part 'fraud_details.g.dart';

@freezed
class FraudDetails with _$FraudDetails {
  const factory FraudDetails({
    String? merchantCreatedAt,
    String? merchantCategory,
    String? fraudCheckEnabled,
  }) = _FraudDetails;

  const FraudDetails._();

  factory FraudDetails.fromJson(Map<String, dynamic> json) =>
      _$FraudDetailsFromJson(json);
}
