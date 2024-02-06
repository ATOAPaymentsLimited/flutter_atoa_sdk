import 'dart:async';

import 'package:atoa_sdk/atoa_sdk.dart';
import 'package:atoa_sdk/src/shared_widgets/success_tick.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PaymentStatusView extends StatefulWidget {
  const PaymentStatusView({super.key});

  @override
  State<PaymentStatusView> createState() => _PaymentStatusViewState();
}

class _PaymentStatusViewState extends State<PaymentStatusView> {
  final _successFuture = Completer<bool>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final res = await _successFuture.future;
      if (res && mounted) {
        Navigator.pop(context, res);
      }
    });
  }

  bool _markedStatus = false;
  void _markStatus(bool status) {
    if (_successFuture.isCompleted || _markedStatus) {
      return;
    }

    context.read<PaymentStatusController>().stop();

    _markedStatus = true;

    Future.delayed(const Duration(seconds: 5), () {
      _successFuture.complete(status);
    });
  }

  @override
  Widget build(BuildContext context) => Consumer<PaymentStatusState>(
        builder: (_, state, __) {
          if (!state.started) {
            return const SizedBox.shrink();
          }

          if (state.isCompleted) {
            _markStatus(true);
            return const DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: SuccessTick(),
            );
          }

          if (state.isFailed) {
            _markStatus(false);
          }

          return const DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Center(
              child: Text('Something Went wront'),
            ),
          );
        },
      );
}
