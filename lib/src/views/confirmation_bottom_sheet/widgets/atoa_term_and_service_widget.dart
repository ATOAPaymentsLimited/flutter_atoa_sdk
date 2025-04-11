import 'package:atoa_flutter_sdk/constants/constant.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
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
              text: context.l10n.terms,
              style: sdkFigTreeTextTheme.bodySmall
                  ?.textColor(
                    NeutralColors.light().grey.shade500,
                  )
                  .w700,
              recognizer: TapGestureRecognizer()
                ..onTap = () => launchUrl(
                      Uri.parse(yapilyUserTermsUrl),
                    ),
            ),
            const CustomTextSpan.semantics(text: ' '),
            CustomTextSpan.semantics(
              text: context.l10n.and,
              style: sdkFigTreeTextTheme.bodySmall?.textColor(
                NeutralColors.light().grey.shade500,
              ),
            ),
            const CustomTextSpan.semantics(text: ' '),
            CustomTextSpan.semantics(
              text: context.l10n.privacyPolicy,
              style: sdkFigTreeTextTheme.bodySmall
                  ?.textColor(
                    NeutralColors.light().grey.shade500,
                  )
                  .w700,
              recognizer: TapGestureRecognizer()
                ..onTap = () => launchUrl(
                      Uri.parse(yapilyPrivacyPolicyUrl),
                    ),
            ),
            const CustomTextSpan.semantics(text: ' '),
            CustomTextSpan.semantics(
              text: context.l10n.and,
              style: sdkFigTreeTextTheme.bodySmall?.textColor(
                NeutralColors.light().grey.shade500,
              ),
            ),
            const CustomTextSpan.semantics(text: ' '),
            CustomTextSpan.semantics(
              text: context.l10n.atoas,
              style: sdkFigTreeTextTheme.bodySmall?.textColor(
                NeutralColors.light().grey.shade500,
              ),
            ),
            const CustomTextSpan.semantics(text: ' '),
            CustomTextSpan.semantics(
              text: context.l10n.termsOfService,
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
            const CustomTextSpan.semantics(text: '.'),
            CustomTextSpan.semantics(
              text: context.l10n.atoaIsPowered,
              style: sdkFigTreeTextTheme.bodySmall?.textColor(
                NeutralColors.light().grey.shade500,
              ),
            ),
          ],
        ),
      );
}
