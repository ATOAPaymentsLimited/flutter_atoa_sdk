import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/bottom_sheet_actions.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class BankBackButton extends StatelessWidget {
  const BankBackButton({super.key});

  @override
  Widget build(BuildContext context) => BottomSheetAction(
        trackLabel: 'Back Icon',
        semanticsLabel: 'Back icon',
        onTap: () => Navigator.pop(context),
        child: Assets.icons.iconBack.svg(
          height: Spacing.large.value,
          width: Spacing.large.value,
          colorFilter: ColorFilter.mode(
            context.baseColors.black,
            BlendMode.srcIn,
          ),
        ),
      );
}
