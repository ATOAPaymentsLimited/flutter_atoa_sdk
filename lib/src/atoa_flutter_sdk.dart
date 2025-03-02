import 'dart:convert';
import 'dart:io';

import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';

import 'package:atoa_flutter_sdk/src/di/injection.dart';
import 'package:atoa_flutter_sdk/src/utility/branding_color_utility.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/bank_selection_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/how_to_make_payment/how_to_make_payment_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/// {@template atoa_flutter_sdk}
/// Atoa Flutter SDK
/// {@endtemplate}
///
class AtoaSdk {
  const AtoaSdk({
    required this.paymentId,
    required this.authKey,
    required this.env,
    required this.showHowPaymentWorks,
    this.brandingColor,

    /// payment status polling interval
    this.interval = const Duration(seconds: 5),
  });

  final String paymentId;
  final String authKey;
  final AtoaEnv env;
  final bool showHowPaymentWorks;
  final Color? brandingColor;

  /// payment status polling interval
  final Duration? interval;

  static Future<TransactionDetails?> show(
    BuildContext context, {
    required String paymentId,
    required String authKey,
    required AtoaEnv env,
    required bool showHowPaymentWorks,
    Color? brandingBackgroundColor,
    Color? brandingForegroundColor,

    /// payment status polling interval
    Duration interval = const Duration(seconds: 5),
  }) async {
    Atoa.env = env;
    Atoa.authKey = authKey;

    BrandingColorUtility.brandingBackgroundColor = brandingBackgroundColor;
    BrandingColorUtility.brandingForegroundColor = brandingForegroundColor;
    await configureInjection(env.name);
    getIt.get<Atoa>().initialize();

    if (!context.mounted) return null;
    final TransactionDetails? transactionDetails;

    if (showHowPaymentWorks) {
      transactionDetails = await HowToMakePaymentBottomSheet.show(
        context,
        isHelp: false,
        paymentId: paymentId,
      );
    } else {
      transactionDetails = await BankSelectionBottomSheet.show(
        context,
        paymentId: paymentId,
      );
    }
    return transactionDetails;
  }

  static Future<String> getPaymentRequestId({required double amount}) async {
    // change it to dev url while testing
    final uri = Uri.parse(
      'https://devapi.atoa.me/api/payments/process-payment',
    );

    final response = await http.post(
      uri,
      headers: {
        HttpHeaders.authorizationHeader: const String.fromEnvironment(
          'atoa-token',
          defaultValue:
              'Bearer NmNiYTgzODEtZjJlOS00YTRmLTlmMWYtZjRiMWI2Zjc0ZDExOnY2SnRFcUtmcTFRMkFmTU8=',
        ),
        'Content-Type': 'application/json',
      },
      body: jsonEncode(getRequestData(amount)),
    );

    final resMap = jsonDecode(response.body) as Map<String, dynamic>;

    return resMap['paymentRequestId'] as String? ?? '';
  }

  static Map<String, dynamic> getRequestData(double amount) => {
        'customerId': 'abc123',
        'consumerDetails': {
          'phoneCountryCode': '44',
          'phoneNumber': 7857094720,
        },
        'orderId': '242u9384jfjkw',
        'currency': 'GBP',
        'amount': amount,
        'paymentType': 'TRANSACTION',
        'autoRedirect': false,
        'callbackParams': {
          'deviceId': '{deviceId}',
          'locationId': '{locationId}',
        },
        'redirectUrl': 'atoa://demoapp.com',
        'expiresIn': 60000000,
        'enableTips': true,
        'storeId': 'ee39ecfa-e336-461c-a957-1adc76ac087c',
        'strictExpiry': false,
        'allowRetry': true,
        'splitBill': false,
      };
}
