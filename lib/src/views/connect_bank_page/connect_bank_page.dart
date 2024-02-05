import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_sdk/atoa_sdk.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class ConnectBankPage extends StatefulWidget {
  const ConnectBankPage({super.key, this.onSkip});

  final ValueChanged<BuildContext>? onSkip;

  @override
  State<ConnectBankPage> createState() => _ConnectBankPageState();
}

class _ConnectBankPageState extends State<ConnectBankPage>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<BankInstitutionsController>()
        ..selectBank(null)
        ..fetchBanks();
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => PopScope(
        canPop: !context.read<BankInstitutionsState>().isLoading,
        child:
            FailureListener<BankInstitutionsController, BankInstitutionsState>(
          message: (state) {
            final e = state.error;

            if (e is AtoaException) {
              return e.message;
            }

            return e?.toString();
          },
          child: Scaffold(
            backgroundColor: context.regalColor.snowWhite,
            body: Column(
              children: [
                Selector<BankInstitutionsState, PaymentRequestData?>(
                  selector: (_, state) => state.paymentDetails,
                  builder: (context, paymentDetails, child) =>
                      PaymentPageAppBar(paymentRequestData: paymentDetails),
                ),
                const Expanded(
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      ConnectBankBody(),
                      PaymentStatusView(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
