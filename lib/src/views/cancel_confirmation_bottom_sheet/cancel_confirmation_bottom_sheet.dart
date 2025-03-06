import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/sdk_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
import 'package:atoa_flutter_sdk/src/utility/branding_color_utility.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

// Currently, not using anywhere
class CancelConfirmationBottomSheet extends StatelessWidget {
  const CancelConfirmationBottomSheet({
    super.key,
  });

  static Future<bool?> show(
    BuildContext context,
  ) =>
      showSdkBottomSheet<bool?>(
        context: context,
        title: context.l10n.cancelThePayment,
        body: (_) => const CancelConfirmationBottomSheet(),
      );

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText.semantics(
            context.l10n.cancelThePaymentDesc,
            style: kFigtreeTextTheme.bodyLarge?.w500.textColor(
              NeutralColors.light().grey.shade500,
            ),
            textAlign: TextAlign.center,
          ),
          Spacing.huge.yBox,
          LedgerButton.primary2(
            semanticsLabel: context.l10n.yesCancelPayment,
            trackLabel: 'Yes, Cancel Payment',
            label: context.l10n.yesCancelPayment,
            onPressed: () {
              Navigator.pop(context, true);
            },
            style: ElevatedButton.styleFrom(
              textStyle: kFigtreeTextTheme.bodyLarge?.w700,
            ),
            backgroundColor: BrandingColorUtility.brandingBackgroundColor,
            foregroundColor: BrandingColorUtility.brandingForegroundColor,
          ),
          Spacing.medium.yBox,
          LedgerButton.secondary(
            trackLabel: 'No, Dismiss',
            label: context.l10n.noDismiss,
            semanticsLabel: context.l10n.noDismiss,
            onPressed: () {
              Navigator.pop(context, false);
            },
            style: ElevatedButton.styleFrom(
              textStyle: kFigtreeTextTheme.bodyLarge?.w700,
            ),
            backgroundColor: NeutralColors.light().grey.shade200,
            foregroundColor: context.intactColors.black,
          ),
          Spacing.huge.yBox,
        ],
      );
}
