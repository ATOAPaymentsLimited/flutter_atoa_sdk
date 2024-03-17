import 'package:atoa_flutter_sdk/src/shared_widgets/shared_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:regal/regal.dart';
import 'package:url_launcher/url_launcher.dart';

class LocalHtmlPage extends StatelessWidget {
  const LocalHtmlPage({
    required this.title,
    required this.html,
    super.key,
  });

  final String title;
  final String html;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: CustomText.semantics(title),
          bottom: const DefaultAppBarBottom(),
        ),
        body: SingleChildScrollView(
          padding: Spacing.xtraLarge.all,
          child: HtmlWidget(
            html,
            onTapUrl: (url) async {
              final uri = Uri.tryParse(url);
              if (uri != null) {
                await launchUrl(
                  uri,
                  mode: LaunchMode.externalApplication,
                );
                return true;
              } else {
                return false;
              }
            },
          ),
        ),
      );
}
