import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';

class DeepLinkHandler {
  static final DeepLinkHandler _instance = DeepLinkHandler._internal();
  factory DeepLinkHandler() => _instance;
  DeepLinkHandler._internal();

  bool _isInitialized = false;

  Future<void> initialize(BuildContext context) async {
    if (_isInitialized) return;
    _isInitialized = true;

    final appLinks = AppLinks();

    // Handle links that open the app
    final initialLink = await appLinks.getInitialLink();
    if (!context.mounted) {
      return;
    }
    if (initialLink != null) {
      _handleDeepLink(
        context,
        initialLink,
      );
    }

    // Handle links when app is already running
    appLinks.uriLinkStream.listen((Uri? link) {
      if (link != null) {
        if (!context.mounted) {
          return;
        }
        _handleDeepLink(context, link);
      }
    });
  }

  void _handleDeepLink(BuildContext context, Uri uri) {
    // Handle deep links for demo app
    if (uri.host == 'payment') {
      final paymentId = uri.queryParameters['id'];
      if (paymentId != null) {
        // Handle payment deep link
        debugPrint('Received payment deep link with ID: $paymentId');
      }
    }
  }
}
