import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          color: context.regalColor.snowWhite,
          border: isExpanded
              ? Border(
                  top: BorderSide(color: context.grey.shade10),
                  left: BorderSide(color: context.grey.shade10),
                  right: BorderSide(color: context.grey.shade10),
                )
              : Border.all(
                  width: 1.sp,
                  color: context.grey.shade10,
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
              : BorderRadius.circular(12.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Assets.icons.bill.svg(
                  colorFilter: ColorFilter.mode(
                    context.regalColor.licoriceBlack,
                    BlendMode.srcIn,
                  ),
                ),
                Spacing.small.xBox,
                CustomText.semantics(
                  context.l10n.paymentDetails,
                  style: context.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
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
