import 'dart:async';

import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/src/controllers/connectivity_controller.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/di/injection.dart';
import 'package:atoa_flutter_sdk/src/utility/payment_utility.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/bank_selection_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/verifying_payment_bottom_sheet/verifying_payment_bottom_sheet.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

/// {@template atoa_flutter_sdk}
/// Atoa Flutter SDK
/// {@endtemplate}
class AtoaSdk {
  const AtoaSdk();

  static Future<TransactionDetails?> pay(
    BuildContext context, {
    required String paymentId,
    required AtoaEnv env,
    required bool showHowPaymentWorks,
    void Function(String)? onUserClose,
    void Function(String)? onPaymentStatusChange,
    void Function(AtoaException)? onError,
    CustomerDetails? customerDetails,
  }) async {
    WidgetsFlutterBinding.ensureInitialized();

    Atoa.env = env;
    PaymentUtility.paymentId = paymentId;

    if (onUserClose != null) PaymentUtility.onUserClose = onUserClose;

    if (onPaymentStatusChange != null) {
      PaymentUtility.onPaymentStatusChange = onPaymentStatusChange;
    }

    if (customerDetails != null) {
      PaymentUtility.customerDetails = customerDetails;
    }

    await AtoaSdkConfig.initialize(
      environment: AtoaEnvironment.development, // or .staging or .production
    );

    if (onError != null) {
      PaymentUtility.onError = onError;
    }
    Regal.enableTracking = false;

    await configureInjection(env.name);
    try {
      getIt.get<Atoa>().initialize();
    } catch (_) {
      /// Show a error dialog with message
      /// Atoa SDK failed to initialize
      /// Please try again later
      /// If the problem persists, please contact support
      /// at support@atoa.me

      unawaited(
        showDialog<void>(
          // ignore: use_build_context_synchronously
          context: context,
          builder: (context) => const AlertDialog(
            title: Text('Atoa SDK failed to initialize'),
            content: Text('Please try again later'),
          ),
        ),
      );
    }

    if (!context.mounted) return null;
    getIt.registerSingleton<Connectivity>(Connectivity());

    final bankInstitutionsController = getIt.get<BankInstitutionsController>();
    final paymentStatusController = getIt.get<PaymentStatusController>();
    final connectivityController = getIt.get<ConnectivityController>();

    unawaited(bankInstitutionsController.getPaymentDetailsAndBanks());
    bankInstitutionsController.showHowPaymentWorks = showHowPaymentWorks;
    if (!context.mounted) return null;
    final res = await BankSelectionBottomSheet.show(
      context,
      showHowPaymentWorks: showHowPaymentWorks,
      bankInstitutionsController: bankInstitutionsController,
      paymentStatusController: paymentStatusController,
      connectivityController: connectivityController,
    );

    if (!context.mounted) return null;

    TransactionDetails? transactionDetails;
    if (res != null && res) {
      final verify = await VerifyingPaymentBottomSheet.show(
        context,
        bankInstitutionsController,
        paymentStatusController,
        connectivityController,
      );

      transactionDetails = verify;
    }

    bankInstitutionsController.dispose();
    paymentStatusController.dispose();
    connectivityController.dispose();

    return transactionDetails;
  }
}
