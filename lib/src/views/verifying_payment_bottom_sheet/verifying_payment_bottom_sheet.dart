import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class VerifyingPaymentBottomSheet extends StatelessWidget {
  const VerifyingPaymentBottomSheet({
    super.key,
    required this.bankInstitutionController,
    required this.state,
  });

  final BankInstitutionsController bankInstitutionController;
  final BankInstitutionsState state;

  static Future<void> show(
    BuildContext context,
    BankInstitutionsController bankInstitutionController,
    BankInstitutionsState state,
  ) {
    return showModalBottomSheet<void>(
      context: context,
      builder: (_) => VerifyingPaymentBottomSheet(
          bankInstitutionController: bankInstitutionController, state: state),
    );
  }

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Cancel'),
            RegalButton.primary(
              onPressed: () async {
                await bankInstitutionController.cancelPayment();
              },
              trackLabel: 'Cancel Button',
              enableTracking: false,
              label: context.l10n.cancel,
            ),
          ],
        ),
      );
}
