// ignore_for_file: unused_import

import 'dart:io';
import 'dart:ui' as ui;

import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/src/views/transactions_details_page/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TransactionDetailsPage extends StatefulWidget {
  const TransactionDetailsPage({
    required this.transactionDetails,
    super.key,
    this.failedRetryCallback,
    this.isCompleted = false,
  });

  final TransactionDetails transactionDetails;
  final bool isCompleted;

  final void Function(BuildContext)? failedRetryCallback;

  @override
  State<TransactionDetailsPage> createState() => _TransactionDetailsPageState();
}

class _TransactionDetailsPageState extends State<TransactionDetailsPage> {
  late TransactionDetails _transactionDetails;

  @override
  void initState() {
    super.initState();

    _transactionDetails = widget.transactionDetails;

    _handlePollingIfSettlementInProcess();
    _getLastPaymentStatus();
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          TransactionDetailsTopCard(
            transactionDetails: _transactionDetails,
            showRetry: false,
            isCompleted: widget.isCompleted,
            onRetry: widget.failedRetryCallback,
          ),
          Padding(
            padding: Spacing.xtraLarge.x + Spacing.xtraLarge.top,
            child: Column(
              children: [
                TransactionDetailsStatusContainer(
                  transactionDetails: _transactionDetails,
                ),
                Padding(
                  padding: Spacing.medium.top + Spacing.tiny.top,
                  child: TransactionDetailsInfoUi(
                    transactionDetails: _transactionDetails,
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

  void _getLastPaymentStatus() {
    // _transactionDetails.mapOrNull(
    //   TRANSACTION: (txnDetails) =>
    //       _paymentStatusController.getLatestPaymentStatus(
    //     paymentId: txnDetails.paymentIdempotencyId,
    //     onStatusUpdate: (txnDetails) {
    //       setState(() {
    //         _transactionDetails = txnDetails;
    //       });
    //     },
    //   ),
    // );
  }

  void _handlePollingIfSettlementInProcess() {
    // _transactionDetails.map(
    //   TRANSACTION: (txnDetails) => _paymentStatusController
    //       .startingPollingForUpdatedStatusForNewerTransaction(
    //     txnDetails: txnDetails,
    //     onStatusUpdate: (txnDetails) {
    //       setState(() {
    //         _transactionDetails = txnDetails;
    //       });
    //       _handlePollingIfSettlementInProcess();
    //     },
    //   ),
    //   PAYMENTREQUEST: (txnReq) {
    //     if (txnReq.transactions != null && txnReq.transactions!.isNotEmpty) {
    //       _paymentStatusController
    //           .startingPollingForUpdatedStatusForNewerTransaction(
    //         txnDetails: txnReq.transactions!.first,
    //         onStatusUpdate: (txnDetails) {
    //           setState(() {
    //             _transactionDetails = txnDetails;
    //           });
    //           _handlePollingIfSettlementInProcess();
    //         },
    //       );
    //     }
    //   },
    //   SPLITREQUEST: (value) => '',
    // );
  }
}
