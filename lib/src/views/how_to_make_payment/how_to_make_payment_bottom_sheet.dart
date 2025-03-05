import 'dart:async';

import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/di/injection.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/atoa_loader.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/powered_by_atoa_widget.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/sdk_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/how_to_make_payment/widgets/continue_button.dart';
import 'package:atoa_flutter_sdk/src/views/how_to_make_payment/widgets/how_to_make_payment_steps.dart';
import 'package:atoa_flutter_sdk/src/views/how_to_make_payment/widgets/trust_atoa_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class HowToMakePaymentBottomSheet extends StatefulWidget {
  const HowToMakePaymentBottomSheet({
    super.key,
    this.isHelp = true,
  });

  final bool isHelp;

  static Future<TransactionDetails?> show(
    BuildContext context, {
    bool isHelp = true,
  }) =>
      showSdkBottomSheet<TransactionDetails?>(
        context: context,
        title: context.l10n.continueToYourBank,
        body: (context) => HowToMakePaymentBottomSheet(
          isHelp: isHelp,
        ),
      );

  @override
  State<HowToMakePaymentBottomSheet> createState() =>
      _HowToMakePaymentBottomSheetState();
}

class _HowToMakePaymentBottomSheetState
    extends State<HowToMakePaymentBottomSheet>
    with SingleTickerProviderStateMixin {
  late BankInstitutionsController bankInstitutionsController;
  late PaymentStatusController paymentStatusController;
  @override
  void initState() {
    super.initState();
    bankInstitutionsController = getIt.get<BankInstitutionsController>();
    paymentStatusController = getIt.get<PaymentStatusController>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      bankInstitutionsController
        ..getPaymentDetails()
        ..fetchBanks();
    });
  }

  @override
  void dispose() {
    bankInstitutionsController.dispose();
    paymentStatusController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      StateNotifierProvider<BankInstitutionsController, BankInstitutionsState>(
        create: (_) => bankInstitutionsController,
        builder: (context, child) =>
            StateNotifierProvider<PaymentStatusController, PaymentStatusState>(
          create: (_) => paymentStatusController,
          builder: (context, _) => Consumer<BankInstitutionsState>(
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
                  ContinueButton(
                    isHelp: widget.isHelp,
                    bankInstitutionController:
                        context.read<BankInstitutionsController>(),
                  ),
                  Spacing.medium.yBox,
                  const PoweredByAtoaWidget(),
                  Spacing.huge.yBox,
                ],
              );
            },
          ),
        ),
      );
}
