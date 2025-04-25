import 'dart:async';

import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_sdk/src/utility/payment_utility.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'payment_status_controller.freezed.dart';
part 'payment_status_state.dart';

@injectable
class PaymentStatusController extends StateNotifier<PaymentStatusState> {
  PaymentStatusController({
    required Atoa atoa,
  })  : _atoa = atoa,
        super(const PaymentStatusState());

  final Atoa _atoa;

  void startListening(String paymentId) {
    _subscription?.cancel();
    _subscription = null;

    state = state.copyWith(started: true);

    _subscription = Stream.periodic(
      PaymentUtility.interval,
      (_) => callServer<TransactionDetails>(
        () => _atoa.getPaymentStatus(paymentId),
      ),
    ).listen(
      (future) async {
        try {
          final details = await future;
          state = state.copyWith(
            details: details,
            exception: null,
          );
          PaymentUtility.onPaymentStatusChange?.call(
            status: details.status.status ?? '',
            redirectUrlParams: details.redirectUrlParams,
            signature: details.signature,
            signatureHash: details.signatureHash,
          );
        } on AtoaException catch (e) {
          PaymentUtility.onError?.call(e);
          state = state.copyWith(
            details: null,
            exception: e,
          );
        } on Exception catch (e) {
          state = state.copyWith(
            details: null,
            exception: e,
          );
        }
      },
    );
  }

  void stop() {
    _subscription?.cancel();
  }

  void pause() {
    if (!(_subscription?.isPaused ?? false)) {
      _subscription?.pause();
    }
  }

  void resume() {
    if (_subscription?.isPaused ?? false) {
      _subscription?.resume();
    }
  }

  StreamSubscription<dynamic>? _subscription;

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
