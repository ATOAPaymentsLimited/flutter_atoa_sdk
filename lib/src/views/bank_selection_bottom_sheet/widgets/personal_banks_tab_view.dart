import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_grid_item.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_list_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class PersonalBanksTabView extends StatelessWidget {
  const PersonalBanksTabView({
    required this.onBankSelect,
    super.key,
  });

  final Future<void> Function(BankInstitution) onBankSelect;

  @override
  Widget build(BuildContext context) => Builder(
        builder: (context) {
          final state = context.read<BankInstitutionsState>();
          if (context.read<BankInstitutionsController>().searchTerm.isEmpty) {
            final popularPersonalBanks = state.popularPersonalBanks;

            final normalPersonalBanks = state.normalPersonalBanks;

            final gridBanks = popularPersonalBanks;

            final gridBankLength = gridBanks.length;
            if (gridBanks.length < 8) {
              for (var i = 0; i < 8 - gridBankLength; i++) {
                gridBanks.add(normalPersonalBanks[i]);
                normalPersonalBanks.remove(normalPersonalBanks.elementAt(i));
              }
            }

            return SingleChildScrollView(
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
                    ),
                    itemCount: gridBanks.length, // Two rows of 4 items
                    itemBuilder: (context, index) => BankGridItem(
                      bank: gridBanks[index],
                      onBankSelect: onBankSelect,
                    ),
                  ),

                  // Scrollable List
                  Spacing.large.yBox,

                  CustomText.semantics(
                    context.l10n.allBanks.toUpperCase(),
                    style: kFigtreeTextTheme.bodyMedium?.w700.textColor(
                      NeutralColors.light().grey.shade500,
                    ),
                  ),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: normalPersonalBanks.length,
                    itemBuilder: (context, index) => BankListItem(
                      bank: normalPersonalBanks[index],
                      onBankSelect: onBankSelect,
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      );
}
