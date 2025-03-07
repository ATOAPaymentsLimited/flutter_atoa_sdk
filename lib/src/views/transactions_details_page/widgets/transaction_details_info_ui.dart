import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/views/transactions_details_page/widgets/bank_details_widget.dart';
import 'package:atoa_flutter_sdk/src/views/transactions_details_page/widgets/collapsed_payment_details_widget.dart';
import 'package:atoa_flutter_sdk/src/views/transactions_details_page/widgets/payment_details_row.dart';
import 'package:atoa_flutter_sdk/src/views/transactions_details_page/widgets/payment_tax_details.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class TransactionDetailsInfoUi extends StatefulWidget {
  const TransactionDetailsInfoUi({
    required this.transactionDetails,
    //   required this.bankState,
    super.key,
    this.showNotes = true,
    this.isExpanded = true,
    this.showTransactionActions = false,
  });
  final TransactionDetails transactionDetails;
  final bool showTransactionActions;
  final bool isExpanded;
  final bool showNotes;
//  final BankInstitutionsState bankState;

  @override
  State<TransactionDetailsInfoUi> createState() =>
      _TransactionDetailsInfoUiState();
}

class _TransactionDetailsInfoUiState extends State<TransactionDetailsInfoUi> {
  late ExpandableController _expandableController;

  @override
  void didUpdateWidget(covariant TransactionDetailsInfoUi oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.transactionDetails != oldWidget.transactionDetails) {}
    if (widget.isExpanded != oldWidget.isExpanded) {
      _expandableController.value = widget.isExpanded;
    }
  }

  @override
  void initState() {
    super.initState();
    _expandableController =
        ExpandableController(initialExpanded: widget.isExpanded);
  }

  ExpandableThemeData expandableTheme(BuildContext context) =>
      ExpandableThemeData(
        headerAlignment: ExpandablePanelHeaderAlignment.center,
        tapBodyToCollapse: true,
        hasIcon: false,
        iconColor: NeutralColors.light().grey.shade400,
        iconSize: Spacing.large.value * 2,
        tapHeaderToExpand: true,
        iconPadding: EdgeInsets.zero,
        useInkWell: false,
        crossFadePoint: 0,
      );

  @override
  Widget build(BuildContext context) {
    Widget collapsed({bool isExpanded = false}) => Column(
          children: [
            CustomGestureDetector(
              context: context,
              onTap: _expandableController.toggle,
              trackLabel: 'View Payment Details',
              semanticsLabel: context.l10n.viewTransactionDetails,
              child: CollapsedPaymentDetailsWidget(
                transactionDetails: widget.transactionDetails,
                isExpanded: isExpanded,
                theme: expandableTheme,
              ),
            ),
          ],
        );

    return ExpandablePanel(
      theme: expandableTheme(context),
      controller: _expandableController,
      collapsed: collapsed(),
      expanded: Column(
        children: [
          collapsed(isExpanded: true),
          _transactionMainInfoUI(widget.transactionDetails),
        ],
      ),
    );
  }

  Widget _transactionMainInfoUI(
    TransactionDetails transactionDetails,
  ) =>
      DecoratedBox(
        decoration: BoxDecoration(
          color: context.intactColors.white,
          border: Border(
            bottom: BorderSide(color: NeutralColors.light().grey.shade200),
            left: BorderSide(color: NeutralColors.light().grey.shade200),
            right: BorderSide(color: NeutralColors.light().grey.shade200),
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
            PaymentTaxDetails(transactionDetails: transactionDetails),
            Padding(
              padding: Spacing.medium.all,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BankDetailsWidget(
                    transactionDetails: transactionDetails,
                  ),
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
}
