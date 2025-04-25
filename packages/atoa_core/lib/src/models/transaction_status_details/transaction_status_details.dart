// ignore_for_file: invalid_annotation_target

import 'package:atoa_core/src/models/models.dart';
import 'package:atoa_core/src/models/transaction_status_details/iso_status/iso_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_status_details.freezed.dart';
part 'transaction_status_details.g.dart';

@freezed
class TransactionStatusDetails with _$TransactionStatusDetails {
  factory TransactionStatusDetails({
    @JsonKey(
      fromJson: TransactionStatus.fromJson,
      includeToJson: false,
    )
    TransactionStatus? status,
    IsoStatus? isoStatus,
    String? statusUpdateDate,
  }) = _TransactionStatusDetails;

  factory TransactionStatusDetails.fromJson(Map<String, dynamic> json) =>
      _$TransactionStatusDetailsFromJson(json);
}
