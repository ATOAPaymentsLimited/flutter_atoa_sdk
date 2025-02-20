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
      return TransactionStatus.unknown(
        status: value,
      );
    }

    return TransactionStatus.unknown(
      status: value.toString(),
    );
  }
}

extension TransactionStatusX on TransactionStatus {
  String get toJson => map(
        completed: (_) => 'COMPLETED',
        pending: (_) => 'PENDING',
        failed: (_) => 'FAILED',
        refunded: (_) => 'REFUNDED',
        awaitingAuthorization: (_) => 'AWAITING_AUTHORIZATION',
        cancelled: (_) => 'CANCELLED',
        expired: (_) => 'EXPIRED',
        unknown: (_) => 'UNKNOWN',
      );
}
