import 'dart:ui';

class BrandingColorUtility {
  static Color? brandingBackgroundColor;
  static Color? brandingForegroundColor;

  static Color? getColor(String? code) {
    if (code == null) {
      return null;
    }
    return Color(
      int.parse(
        code.replaceFirst(
          '#',
          '0xFF',
        ),
      ),
    );
  }
}
