import 'package:atoa_sdk/atoa_sdk.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class LegalText extends StatelessWidget {
  const LegalText({super.key});

  @override
  Widget build(BuildContext context) => CustomText.semantics(
        context.l10n.atoaPoweredByYapily,
        style: context.bodyMedium?.copyWith(
          color: RegalColors.grey.shade40,
          height: 1.5,
        ),
        textAlign: TextAlign.center,
      );
}
