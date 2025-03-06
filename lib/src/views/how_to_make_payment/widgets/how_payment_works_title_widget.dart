import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class HowPaymentWorksTitleWidget extends StatelessWidget {
  const HowPaymentWorksTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacing.huge.xBox,
          Expanded(
            child: CustomText.semantics(
              context.l10n.continueToYourBank,
              textAlign: TextAlign.center,
              style: kFigtreeTextTheme.labelMedium?.w700.height130,
            ),
          ),
          Spacing.large.xBox,
          Padding(
            padding: Spacing.mini.top,
            child: CustomInkWell(
              semanticsLabel: 'Close Dialog Sheet Icon',
              context: context,
              trackLabel: 'Close Dialog Sheet Icon',
              onTap: () => Navigator.pop(context),
              child: Container(
                width: Spacing.huge.value,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: NeutralColors.light().grey.shade50,
                ),
                child: Center(
                  child: Padding(
                    padding: Spacing.mini.all,
                    child: Icon(
                      Icons.close,
                      size: Spacing.medium.value,
                      color: context.intactColors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
}
