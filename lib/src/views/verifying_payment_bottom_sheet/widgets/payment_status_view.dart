import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/views/transactions_details_page/transactions_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class PaymentStatusView extends StatefulWidget {
  const PaymentStatusView({
    required this.bankState,
    required this.isCompleted,
    super.key,
  });

  final BankInstitutionsState bankState;
  final bool isCompleted;

  @override
  State<PaymentStatusView> createState() => _PaymentStatusViewState();
}

class _PaymentStatusViewState extends State<PaymentStatusView> {
  late ValueNotifier<bool> showTickAnimation;

  @override
  void initState() {
    super.initState();
    showTickAnimation = ValueNotifier(widget.isCompleted);

    if (widget.isCompleted) {
      Future<void>.delayed(
        const Duration(seconds: 2),
        () => showTickAnimation.value = false,
      );
    }
  }

  @override
  Widget build(BuildContext context) => Builder(
        builder: (context) => Consumer<PaymentStatusState>(
          builder: (_, state, __) {
            if (!state.started) {
              return const SizedBox.shrink();
            }

            return ValueListenableBuilder(
              valueListenable: showTickAnimation,
              builder: (context, showAnimation, child) => AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: showAnimation
                    ? SizedBox(
                        height: 0.6.sh,
                        child: Center(
                          child: Assets.gifs.tickMark.lottie(
                            height: 42.sp,
                            width: 42.sp,
                          ),
                        ),
                      )
                    : TransactionDetailsPage(
                        bankState: widget.bankState,
                        transactionDetails: state.details!,
                      ),
              ),
            );
          },
        ),
      );
}
