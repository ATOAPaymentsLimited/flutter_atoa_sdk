import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/utility/transaction_details_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:regal/regal.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class CustomStatusContainer extends StatelessWidget {
  const CustomStatusContainer({
    required this.transactionDetails,
    required this.svgAsset,
    required this.status,
    required this.dateTime,
    super.key,
    this.iconBgColor,
    this.showCallBank,
    this.desc,
    this.size,
    this.isLottie,
  });

  final Color? iconBgColor;
  final TransactionDetails transactionDetails;
  final String svgAsset;
  final String status;
  final String dateTime;
  final String? desc;
  final double? size;
  final bool? isLottie;
  final bool? showCallBank;

  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: iconBgColor?.withOpacity(0.10) ??
              TransactionDetailsUtility.getBackgroundColor(
                transactionDetails,
                context,
              ).withOpacity(0.10),
          borderRadius: BorderRadius.circular(Spacing.medium.value),
        ),
        padding: Spacing.large.x + Spacing.medium.y + Spacing.tiny.y,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: Spacing.xtraLarge.value * 2,
                  width: Spacing.xtraLarge.value * 2,
                  decoration: BoxDecoration(
                    color: iconBgColor ??
                        TransactionDetailsUtility.getBackgroundColor(
                          transactionDetails,
                          context,
                        ),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: isLottie ?? false
                        ? Padding(
                            padding: Spacing.mini.all,
                            child: Lottie.asset(
                              svgAsset,
                              package: 'atoa_flutter_sdk',
                            ),
                          )
                        : Padding(
                            padding: Spacing.small.all,
                            child: SvgPicture.asset(
                              svgAsset,
                              colorFilter: ColorFilter.mode(
                                context.intactColors.white,
                                BlendMode.srcIn,
                              ),
                              height: size,
                              width: size,
                              package: 'atoa_flutter_sdk',
                            ),
                          ),
                  ),
                ),
                Spacing.medium.xBox,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: CustomText.semantics(
                              status,
                              style: context.bodyLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  )
                                  .textColor(
                                    context.intactColors.black,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      if (desc != null) ...[
                        _getDescWidget(context, transactionDetails, desc!),
                      ],
                      if (desc != null &&
                          bankPhoneNumber != null &&
                          (showCallBank ?? false)) ...[
                        Spacing.mini.yBox,
                        CustomGestureDetector(
                          context: context,
                          trackLabel: 'Call Bank Button',
                          semanticsLabel: context.l10n.callBank,
                          onTap: () => url_launcher.launchUrl(
                            Uri.parse('tel:$bankPhoneNumber'),
                          ),
                          child: CustomText.semantics(
                            context.l10n.callBank,
                            style: context.bodyLarge?.w700.height150.textColor(
                              context.intactColors.black,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  String? get bankPhoneNumber => RegExp(r'\b\d{10,11}\b').stringMatch(desc!);

  Widget _getDescWidget(
    BuildContext context,
    TransactionDetails transactionDetails,
    String desc,
  ) =>
      CustomText.semantics(
        desc,
        style: context.figtree.bodyMedium.textColor(
          context.intactColors.black,
        ),
      );
}
