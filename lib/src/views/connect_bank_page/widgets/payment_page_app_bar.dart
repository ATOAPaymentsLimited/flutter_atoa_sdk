import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_sdk/atoa_sdk.dart';
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
                            const Icon(
                              Icons.location_on,
                            ),

                            // Assets.icons.locationOn.svg(
                            //   colorFilter: ColorFilter.mode(
                            //     context.grey.shade40,
                            //     BlendMode.srcIn,
                            //   ),
                            //   height: 14.sp,
                            // ),
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
                        Spacing.mini.yBox,
                      ],
                    ],
                  ),
              ],
            ),
          ),
          Spacing.mini.yBox,
          Container(
            height: 1.sp,
            width: double.infinity,
            color: context.grey.shade05,
          ),
        ],
      ),
    );
  }

  String get _nameInitial =>
      paymentRequestData?.merchantBusinessName.getInitials() ?? '';
}