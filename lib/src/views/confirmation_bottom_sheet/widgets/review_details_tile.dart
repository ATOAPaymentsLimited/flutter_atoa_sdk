import 'package:atoa_sdk/gen/assets.gen.dart';
import 'package:atoa_sdk/l10n/l10n.dart';
import 'package:atoa_sdk/src/controllers/bank_institutions_controller.dart';
import 'package:atoa_sdk/src/shared_widgets/dotted_line_painter.dart';
import 'package:atoa_sdk/src/theme/theme.dart';
import 'package:atoa_sdk/src/utility/string_extensions.dart';
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
        padding: Spacing.medium.all,
        decoration: BoxDecoration(
          color: NeutralColors.light().grey.shade50,
          borderRadius: Spacing.medium.brAll,
          border: Border.all(
            color: NeutralColors.light().grey.shade200,
          ),
        ),
        child: Row(
          children: [
            if (!isBankInfo && state.paymentDetails?.storeImg == null)
              Assets.icons.businessImg.svg(
                height: Spacing.xtraLarge.value * 2,
                width: Spacing.xtraLarge.value * 2,
              )
            else
              Container(
                padding: Spacing.small.all,
                decoration: BoxDecoration(
                  color: IntactColors.light().white,
                  borderRadius: Spacing.small.brAll,
                  border: Border.all(
                    color: NeutralColors.light().grey.shade100,
                  ),
                ),
                child: _getIcon(context),
              ),
            Spacing.medium.xBox,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText.semantics(
                    !isBankInfo ? context.l10n.payingTo : context.l10n.from,
                    style: sdkFigTreeTextTheme.bodyMedium?.textColor(
                      NeutralColors.light().grey.shade600,
                    ),
                  ),
                  CustomText.semantics(
                    !isBankInfo
                        ? state.paymentDetails?.merchantBusinessName ?? ''
                        : state.selectedBank?.name ?? '',
                    style: sdkFigTreeTextTheme.bodyLarge?.w700,
                  ),
                ],
              ),
            ),
            Spacing.medium.xBox,
            if (isBankInfo)
              CustomInkWell(
                semanticsLabel: context.l10n.change,
                context: context,
                enableTracking: false,
                trackLabel: 'Change Bank',
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomText.semantics(
                      context.l10n.change,
                      style: sdkFigTreeTextTheme.bodyLarge?.w700.textColor(
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
                  bankInstitutionController
                    ..resetSelectBank()
                    ..showConfirmation = false;
                },
              )
            else
              CustomText.semantics(
                state.paymentDetails?.amount.amount.toString().formattedAmount(
                          currencySymbol: context.l10n.currencySymbol,
                        ) ??
                    '',
                style: sdkFigTreeTextTheme.titleSmall?.w700,
              ),
          ],
        ),
      );

  Widget _getIcon(BuildContext context) {
    if (isBankInfo) {
      if (state.selectedBank?.bankIcon != null) {
        return Image.network(
          state.selectedBank?.bankIcon ?? '',
          height: Spacing.xtraLarge.value + Spacing.tiny.value,
          width: Spacing.xtraLarge.value + Spacing.tiny.value,
          errorBuilder: (context, _, __) => Icon(
            Icons.account_balance_outlined,
            size: Spacing.xtraLarge.value + Spacing.tiny.value,
            color: IntactColors.light().black,
          ),
        );
      } else {
        return Icon(
          Icons.account_balance_outlined,
          size: Spacing.xtraLarge.value + Spacing.tiny.value,
          color: IntactColors.light().black,
        );
      }
    } else {
      return Image.network(
        state.paymentDetails?.storeImg ?? '',
        height: Spacing.xtraLarge.value + Spacing.tiny.value,
        width: Spacing.xtraLarge.value + Spacing.tiny.value,
        errorBuilder: (context, _, __) => Assets.icons.businessImg.svg(
          height: Spacing.xtraLarge.value * 2,
          width: Spacing.xtraLarge.value * 2,
        ),
      );
    }
  }
}
