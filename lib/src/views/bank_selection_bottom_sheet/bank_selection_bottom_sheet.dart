import 'dart:async';

import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/di/injection.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/atoa_loader.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/failure_listener.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/info_widget.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/sdk_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_down_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_tab_bar.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/error_widget.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/no_result_found_widget.dart';
import 'package:atoa_flutter_sdk/src/views/confirmation_bottom_sheet/confirmation_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/how_to_make_payment/how_to_make_payment_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/verifying_payment_bottom_sheet/verifying_payment_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/widgets/animated_search_field.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class BankSelectionBottomSheet extends StatefulWidget {
  const BankSelectionBottomSheet({
    required this.paymentId,
    super.key,
  });

  final String paymentId;

  static Future<TransactionDetails?> show(
    BuildContext context, {
    required String paymentId,
  }) =>
      showSdkBottomSheet<TransactionDetails?>(
        context: context,
        title: context.l10n.selectYourBank,
        titleBottomSpacing: Spacing.large.value,
        useRootNavigator: true,
        leadingTopWidget: CustomGestureDetector(
          context: context,
          trackLabel: 'Back Icon',
          semanticsLabel: 'Back icon',
          child: CircleAvatar(
            radius: Spacing.large.value,
            backgroundColor: NeutralColors.light().grey.shade50,
            child: Center(
              child: Padding(
                padding: Spacing.mini.left + Spacing.tiny.left,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: context.intactColors.black,
                  size: Spacing.large.value,
                ),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        trailingTopWidget: CustomGestureDetector(
          context: context,
          trackLabel: 'Help Icon',
          semanticsLabel: 'Help icon',
          onTap: () => HowToMakePaymentBottomSheet.show(
            context,
            paymentId: paymentId,
          ),
          child: CircleAvatar(
            radius: Spacing.large.value,
            backgroundColor: NeutralColors.light().grey.shade50,
            child: Center(
              child: CircleAvatar(
                backgroundColor: NeutralColors.light().grey.shade50,
                child: Assets.icons.help.svg(),
              ),
            ),
          ),
        ),
        body: (context) => StateNotifierProvider<BankInstitutionsController,
            BankInstitutionsState>(
          create: (_) => getIt.get<BankInstitutionsController>(
            param1: paymentId,
          ),
          builder: (context, child) => StateNotifierProvider<
              PaymentStatusController, PaymentStatusState>.value(
            value: getIt.get<PaymentStatusController>(
              param1: const Duration(seconds: 1),
            ),
            builder: (contextx, _) => BankSelectionBottomSheet(
              paymentId: paymentId,
            ),
          ),
        ),
      );

  @override
  State<BankSelectionBottomSheet> createState() =>
      _BankSelectionBottomSheetState();
}

class _BankSelectionBottomSheetState extends State<BankSelectionBottomSheet>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  late TabController _tabController;
  final TextEditingController _searchController = TextEditingController();

  String? _selectedBank;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<BankInstitutionsController>()
        ..selectBank(null)
        ..fetchBanks();
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    WidgetsBinding.instance.removeObserver(this);

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
        child: Stack(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints.loose(
                Size(1.sw, 0.8.sh),
              ),
              child: Consumer<PaymentStatusState>(
                builder: (_, paymentstate, __) => Stack(
                  children: [
                    Consumer<BankInstitutionsState>(
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
                        return
                            //Visibility(
                            //    visible: paymentstate.details == null,
                            //       child:
                            Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Search Bar
                            AnimatedSearchField(
                              controller: _searchController,
                            ),
                            Spacing.large.yBox,
                            InfoWidget(
                              text: context.l10n.ensureBankAppInstalled,
                              fontSize: 11.sp,
                            ),
                            Spacing.large.yBox,

                            // Tab Bar
                            if (context
                                .read<BankInstitutionsController>()
                                .searchTerm
                                .isEmpty) ...[
                              BankTabBar(
                                tabController: _tabController,
                              ),

                              // Tab View
                              Expanded(
                                child: TabBarView(
                                  controller: _tabController,
                                  children: [
                                    _buildPopularBanksTab(),
                                    _buildBusinessBanksTab(),
                                  ],
                                ),
                              ),
                            ],
                            if (context
                                .read<BankInstitutionsController>()
                                .searchTerm
                                .isNotEmpty) ...[
                              if (context
                                  .read<BankInstitutionsController>()
                                  .searchTerm
                                  .isNotEmpty) ...[
                                if (state.isLoading &&
                                    context
                                        .read<BankInstitutionsController>()
                                        .searchTerm
                                        .isNotEmpty) ...[
                                  const Expanded(
                                    child: Center(
                                      child: AtoaLoader(),
                                    ),
                                  ),
                                ] else if (state.bankList.isEmpty) ...[
                                  CustomText.semantics(
                                    context.l10n.results,
                                    style: context.figtree.bodyMedium.w700
                                        .textColor(
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
                                    style: context.figtree.bodyMedium.w700
                                        .textColor(
                                      NeutralColors.light().grey.shade500,
                                    ),
                                  ),
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: state.bankList.length,
                                    itemBuilder: (context, index) =>
                                        _buildBankListItem(
                                      state.bankList[index],
                                    ),
                                  ),
                                ],
                              ],
                            ],
                          ],
                          //      ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  Widget _buildPopularBanksTab() => Builder(
        builder: (context) {
          final state = context.read<BankInstitutionsState>();
          if (context.read<BankInstitutionsController>().searchTerm.isEmpty) {
            final popularPersonalBanks = state.popularPersonalBanks;

            final normalPersonalBanks = state.normalPersonalBanks;

            final gridBanks = popularPersonalBanks;

            final gridBankLength = gridBanks.length;
            if (gridBanks.length < 8) {
              for (var i = 0; i < 8 - gridBankLength; i++) {
                gridBanks.add(normalPersonalBanks[i]);
              }
              for (var i = 0; i < 8 - gridBankLength; i++) {
                normalPersonalBanks.remove(normalPersonalBanks.elementAt(i));
              }
            }

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // First Grid Row

                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: Spacing.large.all,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                    itemCount: gridBanks.length, // Two rows of 4 items
                    itemBuilder: (context, index) =>
                        _buildBankGridItem(gridBanks[index]),
                  ),

                  // Scrollable List
                  Spacing.small.yBox,
                  CustomText.semantics(
                    context.l10n.allBanks.toUpperCase(),
                    style: context.figtree.bodyMedium.w700.textColor(
                      NeutralColors.light().grey.shade500,
                    ),
                  ),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: normalPersonalBanks.length,
                    itemBuilder: (context, index) => _buildBankListItem(
                      normalPersonalBanks[index],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      );

  Widget _buildBusinessBanksTab() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacing.medium.yBox,
          CustomText.semantics(
            context.l10n.allBanks.toUpperCase(),
            style: context.figtree.bodyMedium.w700.textColor(
              NeutralColors.light().grey.shade500,
            ),
          ),
          Expanded(
            child: Consumer<BankInstitutionsState>(
              builder: (_, state, __) => ListView.builder(
                itemCount: state.businessBanks.length,
                itemBuilder: (context, index) => _buildBankListItem(
                  state.businessBanks[index],
                ),
              ),
            ),
          ),
        ],
      );

  Widget _buildBankGridItem(BankInstitution bank) => CustomInkWell(
        semanticsLabel: '${bank.name} ${context.l10n.bankCard}',
        context: context,
        trackLabel: '${bank.name} Bank Card',
        enableTracking: false,
        onTap: () async {
          bank.enabled
              ? await onTap(bank)
              : BankDownBottomSheet.show(context, bank);
        },
        child: Container(
          width: 70,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CachedNetworkImage(
                imageUrl: bank.bankIcon,
                height: Spacing.xtraLarge.value,
                width: Spacing.xtraLarge.value,
              ),
              CustomText.semantics(
                bank.name,
                style: context.figtree.bodySmall.textColor(
                  context.intactColors.black,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      );

  Widget _buildBankListItem(BankInstitution bank) => ListTile(
        minLeadingWidth: 0,
        contentPadding: EdgeInsets.zero,
        horizontalTitleGap: Spacing.medium.value,
        leading: Container(
          padding: Spacing.mini.all,
          decoration: BoxDecoration(
            borderRadius: Spacing.mini.brAll + Spacing.tiny.brAll,
            border: Border.all(color: NeutralColors.light().grey.shade100),
          ),
          child: CachedNetworkImage(
            imageUrl: bank.bankIcon,
            height: Spacing.xtraLarge.value,
            width: Spacing.xtraLarge.value,
          ),
        ),
        title: Row(
          children: [
            CustomText.semantics(
              bank.name,
              style: context.figtree.bodyLarge
                  .textColor(
                    NeutralColors.light().grey.shade700,
                  )
                  .w500,
            ),
            if (!bank.enabled) ...[
              Spacing.medium.xBox,
              CustomInkWell(
                context: context,
                trackLabel: 'Bank Down',
                semanticsLabel: 'Bank Down',
                onTap: () => BankDownBottomSheet.show(context, bank),
                child: Assets.icons.iconError.svg(),
              ),
            ],
          ],
        ),
        trailing: Radio<String>(
          value: bank.name,
          groupValue: _selectedBank,
          activeColor: context.intactColors.black,
          hoverColor: NeutralColors.light().grey.shade700,
          onChanged: (value) {
            setState(() {
              _selectedBank = value;
            });
          },
        ),
        onTap: () async {
          bank.enabled
              ? await onTap(bank)
              : BankDownBottomSheet.show(context, bank);
        },
      );

  Future<void> onTap(BankInstitution bank) async {
    final bankInstitutionController =
        context.read<BankInstitutionsController>();

    final paymentStatusState = context.read<PaymentStatusState>();
    await bankInstitutionController.selectBank(bank);
    if (!mounted) {
      return;
    }
    final res = await ConfirmationBottomSheet.show(
      context,
      bankInstitutionController,
      context.read<BankInstitutionsState>(),
      context.read<PaymentStatusController>(),
      paymentStatusState,
    );
    if (!mounted) {
      return;
    }
    if (res != null && res) {
      unawaited(bankInstitutionController.authorizeBank());

      final verify = await VerifyingPaymentBottomSheet.show(
        context,
        bankInstitutionController,
        context.read<BankInstitutionsState>(),
        context.read<PaymentStatusController>(),
        paymentStatusState,
      );
      if (!mounted) {
        return;
      }
      if (verify != null && verify) Navigator.pop(context);
    }
  }
}
