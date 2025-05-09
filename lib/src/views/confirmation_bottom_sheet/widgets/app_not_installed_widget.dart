import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_sdk/gen/assets.gen.dart';
import 'package:atoa_sdk/l10n/l10n.dart';
import 'package:atoa_sdk/src/theme/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';
import 'package:url_launcher/url_launcher.dart';

class AppNotInstalledWidget extends StatelessWidget {
  const AppNotInstalledWidget({
    required this.name,
    this.paymentAuth,
    super.key,
  });

  final String name;
  final PaymentAuthResponse? paymentAuth;

  @override
  Widget build(BuildContext context) => Container(
        padding: Spacing.medium.y + Spacing.large.x,
        decoration: BoxDecoration(
          color: SemanticsColors.light().error.subtle,
          borderRadius: Spacing.small.brAll,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Assets.icons.warningFilled.svg(
              colorFilter: ColorFilter.mode(
                SemanticsColors.light().error.darker,
                BlendMode.srcIn,
              ),
            ),
            Spacing.medium.xBox,
            Expanded(
              child: RichText(
                text: CustomTextSpan.semantics(
                  text: context.l10n.recommendingAppInstallPart1,
                  style: sdkFigTreeTextTheme.bodyMedium
                      ?.textColor(
                    SemanticsColors.light().error.darker,
                  )
                      .copyWith(
                    shadows: [
                      Shadow(
                        color: SemanticsColors.light().error.darker,
                        offset: Offset(0, -Spacing.mini.value),
                      ),
                    ],
                    color: Colors.transparent,
                  ),
                  children: [
                    CustomTextSpan.semantics(
                      recognizer: TapGestureRecognizer()..onTap = _launchStore,
                      text: context.l10n.bankApp(name),
                      style: sdkFigTreeTextTheme.bodyMedium?.w700
                          .textColor(
                        SemanticsColors.light().error.darker,
                      )
                          .copyWith(
                        shadows: [
                          Shadow(
                            color: SemanticsColors.light().error.darker,
                            offset: Offset(0, -Spacing.mini.value),
                          ),
                        ],
                        color: Colors.transparent,
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.dotted,
                        decorationColor: SemanticsColors.light().error.darker,
                        decorationThickness: Spacing.tiny.value,
                      ),
                    ),
                    CustomTextSpan.semantics(
                      text: context.l10n.recommendingAppInstallPart2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  void _launchStore() {
    String? uri;
    if (defaultTargetPlatform == (TargetPlatform.android)) {
      uri = paymentAuth?.playStoreLink;
    }
    if (defaultTargetPlatform == (TargetPlatform.iOS)) {
      uri = paymentAuth?.appStoreLink;
    }
    if (uri != null) {
      launchUrl(
        Uri.parse(uri),
        mode: LaunchMode.externalApplication,
      );
    }
  }
}
