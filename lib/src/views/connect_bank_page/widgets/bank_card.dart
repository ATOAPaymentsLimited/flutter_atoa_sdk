import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_sdk/atoa_sdk.dart';
import 'package:atoa_sdk/l10n/l10n.dart';
import 'package:atoa_sdk/src/controllers/controllers.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class BankCard extends StatelessWidget {
  const BankCard({required this.bank, super.key});

  final BankInstitution bank;

  @override
  Widget build(BuildContext context) {
    final isSelected = context.select(
      (BankInstitutionsState state) => state.selectedBank == bank,
    );
    return CustomInkWell(
      semanticsLabel: '${bank.name} ${context.l10n.bankCard}',
      context: context,
      trackLabel: '${bank.name} Bank Card',
      enableTracking: false,
      onTap: () {
        context.read<BankInstitutionsController>().selectBank(bank);
      },
      borderRadius: BorderRadius.circular(Spacing.medium.value),
      child: Stack(
        fit: StackFit.expand,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: 80.sp,
            width: 80.sp,
            margin: Spacing.tiny.all,
            padding: Spacing.mini.y,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Spacing.medium.value),
              color: RegalColors.snowWhite,
              border: Border.all(
                color: isSelected
                    ? context.regalColor.vividRed
                    : context.grey.shade10,
                width: isSelected ? 2 : 1,
              ),
              boxShadow: isSelected
                  ? <BoxShadow>[
                      BoxShadow(
                        color: context.brightness.map(
                          (l) => context.regalColor.vividRed.withOpacity(.32),
                          (d) => context.regalColor.vividRed,
                        ),
                        blurRadius: 20.sp,
                      ),
                    ]
                  : null,
            ),
            child: Column(
              children: [
                Spacing.mini.yBox,
                Expanded(
                  child: AnimatedScale(
                    scale: isSelected ? 1.1 : 1,
                    duration: const Duration(milliseconds: 300),
                    child: CachedNetworkImage(
                      imageUrl: bank.media[1].source,
                      fit: BoxFit.contain,
                      height: 40.sp,
                      width: 40.sp,
                    ),
                  ),
                ),
                Spacing.mini.yBox,
                CustomText.semantics(
                  bank.name,
                  style: context.bodyMedium?.copyWith(
                    color: RegalColors.licoriceBlack,
                    fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Spacing.mini.yBox,
              ],
            ),
          ),
          Positioned(
            top: Spacing.small.value,
            right: Spacing.small.value,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) => FadeTransition(
                opacity: animation,
                child: child,
              ),
              child: isSelected
                  ? Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: RegalColors.vividRed,
                      ),
                      alignment: Alignment.center,
                      padding: Spacing.tiny.all,
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 10.sp,
                      ),
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
