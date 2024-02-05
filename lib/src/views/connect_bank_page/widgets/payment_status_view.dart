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
      if (await _successFuture.future && mounted) {
        Navigator.pop(context);
      }
    });
  }

  bool _markedSuccess = false;
  void _markSuccess() {
    if (_successFuture.isCompleted || _markedSuccess) {
      return;
    }

    context.read<PaymentStatusController>().stop();

    _markedSuccess = true;

    Future.delayed(const Duration(seconds: 5), () {
      _successFuture.complete(true);
    });
  }

  @override
  Widget build(BuildContext context) => Consumer<PaymentStatusState>(
        builder: (_, state, __) {
          if (!state.started) {
            return const SizedBox.shrink();
          }

          if (state.isSuccess) {
            _markSuccess();
            return const DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: SuccessTick(),
            );
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
