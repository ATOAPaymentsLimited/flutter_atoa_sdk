import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:regal/regal.dart';

class PaymentDetailsRow extends StatelessWidget {
  const PaymentDetailsRow({
    required this.label,
    required this.value,
    super.key,
    this.onTapValue,
    this.logo,
    this.subValue,
    this.showCopyContent = false,
    this.maskSubValue = false,
  });

  final String label;
  final String value;
  final String? subValue;
  final String? logo;
  final VoidCallback? onTapValue;
  final bool showCopyContent;
  final bool? maskSubValue;

  @override
  Widget build(BuildContext context) => CustomGestureDetector(
        semanticsLabel: value,
        context: context,
        trackLabel: value,
        enableTracking: false,
        onTap: onTapValue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (label.isNotEmpty)
                    CustomText.semantics(
                      label,
                      style: context.bodyMedium?.height150
                          .textColor(context.intactColors.black),
                    ),
                  Spacing.mini.yBox,
                  Row(
                    children: [
                      if (logo != null) ...[
                        _getLogoWidget(context),
                        Spacing.medium.xBox,
                      ],
                      Expanded(child: _getValueWidget(context)),
                    ],
                  ),
                ],
              ),
            ),
            if (showCopyContent) ...[
              CustomGestureDetector(
                context: context,
                trackLabel: 'Copy $label',
                semanticsLabel: 'Copy $label',
                child: Padding(
                  padding: Spacing.small.left,
                  child: Assets.icons.copy.svg(
                    height: Spacing.huge.value,
                    width: Spacing.huge.value,
                    colorFilter: ColorFilter.mode(
                      context.grey.shade40,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                onTap: () async {
                  await Clipboard.setData(ClipboardData(text: value));
                  if (!context.mounted) {
                    return;
                  }
                  context.showSnackbar(
                    SnackbarType.success(
                      context.l10n.valueCopiedToClipboard(label),
                    ),
                  );
                },
              ),
            ],
          ],
        ),
      );

  Widget _getLogoWidget(BuildContext context) => Container(
        height: Spacing.large.value * 2,
        width: Spacing.large.value * 2,
        decoration: BoxDecoration(
          color: context.intactColors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(
              Spacing.small.value,
            ),
          ),
          border: Border.all(color: context.grey.shade20),
        ),
        child: Padding(
          padding: Spacing.mini.all,
          child: CachedNetworkImage(
            imageUrl: logo!,
            height: Spacing.xtraLarge.value,
          ),
        ),
      );

  Widget _getValueWidget(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: CustomText.semantics(
              value,
              style: context.bodyMedium?.w600
                  .textColor(context.intactColors.black),
            ),
          ),
          if ((maskSubValue ?? false) && subValue != null)
            Flexible(
              child: CustomText.semantics(
                subValue!.isEmpty
                    ? ''
                    : 'xxxxx${subValue!.length > 3 ? subValue!.substring(subValue!.length - 3) : subValue!}',
                style: context.bodyMedium?.w600
                    .textColor(context.intactColors.black),
              ),
            )
          else if (subValue != null)
            Flexible(
              child: CustomText.semantics(
                subValue!.isEmpty ? '' : subValue!,
                style: context.bodyMedium?.w600
                    .textColor(context.intactColors.black),
              ),
            ),
        ],
      );
}
