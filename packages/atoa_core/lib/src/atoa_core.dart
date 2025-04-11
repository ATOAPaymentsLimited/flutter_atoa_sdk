// ignore_for_file: avoid_setters_without_getters

import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_core/src/http_client/http_client.dart';

/// {@template atoa_core}
/// Atoa Flutter SDK
/// {@endtemplate}

class Atoa {
  /// {@macro atoa_core}
  factory Atoa() => _instance;
  Atoa._();

  static final _instance = Atoa._();

  static set env(AtoaEnv value) {
    _instance._atoaEnv = value;
  }

  AtoaEnv? _atoaEnv;
  AtoaDio? _atoaDio;

  void initialize([
    AtoaDio? dio,
    Duration connectionTimeout = const Duration(seconds: 20),
  ]) {
    if (_atoaEnv == null) {
      throw const AtoaException(
        AtoaExceptionType.environmentNotSet,
      );
    }
    if (dio != null) {
      _atoaDio = dio
        ..interceptors.add(
          RequestInterceptor(
            env: _atoaEnv!,
          ),
        );
    } else {
      _atoaDio = AtoaDio(connectionTimeout)
        ..interceptors.add(
          RequestInterceptor(
            env: _atoaEnv!,
          ),
        );
    }
  }

  void _dioCheck() {
    if (_atoaDio == null) {
      throw const AtoaException(AtoaExceptionType.notInitialized);
    }
  }

  Future<List<BankInstitution>> fetchInstitutions({String? searchTerm}) async {
    _dioCheck();

    var endPoint = Endpoints.institutions;

    if (searchTerm != null && searchTerm.isNotEmpty) {
      endPoint = '$endPoint&search=$searchTerm';
    }

    final res = await _atoaDio!.get<List<dynamic>>(endPoint);
    final data = res.data;

    if (data == null) {
      throw const AtoaException(AtoaExceptionType.noDataFound);
    }

    return data
        .map((e) => BankInstitution.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<PaymentRequestData> getPaymentDetails(
    String paymentRequestId, {
    CustomerDetails? customerDetails,
  }) async {
    _dioCheck();

    final res = await _atoaDio!.post<Map<String, dynamic>>(
      Endpoints.getPaymentDetails,
      data: {
        'data': paymentRequestId,
        'source': 'EXTERNAL_MERCHANT',
        if (customerDetails != null)
          'customerDetails': customerDetails.toJson(),
      },
    );

    final data = res.data;

    if (data == null) {
      throw const AtoaException(AtoaExceptionType.noDataFound);
    }

    return PaymentRequestData.fromJson(data);
  }

  Future<PaymentAuthResponse> getPaymentAuth(
    PaymentAuthRequestBody payRequestBody,
  ) async {
    _dioCheck();

    final res = await _atoaDio!.post<Map<String, dynamic>>(
      Endpoints.securedAuthUrl,
      data: payRequestBody.toJson(),
    );

    final data = res.data;

    if (data == null) {
      throw const AtoaException(AtoaExceptionType.noDataFound);
    }

    return PaymentAuthResponse.fromJson(data);
  }

  Future<TransactionDetails> getPaymentStatus(
    String paymentId,
  ) async {
    _dioCheck();

    final res = await _atoaDio!.get<Map<String, dynamic>>(
      Endpoints.getPaymentStatus(paymentId),
    );

    final data = res.data;

    if (data == null) {
      throw const AtoaException(AtoaExceptionType.noDataFound);
    }

    return TransactionDetails.fromJson(data);
  }
}
