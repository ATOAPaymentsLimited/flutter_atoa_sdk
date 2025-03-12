import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class VerifyingPaymentView extends StatelessWidget {
  const VerifyingPaymentView({
    super.key,
    this.bankIcon,
  });

  final String? bankIcon;
  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText.semantics(
            context.l10n.paymentInProgress,
            textAlign: TextAlign.center,
            style: kFigtreeTextTheme.labelMedium?.w700.height130,
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
                        width: Spacing.xtraLarge.value * 2 + Spacing.mini.value,
                        height:
                            Spacing.xtraLarge.value * 2 + Spacing.mini.value,
                      )
                    : Icon(
                        Icons.account_balance_outlined,
                        size: Spacing.xtraLarge.value * 2 + Spacing.mini.value,
                        color: context.intactColors.black,
                      ),
              ),
            ],
          ),
          Spacing.large.yBox * 2,
          CustomText.semantics(
            context.l10n.verifyingYourPayment,
            style: kFigtreeTextTheme.titleSmall?.w700,
            textAlign: TextAlign.center,
          ),
          Spacing.large.yBox,
          RichText(
            textAlign: TextAlign.center,
            text: CustomTextSpan.semantics(
              text: context.l10n.noteWithColon,
              style: kFigtreeTextTheme.bodyMedium?.w700.textColor(
                NeutralColors.light().grey.shade500,
              ),
              children: [
                CustomTextSpan.semantics(
                  text: context.l10n.doNotCloseWarning,
                  style: kFigtreeTextTheme.bodyMedium?.w500.textColor(
                    NeutralColors.light().grey.shade500,
                  ),
                ),
              ],
            ),
          ),
          Spacing.huge.yBox * 4,
          Spacing.xtraLarge.yBox,
        ],
      );
}
