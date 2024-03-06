import 'package:atoa_core/atoa_core.dart';

class PaymentRequestController {
  PaymentRequestController({
    required Atoa atoa,
  }) : _atoa = atoa;

  final Atoa _atoa;

  Exception? error;

  Future<String> getPaymentRequestId({required double amount}) async {
    try {
      final res = await callServer<String?>(
        () => _atoa.getPaymentRequestId(amount: amount),
      );
      return res ?? '';
    } catch (e) {
      // fail silently
    }
    return '';
  }
}
