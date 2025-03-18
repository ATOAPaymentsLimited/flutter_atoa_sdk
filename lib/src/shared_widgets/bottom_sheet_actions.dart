import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class EmptyIconPlaceholder extends StatelessWidget {
  const EmptyIconPlaceholder({super.key});

  @override
  Widget build(BuildContext context) => CircleAvatar(
      radius: Spacing.large.value,
      backgroundColor: context.neutralColors.grey.shade50,
    );
}

class BottomSheetAction extends StatelessWidget {
  const BottomSheetAction({
    required this.child,
    required this.trackLabel,
    required this.semanticsLabel,
    this.onTap,
    super.key,
  });

  final String trackLabel;
  final String semanticsLabel;
  final Widget child;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => CustomGestureDetector(
        context: context,
        trackLabel: trackLabel,
        semanticsLabel: semanticsLabel,
        onTap: onTap,
        child: CircleAvatar(
          radius: Spacing.large.value,
          backgroundColor: context.neutralColors.grey.shade50,
          child: child,
        ),
      );
}
