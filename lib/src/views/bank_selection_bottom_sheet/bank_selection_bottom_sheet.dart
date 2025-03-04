import 'dart:async';

import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/di/injection.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/atoa_loader.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/failure_listener.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/info_widget.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/sdk_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_back_button.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_list_item.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_tab_bar.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/business_bank_tab_view.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/error_widget.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/help_icon_button.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/no_result_found_widget.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/personal_banks_tab_view.dart';
import 'package:atoa_flutter_sdk/src/views/confirmation_bottom_sheet/confirmation_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/verifying_payment_bottom_sheet/verifying_payment_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/widgets/animated_search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class BankSelectionBottomSheet extends StatefulWidget {
  const BankSelectionBottomSheet({super.key, this.bankInstitutionController});

  final BankInstitutionsController? bankInstitutionController;

  static Future<TransactionDetails?> show(
    BuildContext context, {
    BankInstitutionsController? bankInstitutionController,
  }) =>
      showSdkBottomSheet<TransactionDetails?>(
        context: context,
        title: context.l10n.selectYourBank,
        titleBottomSpacing: Spacing.large.value,
        leadingTopWidget: const BankBackButton(),
        trailingTopWidget: const HelpIconButton(),
        body: (context) => bankInstitutionController == null
            ? StateNotifierProvider<BankInstitutionsController,
                BankInstitutionsState>(
                create: (_) => getIt.get<BankInstitutionsController>(),
                builder: (context, child) => StateNotifierProvider<
                    PaymentStatusController, PaymentStatusState>(
                  create: (_) => getIt.get<PaymentStatusController>(),
                  builder: (context, _) => BankSelectionBottomSheet(
                    bankInstitutionController: bankInstitutionController,
                  ),
                ),
              )
            : StateNotifierProvider<BankInstitutionsController,
                BankInstitutionsState>.value(
                value: bankInstitutionController,
                builder: (context, child) => StateNotifierProvider<
                    PaymentStatusController, PaymentStatusState>(
                  create: (_) => getIt.get<PaymentStatusController>(),
                  builder: (context, _) => BankSelectionBottomSheet(
                    bankInstitutionController: bankInstitutionController,
                  ),
                ),
              ),
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

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (context.read<BankInstitutionsState>().bankList.isEmpty) {
        context.read<BankInstitutionsController>().fetchBanks();
      }
      if (context.read<BankInstitutionsState>().paymentDetails == null) {
        context.read<BankInstitutionsController>().getPaymentDetails();
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      FailureListener<BankInstitutionsController, BankInstitutionsState>(
        message: (state) {
          final e = state.error;

          if (e is AtoaException) {
            return e.message;
          }

          return e?.toString();
        },
        child: KeyboardVisibilityBuilder(
          builder: (context, isKeyboardVisible) => AnimatedPadding(
            duration: const Duration(milliseconds: 300),
            padding: EdgeInsets.only(
              bottom: isKeyboardVisible
                  ? MediaQuery.of(context).viewInsets.bottom
                  : 0,
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints.loose(
                Size(1.sw, isKeyboardVisible ? 0.4.sh : 0.8.sh),
              ),
              child: Consumer<BankInstitutionsState>(
                builder: (_, state, __) {
                  final isLoading = state.isLoading;

                  if (isLoading &&
                      context
                          .read<BankInstitutionsController>()
                          .searchTerm
                          .isEmpty) {
                    return const AtoaLoader();
                  }

                  if (state.error != null) {
                    return const AtoaErrorWidget();
                  }
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AnimatedSearchField(
                        controller: _searchController,
                      ),
                      Spacing.large.yBox,
                      InfoWidget(
                        text: context.l10n.ensureBankAppInstalled,
                        fontSize: 11.sp,
                      ),
                      Spacing.large.yBox,
                      if (context
                          .read<BankInstitutionsController>()
                          .searchTerm
                          .isEmpty) ...[
                        BankTabBar(
                          tabController: _tabController,
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _tabController,
                            children: [
                              PersonalBanksTabView(onBankSelect: onTap),
                              BusinessBanksTabView(onBankSelect: onTap),
                            ],
                          ),
                        ),
                      ],
                      if (context
                          .read<BankInstitutionsController>()
                          .searchTerm
                          .isNotEmpty) ...[
                        if (state.isLoading)
                          const Expanded(
                            child: Center(
                              child: AtoaLoader(),
                            ),
                          )
                        else if (state.bankList.isEmpty) ...[
                          CustomText.semantics(
                            context.l10n.results,
                            style: kFigtreeTextTheme.bodyMedium?.w700.textColor(
                              NeutralColors.light().grey.shade500,
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: NoResultFoundWidget(
                                searchTerm: context
                                    .read<BankInstitutionsController>()
                                    .searchTerm,
                              ),
                            ),
                          ),
                        ] else ...[
                          CustomText.semantics(
                            context.l10n.results,
                            style: kFigtreeTextTheme.bodyMedium?.w700.textColor(
                              NeutralColors.light().grey.shade500,
                            ),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: state.bankList.length,
                            itemBuilder: (context, index) => BankListItem(
                              bank: state.bankList[index],
                              onBankSelect: onTap,
                            ),
                          ),
                        ],
                      ],
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      );

  Future<void> onTap(BankInstitution bank) async {
    final bankInstitutionController =
        context.read<BankInstitutionsController>();

    final res = await ConfirmationBottomSheet.show(
      context,
      bankInstitutionController,
      bank,
    );
    if (!mounted) return;

    if (res != null && res) {
      final verify = await VerifyingPaymentBottomSheet.show(
        context,
        bankInstitutionController,
        context.read<PaymentStatusController>(),
      );
      if (!mounted) return;

      Navigator.pop(context, verify);
    }
  }
}
