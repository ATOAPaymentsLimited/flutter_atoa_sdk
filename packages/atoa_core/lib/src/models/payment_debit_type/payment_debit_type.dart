import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_debit_type.freezed.dart';
part 'payment_debit_type.g.dart';

@freezed
class PaymentDebitType with _$PaymentDebitType {
  const PaymentDebitType._();

  factory PaymentDebitType.sent({
    @Default(true) bool? debit,
  }) = PaymentDebitTypeSent;

  factory PaymentDebitType.recieved({
    @Default(false) bool? debit,
  }) = PaymentDebitTypeReceived;

  factory PaymentDebitType.fromJson(Map<String, dynamic> json) =>
      _$PaymentDebitTypeFromJson(json);
}
