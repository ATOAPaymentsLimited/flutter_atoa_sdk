import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/atoa_term_tile.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class AtoaTermsBottomSheet extends StatelessWidget {
  const AtoaTermsBottomSheet({
    super.key,
  });

  static Future<void> show(
    BuildContext context,
  ) =>
      showLedgerBottomSheet<void>(
        context: context,
        backgroundColor: context.intactColors.white,
        titleStyle: kFigtreeTextTheme.labelMedium?.w700.textColor(
          NeutralColors.light().grey.shade700,
        ),
        title: context.l10n.termsAndPolicy,
        body: (_) => const AtoaTermsBottomSheet(),
      );

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacing.large.yBox,
          AtoaTermTile(
            title: context.l10n.termsOfService,
            desc: context.l10n.rulesForService,
            link: 'https://paywithatoa.co.uk/terms/',
          ),
          Spacing.large.yBox,
          AtoaTermTile(
            title: context.l10n.privacyPolicy,
            desc: context.l10n.howWeProtectData,
            link: 'https://paywithatoa.co.uk/atoa-pay-privacy-policy/',
          ),
          Spacing.huge.yBox,
          CustomText.semantics(
            context.l10n.atoaYapilyText,
            style: kFigtreeTextTheme.bodyMedium
                ?.textColor(NeutralColors.light().grey.shade600),
          ),
          Spacing.huge.yBox,
        ],
      );
}
