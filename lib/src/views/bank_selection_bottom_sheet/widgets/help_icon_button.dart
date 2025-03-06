import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/src/controllers/bank_institutions_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class HelpIconButton extends StatelessWidget {
  const HelpIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) => CustomGestureDetector(
        context: context,
        trackLabel: 'Help Icon',
        semanticsLabel: 'Help icon',
        onTap: () {
          context.read<BankInstitutionsController>().showHowPaymentWorks = true;
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
