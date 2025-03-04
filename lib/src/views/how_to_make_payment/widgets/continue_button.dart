import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/bank_institutions_controller.dart';
import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
import 'package:atoa_flutter_sdk/src/utility/branding_color_utility.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/bank_selection_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    required this.bankInstitutionController,
    super.key,
    this.isHelp = true,
  });

  final bool isHelp;
  final BankInstitutionsController bankInstitutionController;

  @override
  Widget build(BuildContext context) => LedgerButton.primary2(
        size: LedgerButtonSize.xtraLarge,
        trackLabel: 'I understand cotinue Button',
        semanticsLabel: context.l10n.iUnderstandContinue,
        style: ElevatedButton.styleFrom(
          textStyle: kFigtreeTextTheme.bodyLarge?.w700,
        ),
        backgroundColor: BrandingColorUtility.brandingBackgroundColor,
        foregroundColor: BrandingColorUtility.brandingForegroundColor,
        label: context.l10n.iUnderstandContinue,
        onPressed: () async {
          if (isHelp) {
            Navigator.pop(context);
            return;
          }

          final res = await BankSelectionBottomSheet.show(
            context,
            bankInstitutionController: bankInstitutionController,
          );
          if (context.mounted) {
            Navigator.pop(context, res);
          }
        },
      );
}
