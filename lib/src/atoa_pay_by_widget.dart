import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class AtoaPayByWidget extends StatefulWidget {
  const AtoaPayByWidget({
    super.key,
    this.backgroundColor,
    this.foregroundColor,
    this.onSelect,
    this.isAtoaSelected,
  });

  final Color? backgroundColor;
  final Color? foregroundColor;
  final void Function({required bool selected})? onSelect;
  final bool? isAtoaSelected;

  @override
  State<AtoaPayByWidget> createState() => _AtoaPayByWidgetState();
}

class _AtoaPayByWidgetState extends State<AtoaPayByWidget> {
  late ValueNotifier<bool> selected;

  @override
  void initState() {
    super.initState();
    selected = ValueNotifier(widget.isAtoaSelected ?? false);
  }

  @override
  void dispose() {
    selected.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Theme(
        data: sdkLedgerTheme,
        child: CustomInkWell(
          context: context,
          semanticsLabel: 'Pay by Atoa Tile',
          enableTracking: false,
          trackLabel: 'Pay by Atoa Tile',
          onTap: () {
            selected.value = !selected.value;
            widget.onSelect?.call(selected: selected.value);
          },
          child: ValueListenableBuilder(
            valueListenable: selected,
            builder: (context, value, child) => Container(
              padding: Spacing.large.all,
              decoration: BoxDecoration(
                color: widget.backgroundColor ?? IntactColors.light().white,
                borderRadius: Spacing.medium.brAll,
                border: Border.all(
                  color: NeutralColors.light().grey.shade200,
                ),
              ),
              child: Row(
                children: [
                  CustomInkWell(
                    context: context,
                    enableTracking: false,
                    trackLabel: 'Pay by Atoa CheckBox',
                    onTap: () {
                      selected.value = !selected.value;
                      widget.onSelect?.call(selected: selected.value);
                    },
                    semanticsLabel: 'Pay by Atoa CheckBox',
                    child: Container(
                      width: Spacing.xtraLarge.value,
                      height: Spacing.xtraLarge.value,
                      padding: Spacing.mini.all,
                      decoration: BoxDecoration(
                        color: value
                            ? IntactColors.light().black
                            : IntactColors.light().white,
                        border: Border.all(
                          color: value
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
                  Spacing.medium.xBox,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText.semantics(
                          context.l10n.payBy(
                            context.l10n.bankAppText,
                          ),
                          style: sdkFigTreeTextTheme.bodyLarge?.w600
                              .textColor(
                                widget.foregroundColor ??
                                    IntactColors.light().black,
                              )
                              .height150,
                        ),
                        CustomText.semantics(
                          context.l10n.poweredByAtoa,
                          style: sdkFigTreeTextTheme.bodySmall?.w500.textColor(
                            NeutralColors.light().grey.shade500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacing.medium.xBox,
                  Assets.images.payByAtoaBanks.image(
                    height: Spacing.huge.value,
                    width: Spacing.xtraLarge.value * 3 + Spacing.small.value,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
