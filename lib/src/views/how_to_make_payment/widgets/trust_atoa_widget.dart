import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class TrustAtoaWidget extends StatelessWidget {
  const TrustAtoaWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Container(
        padding: Spacing.medium.y + Spacing.large.x,
        decoration: BoxDecoration(
          color: SemanticsColors.light().positive.lighter,
          borderRadius: Spacing.small.brAll + Spacing.tiny.brAll,
        ),
        child: Row(
          children: [
            Assets.icons.shield.svg(),
            Spacing.small.xBox,
            Expanded(
              child: CustomText.semantics(
                context.l10n.trustedByBusinesses,
                style: sdkFigTreeTextTheme.bodyMedium?.w600.textColor(
                  SemanticsColors.light().positive.darker,
                ),
              ),
            ),
          ],
        ),
      );
}
