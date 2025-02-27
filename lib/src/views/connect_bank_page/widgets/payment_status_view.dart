import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/views/transactions_details_page/transactions_details_page.dart';
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
  Widget build(BuildContext context) => Builder(
        builder: (context) => Consumer<PaymentStatusState>(
          builder: (_, state, __) {
            if (!state.started) {
              return const SizedBox.shrink();
            }

            if (state.isCompleted) {
              _isSuccess = true;
              return TransactionDetailsPage(
                transactionDetails: state.details!,
              );
            }

            if (state.isFailed) {
              _isSuccess = false;
              return TransactionDetailsPage(
                transactionDetails: state.details!,
              );
            }

            if (state.isPending) {
              return TransactionDetailsPage(
                transactionDetails: state.details!,
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
        ),
      );
}
