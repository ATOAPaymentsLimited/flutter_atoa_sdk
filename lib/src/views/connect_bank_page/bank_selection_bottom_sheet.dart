import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/failure_listener.dart';
import 'package:atoa_flutter_sdk/src/views/confirmation_bottom_sheet/confirmation_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/connect_bank_page/widgets/bank_tab_bar.dart';
import 'package:atoa_flutter_sdk/src/views/verifying_payment_bottom_sheet/verifying_payment_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/widgets/animated_search_field.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';
import 'package:shimmer/shimmer.dart';

class BankSelectionBottomSheet extends StatefulWidget {
  const BankSelectionBottomSheet({super.key});

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
  Widget build(BuildContext context) => PopScope(
        canPop: !context.read<BankInstitutionsState>().isLoading,
        child:
            FailureListener<BankInstitutionsController, BankInstitutionsState>(
          message: (state) {
            final e = state.error;

            if (e is AtoaException) {
              return e.message;
            }

            return e?.toString();
          },
          child: Consumer<BankInstitutionsState>(
            builder: (_, state, __) {
              final isLoading = state.isLoading;

              if (isLoading) {
                return Center(
                  child: Shimmer(
                    gradient: LinearGradient(
                      colors: [
                        context.intactColors.white,
                        context.intactColors.white,
                      ],
                    ),
                    child: Assets.icons.atoaLogo.svg(),
                  ),
                );
              }
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: Column(
                  children: [
                    // Search Bar
                    AnimatedSearchField(
                      controller: _searchController,
                    ),
                    Spacing.xtraLarge.yBox,
                    // Tab Bar
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
                ),
              );
            },
          ),
        ),
      );

  Widget _buildPopularBanksTab() => Consumer<BankInstitutionsState>(
        builder: (_, state, __) {
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
              children: [
                // First Grid Row
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: Spacing.large.all,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: gridBanks.length, // Two rows of 4 items
                  itemBuilder: (context, index) =>
                      _buildBankGridItem(gridBanks[index]),
                ),

                // Scrollable List
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: normalPersonalBanks.length,
                  itemBuilder: (context, index) =>
                      _buildBankListItem(normalPersonalBanks[index]),
                ),
              ],
            ),
          );
        },
      );

  Widget _buildBusinessBanksTab() => Consumer<BankInstitutionsState>(
        builder: (_, state, __) => ListView.builder(
          itemCount: state.businessBanks.length,
          itemBuilder: (context, index) =>
              _buildBankListItem(state.businessBanks[index]),
        ),
      );

  Widget _buildBankGridItem(BankInstitution bank) => CustomInkWell(
        semanticsLabel: '${bank.name} ${context.l10n.bankCard}',
        context: context,
        trackLabel: '${bank.name} Bank Card',
        enableTracking: false,
        onTap: () async {
          final bankInstitutionController =
              context.read<BankInstitutionsController>();
          await bankInstitutionController.selectBank(bank);
          if (!mounted) {
            return;
          }
          final res = await ConfirmationBottomSheet.show(
            context,
            bankInstitutionController,
            context.read<BankInstitutionsState>(),
          );
          if (!mounted) {
            return;
          }
          if (res != null && res) {
            await VerifyingPaymentBottomSheet.show(
              context,
              bankInstitutionController,
              context.read<BankInstitutionsState>(),
            );
          }
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
        title: CustomText.semantics(
          bank.name,
          style: context.figtree.bodyLarge
              .textColor(
                NeutralColors.light().grey.shade700,
              )
              .w500,
        ),
        trailing: Radio<String>(
          value: bank.name,
          groupValue: _selectedBank,
          activeColor: context.intactColors.black,
          onChanged: (value) {
            setState(() {
              _selectedBank = value;
            });
          },
        ),
        onTap: () async {
          final bankInstitutionController =
              context.read<BankInstitutionsController>();
          await bankInstitutionController.selectBank(bank);
          if (!mounted) {
            return;
          }
          final res = await ConfirmationBottomSheet.show(
            context,
            bankInstitutionController,
            context.read<BankInstitutionsState>(),
          );
          if (!mounted) {
            return;
          }
          if (res != null && res) {
            await VerifyingPaymentBottomSheet.show(
              context,
              bankInstitutionController,
              context.read<BankInstitutionsState>(),
            );
          }
        },
      );
}
