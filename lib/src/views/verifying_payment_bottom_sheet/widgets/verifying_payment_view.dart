import 'package:atoa_sdk/atoa_sdk.dart';
import 'package:atoa_sdk/gen/assets.gen.dart';
import 'package:atoa_sdk/l10n/l10n.dart';
import 'package:atoa_sdk/src/controllers/controllers.dart';
import 'package:atoa_sdk/src/shared_widgets/bottom_sheet_actions.dart';
import 'package:atoa_sdk/src/theme/theme.dart';
import 'package:atoa_sdk/src/utility/payment_utility.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class VerifyingPaymentView extends StatelessWidget {
  const VerifyingPaymentView({
    super.key,
    this.bankIcon,
    this.transactionDetails,
  });

  final String? bankIcon;
  final TransactionDetails? transactionDetails;

  @override
  Widget build(BuildContext context) => PopScope(
        onPopInvokedWithResult: (_, __) {
          PaymentUtility.onUserClose?.call(
            paymentRequestId: PaymentUtility.paymentId,
            redirectUrlParams: transactionDetails?.redirectUrlParams,
            signature: transactionDetails?.signature,
            signatureHash: transactionDetails?.signatureHash,
          );
          context.read<PaymentStatusController>().stop();
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Opacity(
                  opacity: 0,
                  child: EmptyIconPlaceholder(),
                ),
                Spacing.large.xBox,
                Expanded(
                  child: CustomText.semantics(
                    context.l10n.paymentInProgress,
                    textAlign: TextAlign.center,
                    style: sdkFigTreeTextTheme.labelMedium?.w700.height130,
                  ),
                ),
                Spacing.large.xBox,
                BottomSheetAction(
                  semanticsLabel: 'Close Dialog Sheet Icon',
                  trackLabel: 'Close Dialog Sheet Icon',
                  onTap: () {
                    Navigator.pop(
                      context,
                      context.read<PaymentStatusState>().details,
                    );
                  },
                  child: Icon(
                    Icons.close,
                    size: Spacing.large.value,
                    color: IntactColors.light().black,
                  ),
                ),
              ],
            ),
            Spacing.huge.yBox * 4,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.images.redBackAtoaLogo.image(
                  width: Spacing.xtraLarge.value * 2,
                  height: Spacing.xtraLarge.value * 2,
                ),
                Spacing.medium.xBox,
                Assets.gifs.dotLoading.lottie(
                  width: Spacing.xtraLarge.value * 2 + Spacing.tiny.value,
                ),
                Spacing.medium.xBox,
                Container(
                  padding: Spacing.small.all,
                  width: Spacing.xtraLarge.value * 2,
                  height: Spacing.xtraLarge.value * 2,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: NeutralColors.light().grey.shade100,
                      width: 1.25,
                    ),
                    borderRadius: Spacing.small.brAll,
                  ),
                  child: bankIcon != null
                      ? CachedNetworkImage(
                          imageUrl: bankIcon ?? '',
                          width:
                              Spacing.xtraLarge.value * 2 + Spacing.mini.value,
                          height:
                              Spacing.xtraLarge.value * 2 + Spacing.mini.value,
                        )
                      : Icon(
                          Icons.account_balance_outlined,
                          size:
                              Spacing.xtraLarge.value * 2 + Spacing.mini.value,
                          color: IntactColors.light().black,
                        ),
                ),
              ],
            ),
            Spacing.large.yBox * 2,
            CustomText.semantics(
              context.l10n.verifyingYourPayment,
              style: sdkFigTreeTextTheme.titleSmall?.w700,
              textAlign: TextAlign.center,
            ),
            Spacing.large.yBox,
            RichText(
              textAlign: TextAlign.center,
              text: CustomTextSpan.semantics(
                text: context.l10n.noteWithColon,
                style: sdkFigTreeTextTheme.bodyMedium?.w700.textColor(
                  NeutralColors.light().grey.shade500,
                ),
                children: [
                  CustomTextSpan.semantics(
                    text: context.l10n.doNotCloseWarning,
                    style: sdkFigTreeTextTheme.bodyMedium?.w500.textColor(
                      NeutralColors.light().grey.shade500,
                    ),
                  ),
                ],
              ),
            ),
            Spacing.huge.yBox * 4,
            Spacing.xtraLarge.yBox,
          ],
        ),
      );
}
