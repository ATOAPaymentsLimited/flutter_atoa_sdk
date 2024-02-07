import 'package:atoa_sdk/l10n/app_localizations.dart';
import 'package:flutter/widgets.dart';

export 'package:atoa_sdk/l10n/app_localizations.dart';

/// {@template l10n_x}
/// l10n context extension
/// {@endtemplate}
extension AppLocalizationsX on BuildContext {
  /// {@macro l10n_x}
  AppLocalizations get l10n => AppLocalizations.of(this);
}
