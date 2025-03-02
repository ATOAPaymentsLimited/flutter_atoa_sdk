import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';
import 'package:url_launcher/url_launcher.dart';

class AtoaTermTile extends StatelessWidget {
  const AtoaTermTile({
    required this.title,
    required this.desc,
    required this.link,
    super.key,
  });

  final String title;
  final String desc;
  final String link;

  @override
  Widget build(BuildContext context) => CustomGestureDetector(
        context: context,
        trackLabel: title,
        semanticsLabel: title,
        onTap: () => launchUrl(Uri.parse(link)),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText.semantics(
                    title,
                    style: context.figtree.bodyLarge.w600.textColor(
                      NeutralColors.light().grey.shade700,
                    ),
                  ),
                  CustomText.semantics(
                    desc,
                    style: context.figtree.bodyMedium.textColor(
                      NeutralColors.light().grey.shade500,
                    ),
                  ),
                ],
              ),
            ),
            Assets.icons.externalLink.svg(),
          ],
        ),
      );
}
