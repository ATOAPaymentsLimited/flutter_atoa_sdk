import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/atoa_terms_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class AtoaTermAndServiceWidget extends StatelessWidget {
  const AtoaTermAndServiceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomGestureDetector(
            context: context,
            trackLabel: 'Atoa terms and policy',
            semanticsLabel: context.l10n.atoaTermsAndPolicy,
            onTap: () => {
              AtoaTermsBottomSheet.show(context),
            },
            child: CustomText.semantics(
              context.l10n.atoaTermsAndPolicy,
              style: context.figtree.bodySmall.textColor(
                NeutralColors.light().grey.shade500,
              ),
            ),
          ),
        ],
      );
}
