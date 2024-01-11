import 'package:atoa_core/src/models/payer_bank_details/payer_bank_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_auth_payment_request.freezed.dart';
part 'payment_auth_payment_request.g.dart';

@freezed
class PaymentAuthPaymentRequest with _$PaymentAuthPaymentRequest {
  const factory PaymentAuthPaymentRequest({
    String? paymentType,
  }) = _PaymentAuthPaymentRequest;

  const PaymentAuthPaymentRequest._();

  factory PaymentAuthPaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentAuthPaymentRequestFromJson(json);
}
