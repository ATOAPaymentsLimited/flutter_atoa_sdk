import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

Future<T?> showSdkBottomSheet<T>({
  required BuildContext context,
  required String title,
  required WidgetBuilder body,
  void Function(BuildContext)? onClose,
  TextStyle? titleStyle,
  TextAlign? titleAlign,
  BoxConstraints? constraints,
  Color? barrierColor,
  bool useRootNavigator = false,
  bool isScrollControlled = true,
  Color? backgroundColor,
  double? titleBottomSpacing,
  bool showCloseButton = true,
  Widget? trailingTopWidget,
  Widget? leadingTopWidget,
  bool showTitle = true,
  bool showDivider = false,
}) =>
    showModalBottomSheet<T>(
      context: context,
      builder: (dialogContext) => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Spacing.xtraLarge.value),
              topRight: Radius.circular(Spacing.xtraLarge.value),
            ),
          ),
          child: Padding(
            padding: Spacing.large.y + Spacing.xtraLarge.x,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (showDivider) ...[
                  Container(
                    height: Spacing.mini.value,
                    width: Spacing.huge.value * 2 + Spacing.tiny.value,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Spacing.mini.value),
                      color: NeutralColors.light().grey.shade200,
                    ),
                  ),
                  Spacing.medium.yBox,
                ],
                if (showTitle) ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (leadingTopWidget != null) ...[
                        leadingTopWidget,
                        Spacing.medium.xBox,
                      ],
                      Spacing.huge.xBox,
                      Expanded(
                        child: CustomText.semantics(
                          title,
                          textAlign: TextAlign.center,
                          style: kFigtreeTextTheme.labelMedium?.w700.height130,
                        ),
                      ),
                      Spacing.large.xBox,
                      if (showCloseButton)
                        Padding(
                          padding: Spacing.mini.top,
                          child: trailingTopWidget ??
                              CustomInkWell(
                                semanticsLabel: 'Close Dialog Sheet Icon',
                                context: dialogContext,
                                trackLabel: 'Close Dialog Sheet Icon',
                                onTap: onClose != null
                                    ? () => onClose.call(dialogContext)
                                    : () {
                                        Navigator.pop(dialogContext);
                                      },
                                child: Container(
                                  width: Spacing.huge.value,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: NeutralColors.light().grey.shade50,
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: Spacing.mini.all,
                                      child: Icon(
                                        Icons.close,
                                        size: Spacing.medium.value,
                                        color: context.intactColors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                        ),
                    ],
                  ),
                ],
                if (titleBottomSpacing != null)
                  OperatorSizedBox.height(
                    titleBottomSpacing,
                  )
                else
                  Spacing.huge.yBox,
                Builder(
                  builder: body,
                ),
              ],
            ),
          ),
        ),
      ),
      isScrollControlled: isScrollControlled,
      barrierColor: barrierColor,
      constraints: constraints,
      useRootNavigator: useRootNavigator,
      backgroundColor: backgroundColor,
      enableDrag: false,
      isDismissible: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Spacing.xtraLarge.value),
          topRight: Radius.circular(Spacing.xtraLarge.value),
        ),
      ),
      useSafeArea: true,
    );
