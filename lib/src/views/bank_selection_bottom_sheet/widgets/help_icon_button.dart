import 'package:atoa_sdk/gen/assets.gen.dart';
import 'package:atoa_sdk/src/controllers/bank_institutions_controller.dart';
import 'package:atoa_sdk/src/shared_widgets/bottom_sheet_actions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class HelpIconButton extends StatelessWidget {
  const HelpIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BottomSheetAction(
        trackLabel: 'Help Icon',
        semanticsLabel: 'Help icon',
        onTap: () {
          context.read<BankInstitutionsController>().showHowPaymentWorks = true;
        },
        child: Assets.icons.help.svg(
          height: Spacing.large.value,
          width: Spacing.large.value,
          colorFilter: ColorFilter.mode(
            NeutralColors.light().grey.shade600,
            BlendMode.srcIn,
          ),
        ),
      );
}
