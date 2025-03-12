import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/animation.dart';
import 'package:injectable/injectable.dart';

@singleton
class ConnectivityController {
  ConnectivityController() {
    _subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) async {
      final status = await _getStatusFromResult(result);
      connectionStatusController.add(status);
      _lastStatus = status;
    });
  }
  final List<ReconnectionCallback> _callbacks = [];
  late StreamSubscription<ConnectivityResult> _subscription;

  ConnectivityStatus? get lastStatus => _lastStatus;
  List<ReconnectionCallback> get callbacks => _callbacks;

  ConnectivityStatus? _lastStatus;
  // Create our public controller
  StreamController<ConnectivityStatus> connectionStatusController =
      StreamController<ConnectivityStatus>.broadcast();
  // Convert from the third part enum to our own enum
  Future<ConnectivityStatus> _getStatusFromResult(
    ConnectivityResult result,
  ) async {
    switch (result) {
      case ConnectivityResult.mobile:
        await _onConnection(ConnectivityStatus.cellular);
        return ConnectivityStatus.cellular;
      case ConnectivityResult.wifi:
        final internetFlag = await hasInternet();
        final status =
            internetFlag ? ConnectivityStatus.wiFi : ConnectivityStatus.offline;
        await _onConnection(status);
        return status;
      case ConnectivityResult.other:
        await _onConnection(ConnectivityStatus.other);
        return ConnectivityStatus.other;
      case ConnectivityResult.vpn:
        await _onConnection(ConnectivityStatus.other);
        return ConnectivityStatus.other;
      default:
        return ConnectivityStatus.offline;
    }
  }

  Future<void> _onConnection(ConnectivityStatus newStatus) async {
    // _lastStatus value != null is not checked as it prevents
    // get merchant api or other api calls (made on startup)
    // to be made on reconnection (since _lastStatus is null)
    // hence this causes updation bugs
    // https://atoa-uk.atlassian.net/browse/ATOA-4884

    if (newStatus.isOfflineOrWaiting) {
      return;
    }
    if (newStatus != _lastStatus) {
      for (var i = 0; i < _callbacks.length; i++) {
        try {
          _callbacks[i].callback();
        } catch (e) {
          continue;
        }
      }

      if (_lastStatus != null) {
        _callbacks.removeWhere((c) => !c.persist);
      }
    }
  }

  Future<bool> hasInternet({Dio? dio}) async {
    try {
      final connectivityDio =
          dio ?? Dio(BaseOptions(connectTimeout: const Duration(seconds: 15)));
      final result =
          await connectivityDio.get<dynamic>('https://devapi.atoa.me/api/');
      return result.statusCode == 200;
    } on DioException catch (e) {
      if (e.error is HandshakeException) {
        return true;
      }
      return false;
    } catch (_) {
      return false;
    }
  }

  Future<void> checkConnection({Connectivity? connectivity}) async {
    final result = await (connectivity ?? Connectivity()).checkConnectivity();
    connectionStatusController.add(await _getStatusFromResult(result));
  }

  void dispose() {
    _subscription.cancel();
    _lastStatus = null;
    _callbacks.clear();
  }

  void addOnReconnectionCallbacks(ReconnectionCallback callback) {
    final callbackIndex = _callbacks.indexWhere((c) => c.id == callback.id);
    if (callbackIndex < 0) {
      _callbacks.add(callback);
    }
  }

  void removeReconnectionCallbacks(ReconnectionCallback callback) {
    _callbacks.removeWhere((c) => c.id == callback.id);
  }
}

enum ConnectivityStatus {
  wiFi,
  cellular,
  offline,
  waiting,
  other;

  bool get isOffline => this == offline;
  bool get isWaiting => this == waiting;
  bool get isOfflineOrWaiting => this == offline || this == waiting;
}

class ReconnectionCallback {
  ReconnectionCallback({
    required this.id,
    required this.callback,
    this.persist = false,
  });
  final String id;
  final VoidCallback callback;
  final bool persist;
}
