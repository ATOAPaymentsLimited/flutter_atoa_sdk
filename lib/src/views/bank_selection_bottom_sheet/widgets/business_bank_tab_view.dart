import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_list_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class BusinessBanksTabView extends StatelessWidget {
  const BusinessBanksTabView({
    required this.onBankSelect,
    super.key,
  });

  final Future<void> Function(BankInstitution) onBankSelect;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacing.medium.yBox,
          CustomText.semantics(
            context.l10n.allBanks.toUpperCase(),
            style: context.figtree.bodyMedium.w700.textColor(
              NeutralColors.light().grey.shade500,
            ),
          ),
          Expanded(
            child: Consumer<BankInstitutionsState>(
              builder: (_, state, __) => ListView.builder(
                itemCount: state.businessBanks.length,
                itemBuilder: (context, index) => BankListItem(
                  bank: state.businessBanks[index],
                  onBankSelect: onBankSelect,
                ),
              ),
            ),
          ),
        ],
      );
}
