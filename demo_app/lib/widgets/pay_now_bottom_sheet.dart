import 'package:atoa_sdk/atoa_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal/regal.dart';

class PayNowBottomSheet extends StatelessWidget {
  PayNowBottomSheet({
    super.key,
    required this.totalAmount,
  });

  final double totalAmount;
  final ValueNotifier<bool> isLoading = ValueNotifier(false);

  void _showSheet(BuildContext context, String paymentId) {
    AtoaSdk.show(
      context,
      paymentId: paymentId,
      env: AtoaEnv.prod,
    );
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: Spacing.xtraLarge.x + Spacing.large.bottom,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomText.semantics(
                  'Total',
                  style: context.bodyLarge!.copyWith(
                    color: context.grey.shade40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '£ ${totalAmount.toString()}',
                  style: context.labelMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
            Spacing.huge.xBox,
            SizedBox(
              width: 164.sp,
              height: 56.sp,
              child: ValueListenableBuilder(
                valueListenable: isLoading,
                builder: (context, value, child) => RegalButton.primary(
                  shrink: true,
                  onPressed: () => isLoading.value
                      ? null
                      : _getPaymentId(context, totalAmount),
                  label: 'Pay Now',
                  trackLabel: 'Pay Now',
                  enable: !isLoading.value,
                  loading: isLoading.value,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(52, 152, 219, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Spacing.mini.value),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  Future<void> _getPaymentId(BuildContext context, totalAmount) async {
    isLoading.value = true;
    final paymentRequestId =
        await AtoaSdk.getPaymentRequestId(amount: totalAmount);
    if (context.mounted) {
      if (paymentRequestId.isNotEmpty) {
        isLoading.value = false;
        _showSheet(context, paymentRequestId);
      } else {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              backgroundColor: RegalColors.darkOrange,
              content: Text(
                'Oops, An Error Occurred',
                style: context.headlineSmall!.copyWith(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          );
      }
    }
  }
}
