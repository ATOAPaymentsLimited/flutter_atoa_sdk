import 'package:atoa_core/src/endpoints/endpoints.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';

class AtoaDio extends DioForNative {
  AtoaDio(Duration connectionTimeout)
      : super(
          BaseOptions(
            baseUrl: Endpoints.baseUrl,
            headers: <String, dynamic>{
              'Content-Type': 'application/json',
              'ACCEPT': 'application/json',
            },
            connectTimeout: connectionTimeout,
          ),
        );
}
