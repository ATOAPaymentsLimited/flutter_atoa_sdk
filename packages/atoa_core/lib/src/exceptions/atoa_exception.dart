class AtoaException implements Exception {
  const AtoaException(this.type);

  final AtoaExceptionType type;

  String get message => type.message;
}

enum AtoaExceptionType {
  notInitialized('Client not initialized'),
  noDataFound('No data found'),
  apiKeyNotProvided('API key not provided'),
  environmentNotSet('`AtoaEnv` is not set');

  const AtoaExceptionType(this.message);
  final String message;
}
