import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:regal/regal.dart';

class TransactionStatusIcon extends StatelessWidget {
  const TransactionStatusIcon({
    required this.txnDetails,
    super.key,
  });
  final TransactionDetails txnDetails;

  @override
  Widget build(BuildContext context) => txnDetails.isSettlementInProcess
      ? CustomStatusContainer(
          context,
          iconBgColor: Colors.transparent,
          iconColor: context.regalColor.licoriceBlack,
          svgAsset: Assets.icons.iconHourglassEmpty.path,
        )
      : _getIconForTxnStatus(context, txnDetails.status);

  Widget _getIconForTxnStatus(BuildContext context, TransactionStatus status) =>
      status.map(
        completed: (value) => CustomStatusContainer(
          context,
          iconBgColor: RegalColors.darkCyan,
          iconColor: Colors.white,
          svgAsset: '',
          icon: Icons.check_rounded,
        ),
        pending: (value) => CustomStatusContainer(
          context,
          iconBgColor: Colors.transparent,
          iconColor: context.grey.shade40,
          svgAsset: Assets.icons.iconHourglassEmpty.path,
        ),
        failed: (value) => CustomStatusContainer(
          context,
          iconBgColor: Colors.transparent,
          iconColor: RegalColors.darkOrange,
          svgAsset: Assets.icons.iconError.path,
        ),
        refunded: (value) => CustomStatusContainer(
          context,
          iconBgColor: Colors.transparent,
          iconColor: context.regalColor.licoriceBlack,
          svgAsset: Assets.icons.iconRefund.path,
        ),
        awaitingAuthorization: (value) => CustomStatusContainer(
          context,
          iconBgColor: Colors.transparent,
          iconColor: RegalColors.grey.shade40,
          svgAsset: Assets.icons.iconHourglassEmpty.path,
        ),
        cancelled: (value) => CustomStatusContainer(
          context,
          iconBgColor: Colors.transparent,
          iconColor: RegalColors.darkOrange,
          svgAsset: Assets.icons.iconBlock.path,
        ),
        unknown: (value) => CustomStatusContainer(
          context,
          iconBgColor: Colors.transparent,
          iconColor: context.grey.shade40,
          svgAsset: Assets.icons.iconHourglassEmpty.path,
        ),
        expired: (value) => CustomStatusContainer(
          context,
          iconBgColor: Colors.transparent,
          iconColor: RegalColors.darkOrange,
          svgAsset: Assets.icons.iconError.path,
        ),
      );

  // ignore: non_constant_identifier_names
  Widget CustomStatusContainer(
    BuildContext context, {
    required Color iconBgColor,
    required Color iconColor,
    required String svgAsset,
    IconData? icon,
  }) =>
      Container(
        height: 24.sp,
        width: 24.sp,
        decoration: BoxDecoration(
          color: iconBgColor,
          shape: BoxShape.circle,
        ),
        child: icon != null
            ? Center(
                child: Icon(
                  icon,
                  color: iconColor,
                ),
              )
            : Padding(
                padding: Spacing.tiny.all,
                child: Center(
                  child: SvgPicture.asset(
                    svgAsset,
                    colorFilter: ColorFilter.mode(
                      iconColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
      );
}
