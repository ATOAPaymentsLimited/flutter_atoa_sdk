import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class AtoaErrorWidget extends StatelessWidget {
  const AtoaErrorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText.semantics(
              context.l10n.oopsSomethingWentWrong,
              style: context.labelSmall?.w700.copyWith(
                color: context.intactColors.black,
              ),
            ),
            Spacing.small.yBox,
            CustomText.semantics(
              context.l10n.somethingWentWrongDesc,
              style: context.bodyLarge?.textColor(
                NeutralColors.light().grey.shade500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
}
