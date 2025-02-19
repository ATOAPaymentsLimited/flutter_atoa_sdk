import 'package:atoa_core/atoa_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal/regal.dart';

class TransactionDetailsTopCard extends StatefulWidget {
  const TransactionDetailsTopCard({
    super.key,
    required this.transactionDetails,
    required this.showRetry,
    this.transactionDetailsSplitRequest,
    this.expenseGroupDetails,
    this.onRetry,
    this.groupSplitRequestsListController,
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

class TransactionDetailsTopCardState extends State<TransactionDetailsTopCard>
    with TransactionRoutingMixin {
  late ValueNotifier<bool> showTickAnimation;

  @override
  void initState() {
    super.initState();
    final debitType =
        widget.transactionDetails.paymentDebitType(context.getCurrUser()!.id!);
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
      widget.transactionDetails.map(
        TRANSACTION: (tnxDet) => _getTxnStatus(tnxDet, debitType),
        PAYMENTREQUEST: (txnReq) => txnReq.requestStatus.maybeMap(
          paid: (value) => _getPaymentRequestStatus(txnReq, debitType),
          processing: (value) => _getPaymentRequestStatus(txnReq, debitType),
          pending: (value) => _getPaymentRequestStatus(txnReq, debitType),
          orElse: () => false,
        ),
        SPLITREQUEST: (values) => false,
      );

  bool _getTxnStatus(
    TransactionDetailsTransaction txnDet,
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
                  semanticsLabel: context.l10n.senderReceiverProfilePicture,
                  context: context,
                  trackLabel: 'Sender/receiver Profile Picture',
                  onTap: () {
                    goToPaymentMessagePageForConsumer(
                      widget.transactionDetails,
                    );
                  },
                  child: UserAvatar(
                    size: 42.sp,
                    borderRadius:
                        isTrasnaction(context) ? Spacing.small.value : 42.sp,
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
                    duration: kAnimationDuration,
                    child: showAnimation
                        ? Assets.lotties.tickMark.lottie(
                            height: 42.sp,
                            width: 42.sp,
                          )
                        : userAvatar,
                  ),
                );
              },
            ),
            Spacing.large.yBox,
            CustomGestureDetector(
              semanticsLabel: context.l10n.senderReceiverName,
              context: context,
              trackLabel: 'Sender/Receiver Name',
              onTap: () {
                goToPaymentMessagePageForConsumer(
                  widget.transactionDetails,
                );
              },
              child: Row(
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
                            text: TransactionDetailsUtility
                                .getSenderOrReceiverName(
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
            ),
            _getStoreLocation(context),
            Spacing.xtraLarge.yBox,
            CustomText.semantics(
              '£${widget.transactionDetails.map(
                TRANSACTION: (value) =>
                    value.paidAmount.toString().formattedAmount(),
                PAYMENTREQUEST: (value) =>
                    value.senders?.first.amount.toString().formattedAmount(),
                SPLITREQUEST: (value) => '',
              )}',
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
            if (widget.transactionDetails.maybeMap(
              TRANSACTION: (value) =>
                  value.groupId != null && value.requestId != null,
              PAYMENTREQUEST: (value) =>
                  widget.transactionDetailsSplitRequest != null,
              orElse: () => false,
            )) ...[
              SplitRequestViewButton(
                transactionDetailsSplitRequest:
                    widget.transactionDetailsSplitRequest,
                onTap: viewSplitRequest,
              ),
            ] else if (widget.transactionDetails.maybeMap(
              TRANSACTION: (value) =>
                  value.groupId == null &&
                  value.requestId == null &&
                  value.status is TransactionStatusCompleted &&
                  value.paymentType != PaymentType.P2P &&
                  value.paymentType != PaymentType.P2P_WEB,
              orElse: () => false,
            ))
              SplitWithFriendsButton(
                transactionDetails: widget.transactionDetails,
              )
            else
              const SizedBox.shrink(),
          ],
        ),
      );

  bool isTrasnaction(BuildContext context) => widget.transactionDetails.map(
        TRANSACTION: (txn) => switch (txn.paymentType) {
          PaymentType.TRANSACTION => true,
          _ => false,
        },
        PAYMENTREQUEST: (value) => false,
        SPLITREQUEST: (value) => false,
      );

  String _getSenderOrReceiverPrefix(BuildContext context) =>
      widget.transactionDetails.map(
        TRANSACTION: (txn) => switch (txn.paymentType) {
          PaymentType.TRANSACTION => '${context.l10n.to} ',
          _ => '',
        },
        PAYMENTREQUEST: (value) => '',
        SPLITREQUEST: (value) => '',
      );

  String? _getSenderOrReceiverAvatar(BuildContext context) =>
      widget.transactionDetails.map(
        TRANSACTION: (txn) => txn.avatar,
        PAYMENTREQUEST: (req) => req.avatar,
        SPLITREQUEST: (value) => '',
      );

  Widget _getStoreLocation(BuildContext context) =>
      widget.transactionDetails.map(
        TRANSACTION: (txn) => txn.storeDetails?.locationName != null &&
                txn.storeDetails?.locationName != kDefault
            ? _getStoreLocationSection(txn.storeDetails!.locationName!)
            : const SizedBox.shrink(),
        PAYMENTREQUEST: (req) => req.storeDetails?.locationName != null &&
                req.storeDetails?.locationName != kDefault
            ? _getStoreLocationSection(req.storeDetails!.locationName!)
            : const SizedBox.shrink(),
        SPLITREQUEST: (value) => const SizedBox.shrink(),
      );

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

  void viewSplitRequest(TransactionDetailsSplitRequest splitReq) {
    if (widget.expenseGroupDetails != null &&
        widget.transactionDetails is TransactionDetailsTransaction) {
      context.router.push(
        routes.ViewSplitRequestFromTransactionsRoute(
          expenseGroupDetails: widget.expenseGroupDetails!,
          transactionDetailsSplitRequest:
              widget.transactionDetailsSplitRequest!,
        ),
      );
    }

    if (context.router.stack.firstWhereOrNull(
          (route) =>
              route.name == routes.ViewingAndEditingSplitRequestPageRoute.name,
        ) !=
        null) {
      context.router.popUntilRouteWithName(
        routes.ViewingAndEditingSplitRequestPageRoute.name,
      );
    } else {
      if (widget.expenseGroupDetails == null ||
          widget.groupSplitRequestsListController == null) {
        return;
      }
      context.router.push(
        routes.ViewingAndEditingSplitRequestPageRoute(
          expenseGroupDetails: widget.expenseGroupDetails!,
          transactionDetailsSplitRequest: splitReq,
          groupSplitRequestsListController:
              widget.groupSplitRequestsListController,
        ),
      );
    }
  }
}
