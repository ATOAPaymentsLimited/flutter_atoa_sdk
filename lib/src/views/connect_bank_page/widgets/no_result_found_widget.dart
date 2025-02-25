import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class NoResultFoundWidget extends StatelessWidget {
  const NoResultFoundWidget({
    required this.searchTerm,
    super.key,
  });

  final String searchTerm;

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          children: [
            CustomText.semantics(
              context.l10n.noResults,
              style: context.labelSmall?.w700.copyWith(
                color: context.intactColors.black,
              ),
            ),
            Spacing.small.yBox,
            CustomText.semantics(
              context.l10n.noResultFound(searchTerm),
              style: context.bodyLarge?.textColor(
                NeutralColors.light().grey.shade500,
              ),
            ),
          ],
        ),
      );
}
