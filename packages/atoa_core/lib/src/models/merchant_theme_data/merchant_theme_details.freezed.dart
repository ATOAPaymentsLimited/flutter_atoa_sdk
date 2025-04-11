// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchant_theme_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MerchantThemeDetails _$MerchantThemeDetailsFromJson(Map<String, dynamic> json) {
  return _MerchantThemeDetails.fromJson(json);
}

/// @nodoc
mixin _$MerchantThemeDetails {
  String? get colorCode => throw _privateConstructorUsedError;
  String? get foregroundColor => throw _privateConstructorUsedError;

  /// Serializes this MerchantThemeDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MerchantThemeDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MerchantThemeDetailsCopyWith<MerchantThemeDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantThemeDetailsCopyWith<$Res> {
  factory $MerchantThemeDetailsCopyWith(MerchantThemeDetails value,
          $Res Function(MerchantThemeDetails) then) =
      _$MerchantThemeDetailsCopyWithImpl<$Res, MerchantThemeDetails>;
  @useResult
  $Res call({String? colorCode, String? foregroundColor});
}

/// @nodoc
class _$MerchantThemeDetailsCopyWithImpl<$Res,
        $Val extends MerchantThemeDetails>
    implements $MerchantThemeDetailsCopyWith<$Res> {
  _$MerchantThemeDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchantThemeDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorCode = freezed,
    Object? foregroundColor = freezed,
  }) {
    return _then(_value.copyWith(
      colorCode: freezed == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      foregroundColor: freezed == foregroundColor
          ? _value.foregroundColor
          : foregroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MerchantThemeDetailsImplCopyWith<$Res>
    implements $MerchantThemeDetailsCopyWith<$Res> {
  factory _$$MerchantThemeDetailsImplCopyWith(_$MerchantThemeDetailsImpl value,
          $Res Function(_$MerchantThemeDetailsImpl) then) =
      __$$MerchantThemeDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? colorCode, String? foregroundColor});
}

/// @nodoc
class __$$MerchantThemeDetailsImplCopyWithImpl<$Res>
    extends _$MerchantThemeDetailsCopyWithImpl<$Res, _$MerchantThemeDetailsImpl>
    implements _$$MerchantThemeDetailsImplCopyWith<$Res> {
  __$$MerchantThemeDetailsImplCopyWithImpl(_$MerchantThemeDetailsImpl _value,
      $Res Function(_$MerchantThemeDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchantThemeDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorCode = freezed,
    Object? foregroundColor = freezed,
  }) {
    return _then(_$MerchantThemeDetailsImpl(
      colorCode: freezed == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      foregroundColor: freezed == foregroundColor
          ? _value.foregroundColor
          : foregroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MerchantThemeDetailsImpl extends _MerchantThemeDetails {
  const _$MerchantThemeDetailsImpl({this.colorCode, this.foregroundColor})
      : super._();

  factory _$MerchantThemeDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MerchantThemeDetailsImplFromJson(json);

  @override
  final String? colorCode;
  @override
  final String? foregroundColor;

  @override
  String toString() {
    return 'MerchantThemeDetails(colorCode: $colorCode, foregroundColor: $foregroundColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchantThemeDetailsImpl &&
            (identical(other.colorCode, colorCode) ||
                other.colorCode == colorCode) &&
            (identical(other.foregroundColor, foregroundColor) ||
                other.foregroundColor == foregroundColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, colorCode, foregroundColor);

  /// Create a copy of MerchantThemeDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MerchantThemeDetailsImplCopyWith<_$MerchantThemeDetailsImpl>
      get copyWith =>
          __$$MerchantThemeDetailsImplCopyWithImpl<_$MerchantThemeDetailsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MerchantThemeDetailsImplToJson(
      this,
    );
  }
}

abstract class _MerchantThemeDetails extends MerchantThemeDetails {
  const factory _MerchantThemeDetails(
      {final String? colorCode,
      final String? foregroundColor}) = _$MerchantThemeDetailsImpl;
  const _MerchantThemeDetails._() : super._();

  factory _MerchantThemeDetails.fromJson(Map<String, dynamic> json) =
      _$MerchantThemeDetailsImpl.fromJson;

  @override
  String? get colorCode;
  @override
  String? get foregroundColor;

  /// Create a copy of MerchantThemeDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MerchantThemeDetailsImplCopyWith<_$MerchantThemeDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
