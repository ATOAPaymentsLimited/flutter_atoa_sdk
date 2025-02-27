import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class AppNotInstalledWidget extends StatelessWidget {
  const AppNotInstalledWidget({
    required this.name,
    super.key,
  });

  final String name;

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
            Padding(
              padding: Spacing.mini.top,
              child: Assets.icons.info.svg(
                colorFilter: ColorFilter.mode(
                  SemanticsColors.light().error.darker,
                  BlendMode.srcIn,
                ),
              ),
            ),
            Spacing.medium.xBox,
            Expanded(
              child: RichText(
                text: CustomTextSpan.semantics(
                  text: context.l10n.recommendingAppInstallPart1,
                  style: context.figtree.bodyMedium
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
                  ),
                  children: [
                    CustomTextSpan.semantics(
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      text: context.l10n.bankApp(name),
                      style: context.figtree.bodyMedium.w700
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
}
