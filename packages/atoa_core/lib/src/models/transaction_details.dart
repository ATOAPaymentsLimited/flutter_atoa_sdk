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
    /// Unique identifier for the payment request.
    required String paymentIdempotencyId,

    /// Unique identifier for the application user initiating the transaction.
    required String applicationUserId,

    /// The amount paid for the transaction.
    @JsonKey(fromJson: _parseAmount) required double paidAmount,

    /// The currency in which the transaction was made.
    required String currency,

    /// Current status of the transaction.
    required String status,

    /// The date and time when the transaction was created.
    required String createdAt,

    /// Optional: Unique identifier for the payment, if available.
    String? paymentId,

    /// Optional: The date and time when the transaction was last updated.
    String? updatedAt,

    /// Optional: The name of the bank used for the transaction.
    String? bankName,

    /// Optional: The bank account number used for the transaction.
    String? bankAccountNo,

    /// Optional: Additional notes related to the transaction.
    String? notes,

    /// Optional: The tax amount associated with the transaction.
    @Default(0.0) @JsonKey(fromJson: _parseAmount) double? taxAmount,

    /// Optional: The service charge amount associated with the transaction.
    @Default(0.0) @JsonKey(fromJson: _parseAmount) double? serviceAmount,

    /// Optional: The tip amount associated with the transaction.
    @Default(0.0) @JsonKey(fromJson: _parseAmount) double? tipAmount,

    /// Optional: The QR code identifier associated with the transaction.
    String? qrId,

    /// Optional: The store identifier where the transaction took place.
    String? storeId,

    /// Optional: Nickname associated with the QR code used for the transaction.
    String? qrNickName,

    /// Optional: Description of any errors occurred during the transaction.
    String? errorDescription,

    /// Default: 3. Type of payment source used for the transaction.
    @Default(3) int paymentSourceType,

    /// Optional: Unique identifier for linking payments across systems.
    String? paymentLinkId,

    /// Optional: Unique identifier for the employee associated with the transaction.
    String? employeeId,

    /// Optional: Description of any pending transaction errors.
    String? pendingTrasactionError,

    /// Optional: Unique identifier for the order associated with the transaction.
    String? orderId,

    //Optional: redirect url
    String? redirectUrl,
  }) = _TransactionDetails;

  TransactionDetails._();

  /// Constructs a `TransactionDetails` instance from a JSON map.
  factory TransactionDetails.fromJson(Map<String, dynamic> json) =>
      _$TransactionDetailsFromJson(json);

  /// Checks if the transaction includes a tip amount.
  bool get hasTip => tipAmount != null && tipAmount! > 0;

  /// Calculates the refund amount for the transaction.
  double get refundAmount => hasTip ? paidAmount - tipAmount! : paidAmount;

  /// Checks if the transaction is currently processing.
  bool get isProcessing =>
      status == 'PENDING' && pendingTrasactionError != null;

  /// Checks if the transaction has been refunded.
  bool get isRefunded => status == 'REFUNDED';

  /// Checks if the transaction has failed.
  bool get isFailed => status == 'FAILED';

  /// Checks if the transaction is pending.
  bool get isPending => status == 'PENDING';

  /// Checks if the transaction is completed.
  bool get isCompleted => status == 'COMPLETED';
}

/// Parses dynamic amount value into a double.
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
