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
            innerPadding: Spacing.mini.all,
            isStretch: isStretch,
            isDisabled: isDisabled,
            children: children,
            onValueChanged: onValueChanged,
            initialValue: initialValue,
            decoration: BoxDecoration(
              color: context.neutralColors.grey.shade50,
              borderRadius: BorderRadius.circular(Spacing.medium.value),
            ),
            thumbDecoration: BoxDecoration(
              color: context.intactColors.white,
              borderRadius: Spacing.small.brAll + Spacing.tiny.brAll,
            ),
          ),
        ),
      );
}
