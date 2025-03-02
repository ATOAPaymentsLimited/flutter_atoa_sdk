import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/views/verifying_payment_bottom_sheet/widgets/cancel_payment_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class VerifyingPaymentView extends StatelessWidget {
  const VerifyingPaymentView({
    required this.bankInstitutionController,
    required this.bankState,
    super.key,
  });

  final BankInstitutionsController bankInstitutionController;
  final BankInstitutionsState bankState;

  @override
  Widget build(BuildContext context) => Column(
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
                height: Spacing.xtraLarge.value * 2 + Spacing.mini.value,
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
              CancelPaymentWidget(
                bankInstitutionController: bankInstitutionController,
              ),
            ],
          ),
          Spacing.xtraLarge.yBox,
        ],
      );
}
