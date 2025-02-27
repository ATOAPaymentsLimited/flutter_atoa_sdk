import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/info_widget.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/sdk_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

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
        body: (_) => BankDownBottomSheet(
          bank: bank,
        ),
      );

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InfoWidget(
              text: context.l10n.downTime,
            ),
            Spacing.xtraLarge.yBox,
            RichText(
              text: CustomTextSpan.semantics(
                text: bank.name,
                style: context.figtree.bodyLarge.textColor(
                  context.intactColors.black,
                ),
                children: [
                  CustomTextSpan.semantics(
                    text: context.l10n.bankDown,
                    style: context.figtree.bodyLarge.w700.textColor(
                      context.intactColors.black,
                    ),
                  ),
                ],
              ),
            ),
            Spacing.xtraLarge.yBox,
            LedgerButton.secondary(
              onPressed: () async {
                Navigator.pop(context);
              },
              trackLabel: context.l10n.okay,
              enableTracking: false,
              style: ElevatedButton.styleFrom(
                textStyle: context.figtree.bodyLarge.w700,
              ),
              backgroundColor: NeutralColors.light().grey.shade100,
              foregroundColor: context.intactColors.black,
              label: context.l10n.continueBtnText,
            ),
          ],
        ),
      );
}
