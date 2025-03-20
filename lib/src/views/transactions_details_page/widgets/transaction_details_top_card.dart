import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/shared_widgets.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
import 'package:atoa_flutter_sdk/src/views/transactions_details_page/widgets/highlighted_amount.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class TransactionDetailsTopCard extends StatelessWidget {
  const TransactionDetailsTopCard({
    required this.transactionDetails,
    super.key,
  });
  final TransactionDetails transactionDetails;

  @override
  Widget build(BuildContext context) => Padding(
        padding: Spacing.xtraLarge.x,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            UserAvatar(
              size: Spacing.xtraLarge.value * 2,
              url: transactionDetails.avatar,
              borderRadius: Spacing.small.brAll,
              placeholder: Container(
                height: Spacing.xtraLarge.value * 2,
                width: Spacing.xtraLarge.value * 2,
                decoration: BoxDecoration(
                  borderRadius: Spacing.small.brAll,
                  color: NeutralColors.light().grey.shade200,
                ),
                child: Assets.icons.businessImg.svg(
                  height: Spacing.xtraLarge.value * 2,
                  width: Spacing.xtraLarge.value * 2,
                ),
              ),
            ),
            Spacing.medium.yBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: CustomTextSpan.semantics(
                      children: [
                        CustomTextSpan.semantics(
                          text: context.l10n.to,
                          style: sdkFigTreeTextTheme.bodyLarge,
                        ),
                        const CustomTextSpan.semantics(text: ' '),
                        CustomTextSpan.semantics(
                          text: transactionDetails.merchantName,
                          style: sdkFigTreeTextTheme.bodyLarge?.w700,
                        ),
                      ],
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            _getStoreLocation(context),
            Spacing.large.yBox,
            HighlightedAmount(
              amount: transactionDetails.paidAmount,
            ),
          ],
        ),
      );

  Widget _getStoreLocation(BuildContext context) =>
      transactionDetails.storeDetails != null &&
              transactionDetails.storeDetails?.locationName != null &&
              transactionDetails.storeDetails?.locationName != 'Default'
          ? _getStoreLocationSection(
              transactionDetails.storeDetails!.locationName!,
              context,
            )
          : const SizedBox.shrink();

  Widget _getStoreLocationSection(
    String locationName,
    BuildContext context,
  ) =>
      Padding(
        padding: Spacing.medium.top,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.icons.locationOn.svg(
              colorFilter: ColorFilter.mode(
                NeutralColors.light().grey.shade400,
                BlendMode.srcIn,
              ),
              width: Spacing.xtraLarge.value,
              height: Spacing.xtraLarge.value,
            ),
            Spacing.small.xBox,
            CustomText.semantics(
              locationName,
              style: sdkFigTreeTextTheme.labelSmall?.w700.textColor(
                NeutralColors.light().grey.shade400,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
        ),
      );
}
