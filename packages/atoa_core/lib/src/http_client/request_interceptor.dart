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
    final isPaymentStatus = options.path.contains('payments/payment-status');
    final isFetchBanks = options.path.contains('institutions/customer');

    final newOptions = options.copyWith(
      headers: {...options.headers},
      path: isPaymentStatus || isFetchBanks
          ? switch (_env) {
              AtoaEnv.sandbox => '${options.path}?env=sandbox',
              AtoaEnv.prod => null,
            }
          : null,
    );

    return handler.next(newOptions);
  }
}
