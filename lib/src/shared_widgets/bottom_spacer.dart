import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomSpacer extends StatelessWidget {
  const BottomSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).viewInsets.bottom;

    return SizedBox(height: math.max(bottomPadding, 34.sp));
  }
}
