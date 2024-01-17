import 'package:atoa_sdk/atoa_sdk.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BanksGridView extends StatelessWidget {
  const BanksGridView({super.key, this.isBusinessBanks = false});

  final bool isBusinessBanks;

  @override
  Widget build(BuildContext context) => Consumer<BankInstitutionsState>(
        builder: (_, state, __) {
          final isLoading = state.isLoading;
          final banks =
              isBusinessBanks ? state.businessBanks : state.personalBanks;
          return GridView.builder(
            itemCount: isLoading ? 5 : banks.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (_, index) {
              if (isLoading) {
                return const BankPlaceholder();
              }

              return BankCard(bank: banks[index]);
            },
          );
        },
      );
}
