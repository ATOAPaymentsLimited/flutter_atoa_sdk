import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';

import 'package:atoa_flutter_sdk/src/di/injection.dart';
import 'package:atoa_flutter_sdk/src/utility/payment_utility.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/bank_selection_bottom_sheet.dart';
import 'package:flutter/material.dart';

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
}
