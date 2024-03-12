import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_sdk/atoa_sdk.dart';
import 'package:atoa_sdk/l10n/l10n.dart';
import 'package:atoa_sdk/src/shared_widgets/shared_widgets.dart';
import 'package:atoa_sdk/src/utility/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal/regal.dart';
import 'package:shimmer/shimmer.dart';

class PaymentPageAppBar extends StatelessWidget {
  const PaymentPageAppBar({
    super.key,
    this.paymentRequestData,
  });

  final PaymentRequestData? paymentRequestData;

  @override
  Widget build(BuildContext context) {
    final receiverName = paymentRequestData?.merchantBusinessName ?? '';
    final storeLocation = paymentRequestData?.storeDetails?.locationName;
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: Spacing.medium.x + Spacing.medium.top,
            child: Row(
              children: [
                CustomInkWell(
                  context: context,
                  trackLabel: 'Back Button',
                  semanticsLabel: 'BackButton',
                  child: const Icon(Icons.arrow_back_ios_outlined),
                  onTap: () => Navigator.pop(context),
                ),
                Spacing.medium.xBox,
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    DecoratedBox(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: UserAvatar(
                        size: 40.sp,
                        url: paymentRequestData?.storeImg,
                        userName: '',
                        placeholder: Container(
                          height: 40.sp,
                          width: 40.sp,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: context.vividRed.tint10,
                          ),
                          child: Center(
                            child: CustomText.semantics(
                              _nameInitial,
                              style: context.labelSmall?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -8.sp,
                      right: -8.sp,
                      child: Container(
                        height: 24.sp,
                        width: 24.sp,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: context.regalColor.snowWhite,
                          border: Border.all(
                            color: context.grey.shade05,
                            width: 1.sp,
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: Spacing.mini.all,
                            child: Icon(
                              Icons.storefront_outlined,
                              color: context.regalColor.licoriceBlack,
                              size: 16.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Spacing.xtraLarge.xBox,
                if (paymentRequestData == null)
                  Shimmer.fromColors(
                    baseColor: context.grey.shade10,
                    highlightColor: context.grey.shade05,
                    enabled: paymentRequestData == null,
                    child: Container(
                      width: 140.sp,
                      height: 14.sp,
                      color: context.regalColor.snowWhite,
                    ),
                  )
                else
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText.semantics(
                        context.l10n.yourArePaying,
                        style: context.bodyLarge?.copyWith(
                          color: context.grey.shade40,
                        ),
                      ),
                      CustomText.semantics(
                        receiverName,
                        style: context.labelSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                      if (storeLocation != null &&
                          storeLocation != 'DEFAULT') ...[
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: context.grey.shade40,
                              size: Spacing.large.value,
                            ),
                            Spacing.mini.xBox,
                            RichText(
                              text: CustomTextSpan.semantics(
                                text: storeLocation,
                                style: context.bodyLarge?.copyWith(
                                  color: context.grey.shade40,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                      Spacing.mini.yBox,
                    ],
                  ),
              ],
            ),
          ),
          Spacing.mini.yBox,
        ],
      ),
    );
  }

  String get _nameInitial =>
      paymentRequestData?.merchantBusinessName.getInitials() ?? '';
}
