import 'package:flutter/material.dart';
import 'package:fluttersdk/widgets/pay_now_bottom_sheet.dart';
import 'package:fluttersdk/widgets/product_card_widget.dart';
import 'package:regal/regal.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ValueNotifier<double> totalAmountNotifier = ValueNotifier(67.0 * 2);

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
              ProductCardWidget(
                  name: 'NikeCourt Lite 1',
                  totalAmountNotifier: totalAmountNotifier),
              Spacing.medium.yBox,
              ProductCardWidget(
                  name: 'NikeCourt Lite 2',
                  totalAmountNotifier: totalAmountNotifier),
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
                  Spacing.medium.xBox,
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
        builder: (context, value, Widget? child) => PayNowBottomSheet(
          totalAmount: value,
        ),
      ),
    );
  }
}
