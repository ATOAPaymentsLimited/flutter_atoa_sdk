import 'package:atoa_sdk/src/controllers/controllers.dart';
import 'package:atoa_sdk/src/shared_widgets/success_tick.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PaymentStatusView extends StatefulWidget {
  const PaymentStatusView({super.key});

  @override
  State<PaymentStatusView> createState() => _PaymentStatusViewState();
}

class _PaymentStatusViewState extends State<PaymentStatusView> {
  bool? _isSuccess;

  @override
  Widget build(BuildContext context) => Consumer<PaymentStatusState>(
        builder: (_, state, __) {
          if (!state.started) {
            return const SizedBox.shrink();
          }

          if (state.isCompleted) {
            _isSuccess = true;

            final width = MediaQuery.of(context).size.width;
            return Container(
              height: width / 2,
              width: width / 2,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SuccessTick(),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context, _isSuccess);
                        },
                        child: const Text('Go Back'),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }

          if (state.isFailed) {
            _isSuccess = false;
          }

          if (_isSuccess == null) {
            return const DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              ),
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
