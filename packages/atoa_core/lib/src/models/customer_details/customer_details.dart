// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_details.freezed.dart';
part 'customer_details.g.dart';

@freezed
class CustomerDetails with _$CustomerDetails {
  const factory CustomerDetails({
    String? phoneCountryCode,
    String? phoneNumber,
    String? email,
  }) = _CustomerDetails;

  const CustomerDetails._();

  factory CustomerDetails.fromJson(Map<String, dynamic> json) =>
      _$CustomerDetailsFromJson(json);
}
