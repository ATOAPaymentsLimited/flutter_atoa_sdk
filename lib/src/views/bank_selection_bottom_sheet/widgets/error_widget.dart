import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class AtoaErrorWidget extends StatelessWidget {
  const AtoaErrorWidget({
    super.key,
    this.message,
  });

  final String? message;

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText.semantics(
              context.l10n.oopsSomethingWentWrong,
              style: sdkFigTreeTextTheme.labelSmall?.w700.copyWith(
                color: IntactColors.light().black,
              ),
            ),
            Spacing.small.yBox,
            CustomText.semantics(
              message ?? context.l10n.somethingWentWrongDesc,
              style: sdkFigTreeTextTheme.bodyLarge?.textColor(
                NeutralColors.light().grey.shade500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
}
