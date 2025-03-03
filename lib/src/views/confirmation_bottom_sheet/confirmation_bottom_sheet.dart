import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/info_widget.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/powered_by_atoa_widget.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/sdk_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/utility/branding_color_utility.dart';
import 'package:atoa_flutter_sdk/src/views/confirmation_bottom_sheet/widgets/app_not_installed_widget.dart';
import 'package:atoa_flutter_sdk/src/views/confirmation_bottom_sheet/widgets/atoa_term_and_service_widget.dart';
import 'package:atoa_flutter_sdk/src/views/confirmation_bottom_sheet/widgets/review_details_tile.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class ConfirmationBottomSheet extends StatelessWidget {
  const ConfirmationBottomSheet({
    required this.bankInstitutionController,
    required this.bankState,
    required this.paymentStatusController,
    required this.paymentState,
    super.key,
  });

  final BankInstitutionsController bankInstitutionController;
  final BankInstitutionsState bankState;
  final PaymentStatusController paymentStatusController;
  final PaymentStatusState paymentState;

  static Future<bool?> show(
    BuildContext context,
    BankInstitutionsController bankInstitutionController,
    BankInstitutionsState bankState,
    PaymentStatusController paymentStatusController,
    PaymentStatusState paymentState,
  ) =>
      showSdkBottomSheet<bool>(
        context: context,
        backgroundColor: context.intactColors.white,
        title: context.l10n.review,
        body: (_) => ConfirmationBottomSheet(
          bankInstitutionController: bankInstitutionController,
          bankState: bankState,
          paymentStatusController: paymentStatusController,
          paymentState: paymentState,
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
          ReviewDetailsTile(
            isBankInfo: false,
            bankInstitutionController: bankInstitutionController,
            state: bankState,
          ),
          Spacing.large.yBox,
          ReviewDetailsTile(
            bankInstitutionController: bankInstitutionController,
            state: bankState,
          ),
          Spacing.large.yBox,
          if (!bankState.isAppInstalled) ...[
            AppNotInstalledWidget(
              name: bankState.selectedBank?.name ?? '',
              paymentAuth: bankState.paymentAuth,
            ),
            Spacing.large.yBox,
          ],
          LedgerButton.primary2(
            style: ElevatedButton.styleFrom(
              textStyle: context.figtree.bodyLarge.w700,
            ),
            semanticsLabel:
                context.l10n.goToBank(bankState.selectedBank?.name ?? ''),
            backgroundColor: BrandingColorUtility.brandingBackgroundColor,
            foregroundColor: BrandingColorUtility.brandingForegroundColor,
            onPressed: bankState.paymentAuth == null
                ? null
                : () => Navigator.pop(context, true),
            trackLabel: 'Go To ${bankState.selectedBank?.name}',
            enableTracking: false,
            label: context.l10n.goToBank(bankState.selectedBank?.name ?? ''),
          ),
          Spacing.xtraLarge.yBox,
          const PoweredByAtoaWidget(),
          Spacing.xtraLarge.yBox,
          const AtoaTermAndServiceWidget(),
          Spacing.xtraLarge.yBox,
        ],
      );
}
