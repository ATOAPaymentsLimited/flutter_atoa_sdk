import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/info_widget.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/powered_by_atoa_widget.dart';
import 'package:atoa_flutter_sdk/src/views/confirmation_bottom_sheet/widgets/atoa_term_and_service_widget.dart';
import 'package:atoa_flutter_sdk/src/views/connect_bank_page/widgets/review_details_tile.dart';
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

  static Future<bool?> show(
    BuildContext context,
    BankInstitutionsController bankInstitutionController,
    BankInstitutionsState state,
  ) =>
      showLedgerBottomSheet<bool>(
        context: context,
        backgroundColor: context.intactColors.white,
        titleAlign: TextAlign.center,
        showTopDivider: false,
        titleStyle: context.figtree.labelMedium.w700.textColor(
          NeutralColors.light().grey.shade700,
        ),
        title: context.l10n.review,
        body: (_) => ConfirmationBottomSheet(
          bankInstitutionController: bankInstitutionController,
          state: state,
        ),
      );

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InfoWidget(
            text: context.l10n.bankReviewInfoText,
          ),
          Spacing.large.yBox,
          ReviewDetailsTile(),
          Spacing.large.yBox,
          ReviewDetailsTile(),
          Spacing.large.yBox,
          if (!state.isAppInstalled) ...[
            InfoWidget(text: context.l10n.bankAppNotFound),
            Spacing.large.yBox,
          ],
          LedgerButton.secondary(
            onPressed: state.paymentAuth == null
                ? null
                : () async {
                    Navigator.pop(context, true);
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
            trackLabel: context.l10n.goTo,
            enableTracking: false,
            label: context.l10n.goToBank(state.selectedBank?.name ?? ''),
          ),
          Spacing.xtraLarge.yBox,
          const PoweredByAtoaWidget(),
          Spacing.xtraLarge.yBox,
          const AtoaTermAndServiceWidget(),
        ],
      );
}
