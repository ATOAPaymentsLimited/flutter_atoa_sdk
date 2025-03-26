import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_limit_card.dart';
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
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Consumer<BankInstitutionsState>(
          builder: (_, state, __) {
            final banks = state.businessBanks;
            final disabledBanks = state.businessBanksDisabled;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacing.xtraLarge.yBox,
                CustomText.semantics(
                  context.l10n.allBanks.toUpperCase(),
                  style: sdkFigTreeTextTheme.bodyMedium?.w700.textColor(
                    NeutralColors.light().grey.shade500,
                  ),
                ),
                Spacing.medium.yBox,
                ListView.builder(
                  itemCount: banks.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => BankListItem(
                    bank: banks[index],
                    onBankSelect: onBankSelect,
                  ),
                ),
                if (disabledBanks.isNotEmpty &&
                    state.paymentDetails?.amount.amount != null) ...[
                  Spacing.small.yBox,
                  BankLimitCard(
                    amount: state.paymentDetails!.amount.amount,
                  ),
                  Spacing.medium.yBox,
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: disabledBanks.length,
                    itemBuilder: (context, index) => BankListItem(
                      bank: disabledBanks[index],
                      onBankSelect: (_) async {},
                      enabled: false,
                    ),
                  ),
                  Spacing.huge.yBox,
                ],
              ],
            );
          },
        ),
      );
}
