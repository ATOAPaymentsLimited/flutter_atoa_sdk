import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
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
    super.key,
  });

  final BankInstitution bank;
  final Future<void> Function(BankInstitution) onBankSelect;
  @override
  Widget build(BuildContext context) => CustomInkWell(
        context: context,
        semanticsLabel: '$bank Tile',
        trackLabel: '$bank Tile',
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
                    ? CachedNetworkImage(
                        imageUrl: bank.bankIcon!,
                        height: Spacing.xtraLarge.value,
                        width: Spacing.xtraLarge.value,
                        memCacheWidth: 20,
                        memCacheHeight: 20,
                      )
                    : const SizedBox.shrink(),
              ),
              Spacing.medium.xBox,
              Expanded(
                child: Row(
                  children: [
                    CustomText.semantics(
                      bank.name,
                      style: kFigtreeTextTheme.bodyLarge
                          ?.textColor(
                            NeutralColors.light().grey.shade700,
                          )
                          .w500,
                    ),
                    if (!bank.enabled) ...[
                      Spacing.medium.xBox,
                      BankDownIcon(bank: bank),
                    ],
                  ],
                ),
              ),
              Spacing.medium.xBox,
              CustomInkWell(
                context: context,
                trackLabel: '$bank CheckBox',
                onTap: () async {
                  bank.enabled
                      ? await onBankSelect.call(bank)
                      : BankDownBottomSheet.show(context, bank);
                },
                semanticsLabel: '$bank CheckBox',
                child: Container(
                  width: Spacing.large.value + Spacing.tiny.value,
                  height: Spacing.large.value + Spacing.tiny.value,
                  padding: Spacing.tiny.all,
                  decoration: BoxDecoration(
                    color: context.read<BankInstitutionsState>().selectedBank ==
                            bank
                        ? context.intactColors.black
                        : context.intactColors.white,
                    border: Border.all(
                      color: context.intactColors.black,
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
        onTap: () async {
          bank.enabled
              ? await onBankSelect.call(bank)
              : BankDownBottomSheet.show(context, bank);
        },
      );
}
