import 'package:atoa_core/src/endpoints/endpoints.dart';
import 'package:atoa_core/src/models/enums/atoa_env.dart';
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
    final isInstitutionEndpoing = options.path.contains(Endpoints.institutions);

    final newOptions = options.copyWith(
      headers: {...options.headers},
      // path: isInstitutionEndpoing
      //     ? null
      //     : switch (_env) {
      //         AtoaEnv.sandbox => '${options.path}&env=SANDBOX',
      //         AtoaEnv.prod => null,
      //       },
    );

    return handler.next(newOptions);
  }
}
