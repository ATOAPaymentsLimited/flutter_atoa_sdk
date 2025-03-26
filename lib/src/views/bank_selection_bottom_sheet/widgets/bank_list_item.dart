import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_down_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_down_icon.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class BankListItem extends StatelessWidget {
  const BankListItem({
    required this.bank,
    required this.onBankSelect,
    this.enabled = true,
    super.key,
  });

  final BankInstitution bank;
  final Future<void> Function(BankInstitution) onBankSelect;
  final bool enabled;
  @override
  Widget build(BuildContext context) => CustomInkWell(
        context: context,
        semanticsLabel: '$bank Tile',
        enableTracking: false,
        trackLabel: '$bank Tile',
        onTap: enabled
            ? () async {
                bank.enabled
                    ? await onBankSelect.call(bank)
                    : BankDownBottomSheet.show(context, bank);
              }
            : () {},
        child: Padding(
          padding: Spacing.large.y,
          child: Row(
            children: [
              Container(
                padding: Spacing.mini.all,
                decoration: BoxDecoration(
                  borderRadius: Spacing.mini.brAll + Spacing.tiny.brAll,
                  border:
                      Border.all(color: NeutralColors.light().grey.shade100),
                ),
                child: bank.bankIcon != null
                    ? Opacity(
                        opacity: enabled ? 1 : 0.40,
                        child: CachedNetworkImage(
                          imageUrl: bank.bankIcon!,
                          height: Spacing.xtraLarge.value,
                          width: Spacing.xtraLarge.value,
                        ),
                      )
                    : Icon(
                        Icons.account_balance_outlined,
                        size: Spacing.xtraLarge.value * 2 + Spacing.mini.value,
                        color: IntactColors.light().black.withOpacity(
                              enabled ? 1 : 0.40,
                            ),
                      ),
              ),
              Spacing.medium.xBox,
              Expanded(
                child: Row(
                  children: [
                    Flexible(
                      child: CustomText.semantics(
                        bank.name,
                        style: sdkFigTreeTextTheme.bodyLarge
                            ?.textColor(
                              enabled
                                  ? NeutralColors.light().grey.shade700
                                  : NeutralColors.light().grey.shade400,
                            )
                            .w500,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (!bank.enabled && enabled) ...[
                      Spacing.medium.xBox,
                      BankDownIcon(bank: bank),
                    ],
                  ],
                ),
              ),
              Spacing.medium.xBox,
              CustomInkWell(
                context: context,
                enableTracking: false,
                trackLabel: '$bank CheckBox',
                onTap: enabled
                    ? () async {
                        bank.enabled && enabled
                            ? await onBankSelect.call(bank)
                            : BankDownBottomSheet.show(context, bank);
                      }
                    : () {},
                semanticsLabel: '$bank CheckBox',
                child: Container(
                  width: Spacing.xtraLarge.value,
                  height: Spacing.xtraLarge.value,
                  padding: Spacing.mini.all,
                  decoration: BoxDecoration(
                    color: context.read<BankInstitutionsState>().selectedBank ==
                            bank
                        ? IntactColors.light().black
                        : IntactColors.light().white,
                    border: Border.all(
                      color:
                          context.read<BankInstitutionsState>().selectedBank ==
                                  bank
                              ? IntactColors.light().black
                              : NeutralColors.light().grey.shade300,
                      width: 1.5,
                    ),
                    borderRadius: Spacing.medium.brAll,
                  ),
                  child: Assets.icons.iconTick.svg(
                    height: Spacing.mini.value,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
