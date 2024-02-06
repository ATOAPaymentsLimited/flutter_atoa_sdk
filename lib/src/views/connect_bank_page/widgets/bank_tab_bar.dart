import 'package:atoa_sdk/src/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BankTabBar extends StatelessWidget {
  const BankTabBar({
    required this.tabController,
    super.key,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) => Selector<BankInstitutionsState, bool>(
        selector: (context, state) => state.bankList.isNotEmpty,
        builder: (context, show, state) =>

            // show
            //     ? Padding(
            //         padding: Spacing.xtraLarge.bottom,
            //         child: AnimatedBuilder(
            //           animation: tabController,
            //           builder: (BuildContext context, Widget? child) =>
            //               CustomSwitcher<_BankType>(
            //             semanticsLabel: context.l10n.bankTabBar,
            //             isStretch: true,
            //             children: Map.fromEntries(
            //               _BankType.values.map(
            //                 (e) => MapEntry(
            //                   e,
            //                   CustomText.semantics(
            //                     e.toText(context),
            //                     style: context.montserrat.bodyLarge.copyWith(
            //                       fontWeight: FontWeight.bold,
            //                       height: 1.5,
            //                       color: e.index == tabController.index
            //                           ? RegalColors.snowWhite
            //                           : context.grey.shade40,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             onValueChanged: (value) {
            //               tabController.index = value.index;
            //             },
            //             initialValue: _BankType.values[tabController.index],
            //           ),
            //         ),
            //       )
            //     :

            const SizedBox.shrink(),
      );
}

// enum _BankType {
//   personal,
//   business,
// }

// extension on _BankType {
//   String toText(BuildContext context) {
//     switch (this) {
//       case _BankType.personal:
//         return context.l10n.personalBanks;
//       case _BankType.business:
//         return context.l10n.businessBanks;
//     }
//   }
// }
