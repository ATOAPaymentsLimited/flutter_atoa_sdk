import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/shared_widgets.dart';
import 'package:atoa_flutter_sdk/src/utility/string_extensions.dart';
import 'package:atoa_flutter_sdk/src/utility/transaction_details_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    final debitType = widget.transactionDetails.paymentDebitType('id');
    final isPaid = _isPaidStatus(debitType);
    showTickAnimation = ValueNotifier(widget.isCompleted && isPaid);

    if (widget.isCompleted && isPaid) {
      Future<void>.delayed(
        const Duration(minutes: 1),
        () => showTickAnimation.value = false,
      );
    }
  }

  bool _isPaidStatus(
    PaymentDebitType debitType,
  ) =>
      _getTxnStatus(widget.transactionDetails, debitType);

  bool _getTxnStatus(
    TransactionDetails txnDet,
    PaymentDebitType debitType,
  ) =>
      txnDet.status.maybeMap(
        completed: (tnx) => switch (txnDet.paymentType) {
          PaymentType.P2P => debitType.maybeMap(
              sent: (value) => !txnDet.isSettlementInProcess,
              orElse: () => false,
            ),
          PaymentType.CONSUMERREWARD || PaymentType.CONSUMERCASHBACK => false,
          _ => true,
        },
        orElse: () => false,
      );

  @override
  Widget build(BuildContext context) => Padding(
        padding: Spacing.large.top + Spacing.xtraLarge.x,
        child: Column(
          children: [
            Builder(
              builder: (context) {
                final userAvatar = CustomGestureDetector(
                  semanticsLabel: 'Profile Picture',
                  context: context,
                  trackLabel: 'Sender/receiver Profile Picture',
                  child: UserAvatar(
                    size: 42.sp,
                    url: _getSenderOrReceiverAvatar(
                      context,
                    ),
                    placeholder: Container(
                      height: 42.sp,
                      width: 42.sp,
                      decoration: BoxDecoration(
                        borderRadius: isTrasnaction(context)
                            ? BorderRadius.circular(Spacing.small.value)
                            : BorderRadius.circular(42.sp),
                        color: context.grey.shade10,
                      ),
                      child: Center(
                        child: CustomText.semantics(
                          TransactionDetailsUtility.getSenderOrReceiverName(
                            context,
                            widget.transactionDetails,
                          ).getInitials(),
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
                            height: 42.sp,
                            width: 42.sp,
                          )
                        : userAvatar,
                  ),
                );
              },
            ),
            Spacing.large.yBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: CustomTextSpan.semantics(
                      children: [
                        CustomTextSpan.semantics(
                          text: _getSenderOrReceiverPrefix(context),
                          style: context.labelSmall,
                        ),
                        CustomTextSpan.semantics(
                          text:
                              TransactionDetailsUtility.getSenderOrReceiverName(
                            context,
                            widget.transactionDetails,
                          ),
                          style: context.labelSmall?.copyWith(
                            fontWeight: FontWeight.w600,
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
            Spacing.xtraLarge.yBox,
            CustomText.semantics(
              '£${widget.transactionDetails.paidAmount.toString().formattedAmount()}',
              style: context.headlineMedium,
            ),
            if (widget.showRetry && widget.onRetry != null) ...[
              Spacing.xtraLarge.yBox,
              SizedBox(
                width: 180.sp,
                child: Padding(
                  padding: Spacing.huge.x,
                  child: RegalButton.primary(
                    trackLabel: 'Retry Button',
                    size: RegalButtonSize.small,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: context.regalColor.licoriceBlack,
                      textStyle: context.bodyLarge!.w600,
                    ),
                    onPressed: () => widget.onRetry?.call(context),
                    prefixIcon: Transform.rotate(
                      angle: -90,
                      child: Icon(
                        Icons.refresh_rounded,
                        size: Spacing.xtraLarge.value,
                      ),
                    ),
                    label: context.l10n.retry,
                  ),
                ),
              ),
            ],
          ],
        ),
      );

  bool isTrasnaction(BuildContext context) => true;

  String _getSenderOrReceiverPrefix(BuildContext context) => context.l10n.to;

  String? _getSenderOrReceiverAvatar(BuildContext context) =>
      widget.transactionDetails.avatar;

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
              colorFilter:
                  ColorFilter.mode(context.grey.shade40, BlendMode.srcIn),
              width: Spacing.xtraLarge.value,
              height: Spacing.xtraLarge.value,
            ),
            Spacing.small.xBox,
            CustomText.semantics(
              locationName,
              style: context.labelSmall?.copyWith(
                color: context.grey.shade40,
                fontWeight: FontWeight.w700,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
        ),
      );
}
