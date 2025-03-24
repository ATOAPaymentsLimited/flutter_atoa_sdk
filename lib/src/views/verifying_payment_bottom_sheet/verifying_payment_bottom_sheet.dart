import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/constants/constant.dart';
import 'package:atoa_flutter_sdk/src/controllers/connectivity_controller.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
import 'package:atoa_flutter_sdk/src/utility/connectivity_wrapper.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/error_widget.dart';
import 'package:atoa_flutter_sdk/src/views/verifying_payment_bottom_sheet/widgets/payment_status_view.dart';
import 'package:atoa_flutter_sdk/src/views/verifying_payment_bottom_sheet/widgets/verifying_payment_view.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class VerifyingPaymentBottomSheet extends StatefulWidget {
  const VerifyingPaymentBottomSheet({
    required this.bankInstitutionController,
    required this.connectivityController,
    super.key,
  });
  final BankInstitutionsController bankInstitutionController;
  final ConnectivityController connectivityController;

  static Future<TransactionDetails?> show(
    BuildContext context,
    BankInstitutionsController bankInstitutionController,
    PaymentStatusController paymentStatusController,
    ConnectivityController connectivityController,
  ) =>
      showModalBottomSheet<TransactionDetails?>(
        context: context,
        builder: (context) => StateNotifierProvider<BankInstitutionsController,
            BankInstitutionsState>.value(
          value: bankInstitutionController,
          builder: (context, child) => StateNotifierProvider<
              PaymentStatusController, PaymentStatusState>.value(
            value: paymentStatusController,
            builder: (context, _) => VerifyingPaymentBottomSheet(
              bankInstitutionController: bankInstitutionController,
              connectivityController: connectivityController,
            ),
          ),
        ),
        isScrollControlled: true,
        enableDrag: false,
        isDismissible: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Spacing.xtraLarge.value),
            topRight: Radius.circular(Spacing.xtraLarge.value),
          ),
        ),
        useSafeArea: true,
      );

  @override
  State<VerifyingPaymentBottomSheet> createState() =>
      _VerifyingPaymentBottomSheetState();
}

class _VerifyingPaymentBottomSheetState
    extends State<VerifyingPaymentBottomSheet> with WidgetsBindingObserver {
  late PaymentStatusController paymentStatusController;
  late BankInstitutionsState bankInstitutionState;
  final botToastBuilder = BotToastInit();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    paymentStatusController = context.read<PaymentStatusController>();
    bankInstitutionState = context.read<BankInstitutionsState>();

    Future.delayed(
      const Duration(seconds: 1),
      () => widget.bankInstitutionController.authorizeBank(),
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startPollingAfter20Sec(context);
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    paymentStatusController.stop();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    /// This is to prevent the API from crashing when the app is paused
    /// API throws an error when the app is paused
    /// This is a workaround to prevent the sdk from showing unknown error
    Future.delayed(
      const Duration(seconds: 2),
      () {
        if (state == AppLifecycleState.resumed) {
          paymentStatusController.resume();
        } else {
          paymentStatusController.pause();
        }
      },
    );
  }

  void _startPollingAfter20Sec(BuildContext context) {
    final paymentId =
        context.read<BankInstitutionsState>().paymentAuth?.paymentIdempotencyId;
    if (context.mounted) {
      paymentStatusController.startListening(
        paymentId ?? '',
      );
    }
  }

  @override
  Widget build(BuildContext context) => Theme(
        data: sdkLedgerTheme,
        child: StreamProvider<ConnectivityStatus>.value(
          initialData: ConnectivityStatus.waiting,
          value:
              widget.connectivityController.connectionStatusController.stream,
          builder: (context, child) => Consumer<PaymentStatusState>(
            builder: (_, paymentState, __) => AnimatedContainer(
              duration: kAnimationDuration,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: IntactColors.light().white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Spacing.xtraLarge.value),
                    topRight: Radius.circular(Spacing.xtraLarge.value),
                  ),
                ),
                child: Padding(
                  padding: Spacing.large.y + Spacing.xtraLarge.x,
                  child: ConnectivityWrapper(
                    child: Builder(
                      builder: (context) {
                        if (paymentState.exception != null) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Spacing.huge.yBox * 8,
                              const AtoaErrorWidget(),
                              Spacing.huge.yBox * 8,
                            ],
                          );
                        }
                        if (paymentState.details != null &&
                            paymentState.details?.status != null &&
                            !paymentState.details!.isAwaitingAuth &&
                            !paymentState.details!.notIntitated) {
                          return botToastBuilder(
                            context,
                            Theme(
                              data: sdkLedgerTheme,
                              child: PaymentStatusView(
                                isCompleted: paymentState.details!.isCompleted,
                              ),
                            ),
                          );
                        }

                        return VerifyingPaymentView(
                          bankIcon: bankInstitutionState.selectedBank?.bankIcon,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
