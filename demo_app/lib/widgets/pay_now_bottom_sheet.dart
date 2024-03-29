import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
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
      env: AtoaEnv.prod, /// or AtoaEnv.sandbox
    );
  }

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: context.regalColor.snowWhite,
          boxShadow: const [
            BoxShadow(
              color: Color(0x07000000),
              blurRadius: 12,
              offset: Offset(0, -8),
              spreadRadius: 0,
            )
          ],
        ),
        child: Padding(
          padding: Spacing.xtraLarge.all,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    onPressed: () =>
                        value ? null : _getPaymentId(context, totalAmount),
                    label: 'Pay Now',
                    trackLabel: 'Pay Now',
                    enable: !value,
                    loading: value,
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
        isLoading.value = false;
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
