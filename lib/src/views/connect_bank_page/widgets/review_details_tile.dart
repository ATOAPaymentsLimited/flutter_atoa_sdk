import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/bank_institutions_controller.dart';
import 'package:atoa_flutter_sdk/src/utility/extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
        padding: Spacing.large.all,
        decoration: BoxDecoration(
          color: NeutralColors.light().grey.shade200,
        ),
        child: Row(
          children: [
            if (isBankInfo)
              CachedNetworkImage(
                imageUrl: state.selectedBank?.bankIcon ?? '',
                height: Spacing.xtraLarge.value * 2,
                width: Spacing.xtraLarge.value * 2,
              )
            else if (state.paymentDetails?.storeImg != null)
              CachedNetworkImage(
                imageUrl: state.paymentDetails?.storeImg ?? '',
                height: Spacing.xtraLarge.value * 2,
                width: Spacing.xtraLarge.value * 2,
              )
            else
              CustomText.semantics(
                (state.paymentDetails?.merchantBusinessName ?? '')
                    .getInitials(),
              ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText.semantics(
                    isBankInfo ? context.l10n.payingTo : context.l10n.from,
                  ),
                  CustomText.semantics(
                    isBankInfo
                        ? state.paymentDetails?.merchantBusinessName ?? ''
                        : state.selectedBank?.name ?? '',
                  ),
                ],
              ),
            ),
            if (isBankInfo)
              RegalButton.tertiary(
                trackLabel: 'Change Bank',
                label: context.l10n.change,
                onPressed: () {},
              )
            else
              CustomText.semantics(
                state.paymentDetails?.amount.amount.toString() ?? '',
              ),
          ],
        ),
      );
}
