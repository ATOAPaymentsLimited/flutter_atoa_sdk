import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class BankBackButton extends StatelessWidget {
  const BankBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) => CustomGestureDetector(
        context: context,
        trackLabel: 'Back Icon',
        semanticsLabel: 'Back icon',
        child: CircleAvatar(
          radius: Spacing.large.value,
          backgroundColor: NeutralColors.light().grey.shade50,
          child: Center(
            child: Padding(
              padding: Spacing.mini.left,
              child: Assets.icons.iconBack.svg(
                colorFilter: ColorFilter.mode(
                  context.intactColors.black,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      );
}
