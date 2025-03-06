import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/atoa_loader.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/powered_by_atoa_widget.dart';
import 'package:atoa_flutter_sdk/src/views/how_to_make_payment/widgets/continue_button.dart';
import 'package:atoa_flutter_sdk/src/views/how_to_make_payment/widgets/how_payment_works_title_widget.dart';
import 'package:atoa_flutter_sdk/src/views/how_to_make_payment/widgets/how_to_make_payment_steps.dart';
import 'package:atoa_flutter_sdk/src/views/how_to_make_payment/widgets/trust_atoa_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class HowToMakePaymentView extends StatelessWidget {
  const HowToMakePaymentView({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const HowPaymentWorksTitleWidget(),
          Spacing.huge.yBox,
          Consumer<BankInstitutionsState>(
            builder: (_, state, __) {
              final isLoading = state.isLoading;

              if (isLoading) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacing.huge.yBox * 9,
                    const AtoaLoader(),
                    Spacing.huge.yBox * 9,
                  ],
                );
              }
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.images.redBackAtoaLogo.image(
                        width: Spacing.huge.value * 2,
                        height: Spacing.huge.value * 2,
                      ),
                      Spacing.medium.xBox,
                      Assets.gifs.dotLoading.lottie(
                        width: Spacing.xtraLarge.value * 2 + Spacing.tiny.value,
                        repeat: false,
                      ),
                      Spacing.medium.xBox,
                      Assets.images.bankLogos.image(
                        width: Spacing.xtraLarge.value * 6 +
                            Spacing.small.value +
                            Spacing.tiny.value,
                        height: Spacing.huge.value * 2,
                      ),
                    ],
                  ),
                  Spacing.xtraLarge.yBox * 2,
                  const HowToMakePaymentSteps(),
                  Spacing.huge.yBox,
                  const TrustAtoaWidget(),
                  Spacing.huge.yBox,
                  const ContinueButton(),
                  Spacing.medium.yBox,
                  const PoweredByAtoaWidget(),
                  Spacing.huge.yBox,
                ],
              );
            },
          ),
        ],
      );
}
