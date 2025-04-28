import 'package:atoa_sdk/gen/assets.gen.dart';
import 'package:atoa_sdk/l10n/l10n.dart';
import 'package:atoa_sdk/src/shared_widgets/dotted_line_painter.dart';
import 'package:atoa_sdk/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class AtoaErrorWidget extends StatelessWidget {
  const AtoaErrorWidget({
    super.key,
    this.message,
    this.onRetry,
    this.title,
    this.showErrorIcon = true,
  });

  final String? message;
  final VoidCallback? onRetry;
  final String? title;
  final bool showErrorIcon;

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (showErrorIcon) ...[
              Assets.icons.iconError.svg(
                height: Spacing.xtraLarge.value * 2,
                width: Spacing.xtraLarge.value * 2,
                colorFilter: ColorFilter.mode(
                  NeutralColors.light().grey.shade600,
                  BlendMode.srcIn,
                ),
              ),
              Spacing.huge.yBox,
            ],
            CustomText.semantics(
              title ?? context.l10n.oopsSomethingWentWrong,
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
            if (onRetry != null) ...[
              Spacing.large.yBox,
              CustomInkWell(
                semanticsLabel: context.l10n.retry,
                context: context,
                enableTracking: false,
                trackLabel: 'Retry',
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomText.semantics(
                      context.l10n.retry,
                      style: sdkFigTreeTextTheme.bodyLarge?.w700.textColor(
                        BrandColors.light().primary.shade500,
                      ),
                    ),
                    CustomPaint(
                      size: Size(
                        Spacing.large.value * 2,
                        1,
                      ),
                      painter: DottedLinePainter(
                        color: BrandColors.light().primary.shade500,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  onRetry?.call();
                },
              ),
            ],
          ],
        ),
      );
}
