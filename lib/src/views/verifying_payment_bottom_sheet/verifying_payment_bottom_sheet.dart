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

class VerifyingPaymentBottomSheet extends StatefulWidget {
  const VerifyingPaymentBottomSheet({
    required this.bankInstitutionController,
    super.key,
  });
  final BankInstitutionsController bankInstitutionController;

  static Future<TransactionDetails?> show(
    BuildContext context,
    BankInstitutionsController bankInstitutionController,
    PaymentStatusController paymentStatusController,
  ) =>
      showModalBottomSheet<TransactionDetails?>(
        context: context,
        builder: (contextz) => StateNotifierProvider<BankInstitutionsController,
            BankInstitutionsState>.value(
          value: bankInstitutionController,
          builder: (contextz, child) => StateNotifierProvider<
              PaymentStatusController, PaymentStatusState>.value(
            value: paymentStatusController,
            builder: (contextz, _) => Consumer<PaymentStatusState>(
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
                          if (paymentState.details?.status != null &&
                              paymentState.details!.status !=
                                  const TransactionStatus
                                      .awaitingAuthorization())
                            Spacing.large.xBox * 2,
                          Expanded(
                            child: CustomText.semantics(
                              (paymentState.details?.status != null &&
                                      paymentState.details!.status !=
                                          const TransactionStatus
                                              .awaitingAuthorization())
                                  ? paymentState.details!.status !=
                                          const TransactionStatus.completed()
                                      ? ''
                                      : context.l10n.paymentDetails
                                  : context.l10n.paymentInProgress,
                              textAlign: TextAlign.center,
                              style: paymentState.details?.status != null &&
                                      paymentState.details!.status !=
                                          const TransactionStatus
                                              .awaitingAuthorization()
                                  ? kFigtreeTextTheme.bodyLarge?.w600.height130
                                      .textColor(
                                      NeutralColors.light().grey.shade500,
                                    )
                                  : kFigtreeTextTheme
                                      .labelMedium?.w700.height130,
                            ),
                          ),
                          Spacing.large.xBox,
                          if (paymentState.details?.status != null &&
                              paymentState.details!.status !=
                                  const TransactionStatus
                                      .awaitingAuthorization())
                            Padding(
                              padding: Spacing.mini.top,
                              child: CustomInkWell(
                                semanticsLabel: 'Close Dialog Sheet Icon',
                                context: context,
                                trackLabel: 'Close Dialog Sheet Icon',
                                onTap: () {
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
                        ),
                      ),
                    ],
                  ),
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

  @override
  State<VerifyingPaymentBottomSheet> createState() =>
      _VerifyingPaymentBottomSheetState();
}

class _VerifyingPaymentBottomSheetState
    extends State<VerifyingPaymentBottomSheet> {
  @override
  void initState() {
    super.initState();
    widget.bankInstitutionController.authorizeBank();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startPollingAfter20Sec(context);
    });
  }

  @override
  void dispose() {
    context.read<PaymentStatusController>().stop();
    super.dispose();
  }

  void _startPollingAfter20Sec(BuildContext context) {
    final paymentId = context
            .read<BankInstitutionsState>()
            .paymentAuth
            ?.paymentIdempotencyId ??
        '';
    if (context.mounted) {
      context.read<PaymentStatusController>().startListening(
            paymentId,
          );
    }
  }

  @override
  Widget build(BuildContext context) => Builder(
        builder: (context) {
          final paymentState = context.read<PaymentStatusState>();
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
              isCompleted: paymentState.details!.isCompleted,
            );
          }
          return const VerifyingPaymentView();
        },
      );
}
