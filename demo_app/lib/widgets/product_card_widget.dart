import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:regal/regal.dart';

class ProductCardWidget extends StatelessWidget {
  ProductCardWidget({
    super.key,
    required this.name,
    required this.totalAmountNotifier,
  });

  final ValueNotifier totalAmountNotifier;
  final ValueNotifier<int> totalItems = ValueNotifier(1);
  final String name;
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
                      name,
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
                                if (value > 1) {
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
                                if (value < 5) {
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
