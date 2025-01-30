import 'dart:convert';
import 'dart:io';

import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/views/connect_bank_page/connect_bank_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

/// {@template atoa_flutter_sdk}
/// Atoa Flutter SDK
/// {@endtemplate}
class AtoaSdk {
  /// {@macro atoa_flutter_sdk}
  const AtoaSdk();

  static Future<TransactionDetails?> show(
    BuildContext context, {
    required String paymentId,
    required AtoaEnv env,

    /// payment status polling interval
    Duration interval = const Duration(seconds: 5),
  }) async {
    final atoa = Atoa();

    Atoa.env = env;

    atoa.initialize();

    return showDialog<TransactionDetails>(
      context: context,
      useRootNavigator: false,
      builder: (_) => MultiProvider(
        providers: [
          StateNotifierProvider<BankInstitutionsController,
              BankInstitutionsState>(
            create: (_) => BankInstitutionsController(
              atoa: atoa,
              paymentId: paymentId,
            ),
          ),
          StateNotifierProvider<PaymentStatusController, PaymentStatusState>(
            create: (_) => PaymentStatusController(
              atoa: atoa,
              interval: interval,
            ),
          ),
        ],
        builder: (_, child) => child!,
        child: const ConnectBankPage(),
      ),
    );
  }

  static Future<String> getPaymentRequestId({required double amount}) async {
    final uri = Uri.parse(
      'https://devapi.atoa.me/api/payments/process-payment',
    );

    final response = await http.post(
      uri,
      headers: {
        HttpHeaders.authorizationHeader: const String.fromEnvironment(
          'atoa-token',
          defaultValue:
              'Bearer ZWVlZjk5NGItYTE5My00ODUwLWJjMGYtYTJkNGEwMjM0OGJiOlRrRDZ4N2tEUVAya2czcnc=',
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
          'email': 'john@deo.com',
          'firstName': 'John',
          'lastName': 'Deo',
        },
        'orderId': '242u9384jfjkw',
        'currency': 'GBP',
        'amount': amount,
        'institutionId': 'modelo-sandbox',
        'paymentType': 'TRANSACTION',
        'autoRedirect': false,
        'callbackParams': {
          'deviceId': '{deviceId}',
          'locationId': '{locationId}',
        },
        'redirectUrl': 'atoasdk://demoapp.me',
        'expiresIn': 60000000,
        'enableTips': true,
        'storeId': 'ee39ecfa-e336-461c-a957-1adc76ac087c',
        'strictExpiry': false,
        'allowRetry': true,
        'template': 'RECEIPT_PNG',
        'splitBill': false,
      };
}
