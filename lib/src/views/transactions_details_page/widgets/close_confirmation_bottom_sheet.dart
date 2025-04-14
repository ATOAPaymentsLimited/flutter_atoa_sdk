import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/ledger_button.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/sdk_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
import 'package:atoa_flutter_sdk/src/utility/branding_color_utility.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart' hide LedgerButton, LedgerButtonSize;

// Currently, not Using anywhere
class CloseConfirmationBottomSheet extends StatelessWidget {
  const CloseConfirmationBottomSheet({
    super.key,
  });

  static Future<bool?> show(
    BuildContext context,
  ) =>
      showSdkBottomSheet<bool?>(
        context: context,
        title: context.l10n.areYouSure,
        body: (_) => const CloseConfirmationBottomSheet(),
      );

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText.semantics(
            context.l10n.areYouSureDesc,
            style: sdkFigTreeTextTheme.bodyLarge?.w500.textColor(
              NeutralColors.light().grey.shade500,
            ),
            textAlign: TextAlign.center,
          ),
          Spacing.huge.yBox,
          LedgerButton.primary2(
            semanticsLabel: context.l10n.continueBtnText,
            trackLabel: 'Continue',
            size: LedgerButtonSize.xtraLarge,
            label: context.l10n.continueBtnText,
            onPressed: () {
              Navigator.pop(context, true);
            },
            style: ElevatedButton.styleFrom(
              textStyle: sdkFigTreeTextTheme.bodyLarge?.w700,
            ),
            backgroundColor: BrandingColorUtility.brandingBackgroundColor,
            foregroundColor: BrandingColorUtility.brandingForegroundColor,
          ),
          Spacing.medium.yBox,
          LedgerButton.secondary(
            trackLabel: 'Dismiss',
            label: context.l10n.dismiss,
            size: LedgerButtonSize.xtraLarge,
            semanticsLabel: context.l10n.dismiss,
            onPressed: () {
              Navigator.pop(context, false);
            },
            style: ElevatedButton.styleFrom(
              textStyle: sdkFigTreeTextTheme.bodyLarge?.w700,
            ),
            backgroundColor: NeutralColors.light().grey.shade200,
            foregroundColor: IntactColors.light().black,
          ),
          Spacing.huge.yBox,
        ],
      );
}
