// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension StringExtension on String {
  String formattedTime({bool toLocal = true}) => DateFormat('jm').format(
        toLocal
            ? DateTime.parse(
                this.contains('Z') ? this : '${this}Z',
              ).toLocal()
            : DateTime.parse(this.contains('Z') ? this : '${this}Z'),
      );

  String formattedDateTime({
    bool toLocal = true,
    String format = 'MMM dd yyyy',
  }) =>
      DateFormat(format).add_jm().format(
            toLocal ? DateTime.parse(this).toLocal() : DateTime.parse(this),
          );

  String formattedDateForPaymentDetails(
    BuildContext context, {
    String format = 'dd MMM yyyy',
    bool toLocal = true,
  }) =>
      DateFormat(format).format(
        toLocal ? DateTime.parse(this).toLocal() : DateTime.parse(this),
      );

  String formattedAmount({
    String? currencySymbol,
    int decimalDigits = 2,
    bool noDecimals = false,
  }) {
    final amount = this.replaceAll(',', '');
    final parse = double.parse(amount);
    NumberFormat f;
    if (currencySymbol == null) {
      if (noDecimals) {
        final isWhole = this is int || parse == parse.roundToDouble();
        if (isWhole) {
          f = NumberFormat('#,##0', 'en_US');
        } else {
          f = NumberFormat('#,##0.00', 'en_US');
        }
      } else {
        f = NumberFormat('#,##0.00', 'en_US');
      }
    } else {
      f = NumberFormat.currency(
        decimalDigits: decimalDigits,
        symbol: currencySymbol,
      );
    }
    return f.format(parse).replaceAll(' ', '');
  }

  String getInitials() {
    if (this.isEmpty) return '';
    final words = this.split(' ');
    var res = '';

    if (words.length > 1) {
      res = this.substring(0, 1) +
          (words[1].length > 1 ? words[1].substring(0, 1) : words[1]);
    } else {
      res = this.substring(0, 1);
    }

    // remove any non-ascii characters
    res = res.replaceAll(RegExp(r'[^\x00-\x7F]+'), '');

    return res.toUpperCase();
  }
}
