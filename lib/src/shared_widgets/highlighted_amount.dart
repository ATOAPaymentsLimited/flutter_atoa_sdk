import 'package:atoa_flutter_sdk/src/theme/theme.dart';
import 'package:atoa_flutter_sdk/src/utility/double_extensions.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class HighlightedAmount extends StatelessWidget {
  const HighlightedAmount({
    required this.amount,
    super.key,
  });
  final double amount;
  @override
  Widget build(BuildContext context) {
    final amountParts = amount.splitUptoDecimal(context);
    final beforeDecimal = amountParts[0];
    final afterDecimal = amountParts.length > 1 ? amountParts[1] : '00';
    final defaultContent = RichText(
      text: CustomTextSpan.semantics(
        text: beforeDecimal,
        style: sdkFigTreeTextTheme.headlineMedium,
        children: [
          const CustomTextSpan.semantics(text: '.'),
          CustomTextSpan.semantics(
            text: afterDecimal,
            style: sdkFigTreeTextTheme.headlineMedium?.w400,
          ),
        ],
      ),
    );
    return defaultContent;
  }
}
