import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/shared_widgets.dart';
import 'package:atoa_flutter_sdk/src/theme/figtree_text_theme.dart';
import 'package:atoa_flutter_sdk/src/utility/string_extensions.dart';
import 'package:atoa_flutter_sdk/src/views/transactions_details_page/widgets/highlighted_amount.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class TransactionDetailsTopCard extends StatefulWidget {
  const TransactionDetailsTopCard({
    required this.transactionDetails,
    required this.showRetry,
    super.key,
    this.onRetry,
    this.isCompleted = false,
  });
  final TransactionDetails transactionDetails;
  final bool showRetry;
  final void Function(BuildContext context)? onRetry;
  final bool isCompleted;

  @override
  State<TransactionDetailsTopCard> createState() =>
      TransactionDetailsTopCardState();
}

class TransactionDetailsTopCardState extends State<TransactionDetailsTopCard> {
  late ValueNotifier<bool> showTickAnimation;

  @override
  void initState() {
    super.initState();
    showTickAnimation = ValueNotifier(widget.isCompleted);

    if (widget.isCompleted) {
      Future<void>.delayed(
        const Duration(minutes: 1),
        () => showTickAnimation.value = false,
      );
    }
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: Spacing.xtraLarge.x,
        child: Column(
          children: [
            Builder(
              builder: (context) {
                final userAvatar = CustomGestureDetector(
                  semanticsLabel: 'Profile Picture',
                  context: context,
                  trackLabel: 'Profile Picture',
                  child: UserAvatar(
                    size: Spacing.xtraLarge.value * 2,
                    url: widget.transactionDetails.avatar,
                    placeholder: Container(
                      height: Spacing.xtraLarge.value * 2,
                      width: Spacing.xtraLarge.value * 2,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Spacing.small.value),
                        color: NeutralColors.light().grey.shade400,
                      ),
                      child: Center(
                        child: CustomText.semantics(
                          (widget.transactionDetails.merchantName ?? '')
                              .getInitials(),
                          style: context.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                );

                return ValueListenableBuilder(
                  valueListenable: showTickAnimation,
                  builder: (context, showAnimation, child) => AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: showAnimation
                        ? Assets.gifs.tickMark.lottie(
                            height: Spacing.xtraLarge.value * 2,
                            width: Spacing.xtraLarge.value * 2,
                          )
                        : userAvatar,
                  ),
                );
              },
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
                          style: kFigtreeTextTheme.bodyLarge?.textColor(
                            context.intactColors.black,
                          ),
                        ),
                        const CustomTextSpan.semantics(text: ' '),
                        CustomTextSpan.semantics(
                          text: widget.transactionDetails.merchantName,
                          style: kFigtreeTextTheme.bodyLarge
                              ?.copyWith(
                                fontWeight: FontWeight.w600,
                              )
                              .textColor(
                                context.intactColors.black,
                              ),
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
              amount: widget.transactionDetails.paidAmount,
            ),
          ],
        ),
      );

  Widget _getStoreLocation(BuildContext context) =>
      widget.transactionDetails.storeDetails?.locationName != null &&
              widget.transactionDetails.storeDetails?.locationName != 'Default'
          ? _getStoreLocationSection(
              widget.transactionDetails.storeDetails!.locationName!,
            )
          : const SizedBox.shrink();

  Widget _getStoreLocationSection(String locationName) => Padding(
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
              style: kFigtreeTextTheme.labelSmall?.w700.textColor(
                NeutralColors.light().grey.shade400,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
        ),
      );
}
