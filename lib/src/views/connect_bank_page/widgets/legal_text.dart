import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal/regal.dart';

class LegalText extends StatelessWidget {
  const LegalText({super.key});

  @override
  Widget build(BuildContext context) => CustomText.semantics(
        context.l10n.atoaPoweredByYapily,
        style: context.bodyMedium?.copyWith(
          color: RegalColors.grey.shade40,
          fontSize: 11.sp,
          height: 1.5,
        ),
        textAlign: TextAlign.center,
      );
}
