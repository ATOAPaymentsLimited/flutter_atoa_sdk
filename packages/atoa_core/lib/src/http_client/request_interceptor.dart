import 'package:atoa_core/atoa_core.dart';
import 'package:dio/dio.dart';

class RequestInterceptor extends QueuedInterceptor {
  RequestInterceptor({
    required AtoaEnv env,
  }) : _env = env;

  final AtoaEnv _env;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final isPaymentStatus = options.path.contains('payments/v1/payment-status');

    final newOptions = options.copyWith(
      headers: {...options.headers},
      path: isPaymentStatus
          ? switch (_env) {
              AtoaEnv.sandbox => '${options.path}?env=sandbox',
              AtoaEnv.prod => null,
            }
          : null,
    );

    return handler.next(newOptions);
  }
}
