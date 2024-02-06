// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_details.freezed.dart';
part 'transaction_details.g.dart';

/// {@template transaction_details}
/// Transaction Details
/// {@endtemplate}
@freezed
class TransactionDetails with _$TransactionDetails {
  /// {@macro transaction_details}
  factory TransactionDetails({
    required String paymentIdempotencyId,
    required String applicationUserId,
    @JsonKey(fromJson: _parseAmount) required double paidAmount,
    required String currency,
    required String status,
    required String createdAt,
    String? paymentId,
    String? updatedAt,
    String? bankName,
    String? bankAccountNo,
    String? notes,
    @Default(0.0) @JsonKey(fromJson: _parseAmount) double? taxAmount,
    @Default(0.0) @JsonKey(fromJson: _parseAmount) double? serviceAmount,
    @Default(0.0) @JsonKey(fromJson: _parseAmount) double? tipAmount,
    String? qrId,
    String? storeId,
    String? qrNickName,
    String? errorDescription,
    @Default(3) int paymentSourceType,
    String? paymentLinkId,
    String? employeeId,
    String? pendingTrasactionError,
    String? orderId,
  }) = _TransactionDetails;
  TransactionDetails._();

  /// {@macro transaction_details}
  factory TransactionDetails.fromJson(Map<String, dynamic> json) =>
      _$TransactionDetailsFromJson(json);

  bool get isRefunded => status == 'REFUNDED';

  bool get hasTip => tipAmount != null && tipAmount! > 0;

  double get refundAmount => hasTip ? paidAmount - tipAmount! : paidAmount;
  bool get isProcessing =>
      status == 'PENDING' && pendingTrasactionError != null;
  bool get isFailed => status == 'FAILED';
}

double _parseAmount(dynamic amount) {
  if (amount == null) {
    return 0;
  }
  if (amount is String) {
    try {
      return double.parse(amount);
    } catch (e) {
      return 0;
    }
  }
  if (amount is double) {
    return amount;
  }
  if (amount is int) {
    return amount.toDouble();
  }
  return 0;
}
