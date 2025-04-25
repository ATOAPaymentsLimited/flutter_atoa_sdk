import 'package:atoa_sdk/constants/constant.dart';
import 'package:atoa_sdk/l10n/l10n.dart';
import 'package:atoa_sdk/src/theme/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';
import 'package:url_launcher/url_launcher.dart';

class AtoaTermAndServiceWidget extends StatelessWidget {
  const AtoaTermAndServiceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) => RichText(
        textAlign: TextAlign.center,
        text: CustomTextSpan.semantics(
          text: context.l10n.byContinuingYouAccept,
          style: sdkFigTreeTextTheme.bodySmall?.textColor(
            NeutralColors.light().grey.shade500,
          ),
          children: [
            CustomTextSpan.semantics(
              text: context.l10n.atoasTerms,
              style: sdkFigTreeTextTheme.bodySmall
                  ?.textColor(
                    NeutralColors.light().grey.shade500,
                  )
                  .w700,
              recognizer: TapGestureRecognizer()
                ..onTap = () => launchUrl(
                      Uri.parse(atoaTermsOfService),
                    ),
            ),
          ],
        ),
      );
}
