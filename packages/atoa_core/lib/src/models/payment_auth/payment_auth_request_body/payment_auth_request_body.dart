// ignore_for_file: invalid_annotation_target

import 'package:atoa_core/atoa_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_auth_request_body.freezed.dart';
part 'payment_auth_request_body.g.dart';

@freezed
class PaymentAuthRequestBody with _$PaymentAuthRequestBody {
  factory PaymentAuthRequestBody({
    // merchantId is RecieverId
    required String merchantId,
    // consumerId is Senderid
    @JsonKey(name: 'consumerId') required String uniqueUserId,
    required String merchantName,
    required Amount amount,
    required String applicationUserId,
    required String institutionId,
    required double taxPercentage,
    required double servicePercentage,
    required List<String>? features,
    required String deviceOrigin,
    required num totalAmountDue,
    @JsonKey(name: 'consumerName') @Default('') String userName,
    @Default(PaymentAuthPaymentRequest(paymentType: 'TRANSACTION'))
    PaymentAuthPaymentRequest paymentRequest,
    String? employeeId,
    String? encryptedNotesDetails,
    String? callbackParams,
    @JsonKey(includeIfNull: false) String? paymentLinkId,
    @Default(
      PaymentRequestWithSource(
        paymentRequestSourcetype: PaymentRequestSourceEnum.EXTERNAL_MERCHANT,
      ),
    )
    PaymentRequestWithSource? paymentRequestSource,
    int? paymentSourceType,
    double? tipAmount,
    @JsonKey(includeIfNull: false) String? notes,
    String? contextType,
    String? orderId,
    @JsonKey(includeIfNull: false) Map<String, dynamic>? merchantPaymentOptions,
  }) = _PaymentAuthRequestBody;
  const PaymentAuthRequestBody._();

  factory PaymentAuthRequestBody.fromJson(Map<String, dynamic> json) =>
      _$PaymentAuthRequestBodyFromJson(json);
}

enum PaymentDeviceOriginEnum {
  CONSUMER_APP_ANDROID,
  CONSUMER_APP_IOS,
}