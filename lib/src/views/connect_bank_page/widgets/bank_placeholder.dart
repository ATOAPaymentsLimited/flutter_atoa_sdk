import 'package:flutter/material.dart';
import 'package:regal/regal.dart';
import 'package:shimmer/shimmer.dart';

class BankPlaceholder extends StatelessWidget {
  const BankPlaceholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Container(
          margin: Spacing.tiny.all,
          decoration: BoxDecoration(
            color: RegalColors.grey,
            borderRadius: BorderRadius.circular(Spacing.medium.value),
            border: Border.all(
              color: context.grey.shade10,
            ),
          ),
        ),
      );
}
