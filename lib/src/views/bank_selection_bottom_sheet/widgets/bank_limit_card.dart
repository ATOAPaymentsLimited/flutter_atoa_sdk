import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
import 'package:atoa_flutter_sdk/src/utility/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class BankLimitCard extends StatelessWidget {
  const BankLimitCard({
    required this.amount,
    super.key,
  });

  final double amount;

  @override
  Widget build(BuildContext context) => Container(
        padding: Spacing.small.y + Spacing.medium.x,
        decoration: BoxDecoration(
          color: SemanticsColors.light().error.subtle,
          borderRadius: Spacing.small.brAll,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Assets.icons.info.svg(
              height: Spacing.large.value,
              width: Spacing.large.value,
              colorFilter: ColorFilter.mode(
                SemanticsColors.light().error.darker,
                BlendMode.srcIn,
              ),
            ),
            Spacing.small.xBox,
            Expanded(
              child: RichText(
                text: CustomTextSpan.semantics(
                  children: [
                    CustomTextSpan.semantics(
                      text: amount.toString().formattedAmount(
                            currencySymbol: context.l10n.currencySymbol,
                          ),
                      style: sdkFigTreeTextTheme.bodyMedium
                          ?.textColor(
                            SemanticsColors.light().error.darker,
                          )
                          .w700,
                    ),
                  ],
                  text: context.l10n.bankLimitText,
                  style: sdkFigTreeTextTheme.bodyMedium
                      ?.textColor(
                        SemanticsColors.light().error.darker,
                      )
                      .w500,
                ),
              ),
            ),
          ],
        ),
      );
}
