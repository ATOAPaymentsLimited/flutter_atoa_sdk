import 'package:atoa_core/atoa_core.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('callServer Tests', () {
    test('should return successful response', () async {
      final result = await callServer(() async => 'success');
      expect(result, 'success');
    });

    group('DioException handling', () {
      test('should handle no internet connection', () async {
        final dioError = DioException(
          requestOptions: RequestOptions(),
          error: 'Failed host lookup',
        );

        expect(
          () => callServer(() => throw dioError),
          throwsA(
            isA<AtoaException>()
                .having((e) => e.type, 'type', AtoaExceptionType.custom)
                .having(
                  (e) => e.message,
                  'message',
                  'Server is not reachable. Please verify your internet connection and try again',
                ),
          ),
        );
      });

      test('should handle connection timeout', () async {
        final dioError = DioException(
          type: DioExceptionType.connectionTimeout,
          requestOptions: RequestOptions(),
        );

        expect(
          () => callServer(() => throw dioError),
          throwsA(
            isA<AtoaException>()
                .having((e) => e.type, 'type', AtoaExceptionType.custom)
                .having((e) => e.message, 'message', 'Connection Time Out'),
          ),
        );
      });

      test('should handle 502 error for consumer details endpoint', () async {
        final dioError = DioException(
          type: DioExceptionType.badResponse,
          requestOptions: RequestOptions(
            path: 'consumer/123',
            method: 'GET',
          ),
          response: Response(
            statusCode: 502,
            requestOptions: RequestOptions(method: 'GET', path: 'consumer/123'),
          ),
        );

        expect(
          () => callServer(() => throw dioError),
          throwsA(
            isA<AtoaException>()
                .having((e) => e.type, 'type', AtoaExceptionType.custom)
                .having(
                  (e) => e.message,
                  'message',
                  "Sorry, we're currently down for maintenance. Please check back later.",
                ),
          ),
        );
      });

      test('should handle error with map response', () async {
        final dioError = DioException(
          type: DioExceptionType.badResponse,
          requestOptions: RequestOptions(),
          response: Response(
            requestOptions: RequestOptions(),
            data: {'message': 'Error from map'},
          ),
        );

        expect(
          () => callServer(() => throw dioError),
          throwsA(
            isA<AtoaException>()
                .having((e) => e.type, 'type', AtoaExceptionType.custom)
                .having((e) => e.message, 'message', 'Error from map'),
          ),
        );
      });

      test('should handle error with String response', () async {
        final dioError = DioException(
          type: DioExceptionType.badResponse,
          requestOptions: RequestOptions(),
          response: Response(
            requestOptions: RequestOptions(),
            data: 'error for string',
          ),
        );

        expect(
          () => callServer(() => throw dioError),
          throwsA(
            isA<AtoaException>()
                .having((e) => e.type, 'type', AtoaExceptionType.custom)
                .having((e) => e.message, 'message', 'error for string'),
          ),
        );
      });

      test('should handle receive timeout', () async {
        final dioError = DioException(
          type: DioExceptionType.receiveTimeout,
          requestOptions: RequestOptions(),
        );

        expect(
          () => callServer(() => throw dioError),
          throwsA(
            isA<AtoaException>()
                .having((e) => e.type, 'type', AtoaExceptionType.custom)
                .having((e) => e.message, 'message', 'Connection Time Out'),
          ),
        );
      });

      test('should handle 500 error for consumer details endpoint', () async {
        final dioError = DioException(
          type: DioExceptionType.badResponse,
          requestOptions: RequestOptions(
            path: 'consumer/123',
            method: 'GET',
          ),
          response: Response(
            statusCode: 500,
            requestOptions: RequestOptions(),
          ),
        );

        expect(
          () => callServer(() => throw dioError),
          throwsA(
            isA<AtoaException>()
                .having((e) => e.type, 'type', AtoaExceptionType.custom)
                .having(
                  (e) => e.message,
                  'message',
                  'Unknown Error',
                ),
          ),
        );
      });

      test('should handle error with null response', () async {
        final dioError = DioException(
          type: DioExceptionType.badResponse,
          requestOptions: RequestOptions(),
        );

        expect(
          () => callServer(() => throw dioError),
          throwsA(
            isA<AtoaException>()
                .having((e) => e.type, 'type', AtoaExceptionType.custom)
                .having((e) => e.message, 'message', 'Unknown Error'),
          ),
        );
      });

      test('should handle error with non-string, non-map response data',
          () async {
        final dioError = DioException(
          type: DioExceptionType.badResponse,
          requestOptions: RequestOptions(),
          response: Response(
            requestOptions: RequestOptions(),
            data: [1, 2, 3], // Array data
          ),
        );

        expect(
          () => callServer(() => throw dioError),
          throwsA(
            isA<AtoaException>()
                .having((e) => e.type, 'type', AtoaExceptionType.custom)
                .having((e) => e.message, 'message', 'Unknown Error'),
          ),
        );
      });
    });

    group('Generic type handling', () {
      test('should handle different return types', () async {
        final intResult = await callServer(() async => 42);
        expect(intResult, 42);

        final mapResult = await callServer(() async => {'key': 'value'});
        expect(mapResult, {'key': 'value'});

        final listResult = await callServer(() async => [1, 2, 3]);
        expect(listResult, [1, 2, 3]);
      });
    });

    group('Error handling edge cases', () {
      test('should handle async errors in callback', () async {
        expect(
          () => callServer(() async {
            await Future<void>.delayed(const Duration(milliseconds: 100));
            throw Exception('Async error');
          }),
          throwsA(isA<Exception>()),
        );
      });

      test('should handle nested async operations', () async {
        final result = await callServer(
          () async => Future<String>.value('nested success'),
        );
        expect(result, 'nested success');
      });

      test('should preserve stack traces', () async {
        try {
          await callServer(() => throw Exception('Test error'));
        } catch (e) {
          expect(e, isA<Exception>());
          expect(e.toString(), contains('Test error'));
        }
      });
    });
  });
}
