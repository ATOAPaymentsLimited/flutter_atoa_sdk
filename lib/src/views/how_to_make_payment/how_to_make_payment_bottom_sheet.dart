import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/utility/shared_prefs.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class HowToMakePaymentBottomSheet extends StatefulWidget {
  const HowToMakePaymentBottomSheet({super.key});

  static void show(BuildContext context) {
    showLedgerBottomSheet<void>(
      context: context,
      title: context.l10n.continueToYourBank,
      body: (context) => const HowToMakePaymentBottomSheet(),
    );
  }

  @override
  State<HowToMakePaymentBottomSheet> createState() =>
      _HowToMakePaymentBottomSheetState();
}

class _HowToMakePaymentBottomSheetState
    extends State<HowToMakePaymentBottomSheet>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SharedPrefs().setBool('showHowToMakePayments', value: false);
  }

  @override
  Widget build(BuildContext context) => Container(child: tile(context));
}

Widget tile(BuildContext context) => Padding(
      padding: Spacing.huge.bottom,
      child: RichText(
        textAlign: TextAlign.left,
        text: CustomTextSpan.semantics(
          text: 'title',
          style: context.labelSmall?.w700,
          children: [
            CustomTextSpan.semantics(
              text: 'jierji',
              style: context.labelSmall,
            ),
          ],
        ),
      ),
    );
