import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/connectivity_controller.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/atoa_loader.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/info_widget.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/ledger_button.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/powered_by_atoa_widget.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/sdk_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
import 'package:atoa_flutter_sdk/src/utility/branding_color_utility.dart';
import 'package:atoa_flutter_sdk/src/utility/connectivity_wrapper.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/error_widget.dart';
import 'package:atoa_flutter_sdk/src/views/confirmation_bottom_sheet/widgets/app_not_installed_widget.dart';
import 'package:atoa_flutter_sdk/src/views/confirmation_bottom_sheet/widgets/atoa_term_and_service_widget.dart';
import 'package:atoa_flutter_sdk/src/views/confirmation_bottom_sheet/widgets/review_details_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart' hide LedgerButton, LedgerButtonSize;

class ConfirmationBottomSheet extends StatefulWidget {
  const ConfirmationBottomSheet({
    required this.bankInstitutionController,
    required this.bank,
    required this.connectivityController,
    super.key,
  });
  final ConnectivityController connectivityController;
  final BankInstitutionsController bankInstitutionController;
  final BankInstitution bank;

  static Future<bool?> show(
    BuildContext context,
    BankInstitutionsController bankInstitutionController,
    BankInstitution bank,
    ConnectivityController connectivityController,
  ) =>
      showSdkBottomSheet<bool>(
        context: context,
        title: context.l10n.review,
        onClose: (context) {
          bankInstitutionController.resetAppInstalled();
          Navigator.pop(context);
        },
        body: (_) => ConfirmationBottomSheet(
          bankInstitutionController: bankInstitutionController,
          connectivityController: connectivityController,
          bank: bank,
        ),
      );

  @override
  State<ConfirmationBottomSheet> createState() =>
      _ConfirmationBottomSheetState();
}

class _ConfirmationBottomSheetState extends State<ConfirmationBottomSheet>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await widget.bankInstitutionController.selectBank(widget.bank);
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
        await widget.bankInstitutionController.checkBankAppAvailability();
      });
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          StreamProvider<ConnectivityStatus>.value(
            initialData: ConnectivityStatus.waiting,
            value:
                widget.connectivityController.connectionStatusController.stream,
          ),
          StateNotifierProvider<BankInstitutionsController,
              BankInstitutionsState>.value(
            value: widget.bankInstitutionController,
          ),
        ],
        builder: (context, child) => Consumer<BankInstitutionsState>(
          builder: (context, state, child) {
            if (state.isLoadingAuth) {
              return Column(
                children: [
                  Spacing.huge.yBox * 6,
                  const AtoaLoader(),
                  Spacing.huge.yBox * 6,
                ],
              );
            }

            if (state.bankAuthError != null) {
              return Column(
                children: [
                  Spacing.huge.yBox * 6,
                  AtoaErrorWidget(
                    message: state.bankAuthError != null &&
                            state.bankAuthError is AtoaException
                        ? (state.bankAuthError! as AtoaException).message
                        : null,
                  ),
                  Spacing.huge.yBox * 6,
                ],
              );
            }

            return ConnectivityWrapper(
              showBackIcon: false,
              topSpacing: Spacing.huge.yBox * 5,
              height: 0.6.sh,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InfoWidget(
                    text: context.l10n.bankReviewInfoText,
                  ),
                  Spacing.large.yBox,
                  ReviewDetailsTile(
                    isBankInfo: false,
                    bankInstitutionController: widget.bankInstitutionController,
                    state: state,
                  ),
                  Spacing.large.yBox,
                  ReviewDetailsTile(
                    bankInstitutionController: widget.bankInstitutionController,
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
                      textStyle: kFigtreeTextTheme.bodyLarge?.w700,
                    ),
                    size: LedgerButtonSize.xtraLarge,
                    semanticsLabel:
                        context.l10n.goToBank(state.selectedBank?.name ?? ''),
                    backgroundColor:
                        BrandingColorUtility.brandingBackgroundColor,
                    foregroundColor:
                        BrandingColorUtility.brandingForegroundColor,
                    onPressed: state.paymentAuth == null
                        ? null
                        : () => Navigator.pop(context, true),
                    trackLabel: 'Go To ${state.selectedBank?.name}',
                    loading: state.isLoadingAuth,
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
                  Spacing.xtraLarge.yBox,
                ],
              ),
            );
          },
        ),
      );
}
