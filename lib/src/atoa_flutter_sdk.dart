import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/views/connect_bank_page/connect_bank_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
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
    final atoa = Atoa();
    Atoa.env = AtoaEnv.prod;

    atoa.initialize();
    final paymentRequestController = PaymentRequestController(atoa: atoa);
    final res =
        await paymentRequestController.getPaymentRequestId(amount: amount);
    return res;
  }
}
