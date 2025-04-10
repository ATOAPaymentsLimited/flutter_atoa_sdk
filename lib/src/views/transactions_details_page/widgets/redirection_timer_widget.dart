import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class RedirectionTimerWidget extends StatelessWidget {
  const RedirectionTimerWidget({
    required this.durationLeft,
    super.key,
  });

  final Duration durationLeft;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: CustomTextSpan.semantics(
              text: context.l10n.youWillRedirectIn,
              style: sdkFigTreeTextTheme.bodyLarge,
              children: [
                CustomTextSpan.semantics(
                  text: durationLeft.inSeconds.toString(),
                  style: sdkFigTreeTextTheme.bodyLarge?.w700,
                ),
                CustomTextSpan.semantics(
                  text: context.l10n.seconds,
                ),
              ],
            ),
          ),
        ],
      );
}
