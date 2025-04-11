// ignore_for_file: invalid_annotation_target

import 'package:atoa_core/src/models/payer_bank_details/payer_bank_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_request.freezed.dart';
part 'payment_request.g.dart';

@freezed
class PaymentRequest with _$PaymentRequest {
  const factory PaymentRequest({
    PayerBankDetails? payee,
  }) = _PaymentRequest;

  const PaymentRequest._();

  factory PaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentRequestFromJson(json);
}
