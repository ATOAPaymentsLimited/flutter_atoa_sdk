import 'package:atoa_sdk/atoa_sdk.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class ConnectBankPage extends StatefulWidget {
  const ConnectBankPage({super.key, this.onSkip});

  final ValueChanged<BuildContext>? onSkip;

  @override
  State<ConnectBankPage> createState() => _ConnectBankPageState();
}

class _ConnectBankPageState extends State<ConnectBankPage>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<BankInstitutionsController>()
        ..selectBank(null)
        ..fetchBanks();
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => PopScope(
        canPop: !context.read<BankInstitutionsState>().isLoading,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Scaffold(
              backgroundColor: context.regalColor.snowWhite,
              // appBar: AppBar(
              //   automaticallyImplyLeading: false,
              //   leading: showBackButton
              //       ? Builder(
              //           builder: (context) {
              //             final isProcessing = context.select(
              //               (BankInstitutionsController controller) =>
              //                   controller.isLoading,
              //             );
              //             return CustomBackButton(isActive: !isProcessing);
              //           },
              //         )
              //       : null,
              //   title: CustomText.semantics(
              //     context.l10n.connectYourBank,
              //     style: context.montserrat.headlineSmall.copyWith(
              //       fontSize: 20.sp,
              //     ),
              //   ),
              //   centerTitle: true,
              //   actions: widget.onSkip != null
              //       ? [
              //           Center(
              //             child: CustomInkWell(
              //               semanticsLabel: context.l10n.skip,
              //               context: context,
              //               trackLabel: 'Skip',
              //               onTap: () => widget.onSkip?.call(context),
              //               borderRadius:
              //                   BorderRadius.circular(Spacing.small.value),
              //               child: Padding(
              //                 padding: Spacing.xtraLarge.x + Spacing.mini.y,
              //                 child: CustomText.semantics(
              //                   context.l10n.skip,
              //                   style: context.labelMedium?.copyWith(
              //                     color: context.regalColor.vividRed,
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ]
              //       : null,
              // ),
              body: const ConnectBankBody(),
            ),
          ],
        ),
      );
}
