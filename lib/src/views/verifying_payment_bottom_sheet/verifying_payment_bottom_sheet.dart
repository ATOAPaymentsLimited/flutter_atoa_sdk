import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/dotted_line_painter.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/sdk_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/cancel_confirmation_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/connect_bank_page/widgets/error_widget.dart';
import 'package:atoa_flutter_sdk/src/views/connect_bank_page/widgets/payment_status_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
    return showSdkBottomSheet<bool?>(
      context: context,
      onClose: (context) {
        paymentStatusController.stop();
        Navigator.pop(context, true);
      },
      showCloseButton: paymentState.details == null ||
          paymentState.details!.status !=
              const TransactionStatus.awaitingAuthorization(),
      title: (paymentState.details == null ||
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
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Spacing.huge.yBox * 4,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.images.redBackAtoaLogo.image(
                        width: Spacing.huge.value * 2,
                        height: Spacing.huge.value * 2,
                      ),
                      Spacing.medium.xBox,
                      Assets.gifs.dotLoading.lottie(
                        width: Spacing.xtraLarge.value * 2 + Spacing.tiny.value,
                      ),
                      Spacing.medium.xBox,
                      CachedNetworkImage(
                        imageUrl: bankState.selectedBank?.bankIcon ?? '',
                        width: Spacing.xtraLarge.value * 2 + Spacing.mini.value,
                        height:
                            Spacing.xtraLarge.value * 2 + Spacing.mini.value,
                      ),
                    ],
                  ),
                  Spacing.large.yBox * 2,
                  CustomText.semantics(
                    context.l10n.verifyingYourPayment,
                    style: context.figtree.titleSmall.w700
                        .textColor(context.intactColors.black),
                    textAlign: TextAlign.center,
                  ),
                  Spacing.large.yBox,
                  RichText(
                    textAlign: TextAlign.center,
                    text: CustomTextSpan.semantics(
                      text: context.l10n.noteWithColon,
                      style: context.figtree.bodyMedium.w700.textColor(
                        NeutralColors.light().grey.shade500,
                      ),
                      children: [
                        CustomTextSpan.semantics(
                          text: context.l10n.doNotCloseWarning,
                          style: context.figtree.bodyMedium.w500.textColor(
                            NeutralColors.light().grey.shade500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacing.huge.yBox * 4,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText.semantics(
                        context.l10n.couldNotCompletePayment,
                        style: context.figtree.bodyLarge.w600.textColor(
                          NeutralColors.light().grey.shade600,
                        ),
                      ),
                      Spacing.tiny.xBox,
                      CustomInkWell(
                        semanticsLabel: context.l10n.cancel,
                        context: context,
                        trackLabel: 'Cancel',
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomText.semantics(
                              context.l10n.change,
                              style: context.figtree.bodyLarge.w700.textColor(
                                BrandColors.light().primary.shade500,
                              ),
                            ),
                            CustomPaint(
                              size: Size(
                                Spacing.huge.value * 2 +
                                    Spacing.mini.value +
                                    Spacing.tiny.value,
                                1,
                              ),
                              painter: DottedLinePainter(
                                color: BrandColors.light().primary.shade500,
                              ),
                            ),
                          ],
                        ),
                        onTap: () async {
                          final res = await CancelConfirmationBottomSheet.show(
                            context,
                          );

                          if (res != null && res) {
                            if (!context.mounted) {
                              return;
                            }
                            Navigator.pop(context, true);
                            await bankInstitutionController.cancelPayment();
                          }
                        },
                      ),
                    ],
                  ),
                  Spacing.xtraLarge.yBox,
                ],
              );
            },
          ),
        ),
      );
}
