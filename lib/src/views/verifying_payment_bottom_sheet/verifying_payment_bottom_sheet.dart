import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/sdk_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/error_widget.dart';
import 'package:atoa_flutter_sdk/src/views/verifying_payment_bottom_sheet/widgets/payment_status_view.dart';
import 'package:atoa_flutter_sdk/src/views/verifying_payment_bottom_sheet/widgets/verifying_payment_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class VerifyingPaymentBottomSheet extends StatelessWidget {
  const VerifyingPaymentBottomSheet({
    required this.bankInstitutionController,
    required this.paymentStatusController,
    required this.bankState,
    required this.paymentState,
    super.key,
  });

  final BankInstitutionsController bankInstitutionController;
  final PaymentStatusController paymentStatusController;
  final BankInstitutionsState bankState;
  final PaymentStatusState paymentState;

  static Future<bool?> show(
    BuildContext context,
    BankInstitutionsController bankInstitutionController,
    BankInstitutionsState state,
    PaymentStatusController paymentStatusController,
    PaymentStatusState paymentState,
  ) {
    _startPollingAfter20Sec(
      context,
      state.paymentAuth!.paymentIdempotencyId,
      paymentStatusController,
    );
    print('333 ${paymentState.details}');
    return showSdkBottomSheet<bool?>(
      context: context,
      onClose: (context) {
        paymentStatusController.stop();
        Navigator.pop(context, true);
      },
      showCloseButton: paymentState.details != null &&
          paymentState.details!.status !=
              const TransactionStatus.awaitingAuthorization(),
      title: (paymentState.details != null &&
              paymentState.details!.status !=
                  const TransactionStatus.awaitingAuthorization())
          ? context.l10n.paymentDetails
          : context.l10n.paymentInProgress,
      body: (_) => VerifyingPaymentBottomSheet(
        bankInstitutionController: bankInstitutionController,
        paymentStatusController: paymentStatusController,
        bankState: state,
        paymentState: paymentState,
      ),
    );
  }

  static void _startPollingAfter20Sec(
    BuildContext context,
    String paymentId,
    PaymentStatusController paymentStatusController,
  ) {
    if (context.mounted) {
      paymentStatusController.startListening(
        paymentId,
      );
    }
  }

  @override
  Widget build(BuildContext context) =>
      StateNotifierProvider<PaymentStatusController, PaymentStatusState>.value(
        value: paymentStatusController,
        builder: (context, _) => Consumer<PaymentStatusState>(
          builder: (_, paymentState, __) => Builder(
            builder: (context) {
              if (paymentState.exception != null) {
                return const AtoaErrorWidget();
              }
              if (paymentState.details?.status != null &&
                  paymentState.details!.status !=
                      const TransactionStatus.awaitingAuthorization()) {
                return PaymentStatusView(
                  bankState: bankState,
                  isCompleted: paymentState.details!.isCompleted,
                );
              }
              return VerifyingPaymentView(
                bankInstitutionController: bankInstitutionController,
                bankState: bankState,
              );
            },
          ),
        ),
      );
}
