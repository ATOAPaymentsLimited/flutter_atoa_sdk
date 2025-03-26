import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText.semantics(
              context.l10n.noResults,
              style: sdkFigTreeTextTheme.titleSmall?.w700.copyWith(
                color: IntactColors.light().black,
              ),
            ),
            Spacing.small.yBox,
            CustomText.semantics(
              context.l10n.noResultFound(searchTerm),
              style: sdkFigTreeTextTheme.bodyLarge?.textColor(
                NeutralColors.light().grey.shade500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
}
