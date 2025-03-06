// ignore_for_file: unused_import

import 'dart:io';
import 'dart:ui' as ui;

import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/bank_institutions_controller.dart';
import 'package:atoa_flutter_sdk/src/controllers/payment_status_controller.dart';
import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
import 'package:atoa_flutter_sdk/src/utility/string_extensions.dart';
import 'package:atoa_flutter_sdk/src/views/confirmation_bottom_sheet/confirmation_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/transactions_details_page/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TransactionDetailsPage extends StatelessWidget {
  const TransactionDetailsPage({
    required this.transactionDetails,
    super.key,
  });

  final TransactionDetails transactionDetails;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacing.large.xBox * 2,
              Expanded(
                child: CustomText.semantics(
                  context.l10n.paymentDetails,
                  textAlign: TextAlign.center,
                  style: kFigtreeTextTheme.labelMedium?.w700.height130,
                ),
              ),
              Spacing.large.xBox,
              Padding(
                padding: Spacing.mini.top,
                child: CustomInkWell(
                  semanticsLabel: 'Close Dialog Sheet Icon',
                  context: context,
                  trackLabel: 'Close Dialog Sheet Icon',
                  onTap: () {
                    context.read<PaymentStatusController>().stop();
                    Navigator.pop(
                      context,
                      context.read<PaymentStatusState>().details,
                    );
                  },
                  child: Container(
                    width: Spacing.huge.value,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: NeutralColors.light().grey.shade50,
                    ),
                    child: Center(
                      child: Padding(
                        padding: Spacing.mini.all,
                        child: Icon(
                          Icons.close,
                          size: Spacing.medium.value,
                          color: context.intactColors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (transactionDetails.transactionDetails.first != null &&
              transactionDetails.transactionDetails.first?.updatedAt != null)
            CustomText.semantics(
              context.l10n.transactionDateAndTime(
                transactionDetails.transactionDetails.first!.updatedAt!
                    .formattedTime(),
                transactionDetails.transactionDetails.first!.updatedAt!
                    .formattedDateForPaymentDetails(context),
              ),
              style: kFigtreeTextTheme.bodyLarge?.w700,
            )
          else if (transactionDetails.transactionDetails.first?.createdAt !=
              null)
            CustomText.semantics(
              context.l10n.transactionDateAndTime(
                transactionDetails.transactionDetails.first!.createdAt!
                    .formattedTime(),
                transactionDetails.transactionDetails.first!.createdAt!
                    .formattedDateForPaymentDetails(context),
              ),
              style: kFigtreeTextTheme.bodyLarge?.w700,
            ),
          Spacing.huge.yBox * 2,
          TransactionDetailsTopCard(
            transactionDetails: transactionDetails,
          ),
          Padding(
            padding: Spacing.xtraLarge.top,
            child: Column(
              children: [
                TransactionDetailsStatusContainer(
                  transactionDetails: transactionDetails,
                ),
                Padding(
                  padding: Spacing.medium.top + Spacing.tiny.top,
                  child: TransactionDetailsInfoUi(
                    transactionDetails: transactionDetails,
                    isExpanded: false,
                  ),
                ),
                Spacing.medium.yBox,
                Spacing.huge.yBox,
              ],
            ),
          ),
        ],
      );
}
