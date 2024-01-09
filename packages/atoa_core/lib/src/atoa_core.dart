// ignore_for_file: avoid_setters_without_getters

import 'package:atoa_core/src/endpoints/endpoints.dart';
import 'package:atoa_core/src/exceptions/atoa_exception.dart';
import 'package:atoa_core/src/http_client/http_client.dart';
import 'package:atoa_core/src/models/enums/atoa_env.dart';
import 'package:atoa_core/src/models/institution/bank_institution.dart';

/// {@template atoa_core}
/// Atoa Flutter SDK
/// {@endtemplate}
class Atoa {
  /// {@macro atoa_core}
  factory Atoa() => _instance;
  Atoa._();

  static final _instance = Atoa._();

  static set apiKey(String value) {
    _instance._apiKey = value;
  }

  static set env(AtoaEnv value) {
    _instance._atoaEnv = value;
  }

  String? _apiKey;
  AtoaEnv? _atoaEnv;
  AtoaDio? _atoaDio;

  Future<void> initialize([
    Duration connectionTimeout = const Duration(seconds: 20),
  ]) async {
    if (_apiKey == null) {
      throw const AtoaException(
        AtoaExceptionType.apiKeyNotProvided,
      );
    }
    if (_atoaEnv == null) {
      throw const AtoaException(
        AtoaExceptionType.environmentNotSet,
      );
    }

    _atoaDio = AtoaDio(connectionTimeout)
      ..interceptors.add(
        RequestInterceptor(
          apiKey: _apiKey!,
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
}
