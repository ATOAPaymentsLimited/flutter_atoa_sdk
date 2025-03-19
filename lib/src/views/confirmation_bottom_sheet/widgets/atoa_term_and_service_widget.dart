import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/views/confirmation_bottom_sheet/widgets/atoa_terms_bottom_sheet.dart';
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
            enableTracking: false,
            trackLabel: 'Atoa terms and policy',
            semanticsLabel: context.l10n.atoaTermsAndPolicy,
            onTap: () => {
              AtoaTermsBottomSheet.show(context),
            },
            child: RichText(
              text: CustomTextSpan.semantics(
                text: context.l10n.atoaTerms,
                style: context.bodySmall
                    ?.textColor(
                      context.neutralColors.grey.shade500,
                    )
                    .w600,
                children: [
                  CustomTextSpan.semantics(
                    text: context.l10n.and,
                    style: context.bodySmall?.textColor(
                      context.neutralColors.grey.shade500,
                    ),
                  ),
                  const CustomTextSpan.semantics(text: ' '),
                  CustomTextSpan.semantics(
                    text: context.l10n.privacyPolicy,
                    style: context.bodySmall
                        ?.textColor(
                          context.neutralColors.grey.shade500,
                        )
                        .w600,
                  ),
                ],
              ),
            ),
          ),
        ],
      );
}
