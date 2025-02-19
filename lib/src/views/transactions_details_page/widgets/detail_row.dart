import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class DetailRow extends StatelessWidget {
  const DetailRow({
    super.key,
    required this.label,
    required this.value,
    this.onTapValue,
  });

  final String label;
  final String value;
  final VoidCallback? onTapValue;

  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText.semantics(
            label,
            style: context.bodyMedium,
          ),
          Spacing.small.xBox,
          Expanded(
            flex: 7,
            child: CustomGestureDetector(
              semanticsLabel: value,
              context: context,
              trackLabel: value,
              enableTracking: false,
              onTap: onTapValue,
              child: CustomText.semantics(
                value,
                style: context.bodyLarge?.copyWith(
                  decoration: onTapValue != null
                      ? TextDecoration.underline
                      : TextDecoration.none,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
        ],
      );
}
