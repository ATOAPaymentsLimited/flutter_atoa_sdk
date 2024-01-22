import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class DefaultAppBarBottom extends StatelessWidget
    implements PreferredSizeWidget {
  const DefaultAppBarBottom({super.key});

  @override
  Widget build(BuildContext context) => const RegalDivider();

  @override
  Size get preferredSize => Size.fromHeight(Spacing.xtraLarge.value);
}
