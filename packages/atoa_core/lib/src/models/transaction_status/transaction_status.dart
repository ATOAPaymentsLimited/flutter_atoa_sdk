import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_status.freezed.dart';

@freezed
class TransactionStatus with _$TransactionStatus {
  const factory TransactionStatus.completed({
    @Default('COMPLETED') String? status,
  }) = TransactionStatusCompleted;

  const factory TransactionStatus.pending({
    @Default('PENDING') String? status,
  }) = TransactionStatusPending;

  const factory TransactionStatus.failed({
    @Default('FAILED') String? status,
  }) = TransactionStatusFailed;

  const factory TransactionStatus.refunded({
    @Default('REFUNDED') String? status,
  }) = TransactionStatusRefunded;

  const factory TransactionStatus.awaitingAuthorization({
    @Default('AWAITING_AUTHORIZATION') String? status,
  }) = TransactionStatusAwaitingAuthorization;

  const factory TransactionStatus.cancelled({
    @Default('CANCELLED') String? status,
  }) = TransactionStatusCancelled;

  const factory TransactionStatus.expired({
    @Default('EXPIRED') String? status,
  }) = TransactionStatusExpired;

  const factory TransactionStatus.paymentNotInitiated({
    @Default('PAYMENT_NOT_INITIATED') String? status,
  }) = TransactionStatusPaymentNotInitiated;

  const factory TransactionStatus.unknown({
    String? status,
  }) = TransactionStatusUnknown;

  factory TransactionStatus.fromJson(dynamic value) {
    if (value is String) {
      if (value.toLowerCase() == 'completed') {
        return const TransactionStatus.completed();
      }
      if (value.toLowerCase() == 'pending') {
        return const TransactionStatus.pending();
      }
      if (value.toLowerCase() == 'failed') {
        return const TransactionStatus.failed();
      }
      if (value.toLowerCase() == 'refunded') {
        return const TransactionStatus.refunded();
      }
      if (value.toLowerCase() == 'awaiting_authorization') {
        return const TransactionStatus.awaitingAuthorization();
      }
      if (value.toLowerCase() == 'cancelled') {
        return const TransactionStatus.cancelled();
      }
      if (value.toLowerCase() == 'expired') {
        return const TransactionStatus.expired();
      }
      if (value.toLowerCase() == 'payment_not_initiated') {
        return const TransactionStatus.paymentNotInitiated();
      }
      return TransactionStatus.unknown(
        status: value,
      );
    }

    return TransactionStatus.unknown(
      status: value.toString(),
    );
  }
}
