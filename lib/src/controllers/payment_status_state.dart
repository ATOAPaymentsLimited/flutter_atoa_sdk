part of 'payment_status_controller.dart';

@freezed
class PaymentStatusState with _$PaymentStatusState {
  const factory PaymentStatusState({
    TransactionDetails? details,
    Exception? exception,
  }) = _PaymentStatusState;

  const PaymentStatusState._();
}
