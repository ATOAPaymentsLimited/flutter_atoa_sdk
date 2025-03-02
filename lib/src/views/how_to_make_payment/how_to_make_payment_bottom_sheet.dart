import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/powered_by_atoa_widget.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/sdk_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/how_to_make_payment/widgets/continue_button.dart';
import 'package:atoa_flutter_sdk/src/views/how_to_make_payment/widgets/how_to_make_payment_steps.dart';
import 'package:atoa_flutter_sdk/src/views/how_to_make_payment/widgets/trust_atoa_widget.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class HowToMakePaymentBottomSheet extends StatefulWidget {
  const HowToMakePaymentBottomSheet({
    required this.paymentId,
    super.key,
    this.isHelp = true,
  });

  final bool isHelp;
  final String paymentId;

  static Future<void> show(
    BuildContext context, {
    required String paymentId,
    bool isHelp = true,
  }) =>
      showSdkBottomSheet<void>(
        context: context,
        title: context.l10n.continueToYourBank,
        useRootNavigator: true,
        body: (context) => HowToMakePaymentBottomSheet(
          isHelp: isHelp,
          paymentId: paymentId,
        ),
        onClose: (context) => {
          Navigator.pop(context),
        },
      );

  @override
  State<HowToMakePaymentBottomSheet> createState() =>
      _HowToMakePaymentBottomSheetState();
}

class _HowToMakePaymentBottomSheetState
    extends State<HowToMakePaymentBottomSheet>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) => Column(
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
          ContinueButton(
            isHelp: widget.isHelp,
            paymentId: widget.paymentId,
          ),
          Spacing.medium.yBox,
          const PoweredByAtoaWidget(),
          Spacing.huge.yBox,
        ],
      );
}
