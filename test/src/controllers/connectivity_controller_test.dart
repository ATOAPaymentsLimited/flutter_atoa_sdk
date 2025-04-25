import 'dart:io';

import 'package:atoa_sdk/src/controllers/connectivity_controller.dart';
import 'package:atoa_sdk/src/di/injection.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as inj;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'connectivity_controller_test.mocks.dart';

@GenerateNiceMocks([MockSpec<Connectivity>()])
@GenerateNiceMocks([MockSpec<Dio>()])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late MockConnectivity connectivity;
  late ConnectivityController connectivityController;

  setUpAll(() async {
    await configureInjection(inj.Environment.test);
    connectivity = MockConnectivity();
    connectivityController = ConnectivityController(
      connectivity: connectivity,
    );
  });

  group('WHEN _getStatusFromResult is called', () {
    group('WHEN response is cellular', () {
      setUp(() {
        connectivity = MockConnectivity();

        when(
          connectivity.onConnectivityChanged,
        ).thenAnswer(
          (_) => Stream<ConnectivityResult>.fromFutures([
            Future.delayed(
              const Duration(seconds: 1),
              () => ConnectivityResult.none,
            ),
            Future.delayed(
              const Duration(seconds: 2),
              () => ConnectivityResult.mobile,
            ),
          ]),
        );

        connectivityController = ConnectivityController(
          connectivity: connectivity,
        );
      });

      test('THEN result is mobile', () async {
        final response = <ConnectivityStatus>[];

        connectivityController.connectionStatusController.stream.listen(
          response.add,
        );

        await Future.delayed(const Duration(seconds: 3), () {});

        expect(
          response,
          [
            ConnectivityStatus.offline,
            ConnectivityStatus.cellular,
          ],
        );
        expect(
          connectivityController.lastStatus,
          ConnectivityStatus.cellular,
        );
      });
    });

    group('WHEN response is wifi', () {
      setUp(() {
        resetMockitoState();
        connectivity = MockConnectivity();

        when(
          connectivity.onConnectivityChanged,
        ).thenAnswer(
          (_) => Stream<ConnectivityResult>.fromFutures([
            Future.delayed(
              const Duration(seconds: 1),
              () => ConnectivityResult.none,
            ),
            Future.delayed(
              const Duration(seconds: 2),
              () => ConnectivityResult.wifi,
            ),
          ]),
        );

        connectivityController = ConnectivityController(
          connectivity: connectivity,
        );
      });
    });
  });

  group('WHEN hasInternet is called', () {
    setUp(() {
      connectivity = MockConnectivity();
      connectivityController = ConnectivityController(
        connectivity: connectivity,
      );
    });

    const endpoint = 'https://api.atoa.me/api/';

    test('THEN true is returned', () async {
      final mockBaseDio = MockDio();

      when(mockBaseDio.httpClientAdapter)
          .thenAnswer((_) => IOHttpClientAdapter());

      when(
        mockBaseDio.get<dynamic>(
          endpoint,
        ),
      ).thenAnswer(
        (_) async => Response<dynamic>(
          statusCode: 200,
          requestOptions: RequestOptions(path: endpoint),
        ),
      );

      final response =
          await connectivityController.hasInternet(dio: mockBaseDio);

      expect(response, true);
    });

    test('with HanshakeException error THEN true is returned', () async {
      final mockBaseDio = MockDio();

      when(mockBaseDio.httpClientAdapter)
          .thenAnswer((_) => IOHttpClientAdapter());

      when(
        mockBaseDio.get<dynamic>(
          endpoint,
        ),
      ).thenAnswer(
        (_) async => throw DioException(
          requestOptions: RequestOptions(path: endpoint),
          error: const HandshakeException(),
        ),
      );

      final response =
          await connectivityController.hasInternet(dio: mockBaseDio);

      expect(response, true);
    });

    test('with exception is thrown THEN false is returned', () async {
      final mockBaseDio = MockDio();

      when(mockBaseDio.httpClientAdapter)
          .thenAnswer((_) => IOHttpClientAdapter());

      when(
        mockBaseDio.get<dynamic>(
          endpoint,
        ),
      ).thenAnswer(
        (_) async => throw DioException(
          requestOptions: RequestOptions(path: endpoint),
          error: Exception(),
        ),
      );

      final response =
          await connectivityController.hasInternet(dio: mockBaseDio);

      expect(response, false);
    });
  });

  group('WHEN checkConnection is called', () {
    setUp(() {
      connectivity = MockConnectivity();

      when(
        connectivity.onConnectivityChanged,
      ).thenAnswer(
        (_) => Stream<ConnectivityResult>.fromFutures([
          Future.delayed(
            const Duration(seconds: 1),
            () => ConnectivityResult.mobile,
          ),
        ]),
      );

      connectivityController = ConnectivityController(
        connectivity: connectivity,
      );
    });

    test('WHEN result is mobile', () async {
      final response = <ConnectivityStatus>[];

      await connectivity.checkConnectivity();

      connectivityController.connectionStatusController.stream.listen(
        response.add,
      );

      await Future.delayed(const Duration(seconds: 2), () {});

      expect(
        response,
        [ConnectivityStatus.cellular],
      );
    });
  });

  group('WHEN connection is back THEN isOfflineOrWaiting is false', () {
    setUp(() {
      connectivity = MockConnectivity();

      when(
        connectivity.onConnectivityChanged,
      ).thenAnswer(
        (_) => Stream<ConnectivityResult>.fromFutures([
          Future.delayed(
            const Duration(seconds: 1),
            () => ConnectivityResult.none,
          ),
          Future.delayed(
            const Duration(seconds: 2),
            () => ConnectivityResult.mobile,
          ),
        ]),
      );

      connectivityController = ConnectivityController(
        connectivity: connectivity,
      );
    });

    test('THEN callbacks are called', () async {
      reset(connectivity);

      final callbacksInvoked = [false, false];

      final callbackModel = [
        ReconnectionCallback(
          id: '1',
          callback: () => callbacksInvoked[0] = true,
          persist: true,
        ),
        ReconnectionCallback(
          id: '2',
          callback: () => callbacksInvoked[1] = true,
        ),
      ];

      expect(connectivityController.callbacks, isEmpty);

      connectivityController
        ..addOnReconnectionCallbacks(callbackModel[0])
        ..addOnReconnectionCallbacks(callbackModel[1]);

      await Future.delayed(const Duration(seconds: 3), () {});

      expect(connectivityController.lastStatus?.isOffline, false);
      expect(connectivityController.lastStatus?.isWaiting, false);
      expect(connectivityController.lastStatus?.isOfflineOrWaiting, false);

      expect(connectivityController.callbacks, [callbackModel[0]]);
      expect(callbacksInvoked[0], true);
      expect(callbacksInvoked[1], true);
    });
  });

  test('WHEN addOnReconnectionCallbacks is called THEN _callbacks is updated',
      () {
    connectivityController.callbacks.clear();

    final callbackModel = ReconnectionCallback(
      id: '1',
      callback: () {},
    );

    expect(connectivityController.callbacks, isEmpty);

    connectivityController.addOnReconnectionCallbacks(callbackModel);

    expect(
      connectivityController.callbacks,
      [callbackModel],
    );
  });

  test('WHEN addOnReconnectionCallbacks is called THEN _callbacks is updated',
      () {
    final callbackModel = ReconnectionCallback(
      id: '1',
      callback: () {},
    );

    connectivityController
      ..addOnReconnectionCallbacks(callbackModel)
      ..removeReconnectionCallbacks(callbackModel);

    expect(connectivityController.callbacks, isEmpty);
  });

  test('WHEN dispose() is called THEN variables are resetted', () {
    connectivityController.dispose();

    expect(connectivityController.lastStatus, null);
  });
}
