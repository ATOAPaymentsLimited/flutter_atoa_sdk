import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
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
            Assets.icons.iconError.svg(
              height: Spacing.xtraLarge.value * 2,
              width: Spacing.xtraLarge.value * 2,
              colorFilter: ColorFilter.mode(
                NeutralColors.light().grey.shade600,
                BlendMode.srcIn,
              ),
            ),
            Spacing.huge.yBox,
            CustomText.semantics(
              context.l10n.oopsSomethingWentWrong,
              style: sdkFigTreeTextTheme.titleSmall?.w700.copyWith(
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
