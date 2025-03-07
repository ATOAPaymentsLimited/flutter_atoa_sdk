import 'dart:convert';
import 'dart:io';

import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';

import 'package:atoa_flutter_sdk/src/di/injection.dart';
import 'package:atoa_flutter_sdk/src/utility/payment_utility.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/bank_selection_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/// {@template atoa_flutter_sdk}
/// Atoa Flutter SDK
/// {@endtemplate}
class AtoaSdk {
  const AtoaSdk();

  static Future<TransactionDetails?> show(
    BuildContext context, {
    required String paymentId,
    required AtoaEnv env,
    required bool showHowPaymentWorks,

    /// payment status polling interval
    Duration interval = const Duration(seconds: 1),
  }) async {
    WidgetsFlutterBinding.ensureInitialized();

    Atoa.env = env;
    PaymentUtility.paymentId = paymentId;
    PaymentUtility.interval = interval;

    await configureInjection(env.name);
    getIt.get<Atoa>().initialize();

    if (!context.mounted) return null;

    final transactionDetails = await BankSelectionBottomSheet.show(
      context,
      showHowPaymentWorks: showHowPaymentWorks,
    );

    return transactionDetails;
  }

  static Future<String> getPaymentRequestId({required double amount}) async {
    // change it to dev url while testing
    final uri = Uri.parse(
      'https://api.atoa.me/api/payments/process-payment',
    );

    final response = await http.post(
      uri,
      headers: {
        HttpHeaders.authorizationHeader: const String.fromEnvironment(
          'atoa-token',
          defaultValue: 'Bearer <access-token>',
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
