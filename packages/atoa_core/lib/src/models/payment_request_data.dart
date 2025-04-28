// ignore_for_file: invalid_annotation_target

import 'package:atoa_core/src/models/device_info.dart';
import 'package:atoa_core/src/models/models.dart';
import 'package:atoa_core/src/models/qr_details/qr_details.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

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
    @JsonKey(includeIfNull: false) SavedBankDetails? lastPaymentBankDetails,
    String? encryptedPaymentDetails,
    String? encryptedRefundPaymentDetails,
    @JsonKey(includeIfNull: false) QrDetails? qrDetails,
    int? paymentSourceType,
    bool? redirectOnCompleted,
  }) = _PaymentRequestData;

  const PaymentRequestData._();

  /// {@macro payment_request_data}
  factory PaymentRequestData.fromJson(Map<String, dynamic> json) =>
      _$PaymentRequestDataFromJson(json);
}

extension PaymentRequestDataX on PaymentRequestData {
  Future<PaymentAuthRequestBody> toBody({
    required String institutionId,
    required String paymentRequestId,
    required List<String> features,
    required String requestCreatedAt,
  }) async {
    var id = consumerId;
    if (id == null || id.isEmpty) {
      final randomUUID = const Uuid().v4();
      id = randomUUID;
    }

    final deviceInfo = await getDeviceInfo();
    return PaymentAuthRequestBody(
      storeDetails: storeDetails,
      merchantId: merchantId,
      uniqueUserId: id,
      merchantName: merchantBusinessName,
      amount: amount,
      applicationUserId: id,
      institutionId: institutionId,
      taxPercentage: taxPercentage,
      servicePercentage: servicePercentage,
      features: features,
      deviceOrigin: 'SDK_MOBILE_APP',
      totalAmountDue: amount.amount,
      employeeId: employeeId,
      callbackParams: callbackParams,
      contextType: contextType,
      merchantPaymentOptions: options,
      encryptedNotesDetails: encryptedNotesDetails,
      paymentSourceType: 3,
      paymentDevice: deviceInfo,
      paymentRequestSource: PaymentRequestWithSource(
        requestCreatedAt: requestCreatedAt,
        splitBill: splitBill,
        allowSdkRetry: allowSdkRetry?.toString(),
        strictExpiry: strictExpiry?.toString(),
        expiresIn: expiresIn?.toString(),
        paymentRequestId: paymentRequestId,
      ),
      qrCodeDetails: qrDetails,
      fraudDetails: fraudDetails,
      encrptedPaymentDetails: encryptedPaymentDetails,
      encryptedRefundPaymentDetails: encryptedRefundPaymentDetails,
      encryptedQrDetails: encryptedQrDetails,
    );
  }

  Future<DeviceInfo> getDeviceInfo() async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    try {
      String? manufacturer;
      String? model;
      String? osVersion;
      switch (defaultTargetPlatform) {
        case TargetPlatform.android:
          final deviceInfo = await deviceInfoPlugin.androidInfo;

          manufacturer = deviceInfo.manufacturer;
          model = deviceInfo.model;
          osVersion = deviceInfo.version.sdkInt.toString();
        case TargetPlatform.iOS:
          final deviceInfo = await deviceInfoPlugin.iosInfo;
          model = deviceInfo.model;
          osVersion = deviceInfo.systemVersion;
        default:
          break;
      }
      final deviceInfo = await deviceInfoPlugin.webBrowserInfo;

      return DeviceInfo(
        platform: defaultTargetPlatform.name,
        osVersion: osVersion,
        manufacturer: manufacturer,
        model: model,
        deviceMemory: deviceInfo.deviceMemory?.toInt(),
      );
    } catch (e) {
      return DeviceInfo(
        platform: defaultTargetPlatform.name,
      );
    }
  }
}
