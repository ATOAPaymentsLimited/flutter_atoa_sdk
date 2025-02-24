import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
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
  Widget build(BuildContext context) => LedgerButton.secondary(
        size: LedgerButtonSize.xtraLarge,
        trackLabel: 'Cotinue Button',
        label: context.l10n.iUnderstandContinue,
        onPressed: () async {
          if (isHelp) {
            Navigator.pop(
              context,
            );
          }
          if (!isHelp) {
            await AtoaSdk.show(
              context,
              paymentId: paymentId,
              authKey:
                  'NmNiYTgzODEtZjJlOS00YTRmLTlmMWYtZjRiMWI2Zjc0ZDExOnY2SnRFcUtmcTFRMkFmTU8=', //add the api access key here
              showHowPaymentWorks: false,
              env: AtoaEnv.prod,

              /// or AtoaEnv.sandbox
            );
            if (context.mounted) {
              Navigator.pop(
                context,
              );
            }
          }
        },
      );
}
