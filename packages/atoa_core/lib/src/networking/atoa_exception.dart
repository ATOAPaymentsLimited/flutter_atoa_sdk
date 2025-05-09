/// {@template atoa_exception}
/// Atoa Exception
/// {@endtemplate}
class AtoaException implements Exception {
  /// {@macro atoa_exception}
  const AtoaException(
    this.type, [
    this._message,
    this._amount,
    this._referenceId,
    this._time,
  ]);

  /// Atoa Exception Type
  final AtoaExceptionType type;

  /// Error message
  final String? _message;

  /// Amount paid, if payment already completed
  final num? _amount;

  /// Payment Id, if payment already completed
  final String? _referenceId;

  /// Time of payment, if payment already completed
  final String? _time;

  String get message => _message ?? type.message;
  num? get amount => _amount;
  String? get referenceId => _referenceId;
  String? get time => _time;

  @override
  String toString() => switch (type) {
        AtoaExceptionType.custom =>
          _message ?? AtoaExceptionType.custom.message,
        _ => 'AtoaException(type: $type, _message: $_message)',
      };
}

/// {@template atoa_exception_type}
/// Atoa Exception Type
/// {@endtemplate}
enum AtoaExceptionType {
  custom('you forgot to give custom message'),
  notInitialized('Client not initialized'),
  noDataFound('No data found'),
  environmentNotSet(
    'AtoaEnv is not set\n```Set env by Atoa.env = Atoa.sandbox ```',
  );

  /// {@macro atoa_exception_type}
  const AtoaExceptionType(this.message);
  final String message;
}
