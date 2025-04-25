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
    final newOptions = options.copyWith(
      headers: {...options.headers},
      path: _getPath(options),
    );

    return handler.next(newOptions);
  }

  String? _getPath(RequestOptions options) {
    final isPaymentStatus = options.path.contains('payments/payment-status');
    final isFetchBanks = options.path.contains('institutions/customer');

    if (isPaymentStatus && _env == AtoaEnv.sandbox) {
      return '${options.path}?env=sandbox';
    } else if (isFetchBanks && _env == AtoaEnv.sandbox) {
      return '${options.path}&env=sandbox';
    }
    return null;
  }
}
