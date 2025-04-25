import 'package:atoa_flutter_sdk/src/theme/theme.dart';
import 'package:atoa_flutter_sdk/src/utility/utility.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class DefaultAvatar extends StatelessWidget {
  const DefaultAvatar({
    required this.userName,
    required this.size,
    super.key,
    this.textStyle,
    this.isGroup = false,
  });

  final String? userName;
  final double size;
  final TextStyle? textStyle;
  final bool isGroup;

  @override
  Widget build(BuildContext context) {
    final initials = userName?.getInitials() ?? '';
    return CircleAvatar(
      radius: size / 2,
      backgroundColor: const VividRed().tint10,
      child: Center(
        child: initials.isNotEmpty
            ? CustomText.semantics(
                initials,
                style: textStyle ?? sdkFigTreeTextTheme.displayLarge,
              )
            : Icon(
                isGroup ? Icons.group_outlined : Icons.person_outline,
                color: Colors.white,
                size: size / 1.5,
              ),
      ),
    );
  }
}
