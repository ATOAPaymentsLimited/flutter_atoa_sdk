import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/error_widget.dart';
import 'package:atoa_flutter_sdk/src/views/verifying_payment_bottom_sheet/widgets/payment_status_view.dart';
import 'package:atoa_flutter_sdk/src/views/verifying_payment_bottom_sheet/widgets/verifying_payment_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

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

  static Future<TransactionDetails?> show(
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
    return showModalBottomSheet<TransactionDetails?>(
      context: context,
      builder: (context) => StateNotifierProvider<PaymentStatusController,
          PaymentStatusState>.value(
        value: paymentStatusController,
        builder: (context, _) => Consumer<PaymentStatusState>(
          builder: (_, paymentState, __) => DecoratedBox(
            decoration: BoxDecoration(
              color: context.intactColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Spacing.xtraLarge.value),
                topRight: Radius.circular(Spacing.xtraLarge.value),
              ),
            ),
            child: Padding(
              padding: Spacing.large.y + Spacing.xtraLarge.x,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (paymentState.details != null &&
                          paymentState.details!.status !=
                              const TransactionStatus.awaitingAuthorization())
                        Spacing.large.xBox * 2,
                      Expanded(
                        child: CustomText.semantics(
                          (paymentState.details == null ||
                                  paymentState.details!.status !=
                                      const TransactionStatus
                                          .awaitingAuthorization())
                              ? context.l10n.paymentDetails
                              : context.l10n.paymentInProgress,
                          textAlign: TextAlign.center,
                          style: paymentState.details != null &&
                                  paymentState.details!.status !=
                                      const TransactionStatus
                                          .awaitingAuthorization()
                              ? kFigtreeTextTheme.bodyLarge?.w600.height130
                                  .textColor(
                                  NeutralColors.light().grey.shade500,
                                )
                              : kFigtreeTextTheme.labelMedium?.w700.height130
                                  .textColor(context.intactColors.black),
                        ),
                      ),
                      Spacing.large.xBox,
                      if (paymentState.details != null &&
                          paymentState.details!.status !=
                              const TransactionStatus.awaitingAuthorization())
                        Padding(
                          padding: Spacing.mini.top,
                          child: CustomInkWell(
                            semanticsLabel: 'Close Dialog Sheet Icon',
                            context: context,
                            trackLabel: 'Close Dialog Sheet Icon',
                            onTap: () {
                              paymentStatusController.stop();
                              Navigator.pop(context, paymentState.details);
                            },
                            child: Container(
                              width: Spacing.huge.value,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: NeutralColors.light().grey.shade50,
                              ),
                              child: Center(
                                child: Padding(
                                  padding: Spacing.mini.all,
                                  child: Icon(
                                    Icons.close,
                                    size: Spacing.medium.value,
                                    color: context.intactColors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  Builder(
                    builder: (context) => VerifyingPaymentBottomSheet(
                      bankInstitutionController: bankInstitutionController,
                      paymentStatusController: paymentStatusController,
                      bankState: state,
                      paymentState: paymentState,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      isScrollControlled: true,
      enableDrag: false,
      isDismissible: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Spacing.xtraLarge.value),
          topRight: Radius.circular(Spacing.xtraLarge.value),
        ),
      ),
      useSafeArea: true,
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
  Widget build(BuildContext context) => Builder(
        builder: (context) {
          if (paymentState.exception != null) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacing.huge.yBox * 8,
                const AtoaErrorWidget(),
                Spacing.huge.yBox * 8,
              ],
            );
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
      );
}
