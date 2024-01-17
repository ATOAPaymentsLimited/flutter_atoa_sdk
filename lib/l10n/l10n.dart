import 'package:flutter/widgets.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

export 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// {@template l10n_x}
/// l10n context extension
/// {@endtemplate}
extension AppLocalizationsX on BuildContext {
  /// {@macro l10n_x}
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
