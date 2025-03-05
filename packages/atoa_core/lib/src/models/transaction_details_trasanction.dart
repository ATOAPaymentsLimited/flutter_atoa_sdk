// ignore_for_file: invalid_annotation_target

import 'package:atoa_core/src/models/models.dart';
import 'package:atoa_core/src/models/transaction_status_details/transaction_status_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_details_trasanction.freezed.dart';
part 'transaction_details_trasanction.g.dart';

/// {@template transaction_details}
/// Transaction Details
/// {@endtemplate}

@freezed
class TransactionDetailsTransaction with _$TransactionDetailsTransaction {
  /// {@macro transaction_details}
  factory TransactionDetailsTransaction({
    /// The amount paid for the transaction.
    @JsonKey(fromJson: _parseAmount) double? paidAmount,

    /// The currency in which the transaction was made.
    String? currency,

    /// Current status of the transaction.
    @JsonKey(
      fromJson: TransactionStatus.fromJson,
      includeToJson: false,
    )
    TransactionStatus? status,

    /// The date and time when the transaction was created.
    String? createdAt,

    /// Unique identifier for the payment request.
    String? paymentIdempotencyId,

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
    TransactionStatusDetails? statusDetails,
    String? merchantId,
    PayerBankDetails? payer,
    String? merchantName,
    String? avatar,
    StoreDetails? storeDetails,
    String? institutionId,
  }) = _TransactionDetailsTransaction;

  TransactionDetailsTransaction._();

  /// Constructs a `TransactionDetailsTransaction` instance from a JSON map.
  factory TransactionDetailsTransaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionDetailsTransactionFromJson(json);
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
