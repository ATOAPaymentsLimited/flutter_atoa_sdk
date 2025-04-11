import 'package:flutter/material.dart';
import 'package:fluttersdk/utils/connectivity_controller.dart';
import 'package:fluttersdk/utils/connectivity_wrapper.dart';
import 'package:fluttersdk/widgets/pay_now_bottom_sheet.dart';
import 'package:fluttersdk/widgets/product_card_widget.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  final totalAmountNotifier = 2.00;

  @override
  Widget build(BuildContext context) {
    return StreamProvider<ConnectivityStatus>(
      initialData: ConnectivityStatus.waiting,
      create: (_) {
        final connectivityService = ConnectivityController();

        connectivityService.checkConnection();
        return connectivityService.connectionStatusController.stream;
      },
      builder: (context, child) => ConnectivityWrapper(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
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
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: const Color.fromRGBO(73, 80, 87, 1),
                            ),
                      ),
                      Container(
                        padding: Spacing.large.x + Spacing.small.y,
                        color: const Color.fromRGBO(255, 249, 219, 1),
                        child: CustomText.semantics(
                          'Arrives by April 3rd to April 9th',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: const Color.fromRGBO(73, 80, 87, 1),
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Spacing.medium.yBox,
                  const ProductCardWidget(
                    name: 'NikeCourt Lite 1',
                  ),
                  Spacing.medium.yBox,
                  const ProductCardWidget(
                    name: 'NikeCourt Lite 2',
                  ),
                  Spacing.huge.yBox,
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
          bottomSheet: PayNowBottomSheet(
            totalAmount: totalAmountNotifier,
          ),
        ),
      ),
    );
  }
}
