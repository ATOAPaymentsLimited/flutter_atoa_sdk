import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/views/transactions_details_page/widgets/custom_status_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class TransactionDetailsStatusContainer extends StatelessWidget {
  const TransactionDetailsStatusContainer({
    required this.transactionDetails,
    required this.durationLeft,
    super.key,
  });

  final TransactionDetails transactionDetails;
  final Duration durationLeft;

  @override
  Widget build(BuildContext context) =>
      Selector<PaymentStatusState, TransactionDetails?>(
        selector: (context, state) => state.details,
        builder: (context, details, _) {
          final paymentDetails = details ?? transactionDetails;
          return _getTxnStatusContainerWidget(context, paymentDetails) ??
              const SizedBox.shrink();
        },
      );

  CustomStatusContainer? _getTxnStatusContainerWidget(
    BuildContext context,
    TransactionDetails txnDetails,
  ) =>
      txnDetails.status.mapOrNull(
        completed: (value) => CustomStatusContainer(
          transactionDetails: transactionDetails,
          iconBgColor: SemanticsColors.light().positive.darker,
          svgAsset: Assets.icons.iconTick.path,
          size: Spacing.large.value,
          status: context.l10n.paid,
          desc: context.l10n.paymentSuccessful,
          dateTime:
              transactionDetails.updatedAt ?? transactionDetails.createdAt,
        ),
        pending: (value) => CustomStatusContainer(
          transactionDetails: transactionDetails,
          iconBgColor: SemanticsColors.light().error.defaultColor,
          svgAsset: Assets.gifs.processing.path,
          isLottie: true,
          status: context.l10n.pending,
          showCallBank: true,
          desc: _getPaymentPendingStatusDescription(txnDetails, context),
          dateTime:
              transactionDetails.updatedAt ?? transactionDetails.createdAt,
        ),
        failed: (value) => CustomStatusContainer(
          transactionDetails: transactionDetails,
          iconBgColor: SemanticsColors.light().negative.defaultColor,
          svgAsset: Assets.icons.close.path,
          status: context.l10n.failed,
          dateTime:
              transactionDetails.updatedAt ?? transactionDetails.createdAt,
          desc: txnDetails.errorMessage ?? context.l10n.paymentFailedDesc,
        ),
        refunded: (value) => CustomStatusContainer(
          transactionDetails: transactionDetails,
          iconBgColor: SemanticsColors.light().info.defaultColor,
          svgAsset: Assets.icons.iconRefunded.path,
          status: context.l10n.paymentRefunded,
          desc: context.l10n.paymentRefundedDesc,
          dateTime:
              transactionDetails.updatedAt ?? transactionDetails.createdAt,
        ),
        awaitingAuthorization: (value) => CustomStatusContainer(
          transactionDetails: transactionDetails,
          iconBgColor: SemanticsColors.light().error.defaultColor,
          svgAsset: Assets.gifs.processing.path,
          isLottie: true,
          status: context.l10n.awaitingAuth,
          desc: context.l10n.awaitAuthDesc,
          dateTime:
              transactionDetails.updatedAt ?? transactionDetails.createdAt,
        ),
        cancelled: (value) => CustomStatusContainer(
          transactionDetails: transactionDetails,
          iconBgColor: SemanticsColors.light().negative.defaultColor,
          svgAsset: Assets.icons.close.path,
          status: 'Cancelled',
          desc: txnDetails.errorMessage ?? context.l10n.paymentCancelledDesc,
          dateTime:
              transactionDetails.updatedAt ?? transactionDetails.createdAt,
        ),
        expired: (value) => CustomStatusContainer(
          transactionDetails: transactionDetails,
          iconBgColor: NeutralColors.light().grey.shade600,
          svgAsset: Assets.icons.iconExclamation.path,
          status: context.l10n.expired,
          dateTime:
              transactionDetails.updatedAt ?? transactionDetails.createdAt,
          desc: txnDetails.errorMessage ?? context.l10n.paymentExpiredDesc,
        ),
        unknown: (value) => CustomStatusContainer(
          iconBgColor: NeutralColors.light().grey.shade600,
          transactionDetails: transactionDetails,
          svgAsset: Assets.icons.iconExclamation.path,
          status: value.status ?? context.l10n.unknown,
          desc: txnDetails.errorMessage ?? context.l10n.unknownStatusDesc,
          dateTime:
              transactionDetails.updatedAt ?? transactionDetails.createdAt,
        ),
      );

  String _getPaymentPendingStatusDescription(
    TransactionDetails txnDetails,
    BuildContext context,
  ) {
    if (durationLeft.inSeconds < 60) {
      if (txnDetails.pendingTrasactionError != null &&
          txnDetails.pendingTrasactionError!.isNotEmpty) {
        return txnDetails.pendingTrasactionError!;
      } else {
        return context.l10n.settlementInProcessInfoText;
      }
    } else {
      return context.l10n.settlementInProcessInfoText;
    }
  }
}
