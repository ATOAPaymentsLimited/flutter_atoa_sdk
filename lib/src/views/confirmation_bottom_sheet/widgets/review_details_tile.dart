import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/bank_institutions_controller.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/dotted_line_painter.dart';
import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
import 'package:atoa_flutter_sdk/src/utility/string_extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class ReviewDetailsTile extends StatelessWidget {
  const ReviewDetailsTile({
    required this.bankInstitutionController,
    required this.state,
    super.key,
    this.isBankInfo = true,
  });

  final BankInstitutionsController bankInstitutionController;
  final BankInstitutionsState state;
  final bool isBankInfo;

  @override
  Widget build(BuildContext context) => Container(
        padding: Spacing.large.all,
        decoration: BoxDecoration(
          color: NeutralColors.light().grey.shade50,
          borderRadius: Spacing.medium.brAll,
          border: Border.all(
            color: NeutralColors.light().grey.shade200,
          ),
        ),
        child: Row(
          children: [
            if (isBankInfo)
              CachedNetworkImage(
                imageUrl: state.selectedBank?.bankIcon ?? '',
                height: Spacing.xtraLarge.value * 2,
                width: Spacing.xtraLarge.value * 2,
              )
            else if (state.paymentDetails?.storeImg != null)
              CachedNetworkImage(
                imageUrl: state.paymentDetails?.storeImg ?? '',
                height: Spacing.xtraLarge.value * 2,
                width: Spacing.xtraLarge.value * 2,
              )
            else
              Assets.icons.businessImg.svg(),
            Spacing.medium.xBox,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText.semantics(
                    isBankInfo ? context.l10n.payingTo : context.l10n.from,
                    style: kFigtreeTextTheme.bodyMedium?.textColor(
                      NeutralColors.light().grey.shade500,
                    ),
                  ),
                  CustomText.semantics(
                    isBankInfo
                        ? state.paymentDetails?.merchantBusinessName ?? ''
                        : state.selectedBank?.name ?? '',
                    style: kFigtreeTextTheme.bodyLarge?.w700.textColor(
                      context.intactColors.black,
                    ),
                  ),
                ],
              ),
            ),
            Spacing.medium.xBox,
            if (isBankInfo)
              CustomInkWell(
                semanticsLabel: context.l10n.change,
                context: context,
                trackLabel: 'Change Bank',
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomText.semantics(
                      context.l10n.change,
                      style: kFigtreeTextTheme.bodyLarge?.w700.textColor(
                        BrandColors.light().primary.shade500,
                      ),
                    ),
                    CustomPaint(
                      size: Size(
                        Spacing.huge.value * 2 +
                            Spacing.mini.value +
                            Spacing.tiny.value,
                        1,
                      ),
                      painter: DottedLinePainter(
                        color: BrandColors.light().primary.shade500,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            else
              CustomText.semantics(
                state.paymentDetails?.amount.amount.toString().formattedAmount(
                          currencySymbol: context.l10n.currencySymbol,
                        ) ??
                    '',
                style: kFigtreeTextTheme.titleSmall?.w700.textColor(
                  context.intactColors.black,
                ),
              ),
          ],
        ),
      );
}
