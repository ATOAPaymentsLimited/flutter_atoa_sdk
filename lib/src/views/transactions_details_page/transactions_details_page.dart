// ignore_for_file: unused_import

import 'dart:io';
import 'dart:ui' as ui;

import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/bank_institutions_controller.dart';
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
    required this.bankState,
    super.key,
    this.isCompleted = false,
  });

  final TransactionDetails transactionDetails;
  final BankInstitutionsState bankState;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          if (transactionDetails.updatedAt != null)
            CustomText.semantics(
              context.l10n.transactionDateAndTime(
                transactionDetails.updatedAt!.formattedTime(),
                transactionDetails.updatedAt!
                    .formattedDateForPaymentDetails(context),
              ),
              style: kFigtreeTextTheme.bodyLarge?.w700,
            )
          else
            CustomText.semantics(
              context.l10n.transactionDateAndTime(
                transactionDetails.createdAt.formattedTime(),
                transactionDetails.createdAt
                    .formattedDateForPaymentDetails(context),
              ),
              style: kFigtreeTextTheme.bodyLarge?.w700,
            ),
          Spacing.huge.yBox * 2,
          TransactionDetailsTopCard(
            transactionDetails: transactionDetails,
            showRetry: false,
            isCompleted: isCompleted,
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
                    bankState: bankState,
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
