import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_back_button.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/help_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class BankSelectionTitleWidget extends StatelessWidget {
  const BankSelectionTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BankBackButton(),
          Spacing.medium.xBox,
          Spacing.huge.xBox,
          Expanded(
            child: CustomText.semantics(
              context.l10n.selectYourBank,
              textAlign: TextAlign.center,
              style: kFigtreeTextTheme.labelMedium?.w700.height130,
            ),
          ),
          Spacing.large.xBox,
          const HelpIconButton(),
        ],
      );
}
