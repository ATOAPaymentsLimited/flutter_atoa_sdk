import 'dart:convert';
import 'dart:io';

import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/di/injection.dart';
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
class AtoaSdk extends StatefulWidget {
  const AtoaSdk({
    required this.paymentId,
    required this.authKey,
    required this.env,
    required this.showHowPaymentWorks,
    super.key,
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

  static Future<void> show(
    BuildContext context, {
    required String paymentId,
    required String authKey,
    required AtoaEnv env,
    required bool showHowPaymentWorks,
    Color? brandingColor,

    /// payment status polling interval
    Duration interval = const Duration(seconds: 5),
  }) async {
    Atoa.env = env;
    await configureInjection(env.name);

    getIt.get<Atoa>().initialize();

    if (!context.mounted) return;

    return showHowPaymentWorks
        ? HowToMakePaymentBottomSheet.show(
            context,
            isHelp: false,
            paymentId: paymentId,
          )
        : showLedgerBottomSheet<void>(
            context: context,
            title: context.l10n.selectYourBank,
            backgroundColor: context.intactColors.white,
            titleAlign: TextAlign.center,
            leadingTopWidget: CustomGestureDetector(
              context: context,
              trackLabel: 'Back Icon',
              semanticsLabel: 'Back icon',
              child: CircleAvatar(
                backgroundColor: NeutralColors.light().grey.shade50,
                child: Center(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: context.intactColors.black,
                    size: Spacing.large.value,
                  ),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            trailingTopWidget: CustomGestureDetector(
              context: context,
              trackLabel: 'Back Icon',
              semanticsLabel: 'Back icon',
              onTap: () => HowToMakePaymentBottomSheet.show(
                context,
                paymentId: paymentId,
              ),
              child: CircleAvatar(
                backgroundColor: NeutralColors.light().grey.shade50,
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: NeutralColors.light().grey.shade50,
                    child: Assets.icons.help.svg(),
                  ),
                ),
              ),
            ),
            showTopDivider: false,
            titleStyle: context.figtree.labelMedium.w700.textColor(
              NeutralColors.light().grey.shade700,
            ),
            body: (context) => AtoaSdk(
              paymentId: paymentId,
              authKey: authKey,
              env: env,
              showHowPaymentWorks: showHowPaymentWorks,
              brandingColor: brandingColor,
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
        },
        'orderId': '242u9384jfjkw',
        'currency': 'GBP',
        'amount': amount,
        //  'institutionId': 'modelo-sandbox',
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

  @override
  State<AtoaSdk> createState() => _AtoaSdkState();
}

class _AtoaSdkState extends State<AtoaSdk> {
  /// {@macro atoa_flutter_sdk}

  @override
  Widget build(BuildContext context) =>
      StateNotifierProvider<BankInstitutionsController, BankInstitutionsState>(
        create: (_) => getIt.get<BankInstitutionsController>(
          param1: widget.paymentId,
          param2: widget.authKey,
        ),
        builder: (context, child) => const BankSelectionBottomSheet(),
      );
}
