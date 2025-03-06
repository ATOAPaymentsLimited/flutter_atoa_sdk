import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
import 'package:atoa_flutter_sdk/src/utility/branding_color_utility.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    required this.showHowPaymentWorks,
    super.key,
  });

  final ValueNotifier<bool> showHowPaymentWorks;

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
          showHowPaymentWorks.value = false;
        },
      );
}
