import 'package:atoa_core/atoa_core.dart';
import 'package:flutter/foundation.dart';

// part 'payment_request_state.dart';
// part 'payment_request_controller.freezed.dart';

class PaymentRequestController extends ChangeNotifier {
  PaymentRequestController({
    required Atoa atoa,
  }) : _atoa = atoa;

  final Atoa _atoa;

  bool isPaymentRequestLoading = false;
  Exception? error;

  Future<String> getPaymentRequestId({required double amount}) async {
    isPaymentRequestLoading = true;
    try {
      final res = await callServer<String?>(
        () => _atoa.getPaymentRequestId(amount: amount),
      );
      isPaymentRequestLoading = false;
      return res ?? '';
    } on AtoaException catch (e) {
      error = e;
      isPaymentRequestLoading = false;
    } on Exception catch (e) {
      error = e;
      isPaymentRequestLoading = false;
    } finally {
      isPaymentRequestLoading = false;
    }
    return '';
  }
}
