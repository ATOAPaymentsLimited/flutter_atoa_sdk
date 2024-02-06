part of 'payment_status_controller.dart';

@freezed
class PaymentStatusState with _$PaymentStatusState {
  const factory PaymentStatusState({
    @Default(false) bool started,
    TransactionDetails? details,
    Exception? exception,
  }) = _PaymentStatusState;

  const PaymentStatusState._();

  bool get isCompleted => details?.status == 'COMPLETED';
  bool get isFailed => details?.status == 'FAILED';
}
