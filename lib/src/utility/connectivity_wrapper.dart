import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/connectivity_controller.dart';
import 'package:atoa_flutter_sdk/src/di/injection.dart';
import 'package:atoa_flutter_sdk/src/views/bank_selection_bottom_sheet/widgets/bank_back_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class ConnectivityWrapper extends StatefulWidget {
  const ConnectivityWrapper({
    required this.child,
    this.showBackIcon = true,
    this.topSpacing,
    this.height,
    super.key,
    this.onReloadCallbacks = const <ReconnectionCallback>[],
  });
  final Widget child;
  final bool showBackIcon;
  final SizedBox? topSpacing;
  final double? height;
  final List<ReconnectionCallback> onReloadCallbacks;

  @override
  State<ConnectivityWrapper> createState() => _ConnectivityWrapperState();
}

class _ConnectivityWrapperState extends State<ConnectivityWrapper> {
  late ConnectivityController connectivityController;

  @override
  void initState() {
    super.initState();
    connectivityController = getIt.get<ConnectivityController>();
    for (var i = 0; i < widget.onReloadCallbacks.length; i++) {
      connectivityController
          .addOnReconnectionCallbacks(widget.onReloadCallbacks[i]);
    }
  }

  @override
  void dispose() {
    for (var i = 0; i < widget.onReloadCallbacks.length; i++) {
      connectivityController
          .removeReconnectionCallbacks(widget.onReloadCallbacks[i]);
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final connectivityStatus = context.watch<ConnectivityStatus>();

    return Stack(
      children: [
        widget.child,
        if (connectivityStatus.isOffline) ...[
          Container(
            height: widget.height,
            color: context.intactColors.white,
          ),
          Stack(
            children: [
              if (widget.showBackIcon)
                const Align(
                  alignment: Alignment.topLeft,
                  child: BankBackButton(),
                ),
              Padding(
                padding: Spacing.medium.all,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (widget.topSpacing != null) widget.topSpacing!,
                    Assets.icons.wifiOff.svg(
                      height: Spacing.xtraLarge.value * 2 + Spacing.tiny.value,
                      colorFilter: ColorFilter.mode(
                        context.neutralColors.grey.shade500,
                        BlendMode.srcIn,
                      ),
                    ),
                    Spacing.huge.yBox,
                    CustomText.semantics(
                      context.l10n.noInternetConnection,
                      style: context.titleSmall?.w700,
                    ),
                    Spacing.huge.yBox,
                    CustomText.semantics(
                      context.l10n.serverNotReachable,
                      textAlign: TextAlign.center,
                      style: context.bodyLarge,
                    ),
                    Spacing.huge.yBox,
                  ],
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }
}
