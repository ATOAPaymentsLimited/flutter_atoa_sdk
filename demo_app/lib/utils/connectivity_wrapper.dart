import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttersdk/utils/connectivity_controller.dart';
import 'package:fluttersdk/widgets/regal_button.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart' hide RegalButton;

class ConnectivityWrapper extends StatefulWidget {
  final Widget child;
  final List<ReconnectionCallback> onReloadCallbacks;

  const ConnectivityWrapper({
    Key? key,
    required this.child,
    this.onReloadCallbacks = const <ReconnectionCallback>[],
  }) : super(key: key);

  @override
  State<ConnectivityWrapper> createState() => _ConnectivityWrapperState();
}

class _ConnectivityWrapperState extends State<ConnectivityWrapper> {
  Future? _checkConnectivity;
  late ConnectivityController connectivityController;

  @override
  void initState() {
    super.initState();
    connectivityController = ConnectivityController();
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
    final ConnectivityStatus connectivityStatus =
        context.watch<ConnectivityStatus>();

    return Stack(
      children: [
        widget.child,
        if (connectivityStatus.isOffline) ...[
          Padding(
            padding: Spacing.huge.bottom * 2,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: Spacing.medium.all,
                margin: Spacing.large.x + Spacing.huge.y,
                decoration: BoxDecoration(
                    color: context.grey.shade05,
                    borderRadius: BorderRadius.circular(12.0)),
                child: Row(
                  children: [
                    Icon(
                      Icons.signal_wifi_connected_no_internet_4,
                      color: context.regalColor.licoriceBlack,
                    ),
                    Spacing.medium.xBox,
                    Expanded(
                      child: CustomText.semantics(
                        'No internet connection',
                        style: context.titleSmall?.height150.textColor(
                          context.regalColor.licoriceBlack,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 36.sp,
                      width: 80.sp,
                      child: FutureBuilder<void>(
                        future: _checkConnectivity,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Center(
                              child: Transform.scale(
                                scale: 0.6,
                                child: GradientCircularProgressIndicator(
                                  radius: Spacing.xtraLarge.r,
                                ),
                              ),
                            );
                          }
                          return RegalButton.tertiary(
                            trackLabel: "Retry Button",
                            enableTracking: false,
                            onPressed: () {
                              setState(() {
                                _checkConnectivity = Future.wait([
                                  Future<void>.delayed(
                                      const Duration(milliseconds: 500)),
                                  connectivityController.checkConnection(),
                                ]);
                              });
                            },
                            label: 'Retry',
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
