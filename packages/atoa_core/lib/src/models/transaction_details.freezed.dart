// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionDetails _$TransactionDetailsFromJson(Map<String, dynamic> json) {
  return _TransactionDetails.fromJson(json);
}

/// @nodoc
mixin _$TransactionDetails {
  /// Unique identifier for the payment request.
  String get paymentIdempotencyId => throw _privateConstructorUsedError;

  /// Unique identifier for the application user initiating the transaction.
  String get applicationUserId => throw _privateConstructorUsedError;

  /// The amount paid for the transaction.
  @JsonKey(fromJson: _parseAmount)
  double get paidAmount => throw _privateConstructorUsedError;

  /// The currency in which the transaction was made.
  String get currency => throw _privateConstructorUsedError;

  /// Current status of the transaction.
  String get status => throw _privateConstructorUsedError;

  /// The date and time when the transaction was created.
  String get createdAt => throw _privateConstructorUsedError;

  /// Optional: Unique identifier for the payment, if available.
  String? get paymentId => throw _privateConstructorUsedError;

  /// Optional: The date and time when the transaction was last updated.
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Optional: The name of the bank used for the transaction.
  String? get bankName => throw _privateConstructorUsedError;

  /// Optional: The bank account number used for the transaction.
  String? get bankAccountNo => throw _privateConstructorUsedError;

  /// Optional: Additional notes related to the transaction.
  String? get notes => throw _privateConstructorUsedError;

  /// Optional: The tax amount associated with the transaction.
  @JsonKey(fromJson: _parseAmount)
  double? get taxAmount => throw _privateConstructorUsedError;

  /// Optional: The service charge amount associated with the transaction.
  @JsonKey(fromJson: _parseAmount)
  double? get serviceAmount => throw _privateConstructorUsedError;

  /// Optional: The tip amount associated with the transaction.
  @JsonKey(fromJson: _parseAmount)
  double? get tipAmount => throw _privateConstructorUsedError;

  /// Optional: The QR code identifier associated with the transaction.
  String? get qrId => throw _privateConstructorUsedError;

  /// Optional: The store identifier where the transaction took place.
  String? get storeId => throw _privateConstructorUsedError;

  /// Optional: Nickname associated with the QR code used for the transaction.
  String? get qrNickName => throw _privateConstructorUsedError;

  /// Optional: Description of any errors occurred during the transaction.
  String? get errorDescription => throw _privateConstructorUsedError;

  /// Default: 3. Type of payment source used for the transaction.
  int get paymentSourceType => throw _privateConstructorUsedError;

  /// Optional: Unique identifier for linking payments across systems.
  String? get paymentLinkId => throw _privateConstructorUsedError;

  /// Optional: Unique identifier for the employee associated with the transaction.
  String? get employeeId => throw _privateConstructorUsedError;

  /// Optional: Description of any pending transaction errors.
  String? get pendingTrasactionError => throw _privateConstructorUsedError;

  /// Optional: Unique identifier for the order associated with the transaction.
  String? get orderId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDetailsCopyWith<TransactionDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDetailsCopyWith<$Res> {
  factory $TransactionDetailsCopyWith(
          TransactionDetails value, $Res Function(TransactionDetails) then) =
      _$TransactionDetailsCopyWithImpl<$Res, TransactionDetails>;
  @useResult
  $Res call(
      {String paymentIdempotencyId,
      String applicationUserId,
      @JsonKey(fromJson: _parseAmount) double paidAmount,
      String currency,
      String status,
      String createdAt,
      String? paymentId,
      String? updatedAt,
      String? bankName,
      String? bankAccountNo,
      String? notes,
      @JsonKey(fromJson: _parseAmount) double? taxAmount,
      @JsonKey(fromJson: _parseAmount) double? serviceAmount,
      @JsonKey(fromJson: _parseAmount) double? tipAmount,
      String? qrId,
      String? storeId,
      String? qrNickName,
      String? errorDescription,
      int paymentSourceType,
      String? paymentLinkId,
      String? employeeId,
      String? pendingTrasactionError,
      String? orderId});
}

/// @nodoc
class _$TransactionDetailsCopyWithImpl<$Res, $Val extends TransactionDetails>
    implements $TransactionDetailsCopyWith<$Res> {
  _$TransactionDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentIdempotencyId = null,
    Object? applicationUserId = null,
    Object? paidAmount = null,
    Object? currency = null,
    Object? status = null,
    Object? createdAt = null,
    Object? paymentId = freezed,
    Object? updatedAt = freezed,
    Object? bankName = freezed,
    Object? bankAccountNo = freezed,
    Object? notes = freezed,
    Object? taxAmount = freezed,
    Object? serviceAmount = freezed,
    Object? tipAmount = freezed,
    Object? qrId = freezed,
    Object? storeId = freezed,
    Object? qrNickName = freezed,
    Object? errorDescription = freezed,
    Object? paymentSourceType = null,
    Object? paymentLinkId = freezed,
    Object? employeeId = freezed,
    Object? pendingTrasactionError = freezed,
    Object? orderId = freezed,
  }) {
    return _then(_value.copyWith(
      paymentIdempotencyId: null == paymentIdempotencyId
          ? _value.paymentIdempotencyId
          : paymentIdempotencyId // ignore: cast_nullable_to_non_nullable
              as String,
      applicationUserId: null == applicationUserId
          ? _value.applicationUserId
          : applicationUserId // ignore: cast_nullable_to_non_nullable
              as String,
      paidAmount: null == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccountNo: freezed == bankAccountNo
          ? _value.bankAccountNo
          : bankAccountNo // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      serviceAmount: freezed == serviceAmount
          ? _value.serviceAmount
          : serviceAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      tipAmount: freezed == tipAmount
          ? _value.tipAmount
          : tipAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      qrId: freezed == qrId
          ? _value.qrId
          : qrId // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      qrNickName: freezed == qrNickName
          ? _value.qrNickName
          : qrNickName // ignore: cast_nullable_to_non_nullable
              as String?,
      errorDescription: freezed == errorDescription
          ? _value.errorDescription
          : errorDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentSourceType: null == paymentSourceType
          ? _value.paymentSourceType
          : paymentSourceType // ignore: cast_nullable_to_non_nullable
              as int,
      paymentLinkId: freezed == paymentLinkId
          ? _value.paymentLinkId
          : paymentLinkId // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String?,
      pendingTrasactionError: freezed == pendingTrasactionError
          ? _value.pendingTrasactionError
          : pendingTrasactionError // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionDetailsImplCopyWith<$Res>
    implements $TransactionDetailsCopyWith<$Res> {
  factory _$$TransactionDetailsImplCopyWith(_$TransactionDetailsImpl value,
          $Res Function(_$TransactionDetailsImpl) then) =
      __$$TransactionDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String paymentIdempotencyId,
      String applicationUserId,
      @JsonKey(fromJson: _parseAmount) double paidAmount,
      String currency,
      String status,
      String createdAt,
      String? paymentId,
      String? updatedAt,
      String? bankName,
      String? bankAccountNo,
      String? notes,
      @JsonKey(fromJson: _parseAmount) double? taxAmount,
      @JsonKey(fromJson: _parseAmount) double? serviceAmount,
      @JsonKey(fromJson: _parseAmount) double? tipAmount,
      String? qrId,
      String? storeId,
      String? qrNickName,
      String? errorDescription,
      int paymentSourceType,
      String? paymentLinkId,
      String? employeeId,
      String? pendingTrasactionError,
      String? orderId});
}

/// @nodoc
class __$$TransactionDetailsImplCopyWithImpl<$Res>
    extends _$TransactionDetailsCopyWithImpl<$Res, _$TransactionDetailsImpl>
    implements _$$TransactionDetailsImplCopyWith<$Res> {
  __$$TransactionDetailsImplCopyWithImpl(_$TransactionDetailsImpl _value,
      $Res Function(_$TransactionDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentIdempotencyId = null,
    Object? applicationUserId = null,
    Object? paidAmount = null,
    Object? currency = null,
    Object? status = null,
    Object? createdAt = null,
    Object? paymentId = freezed,
    Object? updatedAt = freezed,
    Object? bankName = freezed,
    Object? bankAccountNo = freezed,
    Object? notes = freezed,
    Object? taxAmount = freezed,
    Object? serviceAmount = freezed,
    Object? tipAmount = freezed,
    Object? qrId = freezed,
    Object? storeId = freezed,
    Object? qrNickName = freezed,
    Object? errorDescription = freezed,
    Object? paymentSourceType = null,
    Object? paymentLinkId = freezed,
    Object? employeeId = freezed,
    Object? pendingTrasactionError = freezed,
    Object? orderId = freezed,
  }) {
    return _then(_$TransactionDetailsImpl(
      paymentIdempotencyId: null == paymentIdempotencyId
          ? _value.paymentIdempotencyId
          : paymentIdempotencyId // ignore: cast_nullable_to_non_nullable
              as String,
      applicationUserId: null == applicationUserId
          ? _value.applicationUserId
          : applicationUserId // ignore: cast_nullable_to_non_nullable
              as String,
      paidAmount: null == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccountNo: freezed == bankAccountNo
          ? _value.bankAccountNo
          : bankAccountNo // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      serviceAmount: freezed == serviceAmount
          ? _value.serviceAmount
          : serviceAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      tipAmount: freezed == tipAmount
          ? _value.tipAmount
          : tipAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      qrId: freezed == qrId
          ? _value.qrId
          : qrId // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      qrNickName: freezed == qrNickName
          ? _value.qrNickName
          : qrNickName // ignore: cast_nullable_to_non_nullable
              as String?,
      errorDescription: freezed == errorDescription
          ? _value.errorDescription
          : errorDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentSourceType: null == paymentSourceType
          ? _value.paymentSourceType
          : paymentSourceType // ignore: cast_nullable_to_non_nullable
              as int,
      paymentLinkId: freezed == paymentLinkId
          ? _value.paymentLinkId
          : paymentLinkId // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String?,
      pendingTrasactionError: freezed == pendingTrasactionError
          ? _value.pendingTrasactionError
          : pendingTrasactionError // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionDetailsImpl extends _TransactionDetails {
  _$TransactionDetailsImpl(
      {required this.paymentIdempotencyId,
      required this.applicationUserId,
      @JsonKey(fromJson: _parseAmount) required this.paidAmount,
      required this.currency,
      required this.status,
      required this.createdAt,
      this.paymentId,
      this.updatedAt,
      this.bankName,
      this.bankAccountNo,
      this.notes,
      @JsonKey(fromJson: _parseAmount) this.taxAmount = 0.0,
      @JsonKey(fromJson: _parseAmount) this.serviceAmount = 0.0,
      @JsonKey(fromJson: _parseAmount) this.tipAmount = 0.0,
      this.qrId,
      this.storeId,
      this.qrNickName,
      this.errorDescription,
      this.paymentSourceType = 3,
      this.paymentLinkId,
      this.employeeId,
      this.pendingTrasactionError,
      this.orderId})
      : super._();

  factory _$TransactionDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionDetailsImplFromJson(json);

  /// Unique identifier for the payment request.
  @override
  final String paymentIdempotencyId;

  /// Unique identifier for the application user initiating the transaction.
  @override
  final String applicationUserId;

  /// The amount paid for the transaction.
  @override
  @JsonKey(fromJson: _parseAmount)
  final double paidAmount;

  /// The currency in which the transaction was made.
  @override
  final String currency;

  /// Current status of the transaction.
  @override
  final String status;

  /// The date and time when the transaction was created.
  @override
  final String createdAt;

  /// Optional: Unique identifier for the payment, if available.
  @override
  final String? paymentId;

  /// Optional: The date and time when the transaction was last updated.
  @override
  final String? updatedAt;

  /// Optional: The name of the bank used for the transaction.
  @override
  final String? bankName;

  /// Optional: The bank account number used for the transaction.
  @override
  final String? bankAccountNo;

  /// Optional: Additional notes related to the transaction.
  @override
  final String? notes;

  /// Optional: The tax amount associated with the transaction.
  @override
  @JsonKey(fromJson: _parseAmount)
  final double? taxAmount;

  /// Optional: The service charge amount associated with the transaction.
  @override
  @JsonKey(fromJson: _parseAmount)
  final double? serviceAmount;

  /// Optional: The tip amount associated with the transaction.
  @override
  @JsonKey(fromJson: _parseAmount)
  final double? tipAmount;

  /// Optional: The QR code identifier associated with the transaction.
  @override
  final String? qrId;

  /// Optional: The store identifier where the transaction took place.
  @override
  final String? storeId;

  /// Optional: Nickname associated with the QR code used for the transaction.
  @override
  final String? qrNickName;

  /// Optional: Description of any errors occurred during the transaction.
  @override
  final String? errorDescription;

  /// Default: 3. Type of payment source used for the transaction.
  @override
  @JsonKey()
  final int paymentSourceType;

  /// Optional: Unique identifier for linking payments across systems.
  @override
  final String? paymentLinkId;

  /// Optional: Unique identifier for the employee associated with the transaction.
  @override
  final String? employeeId;

  /// Optional: Description of any pending transaction errors.
  @override
  final String? pendingTrasactionError;

  /// Optional: Unique identifier for the order associated with the transaction.
  @override
  final String? orderId;

  @override
  String toString() {
    return 'TransactionDetails(paymentIdempotencyId: $paymentIdempotencyId, applicationUserId: $applicationUserId, paidAmount: $paidAmount, currency: $currency, status: $status, createdAt: $createdAt, paymentId: $paymentId, updatedAt: $updatedAt, bankName: $bankName, bankAccountNo: $bankAccountNo, notes: $notes, taxAmount: $taxAmount, serviceAmount: $serviceAmount, tipAmount: $tipAmount, qrId: $qrId, storeId: $storeId, qrNickName: $qrNickName, errorDescription: $errorDescription, paymentSourceType: $paymentSourceType, paymentLinkId: $paymentLinkId, employeeId: $employeeId, pendingTrasactionError: $pendingTrasactionError, orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDetailsImpl &&
            (identical(other.paymentIdempotencyId, paymentIdempotencyId) ||
                other.paymentIdempotencyId == paymentIdempotencyId) &&
            (identical(other.applicationUserId, applicationUserId) ||
                other.applicationUserId == applicationUserId) &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.bankAccountNo, bankAccountNo) ||
                other.bankAccountNo == bankAccountNo) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.serviceAmount, serviceAmount) ||
                other.serviceAmount == serviceAmount) &&
            (identical(other.tipAmount, tipAmount) ||
                other.tipAmount == tipAmount) &&
            (identical(other.qrId, qrId) || other.qrId == qrId) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.qrNickName, qrNickName) ||
                other.qrNickName == qrNickName) &&
            (identical(other.errorDescription, errorDescription) ||
                other.errorDescription == errorDescription) &&
            (identical(other.paymentSourceType, paymentSourceType) ||
                other.paymentSourceType == paymentSourceType) &&
            (identical(other.paymentLinkId, paymentLinkId) ||
                other.paymentLinkId == paymentLinkId) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.pendingTrasactionError, pendingTrasactionError) ||
                other.pendingTrasactionError == pendingTrasactionError) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        paymentIdempotencyId,
        applicationUserId,
        paidAmount,
        currency,
        status,
        createdAt,
        paymentId,
        updatedAt,
        bankName,
        bankAccountNo,
        notes,
        taxAmount,
        serviceAmount,
        tipAmount,
        qrId,
        storeId,
        qrNickName,
        errorDescription,
        paymentSourceType,
        paymentLinkId,
        employeeId,
        pendingTrasactionError,
        orderId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDetailsImplCopyWith<_$TransactionDetailsImpl> get copyWith =>
      __$$TransactionDetailsImplCopyWithImpl<_$TransactionDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDetailsImplToJson(
      this,
    );
  }
}

abstract class _TransactionDetails extends TransactionDetails {
  factory _TransactionDetails(
      {required final String paymentIdempotencyId,
      required final String applicationUserId,
      @JsonKey(fromJson: _parseAmount) required final double paidAmount,
      required final String currency,
      required final String status,
      required final String createdAt,
      final String? paymentId,
      final String? updatedAt,
      final String? bankName,
      final String? bankAccountNo,
      final String? notes,
      @JsonKey(fromJson: _parseAmount) final double? taxAmount,
      @JsonKey(fromJson: _parseAmount) final double? serviceAmount,
      @JsonKey(fromJson: _parseAmount) final double? tipAmount,
      final String? qrId,
      final String? storeId,
      final String? qrNickName,
      final String? errorDescription,
      final int paymentSourceType,
      final String? paymentLinkId,
      final String? employeeId,
      final String? pendingTrasactionError,
      final String? orderId}) = _$TransactionDetailsImpl;
  _TransactionDetails._() : super._();

  factory _TransactionDetails.fromJson(Map<String, dynamic> json) =
      _$TransactionDetailsImpl.fromJson;

  @override

  /// Unique identifier for the payment request.
  String get paymentIdempotencyId;
  @override

  /// Unique identifier for the application user initiating the transaction.
  String get applicationUserId;
  @override

  /// The amount paid for the transaction.
  @JsonKey(fromJson: _parseAmount)
  double get paidAmount;
  @override

  /// The currency in which the transaction was made.
  String get currency;
  @override

  /// Current status of the transaction.
  String get status;
  @override

  /// The date and time when the transaction was created.
  String get createdAt;
  @override

  /// Optional: Unique identifier for the payment, if available.
  String? get paymentId;
  @override

  /// Optional: The date and time when the transaction was last updated.
  String? get updatedAt;
  @override

  /// Optional: The name of the bank used for the transaction.
  String? get bankName;
  @override

  /// Optional: The bank account number used for the transaction.
  String? get bankAccountNo;
  @override

  /// Optional: Additional notes related to the transaction.
  String? get notes;
  @override

  /// Optional: The tax amount associated with the transaction.
  @JsonKey(fromJson: _parseAmount)
  double? get taxAmount;
  @override

  /// Optional: The service charge amount associated with the transaction.
  @JsonKey(fromJson: _parseAmount)
  double? get serviceAmount;
  @override

  /// Optional: The tip amount associated with the transaction.
  @JsonKey(fromJson: _parseAmount)
  double? get tipAmount;
  @override

  /// Optional: The QR code identifier associated with the transaction.
  String? get qrId;
  @override

  /// Optional: The store identifier where the transaction took place.
  String? get storeId;
  @override

  /// Optional: Nickname associated with the QR code used for the transaction.
  String? get qrNickName;
  @override

  /// Optional: Description of any errors occurred during the transaction.
  String? get errorDescription;
  @override

  /// Default: 3. Type of payment source used for the transaction.
  int get paymentSourceType;
  @override

  /// Optional: Unique identifier for linking payments across systems.
  String? get paymentLinkId;
  @override

  /// Optional: Unique identifier for the employee associated with the transaction.
  String? get employeeId;
  @override

  /// Optional: Description of any pending transaction errors.
  String? get pendingTrasactionError;
  @override

  /// Optional: Unique identifier for the order associated with the transaction.
  String? get orderId;
  @override
  @JsonKey(ignore: true)
  _$$TransactionDetailsImplCopyWith<_$TransactionDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
