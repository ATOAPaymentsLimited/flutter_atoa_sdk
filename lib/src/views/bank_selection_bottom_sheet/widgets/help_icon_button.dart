import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class HelpIconButton extends StatelessWidget {
  const HelpIconButton({
    required this.showHowPaymentWorks,
    super.key,
  });

  final ValueNotifier<bool> showHowPaymentWorks;

  @override
  Widget build(BuildContext context) => CustomGestureDetector(
        context: context,
        trackLabel: 'Help Icon',
        semanticsLabel: 'Help icon',
        onTap: () {
          showHowPaymentWorks.value = true;
        },
        child: CircleAvatar(
          radius: Spacing.large.value,
          backgroundColor: NeutralColors.light().grey.shade50,
          child: Center(
            child: CircleAvatar(
              backgroundColor: NeutralColors.light().grey.shade50,
              child: Assets.icons.help.svg(),
            ),
          ),
        ),
      );
}
