import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:flutter/material.dart';
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
      showLedgerBottomSheet<void>(
        context: context,
        backgroundColor: context.intactColors.white,
        titleAlign: TextAlign.center,
        showTopDivider: false,
        titleStyle: context.figtree.labelMedium.w700.textColor(
          NeutralColors.light().grey.shade700,
        ),
        title: 'Review',
        body: (_) => ConfirmationBottomSheet(
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
            // InfoWidget(),

            Spacing.large.yBox,
            //  ReviewDetailTile(),
            Spacing.large.yBox,
            // ReviewDetailTile(),
            Spacing.large.yBox,
            LedgerButton.primary2(
              onPressed: state.paymentAuth == null
                  ? null
                  : () async {
                      Navigator.pop(context);
                    },
              trackLabel: context.l10n.goTo,
              enableTracking: false,
              label: context.l10n.continueBtnText,
            ),
          ],
        ),
      );
}
