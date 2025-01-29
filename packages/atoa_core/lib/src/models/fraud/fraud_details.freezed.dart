// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fraud_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FraudDetails _$FraudDetailsFromJson(Map<String, dynamic> json) {
  return _FraudDetails.fromJson(json);
}

/// @nodoc
mixin _$FraudDetails {
  String? get merchantCreatedAt => throw _privateConstructorUsedError;
  String? get merchantCategory => throw _privateConstructorUsedError;
  String? get fraudCheckEnabled => throw _privateConstructorUsedError;

  /// Serializes this FraudDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FraudDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FraudDetailsCopyWith<FraudDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FraudDetailsCopyWith<$Res> {
  factory $FraudDetailsCopyWith(
          FraudDetails value, $Res Function(FraudDetails) then) =
      _$FraudDetailsCopyWithImpl<$Res, FraudDetails>;
  @useResult
  $Res call(
      {String? merchantCreatedAt,
      String? merchantCategory,
      String? fraudCheckEnabled});
}

/// @nodoc
class _$FraudDetailsCopyWithImpl<$Res, $Val extends FraudDetails>
    implements $FraudDetailsCopyWith<$Res> {
  _$FraudDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FraudDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantCreatedAt = freezed,
    Object? merchantCategory = freezed,
    Object? fraudCheckEnabled = freezed,
  }) {
    return _then(_value.copyWith(
      merchantCreatedAt: freezed == merchantCreatedAt
          ? _value.merchantCreatedAt
          : merchantCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantCategory: freezed == merchantCategory
          ? _value.merchantCategory
          : merchantCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      fraudCheckEnabled: freezed == fraudCheckEnabled
          ? _value.fraudCheckEnabled
          : fraudCheckEnabled // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FraudDetailsImplCopyWith<$Res>
    implements $FraudDetailsCopyWith<$Res> {
  factory _$$FraudDetailsImplCopyWith(
          _$FraudDetailsImpl value, $Res Function(_$FraudDetailsImpl) then) =
      __$$FraudDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? merchantCreatedAt,
      String? merchantCategory,
      String? fraudCheckEnabled});
}

/// @nodoc
class __$$FraudDetailsImplCopyWithImpl<$Res>
    extends _$FraudDetailsCopyWithImpl<$Res, _$FraudDetailsImpl>
    implements _$$FraudDetailsImplCopyWith<$Res> {
  __$$FraudDetailsImplCopyWithImpl(
      _$FraudDetailsImpl _value, $Res Function(_$FraudDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FraudDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantCreatedAt = freezed,
    Object? merchantCategory = freezed,
    Object? fraudCheckEnabled = freezed,
  }) {
    return _then(_$FraudDetailsImpl(
      merchantCreatedAt: freezed == merchantCreatedAt
          ? _value.merchantCreatedAt
          : merchantCreatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantCategory: freezed == merchantCategory
          ? _value.merchantCategory
          : merchantCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      fraudCheckEnabled: freezed == fraudCheckEnabled
          ? _value.fraudCheckEnabled
          : fraudCheckEnabled // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FraudDetailsImpl extends _FraudDetails {
  const _$FraudDetailsImpl(
      {this.merchantCreatedAt, this.merchantCategory, this.fraudCheckEnabled})
      : super._();

  factory _$FraudDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FraudDetailsImplFromJson(json);

  @override
  final String? merchantCreatedAt;
  @override
  final String? merchantCategory;
  @override
  final String? fraudCheckEnabled;

  @override
  String toString() {
    return 'FraudDetails(merchantCreatedAt: $merchantCreatedAt, merchantCategory: $merchantCategory, fraudCheckEnabled: $fraudCheckEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FraudDetailsImpl &&
            (identical(other.merchantCreatedAt, merchantCreatedAt) ||
                other.merchantCreatedAt == merchantCreatedAt) &&
            (identical(other.merchantCategory, merchantCategory) ||
                other.merchantCategory == merchantCategory) &&
            (identical(other.fraudCheckEnabled, fraudCheckEnabled) ||
                other.fraudCheckEnabled == fraudCheckEnabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, merchantCreatedAt, merchantCategory, fraudCheckEnabled);

  /// Create a copy of FraudDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FraudDetailsImplCopyWith<_$FraudDetailsImpl> get copyWith =>
      __$$FraudDetailsImplCopyWithImpl<_$FraudDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FraudDetailsImplToJson(
      this,
    );
  }
}

abstract class _FraudDetails extends FraudDetails {
  const factory _FraudDetails(
      {final String? merchantCreatedAt,
      final String? merchantCategory,
      final String? fraudCheckEnabled}) = _$FraudDetailsImpl;
  const _FraudDetails._() : super._();

  factory _FraudDetails.fromJson(Map<String, dynamic> json) =
      _$FraudDetailsImpl.fromJson;

  @override
  String? get merchantCreatedAt;
  @override
  String? get merchantCategory;
  @override
  String? get fraudCheckEnabled;

  /// Create a copy of FraudDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FraudDetailsImplCopyWith<_$FraudDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
