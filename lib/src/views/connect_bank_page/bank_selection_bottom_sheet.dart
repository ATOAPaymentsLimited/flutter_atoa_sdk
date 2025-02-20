import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/failure_listener.dart';
import 'package:atoa_flutter_sdk/src/views/confirmation_bottom_sheet/confirmation_bottom_sheet.dart';
import 'package:atoa_flutter_sdk/src/views/verifying_payment_bottom_sheet/verifying_payment_bottom_sheet.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

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
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: Column(
              children: [
                // Search Bar
                Padding(
                  padding: Spacing.large.all,
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Search banks...',
                      prefixIcon: Assets.icons.copy.svg(
                        height: Spacing.large.value,
                        width: Spacing.large.value,
                        package: 'atoa_flutter_sdk',
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                    ),
                  ),
                ),

                // Tab Bar
                TabBar(
                  controller: _tabController,
                  tabs: const [
                    Tab(text: 'Popular Banks'),
                    Tab(text: 'Business Banks'),
                  ],
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
          ),
        ),
      );

  Widget _buildPopularBanksTab() => Consumer<BankInstitutionsState>(
        builder: (_, state, __) {
          final isLoading = state.isLoading;
          final banks = state.personalBanks;

          final popularPersonalBanks = state.popularPersonalBanks;

          final normalPersonalBanks = state.normalPersonalBanks;

          if (isLoading) {
            return Center(
              child: SvgPicture.asset(
                'assets/icons/copy.svg',
                height: Spacing.large.value,
                width: Spacing.large.value,
                package: 'atoa_flutter_sdk',
              ),
            );
          }

          return SingleChildScrollView(
            child: Column(
              children: [
                // First Grid Row
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: popularPersonalBanks.length, // Two rows of 4 items
                  itemBuilder: (context, index) =>
                      _buildBankGridItem(banks[index]),
                ),

                // Scrollable List
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) =>
                      _buildBankListItem(banks[index]),
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
          await ConfirmationBottomSheet.show(
            context,
            bankInstitutionController,
            context.read<BankInstitutionsState>(),
          );
          if (!mounted) {
            return;
          }
          await VerifyingPaymentBottomSheet.show(
            context,
            bankInstitutionController,
            context.read<BankInstitutionsState>(),
          );
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 62,
              height: 62,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: CachedNetworkImage(
                imageUrl: bank.bankIcon,
                height: 22.sp,
                width: 22.sp,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              bank.name,
              style: const TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );

  Widget _buildBankListItem(BankInstitution bank) => ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: CachedNetworkImage(
            imageUrl: bank.bankIcon,
            height: 22.sp,
            width: 22.sp,
          ),
        ),
        title: Text(bank.name),
        trailing: const Icon(Icons.chevron_right),
        onTap: () async {
          final bankInstitutionController =
              context.read<BankInstitutionsController>();
          await bankInstitutionController.selectBank(bank);
          if (!mounted) {
            return;
          }
          await ConfirmationBottomSheet.show(
            context,
            bankInstitutionController,
            context.read<BankInstitutionsState>(),
          );
          if (!mounted) {
            return;
          }
          await VerifyingPaymentBottomSheet.show(
            context,
            bankInstitutionController,
            context.read<BankInstitutionsState>(),
          );
        },
      );
}
