import 'package:atoa_flutter_sdk/constants/constant.dart';
import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/atoa_loader.dart';
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
  late BankInstitutionsState bankState;
  late PaymentStatusState paymentStatusState;

  @override
  void initState() {
    super.initState();
    paymentStatusState = context.read<PaymentStatusState>();
    bankState = context.read<BankInstitutionsState>();

    Future<void>.delayed(
      const Duration(seconds: 2),
      () {
        if (!mounted) return;
        Navigator.pop(context, paymentStatusState.details);
      },
    );
  }

  @override
  Widget build(BuildContext context) => AnimatedSwitcher(
        duration: kAnimationDuration,
        child: SizedBox(
          height: 0.60.sh,
          width: 1.sw,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.isCompleted)
                Assets.gifs.tickMark.lottie(
                  height: Spacing.xtraLarge.value * 3,
                  width: Spacing.xtraLarge.value * 3,
                )
              else
                const FetchingBankLoader(),
            ],
          ),
        ),
      );
}
