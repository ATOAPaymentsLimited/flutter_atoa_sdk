import 'dart:async';

import 'package:atoa_core/atoa_core.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_status_state.dart';
part 'payment_status_controller.freezed.dart';

class PaymentStatusController extends StateNotifier<PaymentStatusState> {
  PaymentStatusController({
    required Atoa atoa,
    Duration period = const Duration(seconds: 1),
  })  : _period = period,
        _atoa = atoa,
        super(const PaymentStatusState());

  final Duration _period;
  final Atoa _atoa;

  void startListening(String paymentIdempotencyId) {
    _subscription?.cancel();
    _subscription = null;

    state = state.copyWith(started: true);

    _subscription = Stream.periodic(
      _period,
      (_) => callServer<TransactionDetails>(
        () => _atoa.getPaymentStatus(paymentIdempotencyId),
      ),
    ).listen(
      (future) async {
        try {
          final details = await future;
          state = state.copyWith(
            details: details,
            exception: null,
          );
        } on AtoaException catch (e) {
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

  StreamSubscription<dynamic>? _subscription;

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
