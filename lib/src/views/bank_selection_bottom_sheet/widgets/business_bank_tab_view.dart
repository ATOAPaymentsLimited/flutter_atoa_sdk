import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_grid_item.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_limit_card.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_list_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class BusinessBanksTabView extends StatefulWidget {
  const BusinessBanksTabView({
    required this.onBankSelect,
    super.key,
  });

  final Future<void> Function(BankInstitution) onBankSelect;
  @override
  State<BusinessBanksTabView> createState() => _BusinessBanksTabViewState();
}

class _BusinessBanksTabViewState extends State<BusinessBanksTabView> {
  late ScrollController scrollController;
  late BankInstitutionsState bankInstitutionsState;
  late BankInstitutionsController bankInstitutionsController;

  @override
  void initState() {
    super.initState();
    bankInstitutionsState = context.read<BankInstitutionsState>();
    bankInstitutionsController = context.read<BankInstitutionsController>();
    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        controller: scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacing.large.yBox,
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: Spacing.large.value,
                mainAxisSpacing: Spacing.large.value,
                mainAxisExtent:
                    Spacing.xtraLarge.value * 4 + Spacing.medium.value,
              ),

              itemCount: bankInstitutionsState
                  .popularBusinessBanks.length, // Two rows of 4 items
              itemBuilder: (context, index) => BankGridItem(
                bank: bankInstitutionsState.popularBusinessBanks[index],
                onBankSelect: widget.onBankSelect,
              ),
            ),
            Spacing.huge.yBox,

            // Scrollable List
            CustomText.semantics(
              context.l10n.allBanks.toUpperCase(),
              style: sdkFigTreeTextTheme.bodyMedium?.w700.textColor(
                NeutralColors.light().grey.shade500,
              ),
            ),
            Spacing.medium.yBox,
            ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: bankInstitutionsState.businessBanks.length,
              itemBuilder: (context, index) => BankListItem(
                bank: bankInstitutionsState.businessBanks[index],
                onBankSelect: widget.onBankSelect,
              ),
            ),
            if (bankInstitutionsState.businessBanksDisabled.isNotEmpty &&
                bankInstitutionsState.paymentDetails?.amount.amount !=
                    null) ...[
              Spacing.small.yBox,
              BankLimitCard(
                amount: bankInstitutionsState.paymentDetails!.amount.amount,
              ),
              Spacing.medium.yBox,
              ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: bankInstitutionsState.businessBanksDisabled.length,
                itemBuilder: (context, index) => BankListItem(
                  bank: bankInstitutionsState.businessBanksDisabled[index],
                  onBankSelect: (_) async {},
                  enabled: false,
                ),
              ),
              Spacing.huge.yBox,
            ],
          ],
        ),
      );
}
