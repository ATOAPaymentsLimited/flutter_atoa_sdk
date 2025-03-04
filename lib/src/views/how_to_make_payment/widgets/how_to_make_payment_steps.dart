import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class HowToMakePaymentSteps extends StatelessWidget {
  const HowToMakePaymentSteps({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const _StepTile(step: 1),
          Spacing.large.yBox * 2,
          const _StepTile(step: 2),
          Spacing.large.yBox * 2,
          const _StepTile(step: 3),
        ],
      );
}

class _StepTile extends StatelessWidget {
  const _StepTile({required this.step});

  final int step;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          CircleAvatar(
            radius: Spacing.xtraLarge.value,
            backgroundColor: SemanticsColors.light().info.lighter,
            child: CustomText.semantics(
              step.toString(),
              style: kFigtreeTextTheme.bodyLarge?.w700.textColor(
                SemanticsColors.light().info.darker,
              ),
            ),
          ),
          Spacing.large.xBox,
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
          style: kFigtreeTextTheme.bodyLarge,
          children: [
            CustomTextSpan.semantics(
              text: text2,
              style: kFigtreeTextTheme.bodyLarge?.w700,
            ),
            CustomTextSpan.semantics(
              text: text3,
            ),
          ],
        ),
      );
}
