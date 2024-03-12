import 'package:atoa_sdk/l10n/l10n.dart';
import 'package:atoa_sdk/src/controllers/controllers.dart';
import 'package:atoa_sdk/src/shared_widgets/shared_widgets.dart';
import 'package:atoa_sdk/src/views/connect_bank_page/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class ConnectBankBody extends StatefulWidget {
  const ConnectBankBody({super.key});

  @override
  State<ConnectBankBody> createState() => _ConnectBankBodyState();
}

class _ConnectBankBodyState extends State<ConnectBankBody>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Spacing.small.yBox,
          Selector<BankInstitutionsState, double?>(
            selector: (_, state) => state.paymentDetails?.amount.amount,
            builder: (context, amount, child) => CustomText.semantics(
              amount != null ? context.l10n.amountText(amount) : '',
              style: context.displaySmall!.copyWith(
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          Spacing.small.yBox,
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
                  BankTabBar(tabController: _tabController),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: const [
                        BanksGridView(),
                        BanksGridView(isBusinessBanks: true),
                      ],
                    ),
                  ),
                  Spacing.medium.yBox,
                  const TermsAndPrivacyText(),
                  Spacing.small.yBox,
                  RegalDivider(color: context.grey.shade20),
                  Spacing.small.yBox,
                  const LegalText(),
                  Spacing.medium.yBox,
                  const CotinueButton(),
                  const BottomSpacer(),
                ],
              ),
            ),
          ),
        ],
      );
}
