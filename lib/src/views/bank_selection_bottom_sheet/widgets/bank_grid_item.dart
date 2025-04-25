import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_sdk/gen/assets.gen.dart';
import 'package:atoa_sdk/l10n/l10n.dart';
import 'package:atoa_sdk/src/controllers/controllers.dart';
import 'package:atoa_sdk/src/theme/theme.dart';
import 'package:atoa_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_down_bottom_sheet.dart';
import 'package:atoa_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_down_icon.dart';
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
                    Container(
                      width: Spacing.xtraLarge.value * 3 +
                          Spacing.medium.value +
                          Spacing.tiny.value,
                      height: Spacing.xtraLarge.value * 3,
                      padding: Spacing.small.all,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: isSelectedBank
                              ? IntactColors.light().black
                              : NeutralColors.light().grey.shade100,
                          width: isSelectedBank ? 2 : 1.5,
                        ),
                        borderRadius: Spacing.medium.brAll,
                      ),
                      child: bank.bankIcon != null
                          ? CachedNetworkImage(
                              imageUrl: bank.bankIcon!,
                              height: Spacing.mediumlarge.value * 2 +
                                  Spacing.tiny.value,
                              width: Spacing.mediumlarge.value * 2 +
                                  Spacing.tiny.value,
                            )
                          : Icon(
                              Icons.account_balance_outlined,
                              size: Spacing.mediumlarge.value * 2 +
                                  Spacing.tiny.value,
                              color: IntactColors.light().black,
                            ),
                    ),
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
                          backgroundColor: IntactColors.light().black,
                          child: Assets.icons.iconTick.svg(
                            height: Spacing.mini.value + Spacing.tiny.value,
                          ),
                        ),
                      ),
                  ],
                ),
                Spacing.small.yBox,
                CustomText.semantics(
                  bank.name,
                  style: isSelectedBank
                      ? sdkFigTreeTextTheme.bodyMedium?.w700
                      : sdkFigTreeTextTheme.bodyMedium?.w500.textColor(
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
