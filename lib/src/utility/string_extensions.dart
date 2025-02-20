// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:regal/regal.dart';

extension StringExtension on String {
  String formattedMobNumber() => this.replaceAll(RegExp('^0+'), '');

  bool isValidCrn() => RegExp(
        '[0-9]{8}|[(AC|BR|CE|FC|GE|GN|GS|IC|IP|LP|NA|NF|NI|NL|NO|NP|NR|NZ|OC|RC|RS|SA|SC|SF|SI|SL|SO|SP|SR|SZ|ZC|R)]{2}[0-9]{6}',
      ).hasMatch(this);

  bool isValidAlphanumeric() => RegExp(r'^[a-zA-Z0-9 ]+$').hasMatch(this);

  Text buildInputLabel(BuildContext context) => CustomText.semantics(
        this,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
            ),
      );

  Text buildPageTitle(BuildContext context) => CustomText.semantics(
        this,
        style: context.montserrat.headlineSmall.copyWith(fontSize: 20.sp),
      );

  Text buildMainHeading(BuildContext context) => CustomText.semantics(
        this,
        style: Theme.of(context).textTheme.titleLarge,
      );

  Text buildMainSubHeading(BuildContext context) => CustomText.semantics(
        this,
        style: Theme.of(context).textTheme.titleSmall,
      );

  Text buildSectionHeading(BuildContext context) => CustomText.semantics(
        this,
        style:
            Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 18.sp),
      );

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

  String formattedDateString({
    String format = 'dd/MM/yyyy',
    bool toLocal = true,
  }) =>
      DateFormat(format).format(
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

  bool isToday({
    DateTime? dateTime,
    String? dateTimeString,
  }) {
    final now = DateTime.now();
    final startOfToday = DateTime(now.year, now.month, now.day, 0, 0, 01);
    final endOfToday = DateTime(now.year, now.month, now.day, 23, 59, 59);
    if (dateTime != null) {
      return dateTime.isAfter(startOfToday) && dateTime.isBefore(endOfToday);
    }

    if (dateTimeString != null && dateTimeString.isNotEmpty) {
      final parseDate = DateTime.parse(dateTimeString);
      return parseDate.isAfter(startOfToday) && parseDate.isBefore(endOfToday);
    }
    return false;
  }

  bool isYesterday({
    DateTime? dateTime,
    String? dateTimeString,
  }) {
    final now = DateTime.now();
    final startOfToday = DateTime(now.year, now.month, now.day - 1, 0, 0, 01);
    final endOfToday = DateTime(now.year, now.month, now.day - 1, 23, 59, 59);
    if (dateTime != null) {
      return dateTime.isAfter(startOfToday) && dateTime.isBefore(endOfToday);
    }

    if (dateTimeString != null && dateTimeString.isNotEmpty) {
      final parseDate = DateTime.parse(dateTimeString);
      return parseDate.isAfter(startOfToday) && parseDate.isBefore(endOfToday);
    }
    return false;
  }

  bool isThisYear({
    DateTime? dateTime,
    String? dateTimeString,
  }) {
    final now = DateTime.now();
    final startOfYear = DateTime(now.year - 1);
    if (dateTime != null) {
      return dateTime.isAfter(startOfYear);
    }

    if (dateTimeString != null && dateTimeString.isNotEmpty) {
      final parseDate = DateTime.parse(dateTimeString);
      return parseDate.isAfter(startOfYear);
    }
    return false;
  }

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

  String convertToPence() {
    final regex = RegExp(r'£(\d+(\.\d+)?)');
    final Iterable<Match> matches = regex.allMatches(this);

    if (matches.isNotEmpty) {
      final amountStr = matches.first.group(1)!;
      final amount = double.parse(amountStr);

      if (amount < 1.0) {
        final pence = (amount * 100).toInt();
        final result = this.replaceAllMapped(regex, (match) => '${pence}p');
        return result;
      }
    }

    return this;
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

  String get normalizedPhoneNumber {
    var normalizedNumber = '';
    normalizedNumber = this.replaceAll(RegExp('[^0-9]'), '');

    if (normalizedNumber.length > 10) {
      normalizedNumber =
          normalizedNumber.substring(normalizedNumber.length - 10);
    }

    return normalizedNumber;
  }

  String get removeLeadingZeros => replaceAll(RegExp('^0+(?=.)'), '');

  String get getCountryCodeFromPhoneNumber {
    final number = replaceAll(RegExp('[^0-9]'), '');
    final numberLength = number.length;
    if (numberLength == 11 && this.startsWith('0')) {
      return '44';
    }
    return numberLength > 10
        ? number.substring(
            0,
            numberLength - 10,
          )
        : '44';
  }

  String truncateAfterLength(int lengthAfterToTruncate) =>
      length > lengthAfterToTruncate
          ? '${substring(0, lengthAfterToTruncate)}...'
          : this;

  String capitalize() => '${this[0].toUpperCase()}${this.substring(1)}';

  bool isValidUUID() {
    final uuidRegex = RegExp(
      r'^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$',
    );
    return uuidRegex.hasMatch(this);
  }

  /// returns null if string is empty
  String? nullOnEmpty() => this.isEmpty ? null : this;
}
