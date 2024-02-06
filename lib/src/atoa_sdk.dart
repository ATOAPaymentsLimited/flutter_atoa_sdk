import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_sdk/atoa_sdk.dart';
import 'package:atoa_sdk/src/controllers/controllers.dart';
import 'package:atoa_sdk/src/views/connect_bank_page/connect_bank_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

/// {@template atoa_sdk}
/// Atoa Flutter SDK
/// {@endtemplate}
class AtoaSdk {
  /// {@macro atoa_sdk}
  const AtoaSdk();

  static Future<bool?> show(
    BuildContext context, {
    required String paymentId,
    Duration period = const Duration(seconds: 5),
  }) async {
    final atoa = Atoa();

    Atoa.env = AtoaEnv.sandbox;

    atoa.initialize();

    return showDialog<bool>(
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
              period: period,
            ),
          ),
        ],
        builder: (_, child) => child!,
        child: const ConnectBankPage(),
      ),
    );
  }
}
