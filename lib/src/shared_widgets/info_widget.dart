import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    required this.text,
    this.fontSize,
    super.key,
  });

  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) => Container(
        padding: Spacing.small.y + Spacing.medium.x,
        decoration: BoxDecoration(
          color: SemanticsColors.light().info.lighter,
          borderRadius: Spacing.small.brAll,
        ),
        child: Row(
          children: [
            Assets.icons.info.svg(),
            Spacing.small.xBox,
            Expanded(
              child: CustomText.semantics(
                text,
                style: kFigtreeTextTheme.bodyMedium
                    ?.textColor(
                      SemanticsColors.light().info.darker,
                    )
                    .copyWith(fontSize: fontSize)
                    .w500,
              ),
            ),
          ],
        ),
      );
}
