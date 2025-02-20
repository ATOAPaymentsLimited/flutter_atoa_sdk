import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class ConfirmationBottomSheet extends StatelessWidget {
  const ConfirmationBottomSheet({
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
        builder: (_) => ConfirmationBottomSheet(
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
            const Text('Confirm Bank Selection'),
            RegalButton.primary(
              onPressed: state.paymentAuth == null
                  ? null
                  : () async {
                      Navigator.pop(context);
                      final auth = state.paymentAuth;
                      final launchApp =
                          await bankInstitutionController.authorizeBank();

                      if ((launchApp ?? false) &&
                          context.mounted &&
                          auth != null) {
                        context
                            .read<PaymentStatusController>()
                            .startListening(auth.paymentIdempotencyId);
                      }
                    },
              trackLabel: 'Continue Button',
              enableTracking: false,
              label: context.l10n.continueBtnText,
            ),
          ],
        ),
      );
}
