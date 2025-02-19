import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/views/transactions_details_page/widgets/custom_status_container.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class TransactionDetailsStatusContainer extends StatelessWidget {
  const TransactionDetailsStatusContainer({
    super.key,
    required this.transactionDetails,
  });

  final TransactionDetails transactionDetails;

  @override
  Widget build(BuildContext context) {
    final debitType =
        transactionDetails.paymentDebitType(context.getCurrUser()!.id!);
    return 
          _getTxnStatusContainerWidget(context, transactionDetails, debitType);
     
  }

  Widget _getTxnStatusContainerWidget(
    BuildContext context,
    TransactionDetails txnDetails,
    PaymentDebitType debitType,
  ) =>
      txnDetails.status.map(
        completed: (value) => switch (txnDetails.paymentType) {
          PaymentType.P2P => debitType.map(
              sent: (value) => CustomStatusContainer(
                transactionDetails: transactionDetails,
                iconBgColor: txnDetails.isSettlementInProcess
                    ? RegalColors.brightOrange
                    : RegalColors.darkCyan,
                svgAsset: txnDetails.isSettlementInProcess
                    : Assets.icons.iconTick.path,
                size: Spacing.large.value,
                isLottie: txnDetails.isSettlementInProcess,
                status: txnDetails.isSettlementInProcess
                    ? context.l10n.processing
                    : context.l10n.paid,
                showCallBank: txnDetails.isSettlementInProcess,
                dateTime: transactionDetails.updatedAt ??
                    transactionDetails.createdAt,
                desc: txnDetails.isSettlementInProcess
                    ? context.l10n.settlementInProcessInfoText
                    : context.l10n.paymentSuccessful,
              ),
              recieved: (value) => CustomStatusContainer(
                transactionDetails: transactionDetails,
                iconBgColor: txnDetails.isSettlementInProcess
                    ? RegalColors.brightOrange
                    : RegalColors.darkCyan,
                svgAsset: txnDetails.isSettlementInProcess
                    ? Assets.lotties.processing.path
                    : Assets.icons.iconTick.path,
                size: Spacing.large.value,
                isLottie: txnDetails.isSettlementInProcess,
                status: txnDetails.isSettlementInProcess
                    ? context.l10n.processing
                    : context.l10n.receivedSuccessfully,
                showCallBank: txnDetails.isSettlementInProcess,
                dateTime: transactionDetails.updatedAt ??
                    transactionDetails.createdAt,
                desc: txnDetails.isSettlementInProcess
                    ? context.l10n.settlementInProcessInfoText
                    : context.l10n.paymentReceivedDesc,
              ),
            ),
          PaymentType.CONSUMERREWARD ||
          PaymentType.CONSUMERCASHBACK =>
            CustomStatusContainer(
              transactionDetails: transactionDetails,
              iconBgColor: RegalColors.darkCyan,
              svgAsset: Assets.icons.iconTick.path,
              size: Spacing.large.value,
              status: context.l10n.received,
              desc: context.l10n.paymentReceivedDesc,
              dateTime:
                  transactionDetails.updatedAt ?? transactionDetails.createdAt,
            ),
          _ => CustomStatusContainer(
              transactionDetails: transactionDetails,
              iconBgColor: RegalColors.darkCyan,
              svgAsset: Assets.icons.iconTick.path,
              size: Spacing.large.value,
              status: context.l10n.paid,
              desc: context.l10n.paymentSuccessful,
              dateTime:
                  transactionDetails.updatedAt ?? transactionDetails.createdAt,
            ),
        },
        pending: (value) => CustomStatusContainer(
          transactionDetails: transactionDetails,
          iconBgColor: RegalColors.brightOrange,
          svgAsset: Assets.lotties.processing.path,
          isLottie: true,
          status: context.l10n.processing,
          showCallBank: true,
          desc: _getPaymentPendingStatusDescription(txnDetails, context),
          dateTime:
              transactionDetails.updatedAt ?? transactionDetails.createdAt,
        ),
        failed: (value) => CustomStatusContainer(
          transactionDetails: transactionDetails,
          iconBgColor: RegalColors.vividRed,
          svgAsset: Assets.icons.close.path,
          status: context.l10n.failed,
          dateTime:
              transactionDetails.updatedAt ?? transactionDetails.createdAt,
          desc: txnDetails.errorMessage ?? context.l10n.paymentFailedDesc,
        ),
        refunded: (value) => CustomStatusContainer(
          transactionDetails: transactionDetails,
          iconBgColor: RegalColors.darkBlue,
          svgAsset: Assets.icons.iconRefunded.path,
          status: context.l10n.paymentRefunded,
          desc: context.l10n.paymentRefundedDesc,
          dateTime:
              transactionDetails.updatedAt ?? transactionDetails.createdAt,
        ),
        awaitingAuthorization: (value) => CustomStatusContainer(
          transactionDetails: transactionDetails,
          iconBgColor: RegalColors.brightOrange,
          svgAsset: Assets.lotties.processing.path,
          isLottie: true,
          status: context.l10n.awaitingAuth,
          desc: context.l10n.awaitAuthDesc,
          dateTime:
              transactionDetails.updatedAt ?? transactionDetails.createdAt,
        ),
        cancelled: (value) => CustomStatusContainer(
          transactionDetails: transactionDetails,
          iconBgColor: RegalColors.vividRed,
          svgAsset: Assets.icons.close.path,
          status: 'Cancelled',
          desc: txnDetails.errorMessage ?? context.l10n.paymentCancelledDesc,
          dateTime:
              transactionDetails.updatedAt ?? transactionDetails.createdAt,
        ),
        expired: (value) => CustomStatusContainer(
          transactionDetails: transactionDetails,
          iconBgColor: RegalColors.grey.shade60,
          svgAsset: Assets.icons.iconExclamation.path,
          status: context.l10n.expired,
          dateTime:
              transactionDetails.updatedAt ?? transactionDetails.createdAt,
          desc: txnDetails.errorMessage ?? context.l10n.paymentExpiredDesc,
        ),
        unknown: (value) => CustomStatusContainer(
          iconBgColor: RegalColors.darkBlue,
          transactionDetails: transactionDetails,
          svgAsset: Assets.icons.iconExclamation.path,
          status: value.status ?? context.l10n.unknown,
          desc: txnDetails.errorMessage ?? context.l10n.unknownStatusDesc,
          dateTime:
              transactionDetails.updatedAt ?? transactionDetails.createdAt,
        ),
      );

  String _getPaymentPendingStatusDescription(
    TransactionDetailsTransaction txnDetails,
    BuildContext context,
  ) {
    if (txnDetails.errorMessage != null) {
      return txnDetails.errorMessage!;
    } else if (txnDetails.pendingTrasactionError != null &&
        txnDetails.pendingTrasactionError!.isNotEmpty) {
      return txnDetails.pendingTrasactionError!;
    } else {
      return context.l10n.settlementInProcessInfoText;
    }
  }
}
