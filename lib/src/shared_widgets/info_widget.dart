import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
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
          color: SemanticsColors.light().info.subtle,
          borderRadius: Spacing.small.brAll,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Assets.icons.info.svg(
              height: Spacing.large.value,
              width: Spacing.large.value,
            ),
            Spacing.small.xBox,
            Expanded(
              child: CustomText.semantics(
                text,
                style: sdkFigTreeTextTheme.bodyMedium
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
