import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
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
            style: kFigtreeTextTheme.bodyMedium
                ?.textColor(context.intactColors.black),
          ),
          Spacing.small.xBox,
          Expanded(
            flex: 7,
            child: CustomText.semantics(
              value,
              style: kFigtreeTextTheme.bodyLarge
                  ?.textColor(context.intactColors.black),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      );
}
