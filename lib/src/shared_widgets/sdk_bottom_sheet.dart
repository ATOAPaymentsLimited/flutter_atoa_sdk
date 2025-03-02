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
  RouteSettings? routeSettings,
  Color? backgroundColor,
  Clip? clipBehavior,
  double? elevation,
  double? titleBottomSpacing,
  bool enableDrag = false,
  bool isDismissable = false,
  bool showCloseButton = true,
  Widget? trailingTopWidget,
  Widget? leadingTopWidget,
  ShapeBorder? shape,
  AnimationController? transitionAnimationController,
  Alignment confettiAlignment = Alignment.center,
  Widget? illustrationWidget,
  bool showTitle = true,
}) =>
    showModalBottomSheet<T>(
      context: context,
      builder: (dialogContext) => DecoratedBox(
        decoration: BoxDecoration(
          color: context.intactColors.white,
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
              if (illustrationWidget != null) illustrationWidget,
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
                        style: dialogContext.figtree.labelMedium.w700.height130
                            .textColor(context.intactColors.black),
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
      isScrollControlled: isScrollControlled,
      barrierColor: barrierColor,
      constraints: constraints,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      backgroundColor: backgroundColor,
      elevation: elevation,
      enableDrag: enableDrag,
      isDismissible: isDismissable,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Spacing.xtraLarge.value),
          topRight: Radius.circular(Spacing.xtraLarge.value),
        ),
      ),
      useSafeArea: true,
      transitionAnimationController: transitionAnimationController,
    );
