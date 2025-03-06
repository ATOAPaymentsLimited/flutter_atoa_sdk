import 'package:atoa_core/atoa_core.dart';

import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class TransactionDetailsUtility {
  static Color getBackgroundColor(
    TransactionDetails transactionDetails,
    BuildContext context,
  ) =>
      transactionDetails.txnPaymentStatus.map(
        awaitingAuthorization: (TransactionStatusAwaitingAuthorization value) =>
            RegalColors.darkOrange,
        cancelled: (TransactionStatusCancelled value) => RegalColors.vividRed,
        completed: (TransactionStatusCompleted value) =>
            transactionDetails.isSettlementInProcess
                ? RegalColors.darkOrange
                : RegalColors.darkCyan,
        expired: (TransactionStatusExpired value) => RegalColors.grey.shade60,
        failed: (TransactionStatusFailed value) => RegalColors.vividRed,
        pending: (TransactionStatusPending value) => RegalColors.darkOrange,
        refunded: (TransactionStatusRefunded value) => RegalColors.darkBlue,
        unknown: (TransactionStatusUnknown value) => RegalColors.grey.shade60,
        paymentNotInitiated: (TransactionStatusPaymentNotInitiated value) =>
            RegalColors.darkOrange,
      );
}
