import 'package:atoa_sdk/atoa_sdk.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class ConnectBankBody extends StatefulWidget {
  const ConnectBankBody({super.key});

  @override
  State<ConnectBankBody> createState() => _ConnectBankBodyState();
}

class _ConnectBankBodyState extends State<ConnectBankBody> {
  @override
  Widget build(BuildContext context) => Column(
        children: [
          Spacing.medium.yBox,
          Selector<BankInstitutionsState, double?>(
            selector: (_, state) => state.paymentDetails?.amount.amount,
            builder: (context, amount, child) => CustomText.semantics(
              amount != null ? context.l10n.amountText(amount) : '',
              style: context.montserrat.displaySmall,
            ),
          ),
          CustomText.semantics(
            context.l10n.selectBank,
            style: context.labelSmall?.copyWith(
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: Container(
              padding: Spacing.xtraLarge.top + Spacing.xtraLarge.x,
              child: Column(
                children: [
                  const Expanded(
                    child: BanksGridView(),
                  ),
                  Spacing.medium.yBox,
                  const TermsAndPrivacyText(),
                  Spacing.small.yBox,
                  RegalDivider(color: context.grey.shade20),
                  Spacing.small.yBox,
                  const LegalText(),
                  const AppCheckWarningCard(),
                  Spacing.huge.yBox,
                  const CotinueButton(),
                  const BottomSpacer(),
                ],
              ),
            ),
          ),
        ],
      );
}
