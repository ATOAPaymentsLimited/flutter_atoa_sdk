import 'dart:async';

import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/constants/constant.dart';
import 'package:atoa_flutter_sdk/src/controllers/connectivity_controller.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/di/injection.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
import 'package:atoa_flutter_sdk/src/utility/connectivity_wrapper.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_selection_view.dart';
import 'package:atoa_flutter_sdk/src/views/how_to_make_payment/how_to_make_payment_view.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class BankSelectionBottomSheet extends StatefulWidget {
  const BankSelectionBottomSheet({
    required this.showHowPaymentWorks,
    super.key,
    this.bankInstitutionController,
  });

  final bool showHowPaymentWorks;
  final BankInstitutionsController? bankInstitutionController;

  static Future<TransactionDetails?> show(
    BuildContext context, {
    required bool showHowPaymentWorks,
    BankInstitutionsController? bankInstitutionController,
  }) =>
      showModalBottomSheet<TransactionDetails?>(
        context: context,
        builder: (context) => BankSelectionBottomSheet(
          bankInstitutionController: bankInstitutionController,
          showHowPaymentWorks: showHowPaymentWorks,
        ),
        isScrollControlled: true,
        enableDrag: false,
        isDismissible: false,
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
  late BankInstitutionsController bankInstitutionsController;
  late PaymentStatusController paymentStatusController;
  late ConnectivityController connectivityController;

  @override
  void initState() {
    super.initState();
    getIt.registerSingleton<Connectivity>(Connectivity());
    bankInstitutionsController = getIt.get<BankInstitutionsController>();
    paymentStatusController = getIt.get<PaymentStatusController>();
    connectivityController = getIt.get<ConnectivityController>();
    _tabController = TabController(length: 2, vsync: this);
    bankInstitutionsController.showHowPaymentWorks = widget.showHowPaymentWorks;

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await bankInstitutionsController.fetchBanks();
      await bankInstitutionsController.getPaymentDetails();
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    bankInstitutionsController.dispose();
    paymentStatusController.dispose();
    connectivityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Theme(
        data: ledgerTheme(context),
        child: MultiProvider(
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
          builder: (context, _) => Consumer<BankInstitutionsState>(
            builder: (context, state, Widget? child) =>
                KeyboardVisibilityBuilder(
              builder: (context, isKeyboardVisible) => AnimatedContainer(
                duration: kAnimationDuration,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: context.intactColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Spacing.xtraLarge.value),
                      topRight: Radius.circular(Spacing.xtraLarge.value),
                    ),
                  ),
                  child: Padding(
                    padding: Spacing.large.all,
                    child: state.showHowPaymentWorks
                        ? const ConnectivityWrapper(
                            child: HowToMakePaymentView(),
                          )
                        : AnimatedPadding(
                            duration: kAnimationDuration,
                            padding: EdgeInsets.only(
                              bottom: isKeyboardVisible
                                  ? MediaQuery.of(context).viewInsets.bottom
                                  : 0,
                            ),
                            child: ConstrainedBox(
                              constraints: BoxConstraints.loose(
                                Size(1.sw, isKeyboardVisible ? 0.5.sh : 0.9.sh),
                              ),
                              child: ConnectivityWrapper(
                                child: BankSelectionView(
                                  tabController: _tabController,
                                  searchController: _searchController,
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
