// ignore_for_file: invalid_annotation_target

import 'package:atoa_core/src/models/amount/amount.dart';
import 'package:atoa_core/src/models/decorators/decorators.dart';
import 'package:atoa_core/src/models/fraud/fraud_details.dart';
import 'package:atoa_core/src/models/merchant_payee_address/merchant_payee_address.dart';
import 'package:atoa_core/src/models/payment_request_with_source/payment_request_with_source.dart';
import 'package:atoa_core/src/models/store_details/store_details.dart';
import 'package:atoa_core/src/models/tips/tips_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_request_data.freezed.dart';
part 'payment_request_data.g.dart';

@freezed
class PaymentRequestData with _$PaymentRequestData {
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
    TipsInfo? tipInfo,
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
    @JsonKey(
      includeIfNull: false,
      includeToJson: false,
    )
    @JsonKey(includeIfNull: false)
    double? totalAmountDue,
    @JsonKey(includeIfNull: false) Map<String, dynamic>? options,
  }) = _PaymentRequestData;

  const PaymentRequestData._();

  factory PaymentRequestData.fromJson(Map<String, dynamic> json) =>
      _$PaymentRequestDataFromJson(json);
}
