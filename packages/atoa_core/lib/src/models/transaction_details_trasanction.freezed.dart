// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_details_trasanction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionDetailsTransaction _$TransactionDetailsTransactionFromJson(
    Map<String, dynamic> json) {
  return _TransactionDetailsTransaction.fromJson(json);
}

/// @nodoc
mixin _$TransactionDetailsTransaction {
  /// The amount paid for the transaction.
  @JsonKey(fromJson: _parseAmount)
  double? get paidAmount => throw _privateConstructorUsedError;

  /// The currency in which the transaction was made.
  String? get currency => throw _privateConstructorUsedError;

  /// Current status of the transaction.
  @JsonKey(fromJson: TransactionStatus.fromJson, includeToJson: false)
  TransactionStatus? get status => throw _privateConstructorUsedError;

  /// The date and time when the transaction was created.
  String? get createdAt => throw _privateConstructorUsedError;

  /// Unique identifier for the payment request.
  String? get paymentIdempotencyId => throw _privateConstructorUsedError;

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
  TransactionStatusDetails? get statusDetails =>
      throw _privateConstructorUsedError;
  String? get merchantId => throw _privateConstructorUsedError;
  String? get merchantName => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  StoreDetails? get storeDetails => throw _privateConstructorUsedError;
  String? get institutionId => throw _privateConstructorUsedError;

  /// Serializes this TransactionDetailsTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionDetailsTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionDetailsTransactionCopyWith<TransactionDetailsTransaction>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDetailsTransactionCopyWith<$Res> {
  factory $TransactionDetailsTransactionCopyWith(
          TransactionDetailsTransaction value,
          $Res Function(TransactionDetailsTransaction) then) =
      _$TransactionDetailsTransactionCopyWithImpl<$Res,
          TransactionDetailsTransaction>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseAmount) double? paidAmount,
      String? currency,
      @JsonKey(fromJson: TransactionStatus.fromJson, includeToJson: false)
      TransactionStatus? status,
      String? createdAt,
      String? paymentIdempotencyId,
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
      String? orderId,
      TransactionStatusDetails? statusDetails,
      String? merchantId,
      String? merchantName,
      String? avatar,
      StoreDetails? storeDetails,
      String? institutionId});

  $TransactionStatusCopyWith<$Res>? get status;
  $TransactionStatusDetailsCopyWith<$Res>? get statusDetails;
  $StoreDetailsCopyWith<$Res>? get storeDetails;
}

/// @nodoc
class _$TransactionDetailsTransactionCopyWithImpl<$Res,
        $Val extends TransactionDetailsTransaction>
    implements $TransactionDetailsTransactionCopyWith<$Res> {
  _$TransactionDetailsTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionDetailsTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paidAmount = freezed,
    Object? currency = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? paymentIdempotencyId = freezed,
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
    Object? statusDetails = freezed,
    Object? merchantId = freezed,
    Object? merchantName = freezed,
    Object? avatar = freezed,
    Object? storeDetails = freezed,
    Object? institutionId = freezed,
  }) {
    return _then(_value.copyWith(
      paidAmount: freezed == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentIdempotencyId: freezed == paymentIdempotencyId
          ? _value.paymentIdempotencyId
          : paymentIdempotencyId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      statusDetails: freezed == statusDetails
          ? _value.statusDetails
          : statusDetails // ignore: cast_nullable_to_non_nullable
              as TransactionStatusDetails?,
      merchantId: freezed == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantName: freezed == merchantName
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      storeDetails: freezed == storeDetails
          ? _value.storeDetails
          : storeDetails // ignore: cast_nullable_to_non_nullable
              as StoreDetails?,
      institutionId: freezed == institutionId
          ? _value.institutionId
          : institutionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of TransactionDetailsTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionStatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $TransactionStatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of TransactionDetailsTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionStatusDetailsCopyWith<$Res>? get statusDetails {
    if (_value.statusDetails == null) {
      return null;
    }

    return $TransactionStatusDetailsCopyWith<$Res>(_value.statusDetails!,
        (value) {
      return _then(_value.copyWith(statusDetails: value) as $Val);
    });
  }

  /// Create a copy of TransactionDetailsTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreDetailsCopyWith<$Res>? get storeDetails {
    if (_value.storeDetails == null) {
      return null;
    }

    return $StoreDetailsCopyWith<$Res>(_value.storeDetails!, (value) {
      return _then(_value.copyWith(storeDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionDetailsTransactionImplCopyWith<$Res>
    implements $TransactionDetailsTransactionCopyWith<$Res> {
  factory _$$TransactionDetailsTransactionImplCopyWith(
          _$TransactionDetailsTransactionImpl value,
          $Res Function(_$TransactionDetailsTransactionImpl) then) =
      __$$TransactionDetailsTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseAmount) double? paidAmount,
      String? currency,
      @JsonKey(fromJson: TransactionStatus.fromJson, includeToJson: false)
      TransactionStatus? status,
      String? createdAt,
      String? paymentIdempotencyId,
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
      String? orderId,
      TransactionStatusDetails? statusDetails,
      String? merchantId,
      String? merchantName,
      String? avatar,
      StoreDetails? storeDetails,
      String? institutionId});

  @override
  $TransactionStatusCopyWith<$Res>? get status;
  @override
  $TransactionStatusDetailsCopyWith<$Res>? get statusDetails;
  @override
  $StoreDetailsCopyWith<$Res>? get storeDetails;
}

/// @nodoc
class __$$TransactionDetailsTransactionImplCopyWithImpl<$Res>
    extends _$TransactionDetailsTransactionCopyWithImpl<$Res,
        _$TransactionDetailsTransactionImpl>
    implements _$$TransactionDetailsTransactionImplCopyWith<$Res> {
  __$$TransactionDetailsTransactionImplCopyWithImpl(
      _$TransactionDetailsTransactionImpl _value,
      $Res Function(_$TransactionDetailsTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionDetailsTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paidAmount = freezed,
    Object? currency = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? paymentIdempotencyId = freezed,
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
    Object? statusDetails = freezed,
    Object? merchantId = freezed,
    Object? merchantName = freezed,
    Object? avatar = freezed,
    Object? storeDetails = freezed,
    Object? institutionId = freezed,
  }) {
    return _then(_$TransactionDetailsTransactionImpl(
      paidAmount: freezed == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentIdempotencyId: freezed == paymentIdempotencyId
          ? _value.paymentIdempotencyId
          : paymentIdempotencyId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      statusDetails: freezed == statusDetails
          ? _value.statusDetails
          : statusDetails // ignore: cast_nullable_to_non_nullable
              as TransactionStatusDetails?,
      merchantId: freezed == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantName: freezed == merchantName
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      storeDetails: freezed == storeDetails
          ? _value.storeDetails
          : storeDetails // ignore: cast_nullable_to_non_nullable
              as StoreDetails?,
      institutionId: freezed == institutionId
          ? _value.institutionId
          : institutionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionDetailsTransactionImpl
    extends _TransactionDetailsTransaction {
  _$TransactionDetailsTransactionImpl(
      {@JsonKey(fromJson: _parseAmount) this.paidAmount,
      this.currency,
      @JsonKey(fromJson: TransactionStatus.fromJson, includeToJson: false)
      this.status,
      this.createdAt,
      this.paymentIdempotencyId,
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
      this.orderId,
      this.statusDetails,
      this.merchantId,
      this.merchantName,
      this.avatar,
      this.storeDetails,
      this.institutionId})
      : super._();

  factory _$TransactionDetailsTransactionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TransactionDetailsTransactionImplFromJson(json);

  /// The amount paid for the transaction.
  @override
  @JsonKey(fromJson: _parseAmount)
  final double? paidAmount;

  /// The currency in which the transaction was made.
  @override
  final String? currency;

  /// Current status of the transaction.
  @override
  @JsonKey(fromJson: TransactionStatus.fromJson, includeToJson: false)
  final TransactionStatus? status;

  /// The date and time when the transaction was created.
  @override
  final String? createdAt;

  /// Unique identifier for the payment request.
  @override
  final String? paymentIdempotencyId;

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
  final TransactionStatusDetails? statusDetails;
  @override
  final String? merchantId;
  @override
  final String? merchantName;
  @override
  final String? avatar;
  @override
  final StoreDetails? storeDetails;
  @override
  final String? institutionId;

  @override
  String toString() {
    return 'TransactionDetailsTransaction(paidAmount: $paidAmount, currency: $currency, status: $status, createdAt: $createdAt, paymentIdempotencyId: $paymentIdempotencyId, paymentId: $paymentId, updatedAt: $updatedAt, bankName: $bankName, bankAccountNo: $bankAccountNo, notes: $notes, taxAmount: $taxAmount, serviceAmount: $serviceAmount, tipAmount: $tipAmount, qrId: $qrId, storeId: $storeId, qrNickName: $qrNickName, errorDescription: $errorDescription, paymentSourceType: $paymentSourceType, paymentLinkId: $paymentLinkId, employeeId: $employeeId, pendingTrasactionError: $pendingTrasactionError, orderId: $orderId, statusDetails: $statusDetails, merchantId: $merchantId, merchantName: $merchantName, avatar: $avatar, storeDetails: $storeDetails, institutionId: $institutionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDetailsTransactionImpl &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.paymentIdempotencyId, paymentIdempotencyId) ||
                other.paymentIdempotencyId == paymentIdempotencyId) &&
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
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.statusDetails, statusDetails) ||
                other.statusDetails == statusDetails) &&
            (identical(other.merchantId, merchantId) ||
                other.merchantId == merchantId) &&
            (identical(other.merchantName, merchantName) ||
                other.merchantName == merchantName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.storeDetails, storeDetails) ||
                other.storeDetails == storeDetails) &&
            (identical(other.institutionId, institutionId) ||
                other.institutionId == institutionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        paidAmount,
        currency,
        status,
        createdAt,
        paymentIdempotencyId,
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
        orderId,
        statusDetails,
        merchantId,
        merchantName,
        avatar,
        storeDetails,
        institutionId
      ]);

  /// Create a copy of TransactionDetailsTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDetailsTransactionImplCopyWith<
          _$TransactionDetailsTransactionImpl>
      get copyWith => __$$TransactionDetailsTransactionImplCopyWithImpl<
          _$TransactionDetailsTransactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDetailsTransactionImplToJson(
      this,
    );
  }
}

abstract class _TransactionDetailsTransaction
    extends TransactionDetailsTransaction {
  factory _TransactionDetailsTransaction(
      {@JsonKey(fromJson: _parseAmount) final double? paidAmount,
      final String? currency,
      @JsonKey(fromJson: TransactionStatus.fromJson, includeToJson: false)
      final TransactionStatus? status,
      final String? createdAt,
      final String? paymentIdempotencyId,
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
      final String? orderId,
      final TransactionStatusDetails? statusDetails,
      final String? merchantId,
      final String? merchantName,
      final String? avatar,
      final StoreDetails? storeDetails,
      final String? institutionId}) = _$TransactionDetailsTransactionImpl;
  _TransactionDetailsTransaction._() : super._();

  factory _TransactionDetailsTransaction.fromJson(Map<String, dynamic> json) =
      _$TransactionDetailsTransactionImpl.fromJson;

  /// The amount paid for the transaction.
  @override
  @JsonKey(fromJson: _parseAmount)
  double? get paidAmount;

  /// The currency in which the transaction was made.
  @override
  String? get currency;

  /// Current status of the transaction.
  @override
  @JsonKey(fromJson: TransactionStatus.fromJson, includeToJson: false)
  TransactionStatus? get status;

  /// The date and time when the transaction was created.
  @override
  String? get createdAt;

  /// Unique identifier for the payment request.
  @override
  String? get paymentIdempotencyId;

  /// Optional: Unique identifier for the payment, if available.
  @override
  String? get paymentId;

  /// Optional: The date and time when the transaction was last updated.
  @override
  String? get updatedAt;

  /// Optional: The name of the bank used for the transaction.
  @override
  String? get bankName;

  /// Optional: The bank account number used for the transaction.
  @override
  String? get bankAccountNo;

  /// Optional: Additional notes related to the transaction.
  @override
  String? get notes;

  /// Optional: The tax amount associated with the transaction.
  @override
  @JsonKey(fromJson: _parseAmount)
  double? get taxAmount;

  /// Optional: The service charge amount associated with the transaction.
  @override
  @JsonKey(fromJson: _parseAmount)
  double? get serviceAmount;

  /// Optional: The tip amount associated with the transaction.
  @override
  @JsonKey(fromJson: _parseAmount)
  double? get tipAmount;

  /// Optional: The QR code identifier associated with the transaction.
  @override
  String? get qrId;

  /// Optional: The store identifier where the transaction took place.
  @override
  String? get storeId;

  /// Optional: Nickname associated with the QR code used for the transaction.
  @override
  String? get qrNickName;

  /// Optional: Description of any errors occurred during the transaction.
  @override
  String? get errorDescription;

  /// Default: 3. Type of payment source used for the transaction.
  @override
  int get paymentSourceType;

  /// Optional: Unique identifier for linking payments across systems.
  @override
  String? get paymentLinkId;

  /// Optional: Unique identifier for the employee associated with the transaction.
  @override
  String? get employeeId;

  /// Optional: Description of any pending transaction errors.
  @override
  String? get pendingTrasactionError;

  /// Optional: Unique identifier for the order associated with the transaction.
  @override
  String? get orderId;
  @override
  TransactionStatusDetails? get statusDetails;
  @override
  String? get merchantId;
  @override
  String? get merchantName;
  @override
  String? get avatar;
  @override
  StoreDetails? get storeDetails;
  @override
  String? get institutionId;

  /// Create a copy of TransactionDetailsTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionDetailsTransactionImplCopyWith<
          _$TransactionDetailsTransactionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
