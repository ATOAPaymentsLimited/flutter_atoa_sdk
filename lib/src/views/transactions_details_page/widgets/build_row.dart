import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal/regal.dart';

class BuildRow extends StatelessWidget {
  const BuildRow({
    required this.fromOrToTitle,
    required this.fromOrToDesc,
    required this.bankName,
    required this.bankAccNo,
    super.key,
    this.bankLogoUrl,
  });

  final String fromOrToTitle;
  final String fromOrToDesc;
  final String? bankLogoUrl;
  final String bankName;
  final String bankAccNo;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              CustomText.semantics(
                fromOrToTitle,
                style: context.bodyLarge,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (bankLogoUrl != null) ...[
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: RegalColors.snowWhite,
                          borderRadius: BorderRadius.all(Radius.circular(8.sp)),
                        ),
                        child: Padding(
                          padding: Spacing.mini.all,
                          child: CachedNetworkImage(
                            imageUrl: bankLogoUrl!,
                            height: Spacing.xtraLarge.value,
                          ),
                        ),
                      ),
                      Spacing.medium.xBox,
                    ],
                    CustomText.semantics(
                      bankName,
                      style: context.bodyLarge,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Spacing.small.yBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText.semantics(
                fromOrToDesc,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Expanded(
                child: CustomText.semantics(
                  bankAccNo.isEmpty
                      ? ''
                      : 'xxxxx${bankAccNo.length > 3 ? bankAccNo.substring(bankAccNo.length - 3) : bankAccNo}',
                  style: context.bodyLarge,
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ],
      );
}
