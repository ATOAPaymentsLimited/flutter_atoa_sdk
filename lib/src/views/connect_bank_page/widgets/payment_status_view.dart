import 'package:atoa_sdk/src/controllers/controllers.dart';
import 'package:atoa_sdk/src/views/connect_bank_page/widgets/payment_status_widget.dart';
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
            return PaymentStatusWidget(
              isSuccess: _isSuccess,
              paymentDetails: state.details,
            );
          }

          if (state.isFailed) {
            _isSuccess = false;
            return PaymentStatusWidget(
              isSuccess: _isSuccess,
              paymentDetails: state.details,
            );
          }

          if (state.isPending) {
            return PaymentStatusWidget(
              isSuccess: _isSuccess,
              paymentDetails: state.details,
              isPending: true,
            );
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
