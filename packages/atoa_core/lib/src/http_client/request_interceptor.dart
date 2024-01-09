import 'dart:io';

import 'package:atoa_core/src/models/enums/atoa_env.dart';
import 'package:dio/dio.dart';

class RequestInterceptor extends QueuedInterceptor {
  RequestInterceptor({
    required String apiKey,
    required AtoaEnv env,
  })  : _apiKey = apiKey,
        _env = env;

  final String _apiKey;
  final AtoaEnv _env;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final newOptions = options.copyWith(
      headers: {
        ...options.headers,
        HttpHeaders.authorizationHeader: 'Bearer $_apiKey',
      },
      path: switch (_env) {
        AtoaEnv.sandbox => '${options.path}&env=SANDBOX',
        AtoaEnv.prod => null,
      },
    );

    return handler.next(newOptions);
  }
}
