import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_auth_response.freezed.dart';
part 'payment_auth_response.g.dart';

/// {@template payment_auth_response}
/// Payment Auth Response
/// {@endtemplate}
@freezed
class PaymentAuthResponse with _$PaymentAuthResponse {
  /// {@macro payment_auth_response}
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
    String? playStoreLink,
    String? androidPackageName,
    String? iOSPackageName,
  }) = _PaymentAuthResponse;

  const PaymentAuthResponse._();

  /// {@macro payment_auth_response}
  factory PaymentAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentAuthResponseFromJson(json);
}
