// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_auth_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentAuthRequestBody _$PaymentAuthRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _PaymentAuthRequestBody.fromJson(json);
}

/// @nodoc
mixin _$PaymentAuthRequestBody {
// merchantId is RecieverId
  String get merchantId =>
      throw _privateConstructorUsedError; // consumerId is Senderid
  @JsonKey(name: 'consumerId')
  String get uniqueUserId => throw _privateConstructorUsedError;
  String get merchantName => throw _privateConstructorUsedError;
  Amount get amount => throw _privateConstructorUsedError;
  String get applicationUserId => throw _privateConstructorUsedError;
  String get institutionId => throw _privateConstructorUsedError;
  double get taxPercentage => throw _privateConstructorUsedError;
  double get servicePercentage => throw _privateConstructorUsedError;
  List<String>? get features => throw _privateConstructorUsedError;
  String get deviceOrigin => throw _privateConstructorUsedError;
  num get totalAmountDue => throw _privateConstructorUsedError;
  DeviceInfo get paymentDevice => throw _privateConstructorUsedError;
  @JsonKey(name: 'consumerName')
  String get userName => throw _privateConstructorUsedError;
  PaymentAuthPaymentRequest get paymentRequest =>
      throw _privateConstructorUsedError;
  String? get employeeId => throw _privateConstructorUsedError;
  String? get encryptedNotesDetails => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  StoreDetails? get storeDetails => throw _privateConstructorUsedError;
  String? get callbackParams => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get paymentLinkId => throw _privateConstructorUsedError;
  PaymentRequestWithSource? get paymentRequestSource =>
      throw _privateConstructorUsedError;
  int? get paymentSourceType => throw _privateConstructorUsedError;
  double? get tipAmount => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get notes => throw _privateConstructorUsedError;
  String? get contextType => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  Map<String, dynamic>? get merchantPaymentOptions =>
      throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  FraudDetails? get fraudDetails => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  QrDetails? get qrCodeDetails => throw _privateConstructorUsedError;
  String? get encrptedPaymentDetails => throw _privateConstructorUsedError;
  String? get encryptedRefundPaymentDetails =>
      throw _privateConstructorUsedError;
  String? get encryptedQrDetails => throw _privateConstructorUsedError;
  bool? get redirectOnCompleted => throw _privateConstructorUsedError;

  /// Serializes this PaymentAuthRequestBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentAuthRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentAuthRequestBodyCopyWith<PaymentAuthRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentAuthRequestBodyCopyWith<$Res> {
  factory $PaymentAuthRequestBodyCopyWith(PaymentAuthRequestBody value,
          $Res Function(PaymentAuthRequestBody) then) =
      _$PaymentAuthRequestBodyCopyWithImpl<$Res, PaymentAuthRequestBody>;
  @useResult
  $Res call(
      {String merchantId,
      @JsonKey(name: 'consumerId') String uniqueUserId,
      String merchantName,
      Amount amount,
      String applicationUserId,
      String institutionId,
      double taxPercentage,
      double servicePercentage,
      List<String>? features,
      String deviceOrigin,
      num totalAmountDue,
      DeviceInfo paymentDevice,
      @JsonKey(name: 'consumerName') String userName,
      PaymentAuthPaymentRequest paymentRequest,
      String? employeeId,
      String? encryptedNotesDetails,
      @JsonKey(includeIfNull: false) StoreDetails? storeDetails,
      String? callbackParams,
      @JsonKey(includeIfNull: false) String? paymentLinkId,
      PaymentRequestWithSource? paymentRequestSource,
      int? paymentSourceType,
      double? tipAmount,
      @JsonKey(includeIfNull: false) String? notes,
      String? contextType,
      @JsonKey(includeIfNull: false) String? orderId,
      @JsonKey(includeIfNull: false)
      Map<String, dynamic>? merchantPaymentOptions,
      @JsonKey(includeIfNull: false) FraudDetails? fraudDetails,
      @JsonKey(includeIfNull: false) QrDetails? qrCodeDetails,
      String? encrptedPaymentDetails,
      String? encryptedRefundPaymentDetails,
      String? encryptedQrDetails,
      bool? redirectOnCompleted});

  $AmountCopyWith<$Res> get amount;
  $DeviceInfoCopyWith<$Res> get paymentDevice;
  $PaymentAuthPaymentRequestCopyWith<$Res> get paymentRequest;
  $StoreDetailsCopyWith<$Res>? get storeDetails;
  $PaymentRequestWithSourceCopyWith<$Res>? get paymentRequestSource;
  $FraudDetailsCopyWith<$Res>? get fraudDetails;
  $QrDetailsCopyWith<$Res>? get qrCodeDetails;
}

/// @nodoc
class _$PaymentAuthRequestBodyCopyWithImpl<$Res,
        $Val extends PaymentAuthRequestBody>
    implements $PaymentAuthRequestBodyCopyWith<$Res> {
  _$PaymentAuthRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentAuthRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantId = null,
    Object? uniqueUserId = null,
    Object? merchantName = null,
    Object? amount = null,
    Object? applicationUserId = null,
    Object? institutionId = null,
    Object? taxPercentage = null,
    Object? servicePercentage = null,
    Object? features = freezed,
    Object? deviceOrigin = null,
    Object? totalAmountDue = null,
    Object? paymentDevice = null,
    Object? userName = null,
    Object? paymentRequest = null,
    Object? employeeId = freezed,
    Object? encryptedNotesDetails = freezed,
    Object? storeDetails = freezed,
    Object? callbackParams = freezed,
    Object? paymentLinkId = freezed,
    Object? paymentRequestSource = freezed,
    Object? paymentSourceType = freezed,
    Object? tipAmount = freezed,
    Object? notes = freezed,
    Object? contextType = freezed,
    Object? orderId = freezed,
    Object? merchantPaymentOptions = freezed,
    Object? fraudDetails = freezed,
    Object? qrCodeDetails = freezed,
    Object? encrptedPaymentDetails = freezed,
    Object? encryptedRefundPaymentDetails = freezed,
    Object? encryptedQrDetails = freezed,
    Object? redirectOnCompleted = freezed,
  }) {
    return _then(_value.copyWith(
      merchantId: null == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueUserId: null == uniqueUserId
          ? _value.uniqueUserId
          : uniqueUserId // ignore: cast_nullable_to_non_nullable
              as String,
      merchantName: null == merchantName
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount,
      applicationUserId: null == applicationUserId
          ? _value.applicationUserId
          : applicationUserId // ignore: cast_nullable_to_non_nullable
              as String,
      institutionId: null == institutionId
          ? _value.institutionId
          : institutionId // ignore: cast_nullable_to_non_nullable
              as String,
      taxPercentage: null == taxPercentage
          ? _value.taxPercentage
          : taxPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      servicePercentage: null == servicePercentage
          ? _value.servicePercentage
          : servicePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      features: freezed == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      deviceOrigin: null == deviceOrigin
          ? _value.deviceOrigin
          : deviceOrigin // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmountDue: null == totalAmountDue
          ? _value.totalAmountDue
          : totalAmountDue // ignore: cast_nullable_to_non_nullable
              as num,
      paymentDevice: null == paymentDevice
          ? _value.paymentDevice
          : paymentDevice // ignore: cast_nullable_to_non_nullable
              as DeviceInfo,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentRequest: null == paymentRequest
          ? _value.paymentRequest
          : paymentRequest // ignore: cast_nullable_to_non_nullable
              as PaymentAuthPaymentRequest,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String?,
      encryptedNotesDetails: freezed == encryptedNotesDetails
          ? _value.encryptedNotesDetails
          : encryptedNotesDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      storeDetails: freezed == storeDetails
          ? _value.storeDetails
          : storeDetails // ignore: cast_nullable_to_non_nullable
              as StoreDetails?,
      callbackParams: freezed == callbackParams
          ? _value.callbackParams
          : callbackParams // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentLinkId: freezed == paymentLinkId
          ? _value.paymentLinkId
          : paymentLinkId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentRequestSource: freezed == paymentRequestSource
          ? _value.paymentRequestSource
          : paymentRequestSource // ignore: cast_nullable_to_non_nullable
              as PaymentRequestWithSource?,
      paymentSourceType: freezed == paymentSourceType
          ? _value.paymentSourceType
          : paymentSourceType // ignore: cast_nullable_to_non_nullable
              as int?,
      tipAmount: freezed == tipAmount
          ? _value.tipAmount
          : tipAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      contextType: freezed == contextType
          ? _value.contextType
          : contextType // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantPaymentOptions: freezed == merchantPaymentOptions
          ? _value.merchantPaymentOptions
          : merchantPaymentOptions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      fraudDetails: freezed == fraudDetails
          ? _value.fraudDetails
          : fraudDetails // ignore: cast_nullable_to_non_nullable
              as FraudDetails?,
      qrCodeDetails: freezed == qrCodeDetails
          ? _value.qrCodeDetails
          : qrCodeDetails // ignore: cast_nullable_to_non_nullable
              as QrDetails?,
      encrptedPaymentDetails: freezed == encrptedPaymentDetails
          ? _value.encrptedPaymentDetails
          : encrptedPaymentDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      encryptedRefundPaymentDetails: freezed == encryptedRefundPaymentDetails
          ? _value.encryptedRefundPaymentDetails
          : encryptedRefundPaymentDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      encryptedQrDetails: freezed == encryptedQrDetails
          ? _value.encryptedQrDetails
          : encryptedQrDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      redirectOnCompleted: freezed == redirectOnCompleted
          ? _value.redirectOnCompleted
          : redirectOnCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of PaymentAuthRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AmountCopyWith<$Res> get amount {
    return $AmountCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }

  /// Create a copy of PaymentAuthRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeviceInfoCopyWith<$Res> get paymentDevice {
    return $DeviceInfoCopyWith<$Res>(_value.paymentDevice, (value) {
      return _then(_value.copyWith(paymentDevice: value) as $Val);
    });
  }

  /// Create a copy of PaymentAuthRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentAuthPaymentRequestCopyWith<$Res> get paymentRequest {
    return $PaymentAuthPaymentRequestCopyWith<$Res>(_value.paymentRequest,
        (value) {
      return _then(_value.copyWith(paymentRequest: value) as $Val);
    });
  }

  /// Create a copy of PaymentAuthRequestBody
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

  /// Create a copy of PaymentAuthRequestBody
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

  /// Create a copy of PaymentAuthRequestBody
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

  /// Create a copy of PaymentAuthRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QrDetailsCopyWith<$Res>? get qrCodeDetails {
    if (_value.qrCodeDetails == null) {
      return null;
    }

    return $QrDetailsCopyWith<$Res>(_value.qrCodeDetails!, (value) {
      return _then(_value.copyWith(qrCodeDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentAuthRequestBodyImplCopyWith<$Res>
    implements $PaymentAuthRequestBodyCopyWith<$Res> {
  factory _$$PaymentAuthRequestBodyImplCopyWith(
          _$PaymentAuthRequestBodyImpl value,
          $Res Function(_$PaymentAuthRequestBodyImpl) then) =
      __$$PaymentAuthRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String merchantId,
      @JsonKey(name: 'consumerId') String uniqueUserId,
      String merchantName,
      Amount amount,
      String applicationUserId,
      String institutionId,
      double taxPercentage,
      double servicePercentage,
      List<String>? features,
      String deviceOrigin,
      num totalAmountDue,
      DeviceInfo paymentDevice,
      @JsonKey(name: 'consumerName') String userName,
      PaymentAuthPaymentRequest paymentRequest,
      String? employeeId,
      String? encryptedNotesDetails,
      @JsonKey(includeIfNull: false) StoreDetails? storeDetails,
      String? callbackParams,
      @JsonKey(includeIfNull: false) String? paymentLinkId,
      PaymentRequestWithSource? paymentRequestSource,
      int? paymentSourceType,
      double? tipAmount,
      @JsonKey(includeIfNull: false) String? notes,
      String? contextType,
      @JsonKey(includeIfNull: false) String? orderId,
      @JsonKey(includeIfNull: false)
      Map<String, dynamic>? merchantPaymentOptions,
      @JsonKey(includeIfNull: false) FraudDetails? fraudDetails,
      @JsonKey(includeIfNull: false) QrDetails? qrCodeDetails,
      String? encrptedPaymentDetails,
      String? encryptedRefundPaymentDetails,
      String? encryptedQrDetails,
      bool? redirectOnCompleted});

  @override
  $AmountCopyWith<$Res> get amount;
  @override
  $DeviceInfoCopyWith<$Res> get paymentDevice;
  @override
  $PaymentAuthPaymentRequestCopyWith<$Res> get paymentRequest;
  @override
  $StoreDetailsCopyWith<$Res>? get storeDetails;
  @override
  $PaymentRequestWithSourceCopyWith<$Res>? get paymentRequestSource;
  @override
  $FraudDetailsCopyWith<$Res>? get fraudDetails;
  @override
  $QrDetailsCopyWith<$Res>? get qrCodeDetails;
}

/// @nodoc
class __$$PaymentAuthRequestBodyImplCopyWithImpl<$Res>
    extends _$PaymentAuthRequestBodyCopyWithImpl<$Res,
        _$PaymentAuthRequestBodyImpl>
    implements _$$PaymentAuthRequestBodyImplCopyWith<$Res> {
  __$$PaymentAuthRequestBodyImplCopyWithImpl(
      _$PaymentAuthRequestBodyImpl _value,
      $Res Function(_$PaymentAuthRequestBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentAuthRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantId = null,
    Object? uniqueUserId = null,
    Object? merchantName = null,
    Object? amount = null,
    Object? applicationUserId = null,
    Object? institutionId = null,
    Object? taxPercentage = null,
    Object? servicePercentage = null,
    Object? features = freezed,
    Object? deviceOrigin = null,
    Object? totalAmountDue = null,
    Object? paymentDevice = null,
    Object? userName = null,
    Object? paymentRequest = null,
    Object? employeeId = freezed,
    Object? encryptedNotesDetails = freezed,
    Object? storeDetails = freezed,
    Object? callbackParams = freezed,
    Object? paymentLinkId = freezed,
    Object? paymentRequestSource = freezed,
    Object? paymentSourceType = freezed,
    Object? tipAmount = freezed,
    Object? notes = freezed,
    Object? contextType = freezed,
    Object? orderId = freezed,
    Object? merchantPaymentOptions = freezed,
    Object? fraudDetails = freezed,
    Object? qrCodeDetails = freezed,
    Object? encrptedPaymentDetails = freezed,
    Object? encryptedRefundPaymentDetails = freezed,
    Object? encryptedQrDetails = freezed,
    Object? redirectOnCompleted = freezed,
  }) {
    return _then(_$PaymentAuthRequestBodyImpl(
      merchantId: null == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueUserId: null == uniqueUserId
          ? _value.uniqueUserId
          : uniqueUserId // ignore: cast_nullable_to_non_nullable
              as String,
      merchantName: null == merchantName
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount,
      applicationUserId: null == applicationUserId
          ? _value.applicationUserId
          : applicationUserId // ignore: cast_nullable_to_non_nullable
              as String,
      institutionId: null == institutionId
          ? _value.institutionId
          : institutionId // ignore: cast_nullable_to_non_nullable
              as String,
      taxPercentage: null == taxPercentage
          ? _value.taxPercentage
          : taxPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      servicePercentage: null == servicePercentage
          ? _value.servicePercentage
          : servicePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      features: freezed == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      deviceOrigin: null == deviceOrigin
          ? _value.deviceOrigin
          : deviceOrigin // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmountDue: null == totalAmountDue
          ? _value.totalAmountDue
          : totalAmountDue // ignore: cast_nullable_to_non_nullable
              as num,
      paymentDevice: null == paymentDevice
          ? _value.paymentDevice
          : paymentDevice // ignore: cast_nullable_to_non_nullable
              as DeviceInfo,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentRequest: null == paymentRequest
          ? _value.paymentRequest
          : paymentRequest // ignore: cast_nullable_to_non_nullable
              as PaymentAuthPaymentRequest,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String?,
      encryptedNotesDetails: freezed == encryptedNotesDetails
          ? _value.encryptedNotesDetails
          : encryptedNotesDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      storeDetails: freezed == storeDetails
          ? _value.storeDetails
          : storeDetails // ignore: cast_nullable_to_non_nullable
              as StoreDetails?,
      callbackParams: freezed == callbackParams
          ? _value.callbackParams
          : callbackParams // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentLinkId: freezed == paymentLinkId
          ? _value.paymentLinkId
          : paymentLinkId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentRequestSource: freezed == paymentRequestSource
          ? _value.paymentRequestSource
          : paymentRequestSource // ignore: cast_nullable_to_non_nullable
              as PaymentRequestWithSource?,
      paymentSourceType: freezed == paymentSourceType
          ? _value.paymentSourceType
          : paymentSourceType // ignore: cast_nullable_to_non_nullable
              as int?,
      tipAmount: freezed == tipAmount
          ? _value.tipAmount
          : tipAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      contextType: freezed == contextType
          ? _value.contextType
          : contextType // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantPaymentOptions: freezed == merchantPaymentOptions
          ? _value._merchantPaymentOptions
          : merchantPaymentOptions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      fraudDetails: freezed == fraudDetails
          ? _value.fraudDetails
          : fraudDetails // ignore: cast_nullable_to_non_nullable
              as FraudDetails?,
      qrCodeDetails: freezed == qrCodeDetails
          ? _value.qrCodeDetails
          : qrCodeDetails // ignore: cast_nullable_to_non_nullable
              as QrDetails?,
      encrptedPaymentDetails: freezed == encrptedPaymentDetails
          ? _value.encrptedPaymentDetails
          : encrptedPaymentDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      encryptedRefundPaymentDetails: freezed == encryptedRefundPaymentDetails
          ? _value.encryptedRefundPaymentDetails
          : encryptedRefundPaymentDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      encryptedQrDetails: freezed == encryptedQrDetails
          ? _value.encryptedQrDetails
          : encryptedQrDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      redirectOnCompleted: freezed == redirectOnCompleted
          ? _value.redirectOnCompleted
          : redirectOnCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentAuthRequestBodyImpl extends _PaymentAuthRequestBody {
  _$PaymentAuthRequestBodyImpl(
      {required this.merchantId,
      @JsonKey(name: 'consumerId') required this.uniqueUserId,
      required this.merchantName,
      required this.amount,
      required this.applicationUserId,
      required this.institutionId,
      required this.taxPercentage,
      required this.servicePercentage,
      required final List<String>? features,
      required this.deviceOrigin,
      required this.totalAmountDue,
      required this.paymentDevice,
      @JsonKey(name: 'consumerName') this.userName = '',
      this.paymentRequest =
          const PaymentAuthPaymentRequest(paymentType: 'TRANSACTION'),
      this.employeeId,
      this.encryptedNotesDetails,
      @JsonKey(includeIfNull: false) this.storeDetails,
      this.callbackParams,
      @JsonKey(includeIfNull: false) this.paymentLinkId,
      this.paymentRequestSource,
      this.paymentSourceType,
      this.tipAmount,
      @JsonKey(includeIfNull: false) this.notes,
      this.contextType,
      @JsonKey(includeIfNull: false) this.orderId,
      @JsonKey(includeIfNull: false)
      final Map<String, dynamic>? merchantPaymentOptions,
      @JsonKey(includeIfNull: false) this.fraudDetails,
      @JsonKey(includeIfNull: false) this.qrCodeDetails,
      this.encrptedPaymentDetails,
      this.encryptedRefundPaymentDetails,
      this.encryptedQrDetails,
      this.redirectOnCompleted})
      : _features = features,
        _merchantPaymentOptions = merchantPaymentOptions,
        super._();

  factory _$PaymentAuthRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentAuthRequestBodyImplFromJson(json);

// merchantId is RecieverId
  @override
  final String merchantId;
// consumerId is Senderid
  @override
  @JsonKey(name: 'consumerId')
  final String uniqueUserId;
  @override
  final String merchantName;
  @override
  final Amount amount;
  @override
  final String applicationUserId;
  @override
  final String institutionId;
  @override
  final double taxPercentage;
  @override
  final double servicePercentage;
  final List<String>? _features;
  @override
  List<String>? get features {
    final value = _features;
    if (value == null) return null;
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String deviceOrigin;
  @override
  final num totalAmountDue;
  @override
  final DeviceInfo paymentDevice;
  @override
  @JsonKey(name: 'consumerName')
  final String userName;
  @override
  @JsonKey()
  final PaymentAuthPaymentRequest paymentRequest;
  @override
  final String? employeeId;
  @override
  final String? encryptedNotesDetails;
  @override
  @JsonKey(includeIfNull: false)
  final StoreDetails? storeDetails;
  @override
  final String? callbackParams;
  @override
  @JsonKey(includeIfNull: false)
  final String? paymentLinkId;
  @override
  final PaymentRequestWithSource? paymentRequestSource;
  @override
  final int? paymentSourceType;
  @override
  final double? tipAmount;
  @override
  @JsonKey(includeIfNull: false)
  final String? notes;
  @override
  final String? contextType;
  @override
  @JsonKey(includeIfNull: false)
  final String? orderId;
  final Map<String, dynamic>? _merchantPaymentOptions;
  @override
  @JsonKey(includeIfNull: false)
  Map<String, dynamic>? get merchantPaymentOptions {
    final value = _merchantPaymentOptions;
    if (value == null) return null;
    if (_merchantPaymentOptions is EqualUnmodifiableMapView)
      return _merchantPaymentOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(includeIfNull: false)
  final FraudDetails? fraudDetails;
  @override
  @JsonKey(includeIfNull: false)
  final QrDetails? qrCodeDetails;
  @override
  final String? encrptedPaymentDetails;
  @override
  final String? encryptedRefundPaymentDetails;
  @override
  final String? encryptedQrDetails;
  @override
  final bool? redirectOnCompleted;

  @override
  String toString() {
    return 'PaymentAuthRequestBody(merchantId: $merchantId, uniqueUserId: $uniqueUserId, merchantName: $merchantName, amount: $amount, applicationUserId: $applicationUserId, institutionId: $institutionId, taxPercentage: $taxPercentage, servicePercentage: $servicePercentage, features: $features, deviceOrigin: $deviceOrigin, totalAmountDue: $totalAmountDue, paymentDevice: $paymentDevice, userName: $userName, paymentRequest: $paymentRequest, employeeId: $employeeId, encryptedNotesDetails: $encryptedNotesDetails, storeDetails: $storeDetails, callbackParams: $callbackParams, paymentLinkId: $paymentLinkId, paymentRequestSource: $paymentRequestSource, paymentSourceType: $paymentSourceType, tipAmount: $tipAmount, notes: $notes, contextType: $contextType, orderId: $orderId, merchantPaymentOptions: $merchantPaymentOptions, fraudDetails: $fraudDetails, qrCodeDetails: $qrCodeDetails, encrptedPaymentDetails: $encrptedPaymentDetails, encryptedRefundPaymentDetails: $encryptedRefundPaymentDetails, encryptedQrDetails: $encryptedQrDetails, redirectOnCompleted: $redirectOnCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentAuthRequestBodyImpl &&
            (identical(other.merchantId, merchantId) ||
                other.merchantId == merchantId) &&
            (identical(other.uniqueUserId, uniqueUserId) ||
                other.uniqueUserId == uniqueUserId) &&
            (identical(other.merchantName, merchantName) ||
                other.merchantName == merchantName) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.applicationUserId, applicationUserId) ||
                other.applicationUserId == applicationUserId) &&
            (identical(other.institutionId, institutionId) ||
                other.institutionId == institutionId) &&
            (identical(other.taxPercentage, taxPercentage) ||
                other.taxPercentage == taxPercentage) &&
            (identical(other.servicePercentage, servicePercentage) ||
                other.servicePercentage == servicePercentage) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            (identical(other.deviceOrigin, deviceOrigin) ||
                other.deviceOrigin == deviceOrigin) &&
            (identical(other.totalAmountDue, totalAmountDue) ||
                other.totalAmountDue == totalAmountDue) &&
            (identical(other.paymentDevice, paymentDevice) ||
                other.paymentDevice == paymentDevice) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.paymentRequest, paymentRequest) ||
                other.paymentRequest == paymentRequest) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.encryptedNotesDetails, encryptedNotesDetails) ||
                other.encryptedNotesDetails == encryptedNotesDetails) &&
            (identical(other.storeDetails, storeDetails) ||
                other.storeDetails == storeDetails) &&
            (identical(other.callbackParams, callbackParams) ||
                other.callbackParams == callbackParams) &&
            (identical(other.paymentLinkId, paymentLinkId) ||
                other.paymentLinkId == paymentLinkId) &&
            (identical(other.paymentRequestSource, paymentRequestSource) ||
                other.paymentRequestSource == paymentRequestSource) &&
            (identical(other.paymentSourceType, paymentSourceType) ||
                other.paymentSourceType == paymentSourceType) &&
            (identical(other.tipAmount, tipAmount) ||
                other.tipAmount == tipAmount) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.contextType, contextType) ||
                other.contextType == contextType) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            const DeepCollectionEquality().equals(
                other._merchantPaymentOptions, _merchantPaymentOptions) &&
            (identical(other.fraudDetails, fraudDetails) ||
                other.fraudDetails == fraudDetails) &&
            (identical(other.qrCodeDetails, qrCodeDetails) ||
                other.qrCodeDetails == qrCodeDetails) &&
            (identical(other.encrptedPaymentDetails, encrptedPaymentDetails) ||
                other.encrptedPaymentDetails == encrptedPaymentDetails) &&
            (identical(other.encryptedRefundPaymentDetails,
                    encryptedRefundPaymentDetails) ||
                other.encryptedRefundPaymentDetails ==
                    encryptedRefundPaymentDetails) &&
            (identical(other.encryptedQrDetails, encryptedQrDetails) ||
                other.encryptedQrDetails == encryptedQrDetails) &&
            (identical(other.redirectOnCompleted, redirectOnCompleted) ||
                other.redirectOnCompleted == redirectOnCompleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        merchantId,
        uniqueUserId,
        merchantName,
        amount,
        applicationUserId,
        institutionId,
        taxPercentage,
        servicePercentage,
        const DeepCollectionEquality().hash(_features),
        deviceOrigin,
        totalAmountDue,
        paymentDevice,
        userName,
        paymentRequest,
        employeeId,
        encryptedNotesDetails,
        storeDetails,
        callbackParams,
        paymentLinkId,
        paymentRequestSource,
        paymentSourceType,
        tipAmount,
        notes,
        contextType,
        orderId,
        const DeepCollectionEquality().hash(_merchantPaymentOptions),
        fraudDetails,
        qrCodeDetails,
        encrptedPaymentDetails,
        encryptedRefundPaymentDetails,
        encryptedQrDetails,
        redirectOnCompleted
      ]);

  /// Create a copy of PaymentAuthRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentAuthRequestBodyImplCopyWith<_$PaymentAuthRequestBodyImpl>
      get copyWith => __$$PaymentAuthRequestBodyImplCopyWithImpl<
          _$PaymentAuthRequestBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentAuthRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _PaymentAuthRequestBody extends PaymentAuthRequestBody {
  factory _PaymentAuthRequestBody(
      {required final String merchantId,
      @JsonKey(name: 'consumerId') required final String uniqueUserId,
      required final String merchantName,
      required final Amount amount,
      required final String applicationUserId,
      required final String institutionId,
      required final double taxPercentage,
      required final double servicePercentage,
      required final List<String>? features,
      required final String deviceOrigin,
      required final num totalAmountDue,
      required final DeviceInfo paymentDevice,
      @JsonKey(name: 'consumerName') final String userName,
      final PaymentAuthPaymentRequest paymentRequest,
      final String? employeeId,
      final String? encryptedNotesDetails,
      @JsonKey(includeIfNull: false) final StoreDetails? storeDetails,
      final String? callbackParams,
      @JsonKey(includeIfNull: false) final String? paymentLinkId,
      final PaymentRequestWithSource? paymentRequestSource,
      final int? paymentSourceType,
      final double? tipAmount,
      @JsonKey(includeIfNull: false) final String? notes,
      final String? contextType,
      @JsonKey(includeIfNull: false) final String? orderId,
      @JsonKey(includeIfNull: false)
      final Map<String, dynamic>? merchantPaymentOptions,
      @JsonKey(includeIfNull: false) final FraudDetails? fraudDetails,
      @JsonKey(includeIfNull: false) final QrDetails? qrCodeDetails,
      final String? encrptedPaymentDetails,
      final String? encryptedRefundPaymentDetails,
      final String? encryptedQrDetails,
      final bool? redirectOnCompleted}) = _$PaymentAuthRequestBodyImpl;
  _PaymentAuthRequestBody._() : super._();

  factory _PaymentAuthRequestBody.fromJson(Map<String, dynamic> json) =
      _$PaymentAuthRequestBodyImpl.fromJson;

// merchantId is RecieverId
  @override
  String get merchantId; // consumerId is Senderid
  @override
  @JsonKey(name: 'consumerId')
  String get uniqueUserId;
  @override
  String get merchantName;
  @override
  Amount get amount;
  @override
  String get applicationUserId;
  @override
  String get institutionId;
  @override
  double get taxPercentage;
  @override
  double get servicePercentage;
  @override
  List<String>? get features;
  @override
  String get deviceOrigin;
  @override
  num get totalAmountDue;
  @override
  DeviceInfo get paymentDevice;
  @override
  @JsonKey(name: 'consumerName')
  String get userName;
  @override
  PaymentAuthPaymentRequest get paymentRequest;
  @override
  String? get employeeId;
  @override
  String? get encryptedNotesDetails;
  @override
  @JsonKey(includeIfNull: false)
  StoreDetails? get storeDetails;
  @override
  String? get callbackParams;
  @override
  @JsonKey(includeIfNull: false)
  String? get paymentLinkId;
  @override
  PaymentRequestWithSource? get paymentRequestSource;
  @override
  int? get paymentSourceType;
  @override
  double? get tipAmount;
  @override
  @JsonKey(includeIfNull: false)
  String? get notes;
  @override
  String? get contextType;
  @override
  @JsonKey(includeIfNull: false)
  String? get orderId;
  @override
  @JsonKey(includeIfNull: false)
  Map<String, dynamic>? get merchantPaymentOptions;
  @override
  @JsonKey(includeIfNull: false)
  FraudDetails? get fraudDetails;
  @override
  @JsonKey(includeIfNull: false)
  QrDetails? get qrCodeDetails;
  @override
  String? get encrptedPaymentDetails;
  @override
  String? get encryptedRefundPaymentDetails;
  @override
  String? get encryptedQrDetails;
  @override
  bool? get redirectOnCompleted;

  /// Create a copy of PaymentAuthRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentAuthRequestBodyImplCopyWith<_$PaymentAuthRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
