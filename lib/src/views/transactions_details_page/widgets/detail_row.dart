import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class DetailRow extends StatelessWidget {
  const DetailRow({
    required this.label,
    required this.value,
    super.key,
  });

  final String label;
  final String value;

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
            child: CustomText.semantics(
              value,
              style: context.bodyLarge,
              textAlign: TextAlign.right,
            ),
          ),
        ],
      );
}
