// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentRequest _$PaymentRequestFromJson(Map<String, dynamic> json) {
  return _PaymentRequest.fromJson(json);
}

/// @nodoc
mixin _$PaymentRequest {
  PayerBankDetails? get payee => throw _privateConstructorUsedError;

  /// Serializes this PaymentRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentRequestCopyWith<PaymentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentRequestCopyWith<$Res> {
  factory $PaymentRequestCopyWith(
          PaymentRequest value, $Res Function(PaymentRequest) then) =
      _$PaymentRequestCopyWithImpl<$Res, PaymentRequest>;
  @useResult
  $Res call({PayerBankDetails? payee});

  $PayerBankDetailsCopyWith<$Res>? get payee;
}

/// @nodoc
class _$PaymentRequestCopyWithImpl<$Res, $Val extends PaymentRequest>
    implements $PaymentRequestCopyWith<$Res> {
  _$PaymentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payee = freezed,
  }) {
    return _then(_value.copyWith(
      payee: freezed == payee
          ? _value.payee
          : payee // ignore: cast_nullable_to_non_nullable
              as PayerBankDetails?,
    ) as $Val);
  }

  /// Create a copy of PaymentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayerBankDetailsCopyWith<$Res>? get payee {
    if (_value.payee == null) {
      return null;
    }

    return $PayerBankDetailsCopyWith<$Res>(_value.payee!, (value) {
      return _then(_value.copyWith(payee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentRequestImplCopyWith<$Res>
    implements $PaymentRequestCopyWith<$Res> {
  factory _$$PaymentRequestImplCopyWith(_$PaymentRequestImpl value,
          $Res Function(_$PaymentRequestImpl) then) =
      __$$PaymentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PayerBankDetails? payee});

  @override
  $PayerBankDetailsCopyWith<$Res>? get payee;
}

/// @nodoc
class __$$PaymentRequestImplCopyWithImpl<$Res>
    extends _$PaymentRequestCopyWithImpl<$Res, _$PaymentRequestImpl>
    implements _$$PaymentRequestImplCopyWith<$Res> {
  __$$PaymentRequestImplCopyWithImpl(
      _$PaymentRequestImpl _value, $Res Function(_$PaymentRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payee = freezed,
  }) {
    return _then(_$PaymentRequestImpl(
      payee: freezed == payee
          ? _value.payee
          : payee // ignore: cast_nullable_to_non_nullable
              as PayerBankDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentRequestImpl implements _PaymentRequest {
  _$PaymentRequestImpl({this.payee});

  factory _$PaymentRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentRequestImplFromJson(json);

  @override
  final PayerBankDetails? payee;

  @override
  String toString() {
    return 'PaymentRequest(payee: $payee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentRequestImpl &&
            (identical(other.payee, payee) || other.payee == payee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, payee);

  /// Create a copy of PaymentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentRequestImplCopyWith<_$PaymentRequestImpl> get copyWith =>
      __$$PaymentRequestImplCopyWithImpl<_$PaymentRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentRequestImplToJson(
      this,
    );
  }
}

abstract class _PaymentRequest implements PaymentRequest {
  factory _PaymentRequest({final PayerBankDetails? payee}) =
      _$PaymentRequestImpl;

  factory _PaymentRequest.fromJson(Map<String, dynamic> json) =
      _$PaymentRequestImpl.fromJson;

  @override
  PayerBankDetails? get payee;

  /// Create a copy of PaymentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentRequestImplCopyWith<_$PaymentRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
