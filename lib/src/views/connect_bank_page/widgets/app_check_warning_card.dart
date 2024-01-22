import 'package:atoa_sdk/atoa_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class AppCheckWarningCard extends StatelessWidget {
  const AppCheckWarningCard({super.key});

  Widget _containerCard({
    required Widget child,
    required EdgeInsetsGeometry margin,
  }) =>
      Container(
        padding: Spacing.small.y + Spacing.large.x,
        margin: margin,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: RegalColors.liteOrange,
              blurRadius: 4,
            ),
          ],
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: RegalColors.liteOrange,
          ),
        ),
        child: child,
      );

  @override
  Widget build(BuildContext context) => Consumer<BankInstitutionsState>(
        builder: (_, state, __) => AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          transitionBuilder: (child, animation) => FadeTransition(
            opacity: animation,
            child: child,
          ),
          child: state.isBankAppInstalled == null
              ? null
              : state.urlSchemeEmptyFromApi && state.isBankAppInstalled!
                  ? _containerCard(
                      margin: Spacing.large.top + Spacing.xtraLarge.top,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.error_outline,
                            color: RegalColors.licoriceBlack,
                          ),
                          Spacing.small.xBox,
                          Expanded(
                            child: CustomText.semantics(
                              context.l10n.ensureBankAppIsInstalled,
                              style: context.bodyLarge?.copyWith(
                                color: RegalColors.licoriceBlack,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : !state.isBankAppInstalled!
                      ? _containerCard(
                          margin: Spacing.large.top,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(
                                    Icons.error_outline,
                                    color: RegalColors.licoriceBlack,
                                  ),
                                  Spacing.small.xBox,
                                  CustomText.semantics(
                                    context.l10n.bankAppNotFound,
                                    style: context.labelSmall?.copyWith(
                                      color: RegalColors.licoriceBlack,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Spacing.mini.yBox,
                              CustomText.semantics(
                                context.l10n.downloadAppDesc,
                                style: context.bodyLarge?.copyWith(
                                  color: RegalColors.licoriceBlack,
                                ),
                              ),
                            ],
                          ),
                        )
                      : const SizedBox.shrink(),
        ),
      );
}
