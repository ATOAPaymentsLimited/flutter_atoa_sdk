import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
import 'package:atoa_flutter_sdk/src/views/transactions_details_page/transactions_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class PaymentStatusView extends StatefulWidget {
  const PaymentStatusView({
    required this.isCompleted,
    super.key,
  });

  final bool isCompleted;

  @override
  State<PaymentStatusView> createState() => _PaymentStatusViewState();
}

class _PaymentStatusViewState extends State<PaymentStatusView> {
  late ValueNotifier<bool> showTickAnimation;
  late BankInstitutionsState bankState;

  @override
  void initState() {
    super.initState();
    showTickAnimation = ValueNotifier(widget.isCompleted);
    bankState = context.read<BankInstitutionsState>();

    if (widget.isCompleted) {
      Future<void>.delayed(
        const Duration(seconds: 2),
        () => showTickAnimation.value = false,
      );
    }
  }

  @override
  Widget build(BuildContext context) => ValueListenableBuilder(
        valueListenable: showTickAnimation,
        builder: (context, showAnimation, child) => AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: showAnimation
              ? SizedBox(
                  height: 0.7.sh,
                  width: 1.sw,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.gifs.tickMark.lottie(
                        height: Spacing.xtraLarge.value * 3,
                        width: Spacing.xtraLarge.value * 3,
                      ),
                      Spacing.medium.yBox,
                      CustomText.semantics(
                        context.l10n.paymentSuccessful,
                        style: kFigtreeTextTheme.titleSmall?.w700,
                      ),
                    ],
                  ),
                )
              : TransactionDetailsPage(
                  transactionDetails:
                      context.read<PaymentStatusState>().details!,
                ),
        ),
      );
}
