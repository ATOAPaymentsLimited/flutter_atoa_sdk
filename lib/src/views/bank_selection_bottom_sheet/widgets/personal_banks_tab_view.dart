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

class PersonalBanksTabView extends StatefulWidget {
  const PersonalBanksTabView({
    required this.onBankSelect,
    super.key,
  });

  final Future<void> Function(BankInstitution) onBankSelect;

  @override
  State<PersonalBanksTabView> createState() => _PersonalBanksTabViewState();
}

class _PersonalBanksTabViewState extends State<PersonalBanksTabView> {
  late ScrollController scrollController;
  late BankInstitutionsState bankInstitutionsState;
  late BankInstitutionsController bankInstitutionsController;
  List<BankInstitution> allBanks = []; // Full list of banks

  @override
  void initState() {
    super.initState();
    bankInstitutionsState = context.read<BankInstitutionsState>();
    bankInstitutionsController = context.read<BankInstitutionsController>();
    allBanks = bankInstitutionsState.allNormalBanks;
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      bankInstitutionsState.bankList.isNotEmpty
          ? SingleChildScrollView(
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
                        .gridBanks.length, // Two rows of 4 items
                    itemBuilder: (context, index) => BankGridItem(
                      bank: bankInstitutionsState.gridBanks[index],
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
                    itemCount: allBanks.length,
                    itemBuilder: (context, index) => BankListItem(
                      bank: allBanks[index],
                      onBankSelect: widget.onBankSelect,
                    ),
                  ),
                  if (bankInstitutionsState.personalBankDiabled.isNotEmpty) ...[
                    Spacing.small.yBox,
                    const BankLimitCard(),
                    Spacing.medium.yBox,
                    ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount:
                          bankInstitutionsState.personalBankDiabled.length,
                      itemBuilder: (context, index) => BankListItem(
                        bank: bankInstitutionsState.personalBankDiabled[index],
                        onBankSelect: (_) async {},
                        enabled: false,
                      ),
                    ),
                    Spacing.huge.yBox,
                  ],
                ],
              ),
            )
          : const SizedBox.shrink();
}
