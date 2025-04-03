import 'dart:async';

import 'package:atoa_flutter_sdk/constants/constant.dart';
import 'package:atoa_flutter_sdk/src/controllers/connectivity_controller.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/atoa_loader.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
import 'package:atoa_flutter_sdk/src/utility/connectivity_wrapper.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_selection_view.dart';
import 'package:atoa_flutter_sdk/src/views/confirmation_bottom_sheet/confirmation_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/how_to_make_payment/how_to_make_payment_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class BankSelectionBottomSheet extends StatefulWidget {
  const BankSelectionBottomSheet({
    required this.showHowPaymentWorks,
    required this.bankInstitutionsController,
    required this.paymentStatusController,
    required this.connectivityController,
    super.key,
  });

  final bool showHowPaymentWorks;
  final BankInstitutionsController bankInstitutionsController;
  final PaymentStatusController paymentStatusController;
  final ConnectivityController connectivityController;

  static Future<bool?> show(
    BuildContext context, {
    required bool showHowPaymentWorks,
    required BankInstitutionsController bankInstitutionsController,
    required PaymentStatusController paymentStatusController,
    required ConnectivityController connectivityController,
  }) =>
      showModalBottomSheet<bool?>(
        context: context,
        builder: (context) => MultiProvider(
          providers: [
            StreamProvider<ConnectivityStatus>(
              initialData: ConnectivityStatus.waiting,
              create: (_) {
                connectivityController.checkConnection();
                return connectivityController.connectionStatusController.stream;
              },
            ),
            Provider<ConnectivityController>.value(
              value: connectivityController,
            ),
            StateNotifierProvider<BankInstitutionsController,
                BankInstitutionsState>.value(
              value: bankInstitutionsController,
            ),
            StateNotifierProvider<PaymentStatusController,
                PaymentStatusState>.value(
              value: paymentStatusController,
            ),
          ],
          builder: (context, _) => BankSelectionBottomSheet(
            showHowPaymentWorks: showHowPaymentWorks,
            bankInstitutionsController: bankInstitutionsController,
            paymentStatusController: paymentStatusController,
            connectivityController: connectivityController,
          ),
        ),
        isScrollControlled: true,
        enableDrag: false,
        isDismissible: false,
        transitionAnimationController: AnimationController(
          vsync: Navigator.of(context),
          duration: kAnimationDuration,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Spacing.xtraLarge.value),
            topRight: Radius.circular(Spacing.xtraLarge.value),
          ),
        ),
        useSafeArea: true,
      );

  @override
  State<BankSelectionBottomSheet> createState() =>
      _BankSelectionBottomSheetState();
}

class _BankSelectionBottomSheetState extends State<BankSelectionBottomSheet>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Theme(
        data: sdkLedgerTheme,
        child: Consumer<BankInstitutionsState>(
          builder: (context, state, Widget? child) => KeyboardVisibilityBuilder(
            builder: (context, isKeyboardVisible) => DecoratedBox(
              decoration: BoxDecoration(
                color: IntactColors.light().white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Spacing.xtraLarge.value),
                  topRight: Radius.circular(Spacing.xtraLarge.value),
                ),
              ),
              child: Padding(
                padding: Spacing.large.all,
                child: ConnectivityWrapper(
                  child: AnimatedCrossFade(
                    duration: kAnimationDuration,
                    crossFadeState: state.showHowPaymentWorks != null &&
                            state.showHowPaymentWorks!
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    firstChild: const HowToMakePaymentView(),
                    secondChild: AnimatedCrossFade(
                      duration: kAnimationDuration,
                      crossFadeState: ((state.hasLastPaymentDetails &&
                                  state.lastBankDetails != null) ||
                              state.showConfirmation)
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      firstChild: ConfirmationBottomSheet(
                        key: ValueKey(state.lastBankDetails),
                        bank: state.lastBankDetails,
                      ),
                      secondChild: AnimatedPadding(
                        duration: kAnimationDuration,
                        padding: EdgeInsets.only(
                          bottom: isKeyboardVisible
                              ? MediaQuery.of(context).viewInsets.bottom
                              : 0,
                        ),
                        child: ConstrainedBox(
                          constraints: BoxConstraints.loose(
                            Size(
                              1.sw,
                              isKeyboardVisible ? 0.5.sh : 0.9.sh,
                            ),
                          ),
                          child: state.isLoading == null ||
                                  state.isLoading != null && state.isLoading!
                              ? const Center(
                                  child: FetchingBankLoader(),
                                )
                              : BankSelectionView(
                                  tabController: _tabController,
                                  searchController: _searchController,
                                  state: state,
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
