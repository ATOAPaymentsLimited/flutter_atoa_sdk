import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class FailureListener<T extends StateNotifier<S>, S>
    extends SingleChildStatefulWidget {
  const FailureListener({
    required this.message,
    this.child,
    super.key,
  });

  final Widget? child;

  final String? Function(S state) message;

  @override
  SingleChildState<FailureListener<T, S>> createState() =>
      _FailureListenerState<T, S>();
}

class _FailureListenerState<T extends StateNotifier<S>, S>
    extends SingleChildState<FailureListener<T, S>> {
  late StateNotifier<S> _controller;
  String? _previousErrorMessage;

  @override
  void initState() {
    super.initState();
    _controller = context.read<T>();
    _subscribe();
  }

  void _subscribe() {
    _controller.addListener(_onFailureChanged);
  }

  void _onFailureChanged(S currentState) {
    final message = widget.message.call(currentState);
    if (_previousErrorMessage != message && mounted) {
      if (message != null && _previousErrorMessage != message) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              backgroundColor: RegalColors.darkOrange,
              content: Text(
                message,
                style: context.headlineSmall!.copyWith(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          );
      }
    }
    _previousErrorMessage = message;
  }

  @override
  Widget buildWithChild(BuildContext context, Widget? child) =>
      widget.child ?? child ?? const SizedBox.shrink();
}
