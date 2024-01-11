// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_auth_payment_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentAuthPaymentRequest _$PaymentAuthPaymentRequestFromJson(
    Map<String, dynamic> json) {
  return _PaymentAuthPaymentRequest.fromJson(json);
}

/// @nodoc
mixin _$PaymentAuthPaymentRequest {
  String? get paymentType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentAuthPaymentRequestCopyWith<PaymentAuthPaymentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentAuthPaymentRequestCopyWith<$Res> {
  factory $PaymentAuthPaymentRequestCopyWith(PaymentAuthPaymentRequest value,
          $Res Function(PaymentAuthPaymentRequest) then) =
      _$PaymentAuthPaymentRequestCopyWithImpl<$Res, PaymentAuthPaymentRequest>;
  @useResult
  $Res call({String? paymentType});
}

/// @nodoc
class _$PaymentAuthPaymentRequestCopyWithImpl<$Res,
        $Val extends PaymentAuthPaymentRequest>
    implements $PaymentAuthPaymentRequestCopyWith<$Res> {
  _$PaymentAuthPaymentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = freezed,
  }) {
    return _then(_value.copyWith(
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentAuthPaymentRequestImplCopyWith<$Res>
    implements $PaymentAuthPaymentRequestCopyWith<$Res> {
  factory _$$PaymentAuthPaymentRequestImplCopyWith(
          _$PaymentAuthPaymentRequestImpl value,
          $Res Function(_$PaymentAuthPaymentRequestImpl) then) =
      __$$PaymentAuthPaymentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? paymentType});
}

/// @nodoc
class __$$PaymentAuthPaymentRequestImplCopyWithImpl<$Res>
    extends _$PaymentAuthPaymentRequestCopyWithImpl<$Res,
        _$PaymentAuthPaymentRequestImpl>
    implements _$$PaymentAuthPaymentRequestImplCopyWith<$Res> {
  __$$PaymentAuthPaymentRequestImplCopyWithImpl(
      _$PaymentAuthPaymentRequestImpl _value,
      $Res Function(_$PaymentAuthPaymentRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = freezed,
  }) {
    return _then(_$PaymentAuthPaymentRequestImpl(
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentAuthPaymentRequestImpl extends _PaymentAuthPaymentRequest {
  const _$PaymentAuthPaymentRequestImpl({this.paymentType}) : super._();

  factory _$PaymentAuthPaymentRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentAuthPaymentRequestImplFromJson(json);

  @override
  final String? paymentType;

  @override
  String toString() {
    return 'PaymentAuthPaymentRequest(paymentType: $paymentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentAuthPaymentRequestImpl &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, paymentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentAuthPaymentRequestImplCopyWith<_$PaymentAuthPaymentRequestImpl>
      get copyWith => __$$PaymentAuthPaymentRequestImplCopyWithImpl<
          _$PaymentAuthPaymentRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentAuthPaymentRequestImplToJson(
      this,
    );
  }
}

abstract class _PaymentAuthPaymentRequest extends PaymentAuthPaymentRequest {
  const factory _PaymentAuthPaymentRequest({final String? paymentType}) =
      _$PaymentAuthPaymentRequestImpl;
  const _PaymentAuthPaymentRequest._() : super._();

  factory _PaymentAuthPaymentRequest.fromJson(Map<String, dynamic> json) =
      _$PaymentAuthPaymentRequestImpl.fromJson;

  @override
  String? get paymentType;
  @override
  @JsonKey(ignore: true)
  _$$PaymentAuthPaymentRequestImplCopyWith<_$PaymentAuthPaymentRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
