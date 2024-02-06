class AtoaException implements Exception {
  const AtoaException(this.type, [this._message]);

  final AtoaExceptionType type;
  final String? _message;

  String get message => _message ?? type.message;

  @override
  String toString() => switch (type) {
        AtoaExceptionType.custom =>
          _message ?? AtoaExceptionType.custom.message,
        _ => 'AtoaException(type: $type, _message: $_message)',
      };
}

enum AtoaExceptionType {
  custom('you forgot to give custom message'),
  notInitialized('Client not initialized'),
  noDataFound('No data found'),
  environmentNotSet('`AtoaEnv` is not set');

  const AtoaExceptionType(this.message);
  final String message;
}
