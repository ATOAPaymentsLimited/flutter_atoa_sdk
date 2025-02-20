import 'dart:convert';
import 'dart:io';

import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/di/injection.dart';
import 'package:atoa_flutter_sdk/src/utility/shared_prefs.dart';
import 'package:atoa_flutter_sdk/src/views/connect_bank_page/bank_selection_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/how_to_make_payment/how_to_make_payment_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:http/http.dart' as http;
import 'package:regal/regal.dart';

/// {@template atoa_flutter_sdk}
/// Atoa Flutter SDK
/// {@endtemplate}
///
class AtoaSdk {
  /// {@macro atoa_flutter_sdk}
  const AtoaSdk();

  static Future<void> show(
    BuildContext context, {
    required String paymentId,
    required String authKey,
    required AtoaEnv env,

    /// payment status polling interval
    Duration interval = const Duration(seconds: 5),
  }) async {
    Atoa.env = env;
    await configureInjection(env.name);

    final atoa = getIt.get<Atoa>();
    final sharedPrefs = getIt.get<SharedPrefs>();

    atoa.initialize();
    await SharedPrefs().initialize();

    if (!context.mounted) return;

    return showLedgerBottomSheet<void>(
      context: context,
      title: context.l10n.selectYourBank,
      body: (context) => StateNotifierProvider<BankInstitutionsController,
          BankInstitutionsState>(
        create: (_) => getIt.get<BankInstitutionsController>(
          param1: paymentId,
          param2: authKey,
        ),
        builder: (context, child) =>
            sharedPrefs.getBool('showHowToMakePayments') ?? true
                ? const HowToMakePaymentBottomSheet()
                : const BankSelectionBottomSheet(),
      ),
    );
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
        'redirectUrl': 'atoa://demoapp.com',
        'expiresIn': 60000000,
        'enableTips': true,
        'storeId': 'ee39ecfa-e336-461c-a957-1adc76ac087c',
        'strictExpiry': false,
        'allowRetry': true,
        'template': 'RECEIPT_PNG',
        'splitBill': false,
      };
}
