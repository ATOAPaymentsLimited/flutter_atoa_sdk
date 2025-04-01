import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/highlighted_amount.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class PaymentPaidWidget extends StatelessWidget {
  const PaymentPaidWidget({
    required this.error,
    super.key,
  });

  final AtoaException error;

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: Spacing.large.value * 2,
              width: Spacing.large.value * 2,
              decoration: BoxDecoration(
                color: SemanticsColors.light().positive.darker,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: Spacing.small.all,
                child: Assets.icons.iconTick.svg(
                  colorFilter: ColorFilter.mode(
                    IntactColors.light().white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            if (error.amount != null) ...[
              Spacing.xtraLarge.yBox,
              HighlightedAmount(
                amount: error.amount!.toDouble(),
              ),
            ],
            Spacing.xtraLarge.yBox,
            CustomText.semantics(
              context.l10n.paymentAlreadyPaid,
              style: sdkFigTreeTextTheme.titleSmall?.w700.copyWith(
                color: IntactColors.light().black,
              ),
            ),
            if (error.time != null) ...[
              Spacing.xtraLarge.yBox,
              CustomText.semantics(
                context.l10n.paidOn(
                  DateTime.parse(error.time!),
                ),
                style: sdkFigTreeTextTheme.bodyLarge
                    ?.copyWith(
                      color: NeutralColors.light().grey.shade500,
                    )
                    .height150,
              ),
            ],
            if (error.referenceId != null) ...[
              CustomText.semantics(
                context.l10n.referenceNo(error.referenceId!),
                style: sdkFigTreeTextTheme.bodyLarge?.copyWith(
                  color: NeutralColors.light().grey.shade500,
                ),
              ),
            ],
            Spacing.xtraLarge.yBox,
          ],
        ),
      );
}
