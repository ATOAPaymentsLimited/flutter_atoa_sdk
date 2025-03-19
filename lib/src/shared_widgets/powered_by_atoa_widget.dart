import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class PoweredByAtoaWidget extends StatelessWidget {
  const PoweredByAtoaWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText.semantics(
            context.l10n.poweredBy,
            style: context.labelSmall?.w500.textColor(
              context.neutralColors.grey.shade500,
            ),
          ),
          Assets.icons.atoaLogo.svg(
            width: Spacing.huge.value + Spacing.mini.value + Spacing.tiny.value,
            height: Spacing.medium.value,
            colorFilter: ColorFilter.mode(
              context.neutralColors.grey.shade500,
              BlendMode.srcIn,
            ),
          ),
        ],
      );
}
