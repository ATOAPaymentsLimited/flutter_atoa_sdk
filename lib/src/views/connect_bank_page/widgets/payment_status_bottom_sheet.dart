import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/dotted_line_painter.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/sdk_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/cancel_confirmation_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/connect_bank_page/widgets/error_widget.dart';
import 'package:atoa_flutter_sdk/src/views/connect_bank_page/widgets/payment_status_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class PaymentStatusBottomSheet extends StatelessWidget {
  const PaymentStatusBottomSheet({
    required this.bankInstitutionController,
    required this.paymentStatusController,
    required this.bankState,
    required this.paymentState,
    super.key,
  });

  final BankInstitutionsController bankInstitutionController;
  final PaymentStatusController paymentStatusController;
  final BankInstitutionsState bankState;
  final PaymentStatusState paymentState;

  static Future<bool?> show(
    BuildContext context,
    BankInstitutionsController bankInstitutionController,
    BankInstitutionsState state,
    PaymentStatusController paymentStatusController,
    PaymentStatusState paymentState,
  ) =>
      showSdkBottomSheet<bool?>(
        context: context,
        onClose: (context) {
          Navigator.pop(context, true);
        },
        title: context.l10n.paymentDetails,
        body: (_) => PaymentStatusBottomSheet(
          bankInstitutionController: bankInstitutionController,
          paymentStatusController: paymentStatusController,
          bankState: state,
          paymentState: paymentState,
        ),
      );

  @override
  Widget build(BuildContext context) =>
      StateNotifierProvider<PaymentStatusController, PaymentStatusState>.value(
        value: paymentStatusController,
        builder: (context, _) => Consumer<PaymentStatusState>(
          builder: (_, paymentState, __) {
            return Builder(
              builder: (context) {
                if (paymentState.exception != null) {
                  return const AtoaErrorWidget();
                } else if (paymentState.details?.status != null &&
                    paymentState.details!.status !=
                        TransactionStatus.awaitingAuthorization()) {
                  return PaymentStatusView();
                }
                return SizedBox.shrink();
              },
            );
          },
        ),
      );
}
