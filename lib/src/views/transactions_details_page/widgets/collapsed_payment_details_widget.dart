import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class CollapsedPaymentDetailsWidget extends StatelessWidget {
  const CollapsedPaymentDetailsWidget({
    required this.transactionDetails,
    required this.isExpanded,
    required this.theme,
    super.key,
  });

  final TransactionDetails transactionDetails;
  final bool isExpanded;
  final ExpandableThemeData Function(BuildContext context) theme;

  @override
  Widget build(BuildContext context) => Container(
        padding: Spacing.medium.x + Spacing.small.y,
        decoration: BoxDecoration(
          color: context.intactColors.white,
          border: isExpanded
              ? Border(
                  top: BorderSide(color: context.neutralColors.grey.shade200),
                  left: BorderSide(color: context.neutralColors.grey.shade200),
                  right: BorderSide(color: context.neutralColors.grey.shade200),
                )
              : Border.all(
                  color: context.neutralColors.grey.shade200,
                ),
          borderRadius: isExpanded
              ? BorderRadius.only(
                  topLeft: Radius.circular(
                    Spacing.medium.value,
                  ),
                  topRight: Radius.circular(
                    Spacing.medium.value,
                  ),
                )
              : Spacing.medium.brAll,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Assets.icons.bill.svg(
                  colorFilter: ColorFilter.mode(
                    context.intactColors.black,
                    BlendMode.srcIn,
                  ),
                ),
                Spacing.small.xBox,
                CustomText.semantics(
                  context.l10n.paymentDetails,
                  style: context.bodyLarge?.w600,
                ),
              ],
            ),
            ExpandableIcon(
              theme: theme.call(context),
            ),
          ],
        ),
      );
}
