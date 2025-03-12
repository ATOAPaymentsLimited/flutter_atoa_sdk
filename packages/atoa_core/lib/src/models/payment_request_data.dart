// ignore_for_file: invalid_annotation_target

import 'package:atoa_core/src/models/device_info.dart';
import 'package:atoa_core/src/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_request_data.freezed.dart';
part 'payment_request_data.g.dart';

/// {@template payment_request_data}
/// Payment Request Data
/// {@endtemplate}
@freezed
class PaymentRequestData with _$PaymentRequestData {
  /// {@macro payment_request_data}
  const factory PaymentRequestData({
    required String merchantBusinessName,
    required String merchantId,
    required Amount amount,
    required double taxPercentage,
    required double servicePercentage,
    String? employeeId,
    String? customerId,
    String? consumerId,
    String? env,
    String? encryptedNotesDetails,
    String? encryptedQrDetails,
    String? merchantNotes,
    double? splitOutstandingAmount,
    String? callbackParams,
    @JsonKey(includeFromJson: false, includeToJson: false)
    PaymentRequestWithSource? paymentRequestSource,
    String? notes,
    String? storeImg,
    String? contextType,
    @JsonKey(includeIfNull: false) FraudDetails? fraudDetails,
    @JsonKey(includeIfNull: false) StoreDetails? storeDetails,
    @JsonKey(includeIfNull: false) MerchantPayeeAddress? address,
    @JsonKey(includeIfNull: false) String? paymentType,
    @parseToNumNull num? expiresIn,
    String? requestCreatedAt,
    bool? strictExpiry,
    bool? allowSdkRetry,
    @Default(false) bool splitBill,
    @JsonKey(includeIfNull: false) Map<String, dynamic>? options,
    @JsonKey(includeIfNull: false) MerchantThemeDetails? merchantThemeDetails,
  }) = _PaymentRequestData;

  const PaymentRequestData._();

  /// {@macro payment_request_data}
  factory PaymentRequestData.fromJson(Map<String, dynamic> json) =>
      _$PaymentRequestDataFromJson(json);
}

extension PaymentRequestDataX on PaymentRequestData {
  PaymentAuthRequestBody toBody({
    required String institutionId,
    required String paymentRequestId,
    required List<String> features,
    required String requestCreatedAt,
  }) =>
      PaymentAuthRequestBody(
        storeDetails: storeDetails,
        merchantId: merchantId,
        uniqueUserId: consumerId ?? '',
        merchantName: merchantBusinessName,
        amount: amount,
        applicationUserId: consumerId ?? '',
        institutionId: institutionId,
        taxPercentage: taxPercentage,
        servicePercentage: servicePercentage,
        features: features,
        deviceOrigin: 'MOBILE',
        totalAmountDue: amount.amount,
        employeeId: employeeId,
        callbackParams: callbackParams,
        contextType: contextType,
        merchantPaymentOptions: options,
        encryptedNotesDetails: encryptedNotesDetails,
        paymentSourceType: 3,
        paymentDevice: DeviceInfo(
          platform: 'MOBILE',
        ),
        paymentRequestSource: PaymentRequestWithSource(
          requestCreatedAt: requestCreatedAt,
          splitBill: splitBill,
          allowSdkRetry: allowSdkRetry?.toString(),
          strictExpiry: strictExpiry?.toString(),
          expiresIn: expiresIn?.toString(),
          paymentRequestId: paymentRequestId,
        ),
      );
}
