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
  /// The amount paid for the transaction.
  @JsonKey(fromJson: _parseAmount)
  double get paidAmount => throw _privateConstructorUsedError;

  /// Current status of the transaction.
  @JsonKey(fromJson: TransactionStatus.fromJson, includeToJson: false)
  TransactionStatus get status => throw _privateConstructorUsedError;

  /// The currency in which the transaction was made.
  String? get currency => throw _privateConstructorUsedError;

  /// Unique identifier for the application user initiating the transaction.
  String? get applicationUserId => throw _privateConstructorUsedError;

  /// Optional: Unique identifier for the payment, if available.
  String? get paymentRequestId => throw _privateConstructorUsedError;

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

  /// Optional: Nickname associated with the QR code used for the transaction.
  String? get qrNickName => throw _privateConstructorUsedError;

  /// Optional: Unique identifier for the order associated with the transaction.
  String? get orderId => throw _privateConstructorUsedError;
  TransactionStatusDetails? get statusDetails =>
      throw _privateConstructorUsedError;
  String? get merchantId => throw _privateConstructorUsedError;
  PayerBankDetails? get payer => throw _privateConstructorUsedError;
  String? get merchantName => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  StoreDetails? get storeDetails => throw _privateConstructorUsedError;
  List<TransactionDetailsTransaction?> get transactionDetails =>
      throw _privateConstructorUsedError;

  /// Serializes this TransactionDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {@JsonKey(fromJson: _parseAmount) double paidAmount,
      @JsonKey(fromJson: TransactionStatus.fromJson, includeToJson: false)
      TransactionStatus status,
      String? currency,
      String? applicationUserId,
      String? paymentRequestId,
      @JsonKey(fromJson: _parseAmount) double? taxAmount,
      @JsonKey(fromJson: _parseAmount) double? serviceAmount,
      @JsonKey(fromJson: _parseAmount) double? tipAmount,
      String? qrId,
      String? qrNickName,
      String? orderId,
      TransactionStatusDetails? statusDetails,
      String? merchantId,
      PayerBankDetails? payer,
      String? merchantName,
      String? avatar,
      StoreDetails? storeDetails,
      List<TransactionDetailsTransaction?> transactionDetails});

  $TransactionStatusCopyWith<$Res> get status;
  $TransactionStatusDetailsCopyWith<$Res>? get statusDetails;
  $PayerBankDetailsCopyWith<$Res>? get payer;
  $StoreDetailsCopyWith<$Res>? get storeDetails;
}

/// @nodoc
class _$TransactionDetailsCopyWithImpl<$Res, $Val extends TransactionDetails>
    implements $TransactionDetailsCopyWith<$Res> {
  _$TransactionDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paidAmount = null,
    Object? status = null,
    Object? currency = freezed,
    Object? applicationUserId = freezed,
    Object? paymentRequestId = freezed,
    Object? taxAmount = freezed,
    Object? serviceAmount = freezed,
    Object? tipAmount = freezed,
    Object? qrId = freezed,
    Object? qrNickName = freezed,
    Object? orderId = freezed,
    Object? statusDetails = freezed,
    Object? merchantId = freezed,
    Object? payer = freezed,
    Object? merchantName = freezed,
    Object? avatar = freezed,
    Object? storeDetails = freezed,
    Object? transactionDetails = null,
  }) {
    return _then(_value.copyWith(
      paidAmount: null == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationUserId: freezed == applicationUserId
          ? _value.applicationUserId
          : applicationUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentRequestId: freezed == paymentRequestId
          ? _value.paymentRequestId
          : paymentRequestId // ignore: cast_nullable_to_non_nullable
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
      qrNickName: freezed == qrNickName
          ? _value.qrNickName
          : qrNickName // ignore: cast_nullable_to_non_nullable
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
      payer: freezed == payer
          ? _value.payer
          : payer // ignore: cast_nullable_to_non_nullable
              as PayerBankDetails?,
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
      transactionDetails: null == transactionDetails
          ? _value.transactionDetails
          : transactionDetails // ignore: cast_nullable_to_non_nullable
              as List<TransactionDetailsTransaction?>,
    ) as $Val);
  }

  /// Create a copy of TransactionDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionStatusCopyWith<$Res> get status {
    return $TransactionStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of TransactionDetails
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

  /// Create a copy of TransactionDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayerBankDetailsCopyWith<$Res>? get payer {
    if (_value.payer == null) {
      return null;
    }

    return $PayerBankDetailsCopyWith<$Res>(_value.payer!, (value) {
      return _then(_value.copyWith(payer: value) as $Val);
    });
  }

  /// Create a copy of TransactionDetails
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
abstract class _$$TransactionDetailsImplCopyWith<$Res>
    implements $TransactionDetailsCopyWith<$Res> {
  factory _$$TransactionDetailsImplCopyWith(_$TransactionDetailsImpl value,
          $Res Function(_$TransactionDetailsImpl) then) =
      __$$TransactionDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseAmount) double paidAmount,
      @JsonKey(fromJson: TransactionStatus.fromJson, includeToJson: false)
      TransactionStatus status,
      String? currency,
      String? applicationUserId,
      String? paymentRequestId,
      @JsonKey(fromJson: _parseAmount) double? taxAmount,
      @JsonKey(fromJson: _parseAmount) double? serviceAmount,
      @JsonKey(fromJson: _parseAmount) double? tipAmount,
      String? qrId,
      String? qrNickName,
      String? orderId,
      TransactionStatusDetails? statusDetails,
      String? merchantId,
      PayerBankDetails? payer,
      String? merchantName,
      String? avatar,
      StoreDetails? storeDetails,
      List<TransactionDetailsTransaction?> transactionDetails});

  @override
  $TransactionStatusCopyWith<$Res> get status;
  @override
  $TransactionStatusDetailsCopyWith<$Res>? get statusDetails;
  @override
  $PayerBankDetailsCopyWith<$Res>? get payer;
  @override
  $StoreDetailsCopyWith<$Res>? get storeDetails;
}

/// @nodoc
class __$$TransactionDetailsImplCopyWithImpl<$Res>
    extends _$TransactionDetailsCopyWithImpl<$Res, _$TransactionDetailsImpl>
    implements _$$TransactionDetailsImplCopyWith<$Res> {
  __$$TransactionDetailsImplCopyWithImpl(_$TransactionDetailsImpl _value,
      $Res Function(_$TransactionDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paidAmount = null,
    Object? status = null,
    Object? currency = freezed,
    Object? applicationUserId = freezed,
    Object? paymentRequestId = freezed,
    Object? taxAmount = freezed,
    Object? serviceAmount = freezed,
    Object? tipAmount = freezed,
    Object? qrId = freezed,
    Object? qrNickName = freezed,
    Object? orderId = freezed,
    Object? statusDetails = freezed,
    Object? merchantId = freezed,
    Object? payer = freezed,
    Object? merchantName = freezed,
    Object? avatar = freezed,
    Object? storeDetails = freezed,
    Object? transactionDetails = null,
  }) {
    return _then(_$TransactionDetailsImpl(
      paidAmount: null == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationUserId: freezed == applicationUserId
          ? _value.applicationUserId
          : applicationUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentRequestId: freezed == paymentRequestId
          ? _value.paymentRequestId
          : paymentRequestId // ignore: cast_nullable_to_non_nullable
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
      qrNickName: freezed == qrNickName
          ? _value.qrNickName
          : qrNickName // ignore: cast_nullable_to_non_nullable
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
      payer: freezed == payer
          ? _value.payer
          : payer // ignore: cast_nullable_to_non_nullable
              as PayerBankDetails?,
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
      transactionDetails: null == transactionDetails
          ? _value._transactionDetails
          : transactionDetails // ignore: cast_nullable_to_non_nullable
              as List<TransactionDetailsTransaction?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionDetailsImpl extends _TransactionDetails {
  _$TransactionDetailsImpl(
      {@JsonKey(fromJson: _parseAmount) required this.paidAmount,
      @JsonKey(fromJson: TransactionStatus.fromJson, includeToJson: false)
      required this.status,
      this.currency,
      this.applicationUserId,
      this.paymentRequestId,
      @JsonKey(fromJson: _parseAmount) this.taxAmount = 0.0,
      @JsonKey(fromJson: _parseAmount) this.serviceAmount = 0.0,
      @JsonKey(fromJson: _parseAmount) this.tipAmount = 0.0,
      this.qrId,
      this.qrNickName,
      this.orderId,
      this.statusDetails,
      this.merchantId,
      this.payer,
      this.merchantName,
      this.avatar,
      this.storeDetails,
      final List<TransactionDetailsTransaction?> transactionDetails = const []})
      : _transactionDetails = transactionDetails,
        super._();

  factory _$TransactionDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionDetailsImplFromJson(json);

  /// The amount paid for the transaction.
  @override
  @JsonKey(fromJson: _parseAmount)
  final double paidAmount;

  /// Current status of the transaction.
  @override
  @JsonKey(fromJson: TransactionStatus.fromJson, includeToJson: false)
  final TransactionStatus status;

  /// The currency in which the transaction was made.
  @override
  final String? currency;

  /// Unique identifier for the application user initiating the transaction.
  @override
  final String? applicationUserId;

  /// Optional: Unique identifier for the payment, if available.
  @override
  final String? paymentRequestId;

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

  /// Optional: Nickname associated with the QR code used for the transaction.
  @override
  final String? qrNickName;

  /// Optional: Unique identifier for the order associated with the transaction.
  @override
  final String? orderId;
  @override
  final TransactionStatusDetails? statusDetails;
  @override
  final String? merchantId;
  @override
  final PayerBankDetails? payer;
  @override
  final String? merchantName;
  @override
  final String? avatar;
  @override
  final StoreDetails? storeDetails;
  final List<TransactionDetailsTransaction?> _transactionDetails;
  @override
  @JsonKey()
  List<TransactionDetailsTransaction?> get transactionDetails {
    if (_transactionDetails is EqualUnmodifiableListView)
      return _transactionDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactionDetails);
  }

  @override
  String toString() {
    return 'TransactionDetails(paidAmount: $paidAmount, status: $status, currency: $currency, applicationUserId: $applicationUserId, paymentRequestId: $paymentRequestId, taxAmount: $taxAmount, serviceAmount: $serviceAmount, tipAmount: $tipAmount, qrId: $qrId, qrNickName: $qrNickName, orderId: $orderId, statusDetails: $statusDetails, merchantId: $merchantId, payer: $payer, merchantName: $merchantName, avatar: $avatar, storeDetails: $storeDetails, transactionDetails: $transactionDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDetailsImpl &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.applicationUserId, applicationUserId) ||
                other.applicationUserId == applicationUserId) &&
            (identical(other.paymentRequestId, paymentRequestId) ||
                other.paymentRequestId == paymentRequestId) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.serviceAmount, serviceAmount) ||
                other.serviceAmount == serviceAmount) &&
            (identical(other.tipAmount, tipAmount) ||
                other.tipAmount == tipAmount) &&
            (identical(other.qrId, qrId) || other.qrId == qrId) &&
            (identical(other.qrNickName, qrNickName) ||
                other.qrNickName == qrNickName) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.statusDetails, statusDetails) ||
                other.statusDetails == statusDetails) &&
            (identical(other.merchantId, merchantId) ||
                other.merchantId == merchantId) &&
            (identical(other.payer, payer) || other.payer == payer) &&
            (identical(other.merchantName, merchantName) ||
                other.merchantName == merchantName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.storeDetails, storeDetails) ||
                other.storeDetails == storeDetails) &&
            const DeepCollectionEquality()
                .equals(other._transactionDetails, _transactionDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      paidAmount,
      status,
      currency,
      applicationUserId,
      paymentRequestId,
      taxAmount,
      serviceAmount,
      tipAmount,
      qrId,
      qrNickName,
      orderId,
      statusDetails,
      merchantId,
      payer,
      merchantName,
      avatar,
      storeDetails,
      const DeepCollectionEquality().hash(_transactionDetails));

  /// Create a copy of TransactionDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
          {@JsonKey(fromJson: _parseAmount) required final double paidAmount,
          @JsonKey(fromJson: TransactionStatus.fromJson, includeToJson: false)
          required final TransactionStatus status,
          final String? currency,
          final String? applicationUserId,
          final String? paymentRequestId,
          @JsonKey(fromJson: _parseAmount) final double? taxAmount,
          @JsonKey(fromJson: _parseAmount) final double? serviceAmount,
          @JsonKey(fromJson: _parseAmount) final double? tipAmount,
          final String? qrId,
          final String? qrNickName,
          final String? orderId,
          final TransactionStatusDetails? statusDetails,
          final String? merchantId,
          final PayerBankDetails? payer,
          final String? merchantName,
          final String? avatar,
          final StoreDetails? storeDetails,
          final List<TransactionDetailsTransaction?> transactionDetails}) =
      _$TransactionDetailsImpl;
  _TransactionDetails._() : super._();

  factory _TransactionDetails.fromJson(Map<String, dynamic> json) =
      _$TransactionDetailsImpl.fromJson;

  /// The amount paid for the transaction.
  @override
  @JsonKey(fromJson: _parseAmount)
  double get paidAmount;

  /// Current status of the transaction.
  @override
  @JsonKey(fromJson: TransactionStatus.fromJson, includeToJson: false)
  TransactionStatus get status;

  /// The currency in which the transaction was made.
  @override
  String? get currency;

  /// Unique identifier for the application user initiating the transaction.
  @override
  String? get applicationUserId;

  /// Optional: Unique identifier for the payment, if available.
  @override
  String? get paymentRequestId;

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

  /// Optional: Nickname associated with the QR code used for the transaction.
  @override
  String? get qrNickName;

  /// Optional: Unique identifier for the order associated with the transaction.
  @override
  String? get orderId;
  @override
  TransactionStatusDetails? get statusDetails;
  @override
  String? get merchantId;
  @override
  PayerBankDetails? get payer;
  @override
  String? get merchantName;
  @override
  String? get avatar;
  @override
  StoreDetails? get storeDetails;
  @override
  List<TransactionDetailsTransaction?> get transactionDetails;

  /// Create a copy of TransactionDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionDetailsImplCopyWith<_$TransactionDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
