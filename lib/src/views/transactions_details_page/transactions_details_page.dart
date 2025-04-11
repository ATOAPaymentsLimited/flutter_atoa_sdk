// ignore_for_file: unused_import

import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/bank_institutions_controller.dart';
import 'package:atoa_flutter_sdk/src/controllers/payment_status_controller.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/bottom_sheet_actions.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
import 'package:atoa_flutter_sdk/src/utility/string_extensions.dart';
import 'package:atoa_flutter_sdk/src/views/confirmation_bottom_sheet/confirmation_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/transactions_details_page/widgets/redirection_timer_widget.dart';
import 'package:atoa_flutter_sdk/src/views/transactions_details_page/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class TransactionDetailsPage extends StatefulWidget {
  const TransactionDetailsPage({
    required this.paymentDetails,
    super.key,
  });

  final TransactionDetails paymentDetails;

  @override
  State<TransactionDetailsPage> createState() => _TransactionDetailsPageState();
}

class _TransactionDetailsPageState extends State<TransactionDetailsPage> {
  Timer? _countdownTimer;
  late ValueNotifier<Duration> _countdownDurationLeft;
  @override
  void initState() {
    super.initState();
    _countdownDurationLeft = ValueNotifier(
      Duration(seconds: widget.paymentDetails.isPending ? 180 : 10),
    );
    startTimer();
  }

  void startTimer() {
    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      final seconds = _countdownDurationLeft.value.inSeconds - 1;
      if (seconds < 0) {
        if (_countdownTimer != null) {
          _countdownTimer!.cancel();
          Navigator.pop(context);
        }
      } else {
        _countdownDurationLeft.value = Duration(seconds: seconds);
      }
    });
  }

  @override
  void dispose() {
    if (_countdownTimer != null) {
      _countdownTimer!.cancel();
    }
    _countdownDurationLeft.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Opacity(
                  opacity: 0,
                  child: EmptyIconPlaceholder(),
                ),
                Spacing.mediumlarge.xBox * 2,
                Selector<PaymentStatusState, TransactionDetails?>(
                  selector: (context, state) => state.details,
                  builder: (context, details, _) {
                    final transactionDetails = details ?? widget.paymentDetails;
                    return Expanded(
                      child: Column(
                        children: [
                          CustomText.semantics(
                            context.l10n.paymentDetails,
                            textAlign: TextAlign.center,
                            style: sdkFigTreeTextTheme.bodyLarge?.w700.height130
                                .textColor(
                              NeutralColors.light().grey.shade500,
                            ),
                          ),
                          if (transactionDetails.updatedAt != null)
                            CustomText.semantics(
                              context.l10n.transactionDateAndTime(
                                transactionDetails.updatedAt!.formattedTime(),
                                transactionDetails.updatedAt!
                                    .formattedDateForPaymentDetails(context),
                              ),
                              style: sdkFigTreeTextTheme.bodyLarge?.w700,
                            )
                          else
                            CustomText.semantics(
                              context.l10n.transactionDateAndTime(
                                transactionDetails.createdAt.formattedTime(),
                                transactionDetails.createdAt
                                    .formattedDateForPaymentDetails(context),
                              ),
                              style: sdkFigTreeTextTheme.bodyLarge?.w700,
                            ),
                        ],
                      ),
                    );
                  },
                ),
                Spacing.large.xBox,
                BottomSheetAction(
                  semanticsLabel: 'Close Dialog Sheet Icon',
                  trackLabel: 'Close Dialog Sheet Icon',
                  onTap: () {
                    context.read<PaymentStatusController>().stop();
                    Navigator.pop(
                      context,
                      context.read<PaymentStatusState>().details,
                    );
                  },
                  child: Icon(
                    Icons.close,
                    size: Spacing.large.value,
                    color: IntactColors.light().black,
                  ),
                ),
              ],
            ),
            Spacing.huge.yBox * 2,
            TransactionDetailsTopCard(
              transactionDetails: widget.paymentDetails,
            ),
            Padding(
              padding: Spacing.xtraLarge.top,
              child: ValueListenableBuilder(
                valueListenable: _countdownDurationLeft,
                builder: (context, durationLeft, child) => Column(
                  children: [
                    TransactionDetailsStatusContainer(
                      transactionDetails: widget.paymentDetails,
                      durationLeft: durationLeft,
                    ),
                    Padding(
                      padding: Spacing.medium.top + Spacing.tiny.top,
                      child: TransactionDetailsInfoUi(
                        transactionDetails: widget.paymentDetails,
                        isExpanded: false,
                      ),
                    ),
                    Spacing.xtraLarge.yBox,
                    RedirectionTimerWidget(
                      durationLeft: durationLeft,
                    ),
                    Spacing.medium.yBox,
                    Spacing.huge.yBox,
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
