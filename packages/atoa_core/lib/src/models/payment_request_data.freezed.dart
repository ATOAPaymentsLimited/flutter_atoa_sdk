// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentRequestData _$PaymentRequestDataFromJson(Map<String, dynamic> json) {
  return _PaymentRequestData.fromJson(json);
}

/// @nodoc
mixin _$PaymentRequestData {
  String get merchantBusinessName => throw _privateConstructorUsedError;
  String get merchantId => throw _privateConstructorUsedError;
  Amount get amount => throw _privateConstructorUsedError;
  double get taxPercentage => throw _privateConstructorUsedError;
  double get servicePercentage => throw _privateConstructorUsedError;
  String? get employeeId => throw _privateConstructorUsedError;
  String? get customerId => throw _privateConstructorUsedError;
  String? get consumerId => throw _privateConstructorUsedError;
  String? get env => throw _privateConstructorUsedError;
  String? get encryptedNotesDetails => throw _privateConstructorUsedError;
  String? get encryptedQrDetails => throw _privateConstructorUsedError;
  String? get merchantNotes => throw _privateConstructorUsedError;
  double? get splitOutstandingAmount => throw _privateConstructorUsedError;
  String? get callbackParams => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  PaymentRequestWithSource? get paymentRequestSource =>
      throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get storeImg => throw _privateConstructorUsedError;
  String? get contextType => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  FraudDetails? get fraudDetails => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  StoreDetails? get storeDetails => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  MerchantPayeeAddress? get address => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get paymentType => throw _privateConstructorUsedError;
  @parseToNumNull
  num? get expiresIn => throw _privateConstructorUsedError;
  String? get requestCreatedAt => throw _privateConstructorUsedError;
  bool? get strictExpiry => throw _privateConstructorUsedError;
  bool? get allowSdkRetry => throw _privateConstructorUsedError;
  bool get splitBill => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  Map<String, dynamic>? get options => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  MerchantThemeDetails? get merchantThemeDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  SavedBankDetails? get lastPaymentBankDetails =>
      throw _privateConstructorUsedError;
  String? get encryptedPaymentDetails => throw _privateConstructorUsedError;
  String? get encryptedRefundPaymentDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  QrDetails? get qrDetails => throw _privateConstructorUsedError;
  int? get paymentSourceType => throw _privateConstructorUsedError;
  bool? get redirectOnCompleted => throw _privateConstructorUsedError;

  /// Serializes this PaymentRequestData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentRequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentRequestDataCopyWith<PaymentRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentRequestDataCopyWith<$Res> {
  factory $PaymentRequestDataCopyWith(
          PaymentRequestData value, $Res Function(PaymentRequestData) then) =
      _$PaymentRequestDataCopyWithImpl<$Res, PaymentRequestData>;
  @useResult
  $Res call(
      {String merchantBusinessName,
      String merchantId,
      Amount amount,
      double taxPercentage,
      double servicePercentage,
      String? employeeId,
      String? customerId,
      String? consumerId,
      String? env,
      String? encryptedNotesDetails,
      String? encryptedQrDetails,
      String? merchantNotes,
      double? splitOutstandingAmount,
      String? callbackParams,
      @JsonKey(includeFromJson: false, includeToJson: false)
      PaymentRequestWithSource? paymentRequestSource,
      String? notes,
      String? storeImg,
      String? contextType,
      @JsonKey(includeIfNull: false) FraudDetails? fraudDetails,
      @JsonKey(includeIfNull: false) StoreDetails? storeDetails,
      @JsonKey(includeIfNull: false) MerchantPayeeAddress? address,
      @JsonKey(includeIfNull: false) String? paymentType,
      @parseToNumNull num? expiresIn,
      String? requestCreatedAt,
      bool? strictExpiry,
      bool? allowSdkRetry,
      bool splitBill,
      @JsonKey(includeIfNull: false) Map<String, dynamic>? options,
      @JsonKey(includeIfNull: false) MerchantThemeDetails? merchantThemeDetails,
      @JsonKey(includeIfNull: false) SavedBankDetails? lastPaymentBankDetails,
      String? encryptedPaymentDetails,
      String? encryptedRefundPaymentDetails,
      @JsonKey(includeIfNull: false) QrDetails? qrDetails,
      int? paymentSourceType,
      bool? redirectOnCompleted});

  $AmountCopyWith<$Res> get amount;
  $PaymentRequestWithSourceCopyWith<$Res>? get paymentRequestSource;
  $FraudDetailsCopyWith<$Res>? get fraudDetails;
  $StoreDetailsCopyWith<$Res>? get storeDetails;
  $MerchantPayeeAddressCopyWith<$Res>? get address;
  $MerchantThemeDetailsCopyWith<$Res>? get merchantThemeDetails;
  $SavedBankDetailsCopyWith<$Res>? get lastPaymentBankDetails;
  $QrDetailsCopyWith<$Res>? get qrDetails;
}

/// @nodoc
class _$PaymentRequestDataCopyWithImpl<$Res, $Val extends PaymentRequestData>
    implements $PaymentRequestDataCopyWith<$Res> {
  _$PaymentRequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentRequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantBusinessName = null,
    Object? merchantId = null,
    Object? amount = null,
    Object? taxPercentage = null,
    Object? servicePercentage = null,
    Object? employeeId = freezed,
    Object? customerId = freezed,
    Object? consumerId = freezed,
    Object? env = freezed,
    Object? encryptedNotesDetails = freezed,
    Object? encryptedQrDetails = freezed,
    Object? merchantNotes = freezed,
    Object? splitOutstandingAmount = freezed,
    Object? callbackParams = freezed,
    Object? paymentRequestSource = freezed,
    Object? notes = freezed,
    Object? storeImg = freezed,
    Object? contextType = freezed,
    Object? fraudDetails = freezed,
    Object? storeDetails = freezed,
    Object? address = freezed,
    Object? paymentType = freezed,
    Object? expiresIn = freezed,
    Object? requestCreatedAt = freezed,
    Object? strictExpiry = freezed,
    Object? allowSdkRetry = freezed,
    Object? splitBill = null,
    Object? options = freezed,
    Object? merchantThemeDetails = freezed,
    Object? lastPaymentBankDetails = freezed,
    Object? encryptedPaymentDetails = freezed,
    Object? encryptedRefundPaymentDetails = freezed,
    Object? qrDetails = freezed,
    Object? paymentSourceType = freezed,
    Object? redirectOnCompleted = freezed,
  }) {
    return _then(_value.copyWith(
      merchantBusinessName: null == merchantBusinessName
          ? _value.merchantBusinessName
          : merchantBusinessName // ignore: cast_nullable_to_non_nullable
              as String,
      merchantId: null == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount,
      taxPercentage: null == taxPercentage
          ? _value.taxPercentage
          : taxPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      servicePercentage: null == servicePercentage
          ? _value.servicePercentage
          : servicePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      consumerId: freezed == consumerId
          ? _value.consumerId
          : consumerId // ignore: cast_nullable_to_non_nullable
              as String?,
      env: freezed == env
          ? _value.env
          : env // ignore: cast_nullable_to_non_nullable
              as String?,
      encryptedNotesDetails: freezed == encryptedNotesDetails
          ? _value.encryptedNotesDetails
          : encryptedNotesDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      encryptedQrDetails: freezed == encryptedQrDetails
          ? _value.encryptedQrDetails
          : encryptedQrDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantNotes: freezed == merchantNotes
          ? _value.merchantNotes
          : merchantNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      splitOutstandingAmount: freezed == splitOutstandingAmount
          ? _value.splitOutstandingAmount
          : splitOutstandingAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      callbackParams: freezed == callbackParams
          ? _value.callbackParams
          : callbackParams // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentRequestSource: freezed == paymentRequestSource
          ? _value.paymentRequestSource
          : paymentRequestSource // ignore: cast_nullable_to_non_nullable
              as PaymentRequestWithSource?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      storeImg: freezed == storeImg
          ? _value.storeImg
          : storeImg // ignore: cast_nullable_to_non_nullable
              as String?,
      contextType: freezed == contextType
          ? _value.contextType
          : contextType // ignore: cast_nullable_to_non_nullable
              as String?,
      fraudDetails: freezed == fraudDetails
          ? _value.fraudDetails
          : fraudDetails // ignore: cast_nullable_to_non_nullable
              as FraudDetails?,
      storeDetails: freezed == storeDetails
          ? _value.storeDetails
          : storeDetails // ignore: cast_nullable_to_non_nullable
              as StoreDetails?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as MerchantPayeeAddress?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as num?,
      requestCreatedAt: freezed == requestCreatedAt
          ? _value.requestCreatedAt
          : requestCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      strictExpiry: freezed == strictExpiry
          ? _value.strictExpiry
          : strictExpiry // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowSdkRetry: freezed == allowSdkRetry
          ? _value.allowSdkRetry
          : allowSdkRetry // ignore: cast_nullable_to_non_nullable
              as bool?,
      splitBill: null == splitBill
          ? _value.splitBill
          : splitBill // ignore: cast_nullable_to_non_nullable
              as bool,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      merchantThemeDetails: freezed == merchantThemeDetails
          ? _value.merchantThemeDetails
          : merchantThemeDetails // ignore: cast_nullable_to_non_nullable
              as MerchantThemeDetails?,
      lastPaymentBankDetails: freezed == lastPaymentBankDetails
          ? _value.lastPaymentBankDetails
          : lastPaymentBankDetails // ignore: cast_nullable_to_non_nullable
              as SavedBankDetails?,
      encryptedPaymentDetails: freezed == encryptedPaymentDetails
          ? _value.encryptedPaymentDetails
          : encryptedPaymentDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      encryptedRefundPaymentDetails: freezed == encryptedRefundPaymentDetails
          ? _value.encryptedRefundPaymentDetails
          : encryptedRefundPaymentDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      qrDetails: freezed == qrDetails
          ? _value.qrDetails
          : qrDetails // ignore: cast_nullable_to_non_nullable
              as QrDetails?,
      paymentSourceType: freezed == paymentSourceType
          ? _value.paymentSourceType
          : paymentSourceType // ignore: cast_nullable_to_non_nullable
              as int?,
      redirectOnCompleted: freezed == redirectOnCompleted
          ? _value.redirectOnCompleted
          : redirectOnCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of PaymentRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AmountCopyWith<$Res> get amount {
    return $AmountCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }

  /// Create a copy of PaymentRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentRequestWithSourceCopyWith<$Res>? get paymentRequestSource {
    if (_value.paymentRequestSource == null) {
      return null;
    }

    return $PaymentRequestWithSourceCopyWith<$Res>(_value.paymentRequestSource!,
        (value) {
      return _then(_value.copyWith(paymentRequestSource: value) as $Val);
    });
  }

  /// Create a copy of PaymentRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FraudDetailsCopyWith<$Res>? get fraudDetails {
    if (_value.fraudDetails == null) {
      return null;
    }

    return $FraudDetailsCopyWith<$Res>(_value.fraudDetails!, (value) {
      return _then(_value.copyWith(fraudDetails: value) as $Val);
    });
  }

  /// Create a copy of PaymentRequestData
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

  /// Create a copy of PaymentRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MerchantPayeeAddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $MerchantPayeeAddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  /// Create a copy of PaymentRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MerchantThemeDetailsCopyWith<$Res>? get merchantThemeDetails {
    if (_value.merchantThemeDetails == null) {
      return null;
    }

    return $MerchantThemeDetailsCopyWith<$Res>(_value.merchantThemeDetails!,
        (value) {
      return _then(_value.copyWith(merchantThemeDetails: value) as $Val);
    });
  }

  /// Create a copy of PaymentRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SavedBankDetailsCopyWith<$Res>? get lastPaymentBankDetails {
    if (_value.lastPaymentBankDetails == null) {
      return null;
    }

    return $SavedBankDetailsCopyWith<$Res>(_value.lastPaymentBankDetails!,
        (value) {
      return _then(_value.copyWith(lastPaymentBankDetails: value) as $Val);
    });
  }

  /// Create a copy of PaymentRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QrDetailsCopyWith<$Res>? get qrDetails {
    if (_value.qrDetails == null) {
      return null;
    }

    return $QrDetailsCopyWith<$Res>(_value.qrDetails!, (value) {
      return _then(_value.copyWith(qrDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentRequestDataImplCopyWith<$Res>
    implements $PaymentRequestDataCopyWith<$Res> {
  factory _$$PaymentRequestDataImplCopyWith(_$PaymentRequestDataImpl value,
          $Res Function(_$PaymentRequestDataImpl) then) =
      __$$PaymentRequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String merchantBusinessName,
      String merchantId,
      Amount amount,
      double taxPercentage,
      double servicePercentage,
      String? employeeId,
      String? customerId,
      String? consumerId,
      String? env,
      String? encryptedNotesDetails,
      String? encryptedQrDetails,
      String? merchantNotes,
      double? splitOutstandingAmount,
      String? callbackParams,
      @JsonKey(includeFromJson: false, includeToJson: false)
      PaymentRequestWithSource? paymentRequestSource,
      String? notes,
      String? storeImg,
      String? contextType,
      @JsonKey(includeIfNull: false) FraudDetails? fraudDetails,
      @JsonKey(includeIfNull: false) StoreDetails? storeDetails,
      @JsonKey(includeIfNull: false) MerchantPayeeAddress? address,
      @JsonKey(includeIfNull: false) String? paymentType,
      @parseToNumNull num? expiresIn,
      String? requestCreatedAt,
      bool? strictExpiry,
      bool? allowSdkRetry,
      bool splitBill,
      @JsonKey(includeIfNull: false) Map<String, dynamic>? options,
      @JsonKey(includeIfNull: false) MerchantThemeDetails? merchantThemeDetails,
      @JsonKey(includeIfNull: false) SavedBankDetails? lastPaymentBankDetails,
      String? encryptedPaymentDetails,
      String? encryptedRefundPaymentDetails,
      @JsonKey(includeIfNull: false) QrDetails? qrDetails,
      int? paymentSourceType,
      bool? redirectOnCompleted});

  @override
  $AmountCopyWith<$Res> get amount;
  @override
  $PaymentRequestWithSourceCopyWith<$Res>? get paymentRequestSource;
  @override
  $FraudDetailsCopyWith<$Res>? get fraudDetails;
  @override
  $StoreDetailsCopyWith<$Res>? get storeDetails;
  @override
  $MerchantPayeeAddressCopyWith<$Res>? get address;
  @override
  $MerchantThemeDetailsCopyWith<$Res>? get merchantThemeDetails;
  @override
  $SavedBankDetailsCopyWith<$Res>? get lastPaymentBankDetails;
  @override
  $QrDetailsCopyWith<$Res>? get qrDetails;
}

/// @nodoc
class __$$PaymentRequestDataImplCopyWithImpl<$Res>
    extends _$PaymentRequestDataCopyWithImpl<$Res, _$PaymentRequestDataImpl>
    implements _$$PaymentRequestDataImplCopyWith<$Res> {
  __$$PaymentRequestDataImplCopyWithImpl(_$PaymentRequestDataImpl _value,
      $Res Function(_$PaymentRequestDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentRequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantBusinessName = null,
    Object? merchantId = null,
    Object? amount = null,
    Object? taxPercentage = null,
    Object? servicePercentage = null,
    Object? employeeId = freezed,
    Object? customerId = freezed,
    Object? consumerId = freezed,
    Object? env = freezed,
    Object? encryptedNotesDetails = freezed,
    Object? encryptedQrDetails = freezed,
    Object? merchantNotes = freezed,
    Object? splitOutstandingAmount = freezed,
    Object? callbackParams = freezed,
    Object? paymentRequestSource = freezed,
    Object? notes = freezed,
    Object? storeImg = freezed,
    Object? contextType = freezed,
    Object? fraudDetails = freezed,
    Object? storeDetails = freezed,
    Object? address = freezed,
    Object? paymentType = freezed,
    Object? expiresIn = freezed,
    Object? requestCreatedAt = freezed,
    Object? strictExpiry = freezed,
    Object? allowSdkRetry = freezed,
    Object? splitBill = null,
    Object? options = freezed,
    Object? merchantThemeDetails = freezed,
    Object? lastPaymentBankDetails = freezed,
    Object? encryptedPaymentDetails = freezed,
    Object? encryptedRefundPaymentDetails = freezed,
    Object? qrDetails = freezed,
    Object? paymentSourceType = freezed,
    Object? redirectOnCompleted = freezed,
  }) {
    return _then(_$PaymentRequestDataImpl(
      merchantBusinessName: null == merchantBusinessName
          ? _value.merchantBusinessName
          : merchantBusinessName // ignore: cast_nullable_to_non_nullable
              as String,
      merchantId: null == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount,
      taxPercentage: null == taxPercentage
          ? _value.taxPercentage
          : taxPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      servicePercentage: null == servicePercentage
          ? _value.servicePercentage
          : servicePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      consumerId: freezed == consumerId
          ? _value.consumerId
          : consumerId // ignore: cast_nullable_to_non_nullable
              as String?,
      env: freezed == env
          ? _value.env
          : env // ignore: cast_nullable_to_non_nullable
              as String?,
      encryptedNotesDetails: freezed == encryptedNotesDetails
          ? _value.encryptedNotesDetails
          : encryptedNotesDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      encryptedQrDetails: freezed == encryptedQrDetails
          ? _value.encryptedQrDetails
          : encryptedQrDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantNotes: freezed == merchantNotes
          ? _value.merchantNotes
          : merchantNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      splitOutstandingAmount: freezed == splitOutstandingAmount
          ? _value.splitOutstandingAmount
          : splitOutstandingAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      callbackParams: freezed == callbackParams
          ? _value.callbackParams
          : callbackParams // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentRequestSource: freezed == paymentRequestSource
          ? _value.paymentRequestSource
          : paymentRequestSource // ignore: cast_nullable_to_non_nullable
              as PaymentRequestWithSource?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      storeImg: freezed == storeImg
          ? _value.storeImg
          : storeImg // ignore: cast_nullable_to_non_nullable
              as String?,
      contextType: freezed == contextType
          ? _value.contextType
          : contextType // ignore: cast_nullable_to_non_nullable
              as String?,
      fraudDetails: freezed == fraudDetails
          ? _value.fraudDetails
          : fraudDetails // ignore: cast_nullable_to_non_nullable
              as FraudDetails?,
      storeDetails: freezed == storeDetails
          ? _value.storeDetails
          : storeDetails // ignore: cast_nullable_to_non_nullable
              as StoreDetails?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as MerchantPayeeAddress?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as num?,
      requestCreatedAt: freezed == requestCreatedAt
          ? _value.requestCreatedAt
          : requestCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      strictExpiry: freezed == strictExpiry
          ? _value.strictExpiry
          : strictExpiry // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowSdkRetry: freezed == allowSdkRetry
          ? _value.allowSdkRetry
          : allowSdkRetry // ignore: cast_nullable_to_non_nullable
              as bool?,
      splitBill: null == splitBill
          ? _value.splitBill
          : splitBill // ignore: cast_nullable_to_non_nullable
              as bool,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      merchantThemeDetails: freezed == merchantThemeDetails
          ? _value.merchantThemeDetails
          : merchantThemeDetails // ignore: cast_nullable_to_non_nullable
              as MerchantThemeDetails?,
      lastPaymentBankDetails: freezed == lastPaymentBankDetails
          ? _value.lastPaymentBankDetails
          : lastPaymentBankDetails // ignore: cast_nullable_to_non_nullable
              as SavedBankDetails?,
      encryptedPaymentDetails: freezed == encryptedPaymentDetails
          ? _value.encryptedPaymentDetails
          : encryptedPaymentDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      encryptedRefundPaymentDetails: freezed == encryptedRefundPaymentDetails
          ? _value.encryptedRefundPaymentDetails
          : encryptedRefundPaymentDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      qrDetails: freezed == qrDetails
          ? _value.qrDetails
          : qrDetails // ignore: cast_nullable_to_non_nullable
              as QrDetails?,
      paymentSourceType: freezed == paymentSourceType
          ? _value.paymentSourceType
          : paymentSourceType // ignore: cast_nullable_to_non_nullable
              as int?,
      redirectOnCompleted: freezed == redirectOnCompleted
          ? _value.redirectOnCompleted
          : redirectOnCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentRequestDataImpl extends _PaymentRequestData {
  const _$PaymentRequestDataImpl(
      {required this.merchantBusinessName,
      required this.merchantId,
      required this.amount,
      required this.taxPercentage,
      required this.servicePercentage,
      this.employeeId,
      this.customerId,
      this.consumerId,
      this.env,
      this.encryptedNotesDetails,
      this.encryptedQrDetails,
      this.merchantNotes,
      this.splitOutstandingAmount,
      this.callbackParams,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.paymentRequestSource,
      this.notes,
      this.storeImg,
      this.contextType,
      @JsonKey(includeIfNull: false) this.fraudDetails,
      @JsonKey(includeIfNull: false) this.storeDetails,
      @JsonKey(includeIfNull: false) this.address,
      @JsonKey(includeIfNull: false) this.paymentType,
      @parseToNumNull this.expiresIn,
      this.requestCreatedAt,
      this.strictExpiry,
      this.allowSdkRetry,
      this.splitBill = false,
      @JsonKey(includeIfNull: false) final Map<String, dynamic>? options,
      @JsonKey(includeIfNull: false) this.merchantThemeDetails,
      @JsonKey(includeIfNull: false) this.lastPaymentBankDetails,
      this.encryptedPaymentDetails,
      this.encryptedRefundPaymentDetails,
      @JsonKey(includeIfNull: false) this.qrDetails,
      this.paymentSourceType,
      this.redirectOnCompleted})
      : _options = options,
        super._();

  factory _$PaymentRequestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentRequestDataImplFromJson(json);

  @override
  final String merchantBusinessName;
  @override
  final String merchantId;
  @override
  final Amount amount;
  @override
  final double taxPercentage;
  @override
  final double servicePercentage;
  @override
  final String? employeeId;
  @override
  final String? customerId;
  @override
  final String? consumerId;
  @override
  final String? env;
  @override
  final String? encryptedNotesDetails;
  @override
  final String? encryptedQrDetails;
  @override
  final String? merchantNotes;
  @override
  final double? splitOutstandingAmount;
  @override
  final String? callbackParams;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final PaymentRequestWithSource? paymentRequestSource;
  @override
  final String? notes;
  @override
  final String? storeImg;
  @override
  final String? contextType;
  @override
  @JsonKey(includeIfNull: false)
  final FraudDetails? fraudDetails;
  @override
  @JsonKey(includeIfNull: false)
  final StoreDetails? storeDetails;
  @override
  @JsonKey(includeIfNull: false)
  final MerchantPayeeAddress? address;
  @override
  @JsonKey(includeIfNull: false)
  final String? paymentType;
  @override
  @parseToNumNull
  final num? expiresIn;
  @override
  final String? requestCreatedAt;
  @override
  final bool? strictExpiry;
  @override
  final bool? allowSdkRetry;
  @override
  @JsonKey()
  final bool splitBill;
  final Map<String, dynamic>? _options;
  @override
  @JsonKey(includeIfNull: false)
  Map<String, dynamic>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableMapView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(includeIfNull: false)
  final MerchantThemeDetails? merchantThemeDetails;
  @override
  @JsonKey(includeIfNull: false)
  final SavedBankDetails? lastPaymentBankDetails;
  @override
  final String? encryptedPaymentDetails;
  @override
  final String? encryptedRefundPaymentDetails;
  @override
  @JsonKey(includeIfNull: false)
  final QrDetails? qrDetails;
  @override
  final int? paymentSourceType;
  @override
  final bool? redirectOnCompleted;

  @override
  String toString() {
    return 'PaymentRequestData(merchantBusinessName: $merchantBusinessName, merchantId: $merchantId, amount: $amount, taxPercentage: $taxPercentage, servicePercentage: $servicePercentage, employeeId: $employeeId, customerId: $customerId, consumerId: $consumerId, env: $env, encryptedNotesDetails: $encryptedNotesDetails, encryptedQrDetails: $encryptedQrDetails, merchantNotes: $merchantNotes, splitOutstandingAmount: $splitOutstandingAmount, callbackParams: $callbackParams, paymentRequestSource: $paymentRequestSource, notes: $notes, storeImg: $storeImg, contextType: $contextType, fraudDetails: $fraudDetails, storeDetails: $storeDetails, address: $address, paymentType: $paymentType, expiresIn: $expiresIn, requestCreatedAt: $requestCreatedAt, strictExpiry: $strictExpiry, allowSdkRetry: $allowSdkRetry, splitBill: $splitBill, options: $options, merchantThemeDetails: $merchantThemeDetails, lastPaymentBankDetails: $lastPaymentBankDetails, encryptedPaymentDetails: $encryptedPaymentDetails, encryptedRefundPaymentDetails: $encryptedRefundPaymentDetails, qrDetails: $qrDetails, paymentSourceType: $paymentSourceType, redirectOnCompleted: $redirectOnCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentRequestDataImpl &&
            (identical(other.merchantBusinessName, merchantBusinessName) ||
                other.merchantBusinessName == merchantBusinessName) &&
            (identical(other.merchantId, merchantId) ||
                other.merchantId == merchantId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.taxPercentage, taxPercentage) ||
                other.taxPercentage == taxPercentage) &&
            (identical(other.servicePercentage, servicePercentage) ||
                other.servicePercentage == servicePercentage) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.consumerId, consumerId) ||
                other.consumerId == consumerId) &&
            (identical(other.env, env) || other.env == env) &&
            (identical(other.encryptedNotesDetails, encryptedNotesDetails) ||
                other.encryptedNotesDetails == encryptedNotesDetails) &&
            (identical(other.encryptedQrDetails, encryptedQrDetails) ||
                other.encryptedQrDetails == encryptedQrDetails) &&
            (identical(other.merchantNotes, merchantNotes) ||
                other.merchantNotes == merchantNotes) &&
            (identical(other.splitOutstandingAmount, splitOutstandingAmount) ||
                other.splitOutstandingAmount == splitOutstandingAmount) &&
            (identical(other.callbackParams, callbackParams) ||
                other.callbackParams == callbackParams) &&
            (identical(other.paymentRequestSource, paymentRequestSource) ||
                other.paymentRequestSource == paymentRequestSource) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.storeImg, storeImg) ||
                other.storeImg == storeImg) &&
            (identical(other.contextType, contextType) ||
                other.contextType == contextType) &&
            (identical(other.fraudDetails, fraudDetails) ||
                other.fraudDetails == fraudDetails) &&
            (identical(other.storeDetails, storeDetails) ||
                other.storeDetails == storeDetails) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.requestCreatedAt, requestCreatedAt) ||
                other.requestCreatedAt == requestCreatedAt) &&
            (identical(other.strictExpiry, strictExpiry) ||
                other.strictExpiry == strictExpiry) &&
            (identical(other.allowSdkRetry, allowSdkRetry) ||
                other.allowSdkRetry == allowSdkRetry) &&
            (identical(other.splitBill, splitBill) ||
                other.splitBill == splitBill) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.merchantThemeDetails, merchantThemeDetails) ||
                other.merchantThemeDetails == merchantThemeDetails) &&
            (identical(other.lastPaymentBankDetails, lastPaymentBankDetails) ||
                other.lastPaymentBankDetails == lastPaymentBankDetails) &&
            (identical(
                    other.encryptedPaymentDetails, encryptedPaymentDetails) ||
                other.encryptedPaymentDetails == encryptedPaymentDetails) &&
            (identical(other.encryptedRefundPaymentDetails,
                    encryptedRefundPaymentDetails) ||
                other.encryptedRefundPaymentDetails ==
                    encryptedRefundPaymentDetails) &&
            (identical(other.qrDetails, qrDetails) ||
                other.qrDetails == qrDetails) &&
            (identical(other.paymentSourceType, paymentSourceType) ||
                other.paymentSourceType == paymentSourceType) &&
            (identical(other.redirectOnCompleted, redirectOnCompleted) ||
                other.redirectOnCompleted == redirectOnCompleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        merchantBusinessName,
        merchantId,
        amount,
        taxPercentage,
        servicePercentage,
        employeeId,
        customerId,
        consumerId,
        env,
        encryptedNotesDetails,
        encryptedQrDetails,
        merchantNotes,
        splitOutstandingAmount,
        callbackParams,
        paymentRequestSource,
        notes,
        storeImg,
        contextType,
        fraudDetails,
        storeDetails,
        address,
        paymentType,
        expiresIn,
        requestCreatedAt,
        strictExpiry,
        allowSdkRetry,
        splitBill,
        const DeepCollectionEquality().hash(_options),
        merchantThemeDetails,
        lastPaymentBankDetails,
        encryptedPaymentDetails,
        encryptedRefundPaymentDetails,
        qrDetails,
        paymentSourceType,
        redirectOnCompleted
      ]);

  /// Create a copy of PaymentRequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentRequestDataImplCopyWith<_$PaymentRequestDataImpl> get copyWith =>
      __$$PaymentRequestDataImplCopyWithImpl<_$PaymentRequestDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentRequestDataImplToJson(
      this,
    );
  }
}

abstract class _PaymentRequestData extends PaymentRequestData {
  const factory _PaymentRequestData(
      {required final String merchantBusinessName,
      required final String merchantId,
      required final Amount amount,
      required final double taxPercentage,
      required final double servicePercentage,
      final String? employeeId,
      final String? customerId,
      final String? consumerId,
      final String? env,
      final String? encryptedNotesDetails,
      final String? encryptedQrDetails,
      final String? merchantNotes,
      final double? splitOutstandingAmount,
      final String? callbackParams,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final PaymentRequestWithSource? paymentRequestSource,
      final String? notes,
      final String? storeImg,
      final String? contextType,
      @JsonKey(includeIfNull: false) final FraudDetails? fraudDetails,
      @JsonKey(includeIfNull: false) final StoreDetails? storeDetails,
      @JsonKey(includeIfNull: false) final MerchantPayeeAddress? address,
      @JsonKey(includeIfNull: false) final String? paymentType,
      @parseToNumNull final num? expiresIn,
      final String? requestCreatedAt,
      final bool? strictExpiry,
      final bool? allowSdkRetry,
      final bool splitBill,
      @JsonKey(includeIfNull: false) final Map<String, dynamic>? options,
      @JsonKey(includeIfNull: false)
      final MerchantThemeDetails? merchantThemeDetails,
      @JsonKey(includeIfNull: false)
      final SavedBankDetails? lastPaymentBankDetails,
      final String? encryptedPaymentDetails,
      final String? encryptedRefundPaymentDetails,
      @JsonKey(includeIfNull: false) final QrDetails? qrDetails,
      final int? paymentSourceType,
      final bool? redirectOnCompleted}) = _$PaymentRequestDataImpl;
  const _PaymentRequestData._() : super._();

  factory _PaymentRequestData.fromJson(Map<String, dynamic> json) =
      _$PaymentRequestDataImpl.fromJson;

  @override
  String get merchantBusinessName;
  @override
  String get merchantId;
  @override
  Amount get amount;
  @override
  double get taxPercentage;
  @override
  double get servicePercentage;
  @override
  String? get employeeId;
  @override
  String? get customerId;
  @override
  String? get consumerId;
  @override
  String? get env;
  @override
  String? get encryptedNotesDetails;
  @override
  String? get encryptedQrDetails;
  @override
  String? get merchantNotes;
  @override
  double? get splitOutstandingAmount;
  @override
  String? get callbackParams;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  PaymentRequestWithSource? get paymentRequestSource;
  @override
  String? get notes;
  @override
  String? get storeImg;
  @override
  String? get contextType;
  @override
  @JsonKey(includeIfNull: false)
  FraudDetails? get fraudDetails;
  @override
  @JsonKey(includeIfNull: false)
  StoreDetails? get storeDetails;
  @override
  @JsonKey(includeIfNull: false)
  MerchantPayeeAddress? get address;
  @override
  @JsonKey(includeIfNull: false)
  String? get paymentType;
  @override
  @parseToNumNull
  num? get expiresIn;
  @override
  String? get requestCreatedAt;
  @override
  bool? get strictExpiry;
  @override
  bool? get allowSdkRetry;
  @override
  bool get splitBill;
  @override
  @JsonKey(includeIfNull: false)
  Map<String, dynamic>? get options;
  @override
  @JsonKey(includeIfNull: false)
  MerchantThemeDetails? get merchantThemeDetails;
  @override
  @JsonKey(includeIfNull: false)
  SavedBankDetails? get lastPaymentBankDetails;
  @override
  String? get encryptedPaymentDetails;
  @override
  String? get encryptedRefundPaymentDetails;
  @override
  @JsonKey(includeIfNull: false)
  QrDetails? get qrDetails;
  @override
  int? get paymentSourceType;
  @override
  bool? get redirectOnCompleted;

  /// Create a copy of PaymentRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentRequestDataImplCopyWith<_$PaymentRequestDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
