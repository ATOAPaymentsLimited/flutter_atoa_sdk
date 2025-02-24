import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/custom_switcher.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class BankTabBar extends StatelessWidget {
  const BankTabBar({
    required this.tabController,
    super.key,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) => Selector<BankInstitutionsState, bool>(
        selector: (context, state) => state.bankList.isNotEmpty,
        builder: (context, show, state) => show
            ? AnimatedBuilder(
                animation: tabController,
                builder: (BuildContext context, Widget? child) =>
                    CustomSwitcher<_BankType>(
                  semanticsLabel: context.l10n.bankTabBar,
                  isStretch: true,
                  children: Map.fromEntries(
                    _BankType.values.map(
                      (e) => MapEntry(
                        e,
                        CustomText.semantics(
                          e.toText(context),
                          style: context.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Figtree',
                            height: 1.5,
                            color: e.index == tabController.index
                                ? RegalColors.licoriceBlack
                                : context.grey.shade40,
                          ),
                        ),
                      ),
                    ),
                  ),
                  onValueChanged: (value) {
                    tabController.index = value.index;
                  },
                  initialValue: _BankType.values[tabController.index],
                ),
              )
            : const SizedBox.shrink(),
      );
}

enum _BankType {
  personal,
  business,
}

extension on _BankType {
  String toText(BuildContext context) {
    switch (this) {
      case _BankType.personal:
        return context.l10n.personalBanks;
      case _BankType.business:
        return context.l10n.businessBanks;
    }
  }
}
