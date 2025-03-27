import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';

class PaymentUtility {
  static String paymentId = '';

  /// payment status polling interval
  /// default is 1 seconds
  static Duration interval = const Duration(seconds: 1);

  static void Function(String)? onUserClose;

  static void Function(String)? onPaymentStatusChange;

  static void Function(AtoaException)? onError;
}
