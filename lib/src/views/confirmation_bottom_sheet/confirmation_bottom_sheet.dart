import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/atoa_loader.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/bottom_sheet_actions.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/info_widget.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/ledger_button.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/powered_by_atoa_widget.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
import 'package:atoa_flutter_sdk/src/utility/branding_color_utility.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_down_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/error_widget.dart';
import 'package:atoa_flutter_sdk/src/views/confirmation_bottom_sheet/widgets/app_not_installed_widget.dart';
import 'package:atoa_flutter_sdk/src/views/confirmation_bottom_sheet/widgets/atoa_term_and_service_widget.dart';
import 'package:atoa_flutter_sdk/src/views/confirmation_bottom_sheet/widgets/payment_paid_widget.dart';
import 'package:atoa_flutter_sdk/src/views/confirmation_bottom_sheet/widgets/review_details_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart' hide LedgerButton, LedgerButtonSize;

class ConfirmationBottomSheet extends StatefulWidget {
  const ConfirmationBottomSheet({
    this.bank,
    super.key,
  });

  final BankInstitution? bank;

  @override
  State<ConfirmationBottomSheet> createState() =>
      _ConfirmationBottomSheetState();
}

class _ConfirmationBottomSheetState extends State<ConfirmationBottomSheet>
    with WidgetsBindingObserver {
  late BankInstitutionsController bankInstitutionController;
  @override
  void initState() {
    super.initState();
    bankInstitutionController = context.read<BankInstitutionsController>();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await bankInstitutionController.selectBank(widget.bank);
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      WidgetsBinding.instance.addPersistentFrameCallback((_) async {
        if (!mounted) {
          return;
        }
        await bankInstitutionController.checkBankAppAvailability();
      });
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) => Theme(
        data: sdkLedgerTheme,
        child: ConstrainedBox(
          constraints: BoxConstraints.loose(
            Size(
              1.sw,
              0.90.sh,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Opacity(
                    opacity: 0,
                    child: EmptyIconPlaceholder(),
                  ),
                  Spacing.large.xBox,
                  Expanded(
                    child: CustomText.semantics(
                      context.l10n.review,
                      textAlign: TextAlign.center,
                      style: sdkFigTreeTextTheme.labelMedium?.w700.height130,
                    ),
                  ),
                  Spacing.large.xBox,
                  BottomSheetAction(
                    semanticsLabel: 'Close Dialog Sheet Icon',
                    trackLabel: 'Close Dialog Sheet Icon',
                    onTap: () => context.read<BankInstitutionsController>()
                      ..resetSelectBank()
                      ..showConfirmation = false,
                    child: Icon(
                      Icons.close,
                      size: Spacing.large.value,
                      color: IntactColors.light().black,
                    ),
                  ),
                ],
              ),
              Spacing.xtraLarge.yBox,
              Consumer<BankInstitutionsState>(
                builder: (context, state, child) {
                  if (state.isLoading != null && state.isLoading!) {
                    return const Expanded(
                      child: Center(
                        child: AtoaLoader(),
                      ),
                    );
                  }

                  if (state.bankAuthError != null) {
                    return Center(
                      child: _getErrorWidget(state.bankAuthError!),
                    );
                  }

                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        InfoWidget(
                          text: context.l10n.bankReviewInfoText,
                        ),
                        Spacing.large.yBox,
                        ReviewDetailsTile(
                          isBankInfo: false,
                          bankInstitutionController: bankInstitutionController,
                          state: state,
                        ),
                        Spacing.large.yBox,
                        ReviewDetailsTile(
                          bankInstitutionController: bankInstitutionController,
                          state: state,
                        ),
                        Spacing.large.yBox,
                        if (!state.isAppInstalled) ...[
                          AppNotInstalledWidget(
                            name: state.selectedBank?.name ?? '',
                            paymentAuth: state.paymentAuth,
                          ),
                          Spacing.large.yBox,
                        ],
                        Spacing.small.yBox,
                        LedgerButton.primary2(
                          style: ElevatedButton.styleFrom(
                            textStyle: sdkFigTreeTextTheme.bodyLarge?.w700,
                          ),
                          size: LedgerButtonSize.xtraLarge,
                          semanticsLabel: context.l10n
                              .goToBank(state.selectedBank?.name ?? ''),
                          backgroundColor:
                              BrandingColorUtility.brandingBackgroundColor,
                          foregroundColor:
                              BrandingColorUtility.brandingForegroundColor,
                          onPressed: state.paymentAuth == null
                              ? null
                              : () => Navigator.pop(context, true),
                          trackLabel: 'Go To ${state.selectedBank?.name}',
                          loading: state.isLoading == null ||
                              state.isLoading != null && state.isLoading!,
                          loadingIndicatorColor:
                              BrandingColorUtility.brandingForegroundColor,
                          label: context.l10n.goToBank(
                            state.selectedBank?.name ?? '',
                          ),
                        ),
                        Spacing.medium.yBox,
                        const PoweredByAtoaWidget(),
                        Spacing.huge.yBox,
                        const AtoaTermAndServiceWidget(),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      );

  Widget _getErrorWidget(Exception err) {
    final errMsg = err is AtoaException ? err.message : null;

    if (errMsg != null &&
        errMsg.trim() == context.l10n.bankDownError &&
        widget.bank != null) {
      return BankDownBottomSheet(
        bank: widget.bank!,
      );
    } else if (errMsg != null &&
        errMsg.trim() == context.l10n.requiredExpiredErrorDesc) {
      return SizedBox(
        height: 0.60.sh,
        child: AtoaErrorWidget(
          title: context.l10n.requestExpired,
          message: context.l10n.requestExpiredError,
        ),
      );
    } else if (errMsg != null &&
        errMsg.trim() == context.l10n.linkPaidMsg &&
        err is AtoaException) {
      return SizedBox(
        height: 0.60.sh,
        child: PaymentPaidWidget(
          error: err,
        ),
      );
    } else {
      return SizedBox(
        height: 0.60.sh,
        child: AtoaErrorWidget(
          message: err is AtoaException ? err.message : null,
        ),
      );
    }
  }
}
