// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_request_with_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentRequestWithSource _$PaymentRequestWithSourceFromJson(
    Map<String, dynamic> json) {
  return _PaymentRequestWithSource.fromJson(json);
}

/// @nodoc
mixin _$PaymentRequestWithSource {
  @JsonKey(toJson: _parseEnumToIndex, fromJson: _jsonToEnum)
  PaymentRequestSourceEnum get paymentRequestSourcetype =>
      throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get qrId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get paymentRequestId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get paymentLinkId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get paymentRequest => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  AuditTrailDetails? get auditTrailDetails =>
      throw _privateConstructorUsedError;
  bool? get splitBill => throw _privateConstructorUsedError;
  String? get expiresIn => throw _privateConstructorUsedError;
  String? get requestCreatedAt => throw _privateConstructorUsedError;
  String? get strictExpiry => throw _privateConstructorUsedError;
  String? get allowSdkRetry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentRequestWithSourceCopyWith<PaymentRequestWithSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentRequestWithSourceCopyWith<$Res> {
  factory $PaymentRequestWithSourceCopyWith(PaymentRequestWithSource value,
          $Res Function(PaymentRequestWithSource) then) =
      _$PaymentRequestWithSourceCopyWithImpl<$Res, PaymentRequestWithSource>;
  @useResult
  $Res call(
      {@JsonKey(toJson: _parseEnumToIndex, fromJson: _jsonToEnum)
      PaymentRequestSourceEnum paymentRequestSourcetype,
      @JsonKey(includeIfNull: false) String? qrId,
      @JsonKey(includeIfNull: false) String? paymentRequestId,
      @JsonKey(includeIfNull: false) String? paymentLinkId,
      @JsonKey(includeIfNull: false) String? paymentRequest,
      @JsonKey(includeIfNull: false) AuditTrailDetails? auditTrailDetails,
      bool? splitBill,
      String? expiresIn,
      String? requestCreatedAt,
      String? strictExpiry,
      String? allowSdkRetry});

  $AuditTrailDetailsCopyWith<$Res>? get auditTrailDetails;
}

/// @nodoc
class _$PaymentRequestWithSourceCopyWithImpl<$Res,
        $Val extends PaymentRequestWithSource>
    implements $PaymentRequestWithSourceCopyWith<$Res> {
  _$PaymentRequestWithSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentRequestSourcetype = null,
    Object? qrId = freezed,
    Object? paymentRequestId = freezed,
    Object? paymentLinkId = freezed,
    Object? paymentRequest = freezed,
    Object? auditTrailDetails = freezed,
    Object? splitBill = freezed,
    Object? expiresIn = freezed,
    Object? requestCreatedAt = freezed,
    Object? strictExpiry = freezed,
    Object? allowSdkRetry = freezed,
  }) {
    return _then(_value.copyWith(
      paymentRequestSourcetype: null == paymentRequestSourcetype
          ? _value.paymentRequestSourcetype
          : paymentRequestSourcetype // ignore: cast_nullable_to_non_nullable
              as PaymentRequestSourceEnum,
      qrId: freezed == qrId
          ? _value.qrId
          : qrId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentRequestId: freezed == paymentRequestId
          ? _value.paymentRequestId
          : paymentRequestId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentLinkId: freezed == paymentLinkId
          ? _value.paymentLinkId
          : paymentLinkId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentRequest: freezed == paymentRequest
          ? _value.paymentRequest
          : paymentRequest // ignore: cast_nullable_to_non_nullable
              as String?,
      auditTrailDetails: freezed == auditTrailDetails
          ? _value.auditTrailDetails
          : auditTrailDetails // ignore: cast_nullable_to_non_nullable
              as AuditTrailDetails?,
      splitBill: freezed == splitBill
          ? _value.splitBill
          : splitBill // ignore: cast_nullable_to_non_nullable
              as bool?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as String?,
      requestCreatedAt: freezed == requestCreatedAt
          ? _value.requestCreatedAt
          : requestCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      strictExpiry: freezed == strictExpiry
          ? _value.strictExpiry
          : strictExpiry // ignore: cast_nullable_to_non_nullable
              as String?,
      allowSdkRetry: freezed == allowSdkRetry
          ? _value.allowSdkRetry
          : allowSdkRetry // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuditTrailDetailsCopyWith<$Res>? get auditTrailDetails {
    if (_value.auditTrailDetails == null) {
      return null;
    }

    return $AuditTrailDetailsCopyWith<$Res>(_value.auditTrailDetails!, (value) {
      return _then(_value.copyWith(auditTrailDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentRequestWithSourceImplCopyWith<$Res>
    implements $PaymentRequestWithSourceCopyWith<$Res> {
  factory _$$PaymentRequestWithSourceImplCopyWith(
          _$PaymentRequestWithSourceImpl value,
          $Res Function(_$PaymentRequestWithSourceImpl) then) =
      __$$PaymentRequestWithSourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(toJson: _parseEnumToIndex, fromJson: _jsonToEnum)
      PaymentRequestSourceEnum paymentRequestSourcetype,
      @JsonKey(includeIfNull: false) String? qrId,
      @JsonKey(includeIfNull: false) String? paymentRequestId,
      @JsonKey(includeIfNull: false) String? paymentLinkId,
      @JsonKey(includeIfNull: false) String? paymentRequest,
      @JsonKey(includeIfNull: false) AuditTrailDetails? auditTrailDetails,
      bool? splitBill,
      String? expiresIn,
      String? requestCreatedAt,
      String? strictExpiry,
      String? allowSdkRetry});

  @override
  $AuditTrailDetailsCopyWith<$Res>? get auditTrailDetails;
}

/// @nodoc
class __$$PaymentRequestWithSourceImplCopyWithImpl<$Res>
    extends _$PaymentRequestWithSourceCopyWithImpl<$Res,
        _$PaymentRequestWithSourceImpl>
    implements _$$PaymentRequestWithSourceImplCopyWith<$Res> {
  __$$PaymentRequestWithSourceImplCopyWithImpl(
      _$PaymentRequestWithSourceImpl _value,
      $Res Function(_$PaymentRequestWithSourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentRequestSourcetype = null,
    Object? qrId = freezed,
    Object? paymentRequestId = freezed,
    Object? paymentLinkId = freezed,
    Object? paymentRequest = freezed,
    Object? auditTrailDetails = freezed,
    Object? splitBill = freezed,
    Object? expiresIn = freezed,
    Object? requestCreatedAt = freezed,
    Object? strictExpiry = freezed,
    Object? allowSdkRetry = freezed,
  }) {
    return _then(_$PaymentRequestWithSourceImpl(
      paymentRequestSourcetype: null == paymentRequestSourcetype
          ? _value.paymentRequestSourcetype
          : paymentRequestSourcetype // ignore: cast_nullable_to_non_nullable
              as PaymentRequestSourceEnum,
      qrId: freezed == qrId
          ? _value.qrId
          : qrId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentRequestId: freezed == paymentRequestId
          ? _value.paymentRequestId
          : paymentRequestId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentLinkId: freezed == paymentLinkId
          ? _value.paymentLinkId
          : paymentLinkId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentRequest: freezed == paymentRequest
          ? _value.paymentRequest
          : paymentRequest // ignore: cast_nullable_to_non_nullable
              as String?,
      auditTrailDetails: freezed == auditTrailDetails
          ? _value.auditTrailDetails
          : auditTrailDetails // ignore: cast_nullable_to_non_nullable
              as AuditTrailDetails?,
      splitBill: freezed == splitBill
          ? _value.splitBill
          : splitBill // ignore: cast_nullable_to_non_nullable
              as bool?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as String?,
      requestCreatedAt: freezed == requestCreatedAt
          ? _value.requestCreatedAt
          : requestCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      strictExpiry: freezed == strictExpiry
          ? _value.strictExpiry
          : strictExpiry // ignore: cast_nullable_to_non_nullable
              as String?,
      allowSdkRetry: freezed == allowSdkRetry
          ? _value.allowSdkRetry
          : allowSdkRetry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentRequestWithSourceImpl extends _PaymentRequestWithSource {
  const _$PaymentRequestWithSourceImpl(
      {@JsonKey(toJson: _parseEnumToIndex, fromJson: _jsonToEnum)
      required this.paymentRequestSourcetype,
      @JsonKey(includeIfNull: false) this.qrId,
      @JsonKey(includeIfNull: false) this.paymentRequestId,
      @JsonKey(includeIfNull: false) this.paymentLinkId,
      @JsonKey(includeIfNull: false) this.paymentRequest,
      @JsonKey(includeIfNull: false) this.auditTrailDetails,
      this.splitBill,
      this.expiresIn,
      this.requestCreatedAt,
      this.strictExpiry,
      this.allowSdkRetry})
      : super._();

  factory _$PaymentRequestWithSourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentRequestWithSourceImplFromJson(json);

  @override
  @JsonKey(toJson: _parseEnumToIndex, fromJson: _jsonToEnum)
  final PaymentRequestSourceEnum paymentRequestSourcetype;
  @override
  @JsonKey(includeIfNull: false)
  final String? qrId;
  @override
  @JsonKey(includeIfNull: false)
  final String? paymentRequestId;
  @override
  @JsonKey(includeIfNull: false)
  final String? paymentLinkId;
  @override
  @JsonKey(includeIfNull: false)
  final String? paymentRequest;
  @override
  @JsonKey(includeIfNull: false)
  final AuditTrailDetails? auditTrailDetails;
  @override
  final bool? splitBill;
  @override
  final String? expiresIn;
  @override
  final String? requestCreatedAt;
  @override
  final String? strictExpiry;
  @override
  final String? allowSdkRetry;

  @override
  String toString() {
    return 'PaymentRequestWithSource(paymentRequestSourcetype: $paymentRequestSourcetype, qrId: $qrId, paymentRequestId: $paymentRequestId, paymentLinkId: $paymentLinkId, paymentRequest: $paymentRequest, auditTrailDetails: $auditTrailDetails, splitBill: $splitBill, expiresIn: $expiresIn, requestCreatedAt: $requestCreatedAt, strictExpiry: $strictExpiry, allowSdkRetry: $allowSdkRetry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentRequestWithSourceImpl &&
            (identical(
                    other.paymentRequestSourcetype, paymentRequestSourcetype) ||
                other.paymentRequestSourcetype == paymentRequestSourcetype) &&
            (identical(other.qrId, qrId) || other.qrId == qrId) &&
            (identical(other.paymentRequestId, paymentRequestId) ||
                other.paymentRequestId == paymentRequestId) &&
            (identical(other.paymentLinkId, paymentLinkId) ||
                other.paymentLinkId == paymentLinkId) &&
            (identical(other.paymentRequest, paymentRequest) ||
                other.paymentRequest == paymentRequest) &&
            (identical(other.auditTrailDetails, auditTrailDetails) ||
                other.auditTrailDetails == auditTrailDetails) &&
            (identical(other.splitBill, splitBill) ||
                other.splitBill == splitBill) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.requestCreatedAt, requestCreatedAt) ||
                other.requestCreatedAt == requestCreatedAt) &&
            (identical(other.strictExpiry, strictExpiry) ||
                other.strictExpiry == strictExpiry) &&
            (identical(other.allowSdkRetry, allowSdkRetry) ||
                other.allowSdkRetry == allowSdkRetry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      paymentRequestSourcetype,
      qrId,
      paymentRequestId,
      paymentLinkId,
      paymentRequest,
      auditTrailDetails,
      splitBill,
      expiresIn,
      requestCreatedAt,
      strictExpiry,
      allowSdkRetry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentRequestWithSourceImplCopyWith<_$PaymentRequestWithSourceImpl>
      get copyWith => __$$PaymentRequestWithSourceImplCopyWithImpl<
          _$PaymentRequestWithSourceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentRequestWithSourceImplToJson(
      this,
    );
  }
}

abstract class _PaymentRequestWithSource extends PaymentRequestWithSource {
  const factory _PaymentRequestWithSource(
      {@JsonKey(toJson: _parseEnumToIndex, fromJson: _jsonToEnum)
      required final PaymentRequestSourceEnum paymentRequestSourcetype,
      @JsonKey(includeIfNull: false) final String? qrId,
      @JsonKey(includeIfNull: false) final String? paymentRequestId,
      @JsonKey(includeIfNull: false) final String? paymentLinkId,
      @JsonKey(includeIfNull: false) final String? paymentRequest,
      @JsonKey(includeIfNull: false) final AuditTrailDetails? auditTrailDetails,
      final bool? splitBill,
      final String? expiresIn,
      final String? requestCreatedAt,
      final String? strictExpiry,
      final String? allowSdkRetry}) = _$PaymentRequestWithSourceImpl;
  const _PaymentRequestWithSource._() : super._();

  factory _PaymentRequestWithSource.fromJson(Map<String, dynamic> json) =
      _$PaymentRequestWithSourceImpl.fromJson;

  @override
  @JsonKey(toJson: _parseEnumToIndex, fromJson: _jsonToEnum)
  PaymentRequestSourceEnum get paymentRequestSourcetype;
  @override
  @JsonKey(includeIfNull: false)
  String? get qrId;
  @override
  @JsonKey(includeIfNull: false)
  String? get paymentRequestId;
  @override
  @JsonKey(includeIfNull: false)
  String? get paymentLinkId;
  @override
  @JsonKey(includeIfNull: false)
  String? get paymentRequest;
  @override
  @JsonKey(includeIfNull: false)
  AuditTrailDetails? get auditTrailDetails;
  @override
  bool? get splitBill;
  @override
  String? get expiresIn;
  @override
  String? get requestCreatedAt;
  @override
  String? get strictExpiry;
  @override
  String? get allowSdkRetry;
  @override
  @JsonKey(ignore: true)
  _$$PaymentRequestWithSourceImplCopyWith<_$PaymentRequestWithSourceImpl>
      get copyWith => throw _privateConstructorUsedError;
}
