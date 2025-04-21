import 'package:atoa_flutter_sdk/src/shared_widgets/snackbar_type.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal/regal.dart' hide SnackbarType;

class Snackbar extends StatelessWidget {
  const Snackbar(
    this.snackbar, {
    super.key,
    this.onClose,
    this.alignment,
    this.leading,
    this.titleTextStyle,
    this.showClose = true,
  });

  final SnackbarType snackbar;
  final VoidCallback? onClose;
  final Alignment? alignment;
  final Widget? leading;
  final bool showClose;
  final TextStyle? titleTextStyle;

  Widget _verticalDivider(BuildContext context) => Container(
        width: 1.sp,
        margin: Spacing.mini.right + Spacing.mini.y,
        decoration: BoxDecoration(
          border: Border(
            left: Divider.createBorderSide(
              context,
              color: NeutralColors.light().grey.shade200,
              width: 1.sp,
            ),
          ),
        ),
      );

  Widget? trailing(BuildContext context) {
    final close = RegalIconButton.iconData(
      semanticsLabel: 'Close Snackbar',
      onPressed: (context) => onClose?.call(),
      iconData: Icons.close,
      trackLabel: 'Close Snackbar',
      size: RegalIconButtonSize.medium,
      iconColor: snackbar.type.closeColor(context),
    );

    final cta = snackbar.ctaText != null && snackbar.onCTA != null
        ? TextButton(
            onPressed: () {
              snackbar.onCTA!();
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              foregroundColor: snackbar.type.ctaColor(context),
            ),
            child: snackbar.loading
                ? GradientCircularProgressIndicator(
                    radius: Spacing.medium.r,
                  )
                : Text(snackbar.ctaText!),
          )
        : null;

    if (cta != null) {
      return Expanded(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (showClose) ...[
              Spacing.medium.xBox,
              cta,
              Spacing.medium.xBox,
              _verticalDivider(context),
              Spacing.tiny.xBox,
              close,
            ] else ...[
              _verticalDivider(context),
              Spacing.tiny.xBox,
              cta,
            ],
          ],
        ),
      );
    }

    if (cta != null) {
      return cta;
    }

    if (onClose != null) {
      return close;
    }

    return null;
  }

  Widget wrap(Widget widget, BuildContext context) => SafeArea(
        minimum: Spacing.huge.y,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.sp),
              child: Material(
                color: Colors.transparent,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: NeutralColors.light().grey.shade200),
                    borderRadius: BorderRadius.circular(20.sp),
                  ),
                  child: widget,
                ),
              ),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    final listTile = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (snackbar.headerIcon != null && snackbar.headerText != null)
          Container(
            padding: Spacing.medium.x,
            decoration: BoxDecoration(
              color: snackbar.type.bg(context),
              border: Border.all(color: NeutralColors.light().grey.shade200),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.sp),
                topRight: Radius.circular(20.sp),
              ),
            ),
            child: Row(
              children: [
                snackbar.headerIcon!,
                Spacing.medium.xBox,
                Text(
                  snackbar.headerText!,
                  style: sdkFigTreeTextTheme.headlineSmall?.copyWith(
                    color: snackbar.type.textColor(context),
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ),
        ListTile(
          horizontalTitleGap: 12.sp,
          contentPadding: Spacing.medium.x,
          tileColor: snackbar.type.bg(context),
          leading: leading ?? snackbar.type.leading(context),
          title: Text(snackbar.title),
          titleTextStyle: titleTextStyle ??
              sdkFigTreeTextTheme.headlineSmall?.copyWith(
                color: snackbar.type.textColor(context),
                fontSize: 14.sp,
              ),
          subtitle: snackbar.description != null
              ? Text(
                  snackbar.description!,
                  style: sdkFigTreeTextTheme.bodyLarge?.copyWith(
                    color: snackbar.type.textColor(context),
                    fontSize: 14.sp,
                  ),
                )
              : null,
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (trailing(context) != null) ...[
                trailing(context)!,
              ],
            ],
          ),
        ),
      ],
    );

    return Align(
      alignment: alignment ?? Alignment.bottomCenter,
      child: Padding(
        padding: Spacing.large.x,
        child: wrap(listTile, context),
      ),
    );
  }
}
