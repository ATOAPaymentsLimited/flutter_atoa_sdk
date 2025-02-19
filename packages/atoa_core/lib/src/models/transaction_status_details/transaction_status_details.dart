import 'package:atoa_core/src/models/models.dart';
import 'package:atoa_core/src/models/transaction_status_details/iso_status/iso_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_status_details.freezed.dart';
part 'transaction_status_details.g.dart';

@Freezed(toJson: false)
@freezed
class TransactionStatusDetails with _$TransactionStatusDetails {
  factory TransactionStatusDetails({
    TransactionStatus? status,
    IsoStatus? isoStatus,
    String? statusUpdateDate,
  }) = _TransactionStatusDetails;

  factory TransactionStatusDetails.fromJson(Map<String, dynamic> json) =>
      _$TransactionStatusDetailsFromJson(json);
}
