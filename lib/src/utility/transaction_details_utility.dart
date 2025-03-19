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
            context.error.subtle,
        cancelled: (TransactionStatusCancelled value) =>
            context.negative.subtle,
        completed: (TransactionStatusCompleted value) =>
            transactionDetails.isSettlementInProcess
                ? context.error.subtle
                : context.positive.subtle,
        expired: (TransactionStatusExpired value) =>
            context.neutralColors.grey.shade200,
        failed: (TransactionStatusFailed value) =>
            context.negative.subtle,
        pending: (TransactionStatusPending value) =>
            context.error.subtle,
        refunded: (TransactionStatusRefunded value) =>
            context.info.subtle,
        unknown: (TransactionStatusUnknown value) =>
            context.neutralColors.grey.shade200,
        paymentNotInitiated: (TransactionStatusPaymentNotInitiated value) =>
            context.error.subtle,
      );
}
