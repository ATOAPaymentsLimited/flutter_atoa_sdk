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
              text: context.l10n.popupClosingIn,
              style: sdkFigTreeTextTheme.bodyLarge,
              children: [
                if (_minutes(durationLeft) > 0)
                  CustomTextSpan.semantics(
                    text: _minutes(durationLeft).toString(),
                    style: sdkFigTreeTextTheme.bodyLarge?.w700,
                  ),
                if (_minutes(durationLeft) > 0)
                  CustomTextSpan.semantics(
                    text: _minutes(durationLeft) == 1
                        ? context.l10n.minute
                        : context.l10n.minutes,
                  ),
                if (_seconds(durationLeft) > 0)
                  CustomTextSpan.semantics(
                    text: _seconds(durationLeft).toString(),
                    style: sdkFigTreeTextTheme.bodyLarge?.w700,
                  ),
                if (_seconds(durationLeft) > 0)
                  CustomTextSpan.semantics(
                    text: _seconds(durationLeft) == 1
                        ? context.l10n.second
                        : context.l10n.seconds,
                  ),
              ],
            ),
          ),
        ],
      );

  int _minutes(Duration duration) {
    final minutes = duration.inMinutes;

    return minutes;
  }

  int _seconds(Duration duration) {
    final seconds = duration.inSeconds % 60;

    return seconds;
  }
}
