import 'package:atoa_sdk/constants/constant.dart';
import 'package:atoa_sdk/l10n/l10n.dart';
import 'package:atoa_sdk/src/shared_widgets/sdk_bottom_sheet.dart';
import 'package:atoa_sdk/src/theme/theme.dart';
import 'package:atoa_sdk/src/views/confirmation_bottom_sheet/widgets/atoa_term_tile.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class AtoaTermsBottomSheet extends StatelessWidget {
  const AtoaTermsBottomSheet({
    super.key,
  });

  static Future<void> show(
    BuildContext context,
  ) =>
      showSdkBottomSheet<void>(
        context: context,
        titleStyle: sdkFigTreeTextTheme.labelMedium?.w700.textColor(
          NeutralColors.light().grey.shade700,
        ),
        titleAlign: TextAlign.left,
        enableDrag: true,
        isDismissible: true,
        title: context.l10n.termsAndPolicy,
        titleBottomSpacing: Spacing.small.value,
        body: (_) => const AtoaTermsBottomSheet(),
      );

  @override
  Widget build(BuildContext context) => AnimatedContainer(
        duration: kAnimationDuration,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AtoaTermTile(
              title: context.l10n.termsOfService,
              desc: context.l10n.rulesForService,
              link: atoaTermsOfService,
            ),
            AtoaTermTile(
              title: context.l10n.privacyPolicy,
              desc: context.l10n.howWeProtectData,
              link: atoaPrivacyPolicy,
            ),
            Spacing.large.yBox * 2,
            CustomText.semantics(
              context.l10n.atoaYapilyText,
              style: sdkFigTreeTextTheme.bodyMedium
                  ?.textColor(NeutralColors.light().grey.shade600),
            ),
          ],
        ),
      );
}
