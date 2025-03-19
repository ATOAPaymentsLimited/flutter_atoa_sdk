import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/bottom_sheet_actions.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class HowPaymentWorksTitleWidget extends StatelessWidget {
  const HowPaymentWorksTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Opacity(
            opacity: 0,
            child: EmptyIconPlaceholder(),
          ),
          Spacing.large.xBox,
          Expanded(
            child: CustomText.semantics(
              context.l10n.howToPayWithBankApp,
              textAlign: TextAlign.center,
              style: context.labelMedium?.w700.height130,
            ),
          ),
          Spacing.large.xBox,
          BottomSheetAction(
            trackLabel: 'Close Dialog Sheet Icon',
            semanticsLabel: 'Close Dialog Sheet Icon',
            onTap: () => Navigator.pop(context),
            child: Assets.icons.close.svg(
              height: Spacing.large.value,
              width: Spacing.large.value,
              colorFilter: ColorFilter.mode(
                context.intactColors.black,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      );
}
