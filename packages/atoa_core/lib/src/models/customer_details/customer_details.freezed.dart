// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomerDetails _$CustomerDetailsFromJson(Map<String, dynamic> json) {
  return _CustomerDetails.fromJson(json);
}

/// @nodoc
mixin _$CustomerDetails {
  String? get phoneCountryCode => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  /// Serializes this CustomerDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerDetailsCopyWith<CustomerDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDetailsCopyWith<$Res> {
  factory $CustomerDetailsCopyWith(
          CustomerDetails value, $Res Function(CustomerDetails) then) =
      _$CustomerDetailsCopyWithImpl<$Res, CustomerDetails>;
  @useResult
  $Res call({String? phoneCountryCode, String? phoneNumber, String? email});
}

/// @nodoc
class _$CustomerDetailsCopyWithImpl<$Res, $Val extends CustomerDetails>
    implements $CustomerDetailsCopyWith<$Res> {
  _$CustomerDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneCountryCode = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      phoneCountryCode: freezed == phoneCountryCode
          ? _value.phoneCountryCode
          : phoneCountryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerDetailsImplCopyWith<$Res>
    implements $CustomerDetailsCopyWith<$Res> {
  factory _$$CustomerDetailsImplCopyWith(_$CustomerDetailsImpl value,
          $Res Function(_$CustomerDetailsImpl) then) =
      __$$CustomerDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? phoneCountryCode, String? phoneNumber, String? email});
}

/// @nodoc
class __$$CustomerDetailsImplCopyWithImpl<$Res>
    extends _$CustomerDetailsCopyWithImpl<$Res, _$CustomerDetailsImpl>
    implements _$$CustomerDetailsImplCopyWith<$Res> {
  __$$CustomerDetailsImplCopyWithImpl(
      _$CustomerDetailsImpl _value, $Res Function(_$CustomerDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneCountryCode = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
  }) {
    return _then(_$CustomerDetailsImpl(
      phoneCountryCode: freezed == phoneCountryCode
          ? _value.phoneCountryCode
          : phoneCountryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerDetailsImpl extends _CustomerDetails {
  const _$CustomerDetailsImpl(
      {this.phoneCountryCode, this.phoneNumber, this.email})
      : super._();

  factory _$CustomerDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerDetailsImplFromJson(json);

  @override
  final String? phoneCountryCode;
  @override
  final String? phoneNumber;
  @override
  final String? email;

  @override
  String toString() {
    return 'CustomerDetails(phoneCountryCode: $phoneCountryCode, phoneNumber: $phoneNumber, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerDetailsImpl &&
            (identical(other.phoneCountryCode, phoneCountryCode) ||
                other.phoneCountryCode == phoneCountryCode) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, phoneCountryCode, phoneNumber, email);

  /// Create a copy of CustomerDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerDetailsImplCopyWith<_$CustomerDetailsImpl> get copyWith =>
      __$$CustomerDetailsImplCopyWithImpl<_$CustomerDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerDetailsImplToJson(
      this,
    );
  }
}

abstract class _CustomerDetails extends CustomerDetails {
  const factory _CustomerDetails(
      {final String? phoneCountryCode,
      final String? phoneNumber,
      final String? email}) = _$CustomerDetailsImpl;
  const _CustomerDetails._() : super._();

  factory _CustomerDetails.fromJson(Map<String, dynamic> json) =
      _$CustomerDetailsImpl.fromJson;

  @override
  String? get phoneCountryCode;
  @override
  String? get phoneNumber;
  @override
  String? get email;

  /// Create a copy of CustomerDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerDetailsImplCopyWith<_$CustomerDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
