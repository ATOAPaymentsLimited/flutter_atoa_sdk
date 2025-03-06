import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/error_widget.dart';
import 'package:atoa_flutter_sdk/src/views/transactions_details_page/widgets/custom_status_container.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class TransactionDetailsStatusContainer extends StatelessWidget {
  const TransactionDetailsStatusContainer({
    required this.transactionDetails,
    super.key,
  });

  final TransactionDetails transactionDetails;

  @override
  Widget build(BuildContext context) =>
      _getTxnStatusContainerWidget(context, transactionDetails) ??
      const AtoaErrorWidget();

  CustomStatusContainer? _getTxnStatusContainerWidget(
    BuildContext context,
    TransactionDetails txnDetails,
  ) =>
      txnDetails.status.mapOrNull(
        completed: (value) => CustomStatusContainer(
          transactionDetails: transactionDetails,
          iconBgColor: RegalColors.darkCyan,
          svgAsset: Assets.icons.iconTick.path,
          size: Spacing.large.value,
          status: context.l10n.paid,
          desc: context.l10n.paymentSuccessful,
          dateTime: transactionDetails.transactionDetails.first?.updatedAt ??
              transactionDetails.transactionDetails.first?.createdAt ??
              '',
        ),
        pending: (value) => CustomStatusContainer(
          transactionDetails: transactionDetails,
          iconBgColor: RegalColors.brightOrange,
          svgAsset: Assets.gifs.processing.path,
          isLottie: true,
          status: context.l10n.processing,
          showCallBank: true,
          desc: _getPaymentPendingStatusDescription(txnDetails, context),
          dateTime: transactionDetails.transactionDetails.first?.updatedAt ??
              transactionDetails.transactionDetails.first?.createdAt ??
              '',
        ),
        failed: (value) => CustomStatusContainer(
          transactionDetails: transactionDetails,
          iconBgColor: RegalColors.vividRed,
          svgAsset: Assets.icons.close.path,
          status: context.l10n.failed,
          dateTime: transactionDetails.transactionDetails.first?.updatedAt ??
              transactionDetails.transactionDetails.first?.createdAt ??
              '',
          desc: txnDetails.errorMessage ?? context.l10n.paymentFailedDesc,
        ),
        refunded: (value) => CustomStatusContainer(
          transactionDetails: transactionDetails,
          iconBgColor: RegalColors.darkBlue,
          svgAsset: Assets.icons.iconRefunded.path,
          status: context.l10n.paymentRefunded,
          desc: context.l10n.paymentRefundedDesc,
          dateTime: transactionDetails.transactionDetails.first?.updatedAt ??
              transactionDetails.transactionDetails.first?.createdAt ??
              '',
        ),
        awaitingAuthorization: (value) => CustomStatusContainer(
          transactionDetails: transactionDetails,
          iconBgColor: RegalColors.brightOrange,
          svgAsset: Assets.gifs.processing.path,
          isLottie: true,
          status: context.l10n.awaitingAuth,
          desc: context.l10n.awaitAuthDesc,
          dateTime: transactionDetails.transactionDetails.first?.updatedAt ??
              transactionDetails.transactionDetails.first?.createdAt ??
              '',
        ),
        cancelled: (value) => CustomStatusContainer(
          transactionDetails: transactionDetails,
          iconBgColor: RegalColors.vividRed,
          svgAsset: Assets.icons.close.path,
          status: 'Cancelled',
          desc: txnDetails.errorMessage ?? context.l10n.paymentCancelledDesc,
          dateTime: transactionDetails.transactionDetails.first?.updatedAt ??
              transactionDetails.transactionDetails.first?.createdAt ??
              '',
        ),
        expired: (value) => CustomStatusContainer(
          transactionDetails: transactionDetails,
          iconBgColor: RegalColors.grey.shade60,
          svgAsset: Assets.icons.iconExclamation.path,
          status: context.l10n.expired,
          dateTime: transactionDetails.transactionDetails.first?.updatedAt ??
              transactionDetails.transactionDetails.first?.createdAt ??
              '',
          desc: txnDetails.errorMessage ?? context.l10n.paymentExpiredDesc,
        ),
        unknown: (value) => CustomStatusContainer(
          iconBgColor: RegalColors.darkBlue,
          transactionDetails: transactionDetails,
          svgAsset: Assets.icons.iconExclamation.path,
          status: value.status ?? context.l10n.unknown,
          desc: txnDetails.errorMessage ?? context.l10n.unknownStatusDesc,
          dateTime: transactionDetails.transactionDetails.first?.updatedAt ??
              transactionDetails.transactionDetails.first?.createdAt ??
              '',
        ),
      );

  String _getPaymentPendingStatusDescription(
    TransactionDetails txnDetails,
    BuildContext context,
  ) {
    if (txnDetails.errorMessage != null) {
      return txnDetails.errorMessage!;
    } else if (txnDetails.transactionDetails.first?.pendingTrasactionError !=
            null &&
        txnDetails
            .transactionDetails.first!.pendingTrasactionError!.isNotEmpty) {
      return txnDetails.transactionDetails.first!.pendingTrasactionError!;
    } else {
      return context.l10n.settlementInProcessInfoText;
    }
  }
}
