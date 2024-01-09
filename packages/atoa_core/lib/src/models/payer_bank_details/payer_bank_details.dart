// ignore_for_file: invalid_annotation_target

import 'package:atoa_core/src/models/bank_account_identifications/bank_account_identifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payer_bank_details.freezed.dart';
part 'payer_bank_details.g.dart';

@freezed
class PayerBankDetails with _$PayerBankDetails {
  const factory PayerBankDetails({
    @JsonKey(includeIfNull: false) String? name,
    List<BankAccountIdentifications>? accountIdentifications,
  }) = _PayerBankDetails;

  const PayerBankDetails._();

  factory PayerBankDetails.fromJson(Map<String, dynamic> json) =>
      _$PayerBankDetailsFromJson(json);
}
