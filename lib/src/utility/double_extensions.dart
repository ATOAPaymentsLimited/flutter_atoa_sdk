// ignore_for_file: unnecessary_this

import 'package:atoa_sdk/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DoubleExtension on double {
  String formattedAmount({String? currencySymbol, int? decimalDigits = 2}) {
    NumberFormat f;
    if (currencySymbol == null) {
      f = NumberFormat('#,##0.00', 'en_GB');
    } else {
      f = NumberFormat.currency(
        locale: 'en_GB',
        decimalDigits: decimalDigits,
        symbol: currencySymbol,
      );
    }
    return f.format(this);
  }

  List<String> splitUptoDecimal(BuildContext context) => formattedAmount(
        currencySymbol: context.l10n.currencySymbol,
      ).split('.');
}
