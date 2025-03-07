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
            SemanticsColors.light().error.subtle,
        cancelled: (TransactionStatusCancelled value) =>
            SemanticsColors.light().negative.subtle,
        completed: (TransactionStatusCompleted value) =>
            transactionDetails.isSettlementInProcess
                ? SemanticsColors.light().error.subtle
                : SemanticsColors.light().positive.subtle,
        expired: (TransactionStatusExpired value) =>
            NeutralColors.light().grey.shade200,
        failed: (TransactionStatusFailed value) =>
            SemanticsColors.light().negative.subtle,
        pending: (TransactionStatusPending value) =>
            SemanticsColors.light().error.subtle,
        refunded: (TransactionStatusRefunded value) =>
            SemanticsColors.light().info.subtle,
        unknown: (TransactionStatusUnknown value) =>
            NeutralColors.light().grey.shade200,
        paymentNotInitiated: (TransactionStatusPaymentNotInitiated value) =>
            SemanticsColors.light().error.subtle,
      );
}
