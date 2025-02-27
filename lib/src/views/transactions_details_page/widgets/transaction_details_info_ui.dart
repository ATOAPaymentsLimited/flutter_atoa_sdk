import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/views/transactions_details_page/widgets/collapsed_payment_details_widget.dart';
import 'package:atoa_flutter_sdk/src/views/transactions_details_page/widgets/payment_details_row.dart';
import 'package:atoa_flutter_sdk/src/views/transactions_details_page/widgets/payment_tax_details.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class TransactionDetailsInfoUi extends StatefulWidget {
  const TransactionDetailsInfoUi({
    required this.transactionDetails,
    super.key,
    this.showNotes = true,
    this.isExpanded = true,
    this.showTransactionActions = false,
  });
  final TransactionDetails transactionDetails;
  final bool showTransactionActions;
  final bool isExpanded;
  final bool showNotes;

  @override
  State<TransactionDetailsInfoUi> createState() =>
      _TransactionDetailsInfoUiState();
}

class _TransactionDetailsInfoUiState extends State<TransactionDetailsInfoUi> {
  late ExpandableController _expandableController;

  @override
  void didUpdateWidget(covariant TransactionDetailsInfoUi oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.transactionDetails != oldWidget.transactionDetails) {
      _transactionDetails = widget.transactionDetails;
    }
    if (widget.isExpanded != oldWidget.isExpanded) {
      _expandableController.value = widget.isExpanded;
    }
  }

  late TransactionDetails _transactionDetails;
  @override
  void initState() {
    super.initState();
    _expandableController =
        ExpandableController(initialExpanded: widget.isExpanded);
    _transactionDetails = widget.transactionDetails;
  }

  ExpandableThemeData expandableTheme(BuildContext context) =>
      ExpandableThemeData(
        headerAlignment: ExpandablePanelHeaderAlignment.center,
        tapBodyToCollapse: true,
        hasIcon: false,
        iconColor: context.grey.shade20,
        iconSize: 32.sp,
        tapHeaderToExpand: true,
        iconPadding: EdgeInsets.zero,
        useInkWell: false,
        crossFadePoint: 0,
      );

  @override
  Widget build(BuildContext context) {
    final debitType = _transactionDetails.paymentDebitType('id');

    Widget collapsed({bool isExpanded = false}) => CustomGestureDetector(
          context: context,
          onTap: _expandableController.toggle,
          trackLabel: 'View Payment Details',
          semanticsLabel: context.l10n.viewTransactionDetails,
          child: CollapsedPaymentDetailsWidget(
            transactionDetails: widget.transactionDetails,
            isExpanded: isExpanded,
            theme: expandableTheme,
          ),
        );

    return ExpandablePanel(
      theme: expandableTheme(context),
      controller: _expandableController,
      collapsed: collapsed(),
      expanded: Column(
        children: [
          collapsed(isExpanded: true),
          _transactionMainInfoUI(widget.transactionDetails, debitType),
        ],
      ),
    );
  }

  Widget _transactionMainInfoUI(
    TransactionDetails transactionDetails,
    PaymentDebitType debitType,
  ) =>
      DecoratedBox(
        decoration: BoxDecoration(
          color: context.regalColor.snowWhite,
          border: Border(
            bottom: BorderSide(color: context.grey.shade10),
            left: BorderSide(color: context.grey.shade10),
            right: BorderSide(color: context.grey.shade10),
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(
              Spacing.medium.value,
            ),
            bottomRight: Radius.circular(
              Spacing.medium.value,
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (transactionDetails.paymentType == PaymentType.TRANSACTION) ...[
              PaymentTaxDetails(transactionDetails: transactionDetails),
            ],
            Padding(
              padding: Spacing.medium.all,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PaymentDetailsRow(
                    label: context.l10n.referenceId,
                    value: transactionDetails.paymentIdempotencyId,
                    showCopyContent: true,
                  ),
                  if (transactionDetails.orderId != null &&
                      transactionDetails.orderId!.trim().isNotEmpty) ...[
                    Spacing.medium.yBox,
                    PaymentDetailsRow(
                      label: context.l10n.orderId,
                      value: transactionDetails.orderId!,
                      showCopyContent: true,
                    ),
                  ],
                  if (transactionDetails.notes != null && widget.showNotes) ...[
                    Spacing.medium.yBox,
                    PaymentDetailsRow(
                      label: context.l10n.note,
                      value: transactionDetails.notes!,
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      );

  Widget _getRefundBankDetails(
    TransactionDetails transactionDetails,
    PaymentDebitType debitType,
  ) =>
      // transactionDetails.payerBankAccountNo != null &&
      //         transactionDetails.payerBankAccountNo!.trim().isNotEmpty
      //     ? BankDetailsWidget(
      //         transactionDetails: transactionDetails,
      //         debitType: debitType,
      //       )
      //  :
      const SizedBox.shrink();
}
