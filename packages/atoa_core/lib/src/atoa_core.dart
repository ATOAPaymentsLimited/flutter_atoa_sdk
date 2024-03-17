// ignore_for_file: avoid_setters_without_getters

import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_core/src/endpoints/endpoints.dart';
import 'package:atoa_core/src/http_client/http_client.dart';
import 'package:atoa_core/src/models/models.dart';

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
    Duration connectionTimeout = const Duration(seconds: 20),
  ]) {
    if (_atoaEnv == null) {
      throw const AtoaException(
        AtoaExceptionType.environmentNotSet,
      );
    }

    _atoaDio = AtoaDio(connectionTimeout)
      ..interceptors.add(
        RequestInterceptor(
          env: _atoaEnv!,
        ),
      );
  }

  void _dioCheck() {
    if (_atoaDio == null) {
      throw const AtoaException(AtoaExceptionType.notInitialized);
    }
  }

  Future<List<BankInstitution>> fetchInstitutions() async {
    _dioCheck();

    final res = await _atoaDio!.get<List<dynamic>>(Endpoints.institutions);
    final data = res.data;

    if (data == null) {
      throw const AtoaException(AtoaExceptionType.noDataFound);
    }

    return data
        .map((e) => BankInstitution.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<PaymentRequestData> getPaymentDetails(String paymentRequestId) async {
    _dioCheck();

    final res = await _atoaDio!.post<Map<String, dynamic>>(
      Endpoints.getPaymentDetails,
      data: {
        'data': paymentRequestId,
        'source': 'EXTERNAL_MERCHANT',
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
    String paymentIdempotencyId,
  ) async {
    _dioCheck();

    final res = await _atoaDio!.get<Map<String, dynamic>>(
      Endpoints.getPaymentStatus(paymentIdempotencyId),
    );

    final data = res.data;

    if (data == null) {
      throw const AtoaException(AtoaExceptionType.noDataFound);
    }

    return TransactionDetails.fromJson(data);
  }
}
