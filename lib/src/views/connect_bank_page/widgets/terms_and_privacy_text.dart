import 'package:atoa_sdk/atoa_sdk.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';
import 'package:url_launcher/url_launcher.dart';

class TermsAndPrivacyText extends StatelessWidget {
  const TermsAndPrivacyText({super.key}) : isLogin = false;
  const TermsAndPrivacyText.login({super.key}) : isLogin = true;

  final bool isLogin;

  Future<void> onHelp() async {
    final uri = Uri.tryParse('https://atoa.ladesk.com/');

    if (uri != null) {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      }
    }
  }

  @override
  Widget build(BuildContext context) => RichText(
        text: CustomTextSpan.semantics(
          text:
              isLogin ? context.l10n.bySigningUp : context.l10n.continuingAgree,
          style: context.bodyMedium?.copyWith(
            color: isLogin ? context.grey.shade40 : null,
          ),
          children: [
            const CustomTextSpan.semantics(text: '\n'),
            CustomTextSpan.semantics(
              text: context.l10n.termsOfUse,
              style: context.bodyMedium?.copyWith(
                color: isLogin ? context.grey.shade40 : null,
                fontWeight: FontWeight.bold,
                height: 1.3,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  showGeneralDialog(
                    context: context,
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        LocalHtmlPage(
                      title: context.l10n.platformTermsOfUse,
                      html: platformTermsOfUse,
                    ),
                  );
                },
            ),
            const CustomTextSpan.semantics(
              text: ', ',
            ),
            CustomTextSpan.semantics(
              text: context.l10n.termsOfService,
              style: context.bodyMedium?.copyWith(
                color: isLogin ? context.grey.shade40 : null,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  showGeneralDialog(
                    context: context,
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        LocalHtmlPage(
                      title: context.l10n.termsOfService,
                      html: termsOfServiceHtml,
                    ),
                  );
                },
            ),
            CustomTextSpan.semantics(
              text: ' ${context.l10n.and} ',
            ),
            CustomTextSpan.semantics(
              text: context.l10n.privacyPolicy,
              style: context.bodyMedium?.copyWith(
                color: isLogin ? context.grey.shade40 : null,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  showGeneralDialog(
                    context: context,
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        LocalHtmlPage(
                      title: context.l10n.atoaPayPrivacyPolicy,
                      html: privaryPolicyHtml,
                    ),
                  );
                },
            ),
            if (!isLogin) ...[
              const CustomTextSpan.semantics(text: ' | '),
              CustomTextSpan.semantics(
                text: context.l10n.help,
                style: context.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()..onTap = onHelp,
              ),
            ],
          ],
        ),
        textAlign: TextAlign.center,
      );
}
