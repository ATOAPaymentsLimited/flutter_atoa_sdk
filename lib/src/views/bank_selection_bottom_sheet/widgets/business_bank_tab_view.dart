import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_sdk/src/controllers/controllers.dart';
import 'package:atoa_sdk/src/views/bank_selection_bottom_sheet/widgets/all_banks_widget.dart';
import 'package:atoa_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_grid_item.dart';
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
            AllBanksWidget(
              onBankSelect: widget.onBankSelect,
            ),
          ],
        ),
      );
}
