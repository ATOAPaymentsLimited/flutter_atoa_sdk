import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/hour_glass.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/shared_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:regal/regal.dart';

class PaymentStatusWidget extends StatelessWidget {
  const PaymentStatusWidget({
    super.key,
    this.isSuccess,
    this.paymentDetails,
    this.isPending = false,
  });

  final bool? isSuccess;
  final bool isPending;
  final TransactionDetails? paymentDetails;

  @override
  Widget build(BuildContext context) => Container(
        height: MediaQuery.of(context).size.width / 2,
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
          color: context.regalColor.snowWhite,
        ),
        alignment: Alignment.center,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _getPaymentStatusIcon(),
              Spacing.huge.yBox,
              if (paymentDetails?.paidAmount != null)
                CustomText.semantics(
                  context.l10n.amountText(paymentDetails!.paidAmount),
                  style: context.headlineLarge!.copyWith(fontSize: 40.sp),
                ),
              Spacing.medium.yBox,
              if (paymentDetails?.createdAt != null)
                CustomText.semantics(
                  paymentDetails!.createdAt.formattedDateTime(),
                  style:
                      context.bodyLarge!.copyWith(color: context.grey.shade60),
                ),
              Spacing.medium.yBox,
              Container(
                padding: Spacing.medium.y,
                width: 220.sp,
                decoration: BoxDecoration(
                  color: isPending
                      ? context.grey.shade20
                      : isSuccess != null && isSuccess!
                          ? RegalColors.darkCyan
                          : RegalColors.brightOrange,
                  borderRadius: BorderRadius.circular(
                    Spacing.small.value,
                  ),
                ),
                child: CustomText.semantics(
                  isPending
                      ? 'Processing'
                      : isSuccess != null && isSuccess!
                          ? 'Successful'
                          : 'Payment Failed',
                  style: context.bodyLarge!.copyWith(
                    color: isPending
                        ? RegalColors.licoriceBlack
                        : RegalColors.snowWhite,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Spacing.huge.yBox,
              Padding(
                padding: Spacing.small.all,
                child: RegalButton.primary(
                  shrink: true,
                  onPressed: () {
                    Navigator.pop(context, isSuccess);
                  },
                  size: RegalButtonSize.small,
                  trackLabel: 'Go Back',
                  label: 'Go Back',
                ),
              ),
            ],
          ),
        ),
      );

  Widget _getPaymentStatusIcon() {
    if (isPending) {
      return const HourGlass();
    } else if (isSuccess != null && isSuccess!) {
      return const SuccessTick();
    } else {
      return Icon(
        Icons.error_outline_outlined,
        size: Spacing.large.value * 4,
        color: RegalColors.darkOrange,
      );
    }
  }
}

extension StringExtension on String {
  String formattedDateTime({
    bool toLocal = true,
    String format = 'MMM dd yyyy,',
  }) =>
      DateFormat(format).add_jm().format(
            toLocal ? DateTime.parse(this).toLocal() : DateTime.parse(this),
          );
}
