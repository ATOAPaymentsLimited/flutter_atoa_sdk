import 'package:atoa_sdk/atoa_sdk.dart';
import 'package:atoa_sdk/gen/assets.gen.dart';
import 'package:atoa_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_down_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class BankDownIcon extends StatelessWidget {
  const BankDownIcon({
    required this.bank,
    super.key,
  });

  final BankInstitution bank;

  @override
  Widget build(BuildContext context) => CustomInkWell(
        context: context,
        trackLabel: 'Bank Down',
        semanticsLabel: 'Bank Down',
        enableTracking: false,
        onTap: () => BankDownBottomSheet.show(context, bank),
        child: Container(
          padding: Spacing.tiny.y + Spacing.mini.x,
          decoration: BoxDecoration(
            color: SemanticsColors.light().error.subtle,
            borderRadius: Spacing.medium.brAll,
          ),
          child: Assets.icons.iconError.svg(
            height: Spacing.medium.value,
            width: Spacing.medium.value,
          ),
        ),
      );
}
