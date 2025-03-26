// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_bank_details.freezed.dart';
part 'saved_bank_details.g.dart';

@freezed
class SavedBankDetails with _$SavedBankDetails {
  const factory SavedBankDetails({
    String? institutionId,
  }) = _SavedBankDetails;

  const SavedBankDetails._();

  factory SavedBankDetails.fromJson(Map<String, dynamic> json) =>
      _$SavedBankDetailsFromJson(json);
}
