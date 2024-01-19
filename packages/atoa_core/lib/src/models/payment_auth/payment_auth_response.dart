import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_auth_response.freezed.dart';
part 'payment_auth_response.g.dart';

@freezed
class PaymentAuthResponse with _$PaymentAuthResponse {
  const factory PaymentAuthResponse({
    required String authorisationUrl,
    required String paymentIdempotencyId,
    String? userUuid,
    String? status,
    List<String>? featureScope,
    String? tracingId,
    String? deepLinkAuthorisationUrl,
    String? deepLinkAndroidAuthorisationUrl,
    String? deepLinkAuthorisationUrlIOS,
    String? appStoreLink,
    String? androidPackageName,
    String? iOSPackageName,
  }) = _PaymentAuthResponse;

  const PaymentAuthResponse._();

  factory PaymentAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentAuthResponseFromJson(json);
}
