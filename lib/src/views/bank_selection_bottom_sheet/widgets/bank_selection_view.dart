import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/atoa_loader.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/info_widget.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/animated_search_field.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_list_item.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_selection_title_widget.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_tab_bar.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/business_bank_tab_view.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/error_widget.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/no_result_found_widget.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/personal_banks_tab_view.dart';
import 'package:atoa_flutter_sdk/src/views/confirmation_bottom_sheet/widgets/payment_paid_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class BankSelectionView extends StatefulWidget {
  const BankSelectionView({
    required this.tabController,
    required this.searchController,
    required this.state,
    super.key,
  });

  final TabController tabController;
  final TextEditingController searchController;
  final BankInstitutionsState state;

  @override
  State<BankSelectionView> createState() => _BankSelectionViewState();
}

class _BankSelectionViewState extends State<BankSelectionView> {
  @override
  Widget build(BuildContext context) => widget.state.isPaymentAndBankLoading !=
              null &&
          widget.state.isPaymentAndBankLoading!
      ? const Column(
          children: [
            Expanded(
              child: Center(
                child: FetchingBankLoader(),
              ),
            ),
          ],
        )
      : Column(
          children: [
            const BankSelectionTitleWidget(),
            Spacing.xtraLarge.yBox,
            Builder(
              builder: (context) {
                final isLoading = widget.state.isLoading == null ||
                    (widget.state.isLoading != null && widget.state.isLoading!);
                final bankController =
                    context.read<BankInstitutionsController>();

                if (isLoading && bankController.searchTerm.isEmpty) {
                  return const Expanded(
                    child: Center(
                      child: FetchingBankLoader(),
                    ),
                  );
                }

                if (widget.state.paymentDetailsError != null) {
                  if (widget.state.paymentDetailsError is AtoaException) {
                    final errMsg = (widget.state.paymentDetailsError != null &&
                            widget.state.paymentDetailsError is AtoaException)
                        ? (widget.state.paymentDetailsError! as AtoaException)
                            .message
                        : null;
                    if (errMsg != null &&
                        errMsg.trim() == context.l10n.linkPaidMsg) {
                      return Expanded(
                        child: PaymentPaidWidget(
                          error: widget.state.paymentDetailsError!
                              as AtoaException,
                        ),
                      );
                    } else if (errMsg != null &&
                        errMsg.trim() ==
                            context.l10n.requiredExpiredErrorDesc) {
                      return Expanded(
                        child: Center(
                          child: AtoaErrorWidget(
                            title: context.l10n.requestExpired,
                            message: context.l10n.requestExpiredError,
                          ),
                        ),
                      );
                    }
                  }
                  return Expanded(
                    child: Center(
                      child: AtoaErrorWidget(
                        message: widget.state.paymentDetailsError != null &&
                                widget.state.paymentDetailsError
                                    is AtoaException
                            ? (widget.state.paymentDetailsError!
                                    as AtoaException)
                                .message
                            : null,
                        title: context.l10n.errorProcessingPayment,
                      ),
                    ),
                  );
                }

                if (widget.state.bankFetchingError != null) {
                  return Expanded(
                    child: Center(
                      child: AtoaErrorWidget(
                        message: context.l10n.bankFetchErrorDesc,
                        onRetry: () {
                          context
                              .read<BankInstitutionsController>()
                              .fetchBanks();
                        },
                        title: context.l10n.bankFetchErrorTitle,
                        showErrorIcon: false,
                      ),
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
                      Spacing.large.yBox,
                      if (bankController.searchTerm.isEmpty) ...[
                        BankTabBar(
                          tabController: widget.tabController,
                        ),
                        Spacing.large.yBox,
                        InfoWidget(
                          text: context.l10n.ensureBankAppInstalled,
                          fontSize: 11.sp,
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: widget.tabController,
                            children: [
                              PersonalBanksTabView(
                                onBankSelect: onTap,
                                key: ValueKey(widget.state.bankList),
                              ),
                              BusinessBanksTabView(onBankSelect: onTap),
                            ],
                          ),
                        ),
                      ],
                      if (bankController.searchTerm.isNotEmpty) ...[
                        if (widget.state.isLoading != null &&
                            widget.state.isLoading!)
                          const Expanded(
                            child: Center(
                              child: AtoaLoader(),
                            ),
                          )
                        else if (widget.state.bankList.isEmpty) ...[
                          CustomText.semantics(
                            context.l10n.results,
                            style:
                                sdkFigTreeTextTheme.bodyMedium?.w700.textColor(
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
                            style:
                                sdkFigTreeTextTheme.bodyMedium?.w700.textColor(
                              NeutralColors.light().grey.shade500,
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: widget.state.bankList.length,
                              itemBuilder: (context, index) => BankListItem(
                                bank: widget.state.bankList[index],
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
    context.read<BankInstitutionsController>().showConfirmation = true;
    context.read<BankInstitutionsController>().bankSelected = bank;
  }
}
