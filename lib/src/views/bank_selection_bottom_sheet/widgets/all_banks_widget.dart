import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/bank_institutions_controller.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_limit_card.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_list_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class AllBanksWidget extends StatefulWidget {
  const AllBanksWidget({
    required this.onBankSelect,
    super.key,
  });

  final Future<void> Function(BankInstitution) onBankSelect;
  @override
  State<AllBanksWidget> createState() => _AllBanksWidgetState();
}

class _AllBanksWidgetState extends State<AllBanksWidget> {
  late BankInstitutionsState bankInstitutionsState;

  @override
  void initState() {
    super.initState();
    bankInstitutionsState = context.read<BankInstitutionsState>();
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            itemCount: bankInstitutionsState.allBanks.length,
            itemBuilder: (context, index) => BankListItem(
              bank: bankInstitutionsState.allBanks[index],
              onBankSelect: widget.onBankSelect,
            ),
          ),
          if (bankInstitutionsState.allBankDisabled.isNotEmpty &&
              bankInstitutionsState.paymentDetails?.amount.amount != null) ...[
            Spacing.small.yBox,
            BankLimitCard(
              amount: bankInstitutionsState.paymentDetails!.amount.amount,
            ),
            Spacing.medium.yBox,
            ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: bankInstitutionsState.allBankDisabled.length,
              itemBuilder: (context, index) => BankListItem(
                bank: bankInstitutionsState.allBankDisabled[index],
                onBankSelect: (_) async {},
                enabled: false,
              ),
            ),
            Spacing.huge.yBox,
          ],
        ],
      );
}
