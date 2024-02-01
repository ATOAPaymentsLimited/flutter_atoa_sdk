import 'dart:async';

import 'package:atoa_core/atoa_core.dart';
import 'package:dio/dio.dart';

Future<T> callServer<T>(
  FutureOr<T> Function() call,
) async {
  try {
    return await call();
  } on DioException catch (e) {
    // check for internet
    if (DioExceptionType.unknown == e.type && e.response == null) {
      throw const AtoaException(
        AtoaExceptionType.custom,
        'Server is not reachable. Please verify your internet connection and try again',
      );
    }

    if (DioExceptionType.receiveTimeout == e.type ||
        DioExceptionType.connectionTimeout == e.type) {
      throw const AtoaException(
        AtoaExceptionType.custom,
        'Connection Time Out',
      );
    }
    final isConsumerDetailsEndpoint =
        RegExp(r'^consumer/(w+)$').hasMatch(e.requestOptions.path);

    if (e.response != null &&
        e.response?.statusCode != null &&
        (e.response?.statusCode == 502 || e.response?.statusCode == 500) &&
        (isConsumerDetailsEndpoint && e.requestOptions.method == 'GET')) {
      throw const AtoaException(
        AtoaExceptionType.custom,
        'Something happened and we could not process your request. We have notified our best minds to look into this.',
      );
    }

    if (e.response != null && e.response?.statusCode == 502) {
      throw const AtoaException(
        AtoaExceptionType.custom,
        "Sorry, we're currently down for maintenance. Please check back later.",
      );
    }

    if (e.response != null && e.response!.data != null) {
      if (e.response!.data is String) {
        throw AtoaException(
          AtoaExceptionType.custom,
          e.response!.data as String,
        );
      }
      if (e.response!.data is Map<String, dynamic>) {
        throw AtoaException(
          AtoaExceptionType.custom,
          ((e.response!.data as Map<String, dynamic>)['message'] as String?) ??
              'Unknown Error',
        );
      }
    }

    throw const AtoaException(
      AtoaExceptionType.custom,
      'Unknown Error',
    );
  }
}
