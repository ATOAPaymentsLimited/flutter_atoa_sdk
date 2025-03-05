import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/bank_institutions_controller.dart';
import 'package:atoa_flutter_sdk/src/views/transactions_details_page/widgets/payment_details_row.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class BankDetailsWidget extends StatelessWidget {
  const BankDetailsWidget({
    required this.transactionDetails,
    required this.bankState,
    super.key,
  });

  final TransactionDetails transactionDetails;
  final BankInstitutionsState bankState;

  @override
  Widget build(BuildContext context) => Padding(
        padding: Spacing.medium.bottom,
        child: PaymentDetailsRow(
          label: transactionDetails.txnPaymentStatus.maybeMap(
            cancelled: (_) => '',
            failed: (__) => '',
            expired: (___) => '',
            orElse: () => context.l10n.debitedFrom,
          ),
          value: _getPayerBankName(context),
          maskSubValue: true,
          subValue: transactionDetails.payerBankAccountNo ?? '',
          logo: _getPayerBankIcon(context),
        ),
      );

  String _getPayerBankName(
    BuildContext context,
  ) =>
      bankState.bankList
          .firstWhereOrNull(
            (element) =>
                element.id ==
                transactionDetails.transactionDetails.first?.institutionId,
          )
          ?.name ??
      transactionDetails.transactionDetails.first?.bankName ??
      '';

  String _getPayerBankIcon(
    BuildContext context,
  ) =>
      bankState.bankList
          .firstWhereOrNull(
            (element) =>
                element.id ==
                transactionDetails.transactionDetails.first?.institutionId,
          )
          ?.bankLogo ??
      '';
}
