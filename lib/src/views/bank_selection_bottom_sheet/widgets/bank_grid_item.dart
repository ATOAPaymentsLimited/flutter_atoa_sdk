import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_down_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_down_icon.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class BankGridItem extends StatelessWidget {
  const BankGridItem({
    required this.bank,
    required this.onBankSelect,
    super.key,
  });

  final BankInstitution bank;
  final Future<void> Function(BankInstitution) onBankSelect;

  @override
  Widget build(BuildContext context) => Builder(
        builder: (context) {
          final isSelectedBank =
              context.read<BankInstitutionsState>().selectedBank == bank;
          return CustomInkWell(
            semanticsLabel: '${bank.name} ${context.l10n.bankCard}',
            context: context,
            trackLabel: '${bank.name} Bank Card',
            enableTracking: false,
            onTap: () async {
              bank.enabled
                  ? await onBankSelect.call(bank)
                  : BankDownBottomSheet.show(context, bank);
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    if (!bank.enabled) ...[
                      Positioned(
                        right: Spacing.mini.value,
                        top: Spacing.mini.value,
                        child: BankDownIcon(bank: bank),
                      ),
                    ] else if (isSelectedBank)
                      Positioned(
                        right: Spacing.mini.value,
                        top: Spacing.mini.value,
                        child: CircleAvatar(
                          radius: Spacing.small.value,
                          backgroundColor: context.intactColors.black,
                          child: Assets.icons.iconTick.svg(
                            height: Spacing.mini.value + Spacing.tiny.value,
                          ),
                        ),
                      ),
                    Container(
                      width: Spacing.xtraLarge.value * 3 +
                          Spacing.medium.value +
                          Spacing.tiny.value,
                      height: Spacing.xtraLarge.value * 3,
                      padding: Spacing.medium.y + Spacing.xtraLarge.x,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: isSelectedBank
                              ? context.intactColors.black
                              : NeutralColors.light().grey.shade100,
                          width: isSelectedBank ? 2 : 1.5,
                        ),
                        borderRadius: Spacing.medium.brAll,
                      ),
                      child: bank.bankIcon != null
                          ? CachedNetworkImage(
                              imageUrl: bank.bankIcon!,
                              height: Spacing.xtraLarge.value,
                              width: Spacing.xtraLarge.value,
                            )
                          : Icon(
                              Icons.account_balance_outlined,
                              size: Spacing.xtraLarge.value * 2,
                              color: context.intactColors.black,
                            ),
                    ),
                  ],
                ),
                Spacing.small.yBox,
                CustomText.semantics(
                  bank.name,
                  style: isSelectedBank
                      ? kFigtreeTextTheme.bodyMedium?.w700
                      : kFigtreeTextTheme.bodyMedium?.w500.textColor(
                          NeutralColors.light().grey.shade700,
                        ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      );
}
