import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

@immutable
class SnackbarType {
  const SnackbarType.error(
    this.title, {
    this.description,
    this.ctaText,
    this.onCTA,
    this.loading = false,
    this.headerIcon,
    this.headerText,
  })  : type = SnackbarTypeEnum.error,
        assert(
          (ctaText == null && onCTA == null) ||
              (ctaText != null && onCTA != null),
          '`ctaText` and `onCTA` both should be provide or none at all',
        ),
        assert(
          (headerIcon == null && headerText == null) ||
              (headerIcon != null && headerText != null),
          '`headerText` and `headerIcon` both should be provide or none at all',
        );

  const SnackbarType.success(
    this.title, {
    this.description,
    this.ctaText,
    this.onCTA,
    this.loading = false,
    this.headerIcon,
    this.headerText,
  })  : type = SnackbarTypeEnum.success,
        assert(
          (ctaText == null && onCTA == null) ||
              (ctaText != null && onCTA != null),
          '`ctaText` and `onCTA` both should be provide or none at all',
        ),
        assert(
          (headerIcon == null && headerText == null) ||
              (headerIcon != null && headerText != null),
          '`headerText` and `headerIcon` both should be provide or none at all',
        );

  const SnackbarType.info(
    this.title, {
    this.description,
    this.ctaText,
    this.onCTA,
    this.loading = false,
    this.headerIcon,
    this.headerText,
  })  : type = SnackbarTypeEnum.info,
        assert(
          (ctaText == null && onCTA == null) ||
              (ctaText != null && onCTA != null),
          '`ctaText` and `onCTA` both should be provide or none at all',
        ),
        assert(
          (headerIcon == null && headerText == null) ||
              (headerIcon != null && headerText != null),
          '`headerText` and `headerIcon` both should be provide or none at all',
        );

  final bool loading;
  final String title;
  final String? description;
  final String? ctaText;
  final VoidCallback? onCTA;
  final SnackbarTypeEnum type;
  final Widget? headerIcon;
  final String? headerText;
}

extension SnackbarTypeEnumX on SnackbarTypeEnum {
  Widget leading(BuildContext context) => switch (this) {
        SnackbarTypeEnum.success => Icon(
            Icons.check_circle,
            color: IntactColors.light().white,
            size: Spacing.xtraLarge.value,
          ),
        SnackbarTypeEnum.error => Icon(
            Icons.error_outline,
            color: IntactColors.light().white,
            size: Spacing.xtraLarge.value,
          ),
        SnackbarTypeEnum.info => Icon(
            Icons.info_outline,
            color: NeutralColors.light().grey.shade500,
          ),
      };

  Color bg(BuildContext context) => switch (this) {
        SnackbarTypeEnum.success => SemanticsColors.light().positive.darker,
        SnackbarTypeEnum.error => SemanticsColors.light().error.darker,
        SnackbarTypeEnum.info => NeutralColors.light().grey.shade100,
      };

  Color textColor(BuildContext context) => switch (this) {
        SnackbarTypeEnum.success => IntactColors.light().white,
        SnackbarTypeEnum.error => IntactColors.light().white,
        SnackbarTypeEnum.info => IntactColors.light().black,
      };

  Color closeColor(BuildContext context) => switch (this) {
        SnackbarTypeEnum.success => NeutralColors.light().grey.shade100,
        SnackbarTypeEnum.error => NeutralColors.light().grey.shade100,
        SnackbarTypeEnum.info => NeutralColors.light().grey.shade100,
      };

  Color ctaColor(BuildContext context) => switch (this) {
        SnackbarTypeEnum.success => IntactColors.light().white,
        SnackbarTypeEnum.error => IntactColors.light().white,
        SnackbarTypeEnum.info => IntactColors.light().black,
      };
}

enum SnackbarTypeEnum { error, success, info }
