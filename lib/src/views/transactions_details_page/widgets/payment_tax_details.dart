import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/views/transactions_details_page/widgets/detail_row.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal/regal.dart';

class PaymentTaxDetails extends StatelessWidget {
  const PaymentTaxDetails({super.key, required this.transactionDetails});

  final TransactionDetails transactionDetails;

  @override
  Widget build(BuildContext context) => Padding(
        padding: Spacing.medium.all,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailRow(
              label: context.l10n.tip,
              value: context.l10n.amountText(transactionDetails.tipAmount ?? 0),
            ),
            Spacing.small.yBox,
            DetailRow(
              label: context.l10n.vatIncluded,
              value: context.l10n.amountText(transactionDetails.taxAmount ?? 0),
            ),
            Spacing.small.yBox,
            DetailRow(
              label: context.l10n.serviceChargesIncluded,
              value: context.l10n
                  .amountText(transactionDetails.serviceAmount ?? 0),
            ),
            Spacing.xtraLarge.yBox,
            CustomPaint(
              size: Size(
                1.sw,
                0,
              ),
              painter: DashedPainter(
                strokeWidth: 1.sp,
                dashPattern: [
                  Spacing.mini.value,
                  Spacing.mini.value,
                ],
                color: context.grey.shade10,
              ),
            ),
          ],
        ),
      );
}
