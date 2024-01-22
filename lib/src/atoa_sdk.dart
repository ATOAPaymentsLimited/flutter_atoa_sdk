import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_sdk/atoa_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

/// {@template atoa_sdk}
/// Atoa Flutter SDK
/// {@endtemplate}
class AtoaSdk {
  /// {@macro atoa_sdk}
  const AtoaSdk();

  static Future<void> show(
    BuildContext context, {
    required String paymentId,
  }) async {
    final atoa = Atoa();

    Atoa.apiKey = 'test-key';
    Atoa.env = AtoaEnv.sandbox;

    atoa.initialize();

    await showDialog<void>(
      context: context,
      useRootNavigator: false,
      builder: (context) => StateNotifierProvider<BankInstitutionsController,
          BankInstitutionsState>(
        create: (context) => BankInstitutionsController(
          atoa: atoa,
          paymentId: paymentId,
        ),
        builder: (context, child) => const ConnectBankPage(),
      ),
    );
  }
}
