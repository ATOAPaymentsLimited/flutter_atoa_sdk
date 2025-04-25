import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';

class PaymentUtility {
  static String paymentId = '';

  /// payment status polling interval
  /// default is 1 seconds
  static Duration interval = const Duration(seconds: 1);

  static void Function({
    required String paymentRequestId,
    Map<String, String>? redirectUrlParams,
    String? signature,
    String? signatureHash,
  })? onUserClose;

  static void Function({
    required String status,
    Map<String, String>? redirectUrlParams,
    String? signature,
    String? signatureHash,
  })? onPaymentStatusChange;

  static void Function(AtoaException)? onError;

  static CustomerDetails? customerDetails;
}
