import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/di/injection.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/failure_listener.dart';
import 'package:atoa_flutter_sdk/src/views/connect_bank_page/widgets/payment_status_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class VerifyingPaymentBottomSheet extends StatelessWidget {
  const VerifyingPaymentBottomSheet({
    required this.bankInstitutionController,
    required this.state,
    super.key,
  });

  final BankInstitutionsController bankInstitutionController;
  final BankInstitutionsState state;

  static Future<void> show(
    BuildContext context,
    BankInstitutionsController bankInstitutionController,
    BankInstitutionsState state,
  ) =>
      showLedgerBottomSheet<void>(
        context: context,
        backgroundColor: context.intactColors.white,
        titleAlign: TextAlign.center,
        showTopDivider: false,
        titleStyle: context.figtree.labelMedium.w700.textColor(
          NeutralColors.light().grey.shade700,
        ),
        title: context.l10n.paymentInProgress,
        body: (_) => VerifyingPaymentBottomSheet(
          bankInstitutionController: bankInstitutionController,
          state: state,
        ),
      );

  @override
  Widget build(BuildContext context) =>
      StateNotifierProvider<PaymentStatusController, PaymentStatusState>(
        create: (_) => getIt.get<PaymentStatusController>(
          param1: const Duration(seconds: 1),
        ),
        builder: (context, _) {
          context
              .read<PaymentStatusController>()
              .startListening(state.paymentAuth!.paymentIdempotencyId);
          return FailureListener<PaymentStatusController, PaymentStatusState>(
            message: (state) {
              final e = state.exception;

              if (e is AtoaException) {
                return e.message;
              }

              return e?.toString();
            },
            child: Consumer<PaymentStatusState>(
              builder: (_, state, __) {
                if (!state.started) {
                  return const SizedBox.shrink();
                }
                if (state.details != null) {
                  return const PaymentStatusView();
                }
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomText.semantics(
                      context.l10n.verifyingYourPayment,
                    ),
                    Spacing.medium.yBox,
                    RichText(
                      text: CustomTextSpan.semantics(
                        text: context.l10n.noteWithColon,
                        style: context.figtree.bodyMedium.w500.textColor(
                          NeutralColors.light().grey.shade500,
                        ),
                        children: [
                          CustomTextSpan.semantics(
                            text: context.l10n.doNotCloseWarning,
                            style: context.figtree.bodyMedium.textColor(
                              NeutralColors.light().grey.shade500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacing.large.yBox * 4,
                    RegalButton.tertiary(
                      onPressed: () async {
                        await bankInstitutionController.cancelPayment();
                      },
                      trackLabel: 'Cancel Button',
                      enableTracking: false,
                      label: context.l10n.cancel,
                    ),
                  ],
                );
              },
            ),
          );
        },
      );
}
