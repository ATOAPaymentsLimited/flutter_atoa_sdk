import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/bank_institutions_controller.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/ledger_button.dart';
import 'package:atoa_flutter_sdk/src/utility/branding_color_utility.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart' hide LedgerButton, LedgerButtonSize;

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) => LedgerButton.primary2(
        size: LedgerButtonSize.xtraLarge,
        trackLabel: 'I understand cotinue Button',
        semanticsLabel: context.l10n.iUnderstandContinue,
        style: ElevatedButton.styleFrom(
          textStyle: Theme.of(context).textTheme.bodyLarge?.w700,
        ),
        backgroundColor: BrandingColorUtility.brandingBackgroundColor,
        foregroundColor: BrandingColorUtility.brandingForegroundColor,
        label: context.l10n.iUnderstandContinue,
        onPressed: () async {
          context.read<BankInstitutionsController>().showHowPaymentWorks =
              false;
        },
      );
}
