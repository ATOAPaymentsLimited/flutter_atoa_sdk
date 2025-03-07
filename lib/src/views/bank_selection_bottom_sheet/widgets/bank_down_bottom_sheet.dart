import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/ledger_button.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/sdk_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart' hide LedgerButton, LedgerButtonSize;

class BankDownBottomSheet extends StatelessWidget {
  const BankDownBottomSheet({
    required this.bank,
    super.key,
  });

  final BankInstitution bank;

  static Future<void> show(
    BuildContext context,
    BankInstitution bank,
  ) =>
      showSdkBottomSheet<void>(
        context: context,
        title: '',
        showTitle: false,
        titleBottomSpacing: Spacing.small.value,
        showDivider: true,
        body: (_) => BankDownBottomSheet(
          bank: bank,
        ),
      );

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: Spacing.small.y + Spacing.medium.x,
            decoration: BoxDecoration(
              color: SemanticsColors.light().error.subtle,
              borderRadius: Spacing.large.brAll,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Assets.icons.iconError.svg(
                  height: Spacing.medium.value,
                  width: Spacing.medium.value,
                  colorFilter: ColorFilter.mode(
                    SemanticsColors.light().error.darker,
                    BlendMode.srcIn,
                  ),
                ),
                Spacing.small.xBox,
                CustomText.semantics(
                  context.l10n.downTime,
                  style: kFigtreeTextTheme.bodySmall?.w700.textColor(
                    SemanticsColors.light().error.darker,
                  ),
                ),
              ],
            ),
          ),
          Spacing.huge.yBox,
          RichText(
            text: CustomTextSpan.semantics(
              text: bank.name,
              style: kFigtreeTextTheme.bodyLarge?.w700,
              children: [
                CustomTextSpan.semantics(
                  text: context.l10n.bankDown,
                  style: kFigtreeTextTheme.bodyLarge,
                ),
              ],
            ),
          ),
          Spacing.huge.yBox,
          LedgerButton.secondary(
            onPressed: () async {
              Navigator.pop(context);
            },
            size: LedgerButtonSize.xtraLarge,
            trackLabel: context.l10n.okay,
            enableTracking: false,
            style: ElevatedButton.styleFrom(
              textStyle: kFigtreeTextTheme.bodyLarge?.w700,
            ),
            backgroundColor: NeutralColors.light().grey.shade50,
            foregroundColor: context.intactColors.black,
            label: context.l10n.okay,
          ),
          Spacing.xtraLarge.yBox,
        ],
      );
}
