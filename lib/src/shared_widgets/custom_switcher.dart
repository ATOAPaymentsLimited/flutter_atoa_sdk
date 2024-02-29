import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
              borderRadius: BorderRadius.circular(14.sp),
            ),
            children: children,
            onValueChanged: onValueChanged,
            initialValue: initialValue,
            decoration: BoxDecoration(
              color: context.brightness.map(
                (l) => RegalColors.snowWhite,
                (d) => RegalColors.claretRed,
              ),
              border: Border.all(
                color: context.regalColor.snowWhite,
              ),
              borderRadius: BorderRadius.circular(Spacing.large.value),
              boxShadow: context.brightness.map(
                (l) => [
                  BoxShadow(
                    color: RegalColors.grey.shade20,
                    blurRadius: 3,
                    offset: const Offset(0.62, 0.62),
                  ),
                  const BoxShadow(
                    color: Color(0x3FFFFFFF),
                    blurRadius: 2,
                    offset: Offset(-1, -1),
                  ),
                  const BoxShadow(
                    color: Color(0x1CBCD1FF),
                    blurRadius: 13,
                    offset: Offset(0, 2),
                  ),
                ],
                (d) => [
                  const BoxShadow(
                    color: Color(0x99E42646),
                    blurRadius: 3,
                    offset: Offset(0.62, 0.62),
                  ),
                  const BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 2,
                    offset: Offset(-1, -1),
                  ),
                  const BoxShadow(
                    color: Color(0x1EFCE9EC),
                    blurRadius: 13,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
            ),
            thumbDecoration: BoxDecoration(
              color: RegalColors.vividRed,
              borderRadius: BorderRadius.circular(14.sp),
              boxShadow: context.brightness.map(
                (l) => const [
                  BoxShadow(
                    color: Color(0x962767C6),
                    blurRadius: 3,
                    offset: Offset(0.62, 0.62),
                  ),
                  BoxShadow(
                    color: Color(0x3FFFFFFF),
                    blurRadius: 2,
                    offset: Offset(-1, -1),
                  ),
                  BoxShadow(
                    color: Color(0x1CBCD1FF),
                    blurRadius: 13,
                    offset: Offset(0, 2),
                  ),
                ],
                (d) => [
                  const BoxShadow(
                    color: Color(0x99E42646),
                    blurRadius: 3,
                    offset: Offset(0.62, 0.62),
                  ),
                  const BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 2,
                    offset: Offset(-1, -1),
                  ),
                  const BoxShadow(
                    color: Color(0x1EFCE9EC),
                    blurRadius: 13,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
