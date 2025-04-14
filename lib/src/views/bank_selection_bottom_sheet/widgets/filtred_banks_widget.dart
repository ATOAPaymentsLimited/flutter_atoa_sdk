import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_limit_card.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_list_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class FliteredBanksWidget extends StatefulWidget {
  const FliteredBanksWidget({
    required this.onBankSelect,
    super.key,
  });

  final Future<void> Function(BankInstitution) onBankSelect;
  @override
  State<FliteredBanksWidget> createState() => _FliteredBanksWidgetState();
}

class _FliteredBanksWidgetState extends State<FliteredBanksWidget> {
  late ScrollController scrollController;
  late BankInstitutionsState bankInstitutionsState;

  @override
  void initState() {
    super.initState();
    bankInstitutionsState = context.read<BankInstitutionsState>();
    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) => Expanded(
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomText.semantics(
                context.l10n.results,
                style: sdkFigTreeTextTheme.bodyMedium?.w700.textColor(
                  NeutralColors.light().grey.shade500,
                ),
              ),
              ListView.builder(
                itemCount: bankInstitutionsState.allBanks.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => BankListItem(
                  bank: bankInstitutionsState.allBanks[index],
                  onBankSelect: widget.onBankSelect,
                ),
              ),
              if (bankInstitutionsState.allBankDisabled.isNotEmpty &&
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
          ),
        ),
      );
}
