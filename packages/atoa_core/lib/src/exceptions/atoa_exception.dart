class AtoaException implements Exception {
  const AtoaException(this.type, [this._message]);

  final AtoaExceptionType type;
  final String? _message;

  String get message => _message ?? type.message;
}

enum AtoaExceptionType {
  custom('you forgot to give custom message'),
  notInitialized('Client not initialized'),
  noDataFound('No data found'),
  apiKeyNotProvided('API key not provided'),
  environmentNotSet('`AtoaEnv` is not set');

  const AtoaExceptionType(this.message);
  final String message;
}
