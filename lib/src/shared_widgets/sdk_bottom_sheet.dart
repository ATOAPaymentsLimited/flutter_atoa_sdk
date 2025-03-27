import 'package:atoa_flutter_sdk/constants/constant.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/bottom_sheet_actions.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

Future<T?> showSdkBottomSheet<T>({
  required BuildContext context,
  required String title,
  required WidgetBuilder body,
  TextStyle? titleStyle,
  TextAlign? titleAlign,
  double? titleBottomSpacing,
  void Function(BuildContext)? onClose,
  bool showTitle = true,
  bool enableDrag = false,
  bool isDismissible = false,
}) =>
    showModalBottomSheet<T>(
      context: context,
      builder: (dialogContext) => SdkBottomSheet(
        showDivider: enableDrag,
        title: title,
        titleStyle: titleStyle,
        titleAlign: titleAlign,
        titleBottomSpacing: titleBottomSpacing,
        onClose: onClose,
        showTitle: showTitle,
        padding: Spacing.large.all,
        body: body,
      ),
      isScrollControlled: true,
      backgroundColor: IntactColors.light().white,
      enableDrag: enableDrag,
      isDismissible: isDismissible,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Spacing.xtraLarge.value),
          topRight: Radius.circular(Spacing.xtraLarge.value),
        ),
      ),
      useSafeArea: true,
      transitionAnimationController: AnimationController(
        vsync: Navigator.of(context),
        duration: kAnimationDuration,
      ),
    );

class SdkBottomSheet extends StatefulWidget {
  const SdkBottomSheet({
    required this.title,
    required this.body,
    required this.padding,
    super.key,
    this.titleStyle,
    this.titleAlign,
    this.titleBottomSpacing,
    this.onClose,
    this.showTitle = true,
    this.showDivider = false,
  });
  final String title;
  final bool showDivider;
  final bool showTitle;
  final TextStyle? titleStyle;
  final TextAlign? titleAlign;
  final double? titleBottomSpacing;
  final void Function(BuildContext)? onClose;
  final WidgetBuilder body;
  final EdgeInsets padding;

  @override
  State<SdkBottomSheet> createState() => _SdkBottomSheetState();
}

class _SdkBottomSheetState extends State<SdkBottomSheet> {
  @override
  Widget build(BuildContext context) => Theme(
        data: sdkLedgerTheme,
        child: AnimatedContainer(
          duration: kAnimationDuration,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Spacing.xtraLarge.value),
                topRight: Radius.circular(Spacing.xtraLarge.value),
              ),
              color: IntactColors.light().white,
            ),
            child: Padding(
              padding: widget.padding,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (widget.showDivider) ...[
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
                  if (widget.showTitle) ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (widget.titleAlign == null) ...[
                          const Opacity(
                            opacity: 0,
                            child: EmptyIconPlaceholder(),
                          ),
                          Spacing.large.xBox,
                        ],
                        Expanded(
                          child: CustomText.semantics(
                            widget.title,
                            textAlign: widget.titleAlign ?? TextAlign.center,
                            style:
                                sdkFigTreeTextTheme.labelMedium?.w700.height130,
                          ),
                        ),
                        Spacing.large.xBox,
                        BottomSheetAction(
                          semanticsLabel: 'Close Dialog Sheet Icon',
                          trackLabel: 'Close Dialog Sheet Icon',
                          onTap: widget.onClose != null
                              ? () => widget.onClose!.call(context)
                              : () {
                                  Navigator.pop(context);
                                },
                          child: Icon(
                            Icons.close,
                            size: Spacing.large.value,
                            color: IntactColors.light().black,
                          ),
                        ),
                      ],
                    ),
                  ],
                  if (widget.titleBottomSpacing != null)
                    OperatorSizedBox.height(
                      widget.titleBottomSpacing!,
                    )
                  else
                    Spacing.huge.yBox,
                  widget.body(context),
                ],
              ),
            ),
          ),
        ),
      );
}
