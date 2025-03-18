import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/connectivity_controller.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/atoa_loader.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/info_widget.dart';
import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/animated_search_field.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_list_item.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_selection_title_widget.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_tab_bar.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/business_bank_tab_view.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/error_widget.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/no_result_found_widget.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/personal_banks_tab_view.dart';
import 'package:atoa_flutter_sdk/src/views/confirmation_bottom_sheet/confirmation_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/verifying_payment_bottom_sheet/verifying_payment_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class BankSelectionView extends StatefulWidget {
  const BankSelectionView({
    required this.tabController,
    required this.searchController,
    super.key,
  });

  final TabController tabController;
  final TextEditingController searchController;

  @override
  State<BankSelectionView> createState() => _BankSelectionViewState();
}

class _BankSelectionViewState extends State<BankSelectionView> {
  @override
  Widget build(BuildContext context) => Column(
        children: [
          const BankSelectionTitleWidget(),
          Spacing.xtraLarge.yBox,
          Consumer<BankInstitutionsState>(
            builder: (_, state, __) {
              final isLoading = state.isLoading;
              final bankController = context.read<BankInstitutionsController>();

              if (isLoading && bankController.searchTerm.isEmpty) {
                return const Expanded(
                  child: Center(
                    child: FetchingBankLoader(),
                  ),
                );
              }

              if (state.error != null) {
                return const Expanded(
                  child: Center(
                    child: AtoaErrorWidget(),
                  ),
                );
              }
              return Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnimatedSearchField(
                      controller: widget.searchController,
                    ),
                    Spacing.xtraLarge.yBox,
                    if (bankController.searchTerm.isEmpty) ...[
                      BankTabBar(
                        tabController: widget.tabController,
                      ),
                      Spacing.xtraLarge.yBox,
                      InfoWidget(
                        text: context.l10n.ensureBankAppInstalled,
                        fontSize: 11.sp,
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: widget.tabController,
                          children: [
                            PersonalBanksTabView(onBankSelect: onTap),
                            BusinessBanksTabView(onBankSelect: onTap),
                          ],
                        ),
                      ),
                    ],
                    if (bankController.searchTerm.isNotEmpty) ...[
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
                        InfoWidget(
                          text: context.l10n.ensureBankAppInstalled,
                          fontSize: 11.sp,
                        ),
                        Spacing.xtraLarge.yBox,
                        CustomText.semantics(
                          context.l10n.results,
                          style: kFigtreeTextTheme.bodyMedium?.w700.textColor(
                            NeutralColors.light().grey.shade500,
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: state.bankList.length,
                            itemBuilder: (context, index) => BankListItem(
                              bank: state.bankList[index],
                              onBankSelect: onTap,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ],
                ),
              );
            },
          ),
        ],
      );

  Future<void> onTap(BankInstitution bank) async {
    final bankInstitutionController =
        context.read<BankInstitutionsController>();

    final connectivityController = context.read<ConnectivityController>();

    final res = await ConfirmationBottomSheet.show(
      context,
      bankInstitutionController,
      bank,
      connectivityController,
    );
    if (!mounted) return;

    if (res != null && res) {
      final verify = await VerifyingPaymentBottomSheet.show(
        context,
        bankInstitutionController,
        context.read<PaymentStatusController>(),
        connectivityController,
      );
      if (!mounted) return;

      Navigator.pop(context, verify);
    }
  }
}
