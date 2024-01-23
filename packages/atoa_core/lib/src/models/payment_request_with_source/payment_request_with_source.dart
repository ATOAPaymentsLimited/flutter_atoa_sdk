// ignore_for_file: invalid_annotation_target

import 'package:atoa_core/src/models/audit_trail_details/audit_trail_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_request_with_source.freezed.dart';
part 'payment_request_with_source.g.dart';

@freezed
class PaymentRequestWithSource with _$PaymentRequestWithSource {
  const factory PaymentRequestWithSource({
    required String paymentRequestId,
    @Default(3) int paymentRequestSourcetype,
    @JsonKey(includeIfNull: false) String? qrId,
    @JsonKey(includeIfNull: false) String? paymentLinkId,
    @JsonKey(includeIfNull: false) String? paymentRequest,
    @JsonKey(includeIfNull: false) AuditTrailDetails? auditTrailDetails,
    bool? splitBill,
    String? expiresIn,
    String? requestCreatedAt,
    String? strictExpiry,
    String? allowSdkRetry,
  }) = _PaymentRequestWithSource;

  factory PaymentRequestWithSource.fromJson(Map<String, dynamic> json) =>
      _$PaymentRequestWithSourceFromJson(json);

  const PaymentRequestWithSource._();

  static List<String> get sources => [
        'qrId',
        'paymentRequestId',
        'paymentLinkId',
        'paymentRequest',
      ];
}
