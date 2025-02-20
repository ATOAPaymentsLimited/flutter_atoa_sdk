import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class VerifyingPaymentBottomSheet extends StatelessWidget {
  const VerifyingPaymentBottomSheet({
    required this.bankInstitutionController,
    required this.state,
    super.key,
  });

  final BankInstitutionsController bankInstitutionController;
  final BankInstitutionsState state;

  static Future<void> show(
    BuildContext context,
    BankInstitutionsController bankInstitutionController,
    BankInstitutionsState state,
  ) =>
      showModalBottomSheet<void>(
        context: context,
        builder: (_) => VerifyingPaymentBottomSheet(
          bankInstitutionController: bankInstitutionController,
          state: state,
        ),
      );

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
