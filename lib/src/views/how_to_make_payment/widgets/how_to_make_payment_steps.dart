import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class HowToMakePaymentSteps extends StatelessWidget {
  const HowToMakePaymentSteps({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const _StepTile(step: 1),
          Spacing.xtraLarge.yBox,
          const _StepTile(step: 2),
          Spacing.xtraLarge.yBox,
          const _StepTile(step: 3),
        ],
      );
}

class _StepTile extends StatelessWidget {
  const _StepTile({super.key, required this.step});

  final int step;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          CircleAvatar(
            backgroundColor: SemanticsColors.light().info.lighter,
            child: CustomText.semantics(
              step.toString(),
              style: context.figtree.bodyLarge.w700.textColor(
                SemanticsColors.light().info.darker,
              ),
            ),
          ),
          Spacing.medium.xBox,
          Expanded(
            child: _getStepTextWidget(context, step),
          ),
        ],
      );

  Widget _getStepTextWidget(BuildContext context, int step) {
    switch (step) {
      case 1:
        return _getText(
          context,
          text1: context.l10n.makePaymentStep1Text1,
          text2: context.l10n.makePaymentStep1Text2,
          text3: context.l10n.makePaymentStep1Text3,
        );
      case 2:
        return _getText(
          context,
          text1: context.l10n.makePaymentStep2Text1,
          text2: context.l10n.makePaymentStep2Text2,
          text3: context.l10n.makePaymentStep2Text3,
        );
      case 3:
        return _getText(
          context,
          text1: context.l10n.makePaymentStep3Text1,
          text2: context.l10n.makePaymentStep3Text2,
          text3: context.l10n.makePaymentStep3Text3,
        );
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _getText(
    BuildContext context, {
    required String text1,
    required String text2,
    required String text3,
  }) =>
      RichText(
        text: CustomTextSpan.semantics(
          text: text1,
          style: context.figtree.bodyLarge.textColor(
            context.intactColors.black,
          ),
          children: [
            CustomTextSpan.semantics(
              text: text2,
              style: context.figtree.bodyLarge.w700.textColor(
                context.intactColors.black,
              ),
            ),
            CustomTextSpan.semantics(
              text: text3,
            ),
          ],
        ),
      );
}
