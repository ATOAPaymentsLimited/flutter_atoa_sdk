// ignore_for_file: use_build_context_synchronously

import 'package:atoa_sdk/atoa_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:regal/regal.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ValueNotifier<double> totalAmountNotifier = ValueNotifier(67.0 * 2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          size: Spacing.huge.value,
        ),
        title: const CustomText.semantics('Demo E-commerce App'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Spacing.xtraLarge.all,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText.semantics(
                    '2 items',
                    style: context.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(73, 80, 87, 1),
                    ),
                  ),
                  Container(
                    padding: Spacing.large.x + Spacing.small.y,
                    color: const Color.fromRGBO(255, 249, 219, 1),
                    child: CustomText.semantics(
                      'Arrives by April 3rd to April 9th',
                      style: context.bodyMedium!.copyWith(
                        color: const Color.fromRGBO(73, 80, 87, 1),
                      ),
                    ),
                  ),
                ],
              ),
              Spacing.medium.yBox,
              ProductCardWidget(totalAmountNotifier: totalAmountNotifier),
              Spacing.medium.yBox,
              ProductCardWidget(totalAmountNotifier: totalAmountNotifier),
              Spacing.small.yBox,
              Spacing.huge.yBox,
              Row(
                children: [
                  CustomText.semantics(
                    'Pay Using',
                    style: context.labelSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ],
              ),
              Spacing.small.yBox,
              Spacing.tiny.yBox,
              Row(
                children: [
                  Radio(
                    visualDensity: const VisualDensity(
                        horizontal: VisualDensity.minimumDensity,
                        vertical: VisualDensity.minimumDensity),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    splashRadius: 0,
                    value: true,
                    groupValue: true,
                    onChanged: (bool? value) {},
                  ),
                  Spacing.small.yBox,
                  Spacing.tiny.yBox,
                  CustomText.semantics(
                    'Atoa - Instant Bank Pay',
                    style: context.bodyLarge!,
                  )
                ],
              ),
              Spacing.small.yBox,
              Spacing.tiny.yBox,
              Image.asset('assets/images/atoa.png'),
            ],
          ),
        ),
      ),
      bottomSheet: ValueListenableBuilder(
        valueListenable: totalAmountNotifier,
        builder: (context, value, Widget? child) => ActionButton(
          totalAmount: totalAmountNotifier.value,
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  ActionButton({
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

class ProductCardWidget extends StatelessWidget {
  ProductCardWidget({
    super.key,
    required this.totalAmountNotifier,
  });

  final ValueNotifier totalAmountNotifier;
  final ValueNotifier<int> totalItems = ValueNotifier(1);
  @override
  Widget build(BuildContext context) => Container(
        padding: Spacing.medium.all,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Spacing.large.value),
            border: Border.all(color: context.grey.shade10)),
        child: Row(
          children: [
            Image.asset(
              'assets/images/shoes.png',
              width: 108.sp,
              height: 90.sp,
            ),
            Spacing.large.xBox,
            Spacing.tiny.xBox,
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText.semantics(
                      'NikeCourt Lite 2',
                      style: context.labelSmall!
                          .copyWith(fontWeight: FontWeight.w600, height: 1.5),
                    ),
                    Spacing.large.xBox * 2,
                    SvgPicture.asset(
                      'assets/icons/delete.svg',
                      height: Spacing.large.value,
                      width: Spacing.large.value,
                    ),
                  ],
                ),
                Spacing.mini.yBox,
                Spacing.tiny.yBox,
                CustomText.semantics(
                  '£67',
                  style: context.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    color: const Color.fromRGBO(73, 80, 87, 1),
                  ),
                ),
                Spacing.mini.yBox,
                Spacing.tiny.yBox,
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Spacing.tiny.value),
                        border: Border.all(
                            color: const Color.fromRGBO(238, 239, 240, 1))),
                    child: ValueListenableBuilder(
                      valueListenable: totalItems,
                      builder: (context, value, child) => SizedBox(
                        width: 96.sp,
                        height: 36.sp,
                        child: Row(
                          children: [
                            Expanded(
                                child: InkWell(
                              child: Icon(
                                Icons.remove,
                                size: Spacing.large.value,
                                color: const Color.fromRGBO(52, 152, 219, 1),
                              ),
                              onTap: () {
                                if (totalItems.value > 1) {
                                  totalItems.value -= 1;
                                  totalAmountNotifier.value -= 67;
                                }
                              },
                            )),
                            Expanded(
                                child: CustomText.semantics(
                              totalItems.value.toString(),
                              textAlign: TextAlign.center,
                              style: context.bodyMedium,
                            )),
                            Expanded(
                                child: InkWell(
                              child: Icon(
                                Icons.add,
                                size: Spacing.large.value,
                                color: const Color.fromRGBO(52, 152, 219, 1),
                              ),
                              onTap: () {
                                if (totalItems.value < 5) {
                                  totalItems.value += 1;
                                  totalAmountNotifier.value += 67;
                                }
                              },
                            )),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ],
        ),
      );
}
