import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class CustomSwitcher<T> extends StatelessWidget {
  const CustomSwitcher({
    required this.children,
    required this.onValueChanged,
    required this.semanticsLabel,
    super.key,
    this.initialValue,
    this.isStretch = false,
    this.isDisabled = false,
  });

  final Map<T, Widget> children;
  final void Function(T) onValueChanged;
  final T? initialValue;
  final bool isStretch;
  final bool isDisabled;
  final String semanticsLabel;

  @override
  Widget build(BuildContext context) => Opacity(
        opacity: isDisabled ? 0.5 : 1,
        child: Semantics(
          label: semanticsLabel,
          button: true,
          container: true,
          enabled: true,
          explicitChildNodes: true,
          child: CustomSlidingSegmentedControl<T>(
            isStretch: isStretch,
            isDisabled: isDisabled,
            customSegmentSettings: CustomSegmentSettings(
              borderRadius: Spacing.medium.brAll,
            ),
            children: children,
            onValueChanged: onValueChanged,
            initialValue: initialValue,
            decoration: BoxDecoration(
              color: context.brightness.map(
                (l) => NeutralColors.light().grey.shade50,
                (d) => NeutralColors.light().grey.shade50,
              ),
              borderRadius: BorderRadius.circular(Spacing.large.value),
            ),
            thumbDecoration: BoxDecoration(
              color: context.intactColors.white,
              borderRadius: Spacing.medium.brAll,
            ),
          ),
        ),
      );
}
