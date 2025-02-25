import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/utility/branding_color.dart';
import 'package:atoa_flutter_sdk/src/views/connect_bank_page/bank_selection_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    required this.paymentId,
    super.key,
    this.isHelp = true,
  });

  final bool isHelp;
  final String paymentId;

  @override
  Widget build(BuildContext context) {
    print('fvevffffef ${BrandingColorUtility.brandingColor}');

    return LedgerButton.secondary(
      size: LedgerButtonSize.xtraLarge,
      trackLabel: 'I understand cotinue Button',
      style: ElevatedButton.styleFrom(
        backgroundColor: BrandingColorUtility.brandingColor,
        textStyle: context.figtree.bodyLarge.w700,
      ),
      label: context.l10n.iUnderstandContinue,
      onPressed: () async {
        if (isHelp) {
          Navigator.pop(context);
          return;
        }

        await BankSelectionBottomSheet.show(
          context,
          paymentId: paymentId,
        );
        if (context.mounted) {
          Navigator.pop(context);
        }
      },
    );
  }
}
