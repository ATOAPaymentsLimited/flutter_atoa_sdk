// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'iso_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IsoStatus _$IsoStatusFromJson(Map<String, dynamic> json) {
  return _IsoStatus.fromJson(json);
}

/// @nodoc
mixin _$IsoStatus {
  String? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this IsoStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IsoStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IsoStatusCopyWith<IsoStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsoStatusCopyWith<$Res> {
  factory $IsoStatusCopyWith(IsoStatus value, $Res Function(IsoStatus) then) =
      _$IsoStatusCopyWithImpl<$Res, IsoStatus>;
  @useResult
  $Res call({String? code, String? name});
}

/// @nodoc
class _$IsoStatusCopyWithImpl<$Res, $Val extends IsoStatus>
    implements $IsoStatusCopyWith<$Res> {
  _$IsoStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IsoStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IsoStatusImplCopyWith<$Res>
    implements $IsoStatusCopyWith<$Res> {
  factory _$$IsoStatusImplCopyWith(
          _$IsoStatusImpl value, $Res Function(_$IsoStatusImpl) then) =
      __$$IsoStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code, String? name});
}

/// @nodoc
class __$$IsoStatusImplCopyWithImpl<$Res>
    extends _$IsoStatusCopyWithImpl<$Res, _$IsoStatusImpl>
    implements _$$IsoStatusImplCopyWith<$Res> {
  __$$IsoStatusImplCopyWithImpl(
      _$IsoStatusImpl _value, $Res Function(_$IsoStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of IsoStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_$IsoStatusImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IsoStatusImpl implements _IsoStatus {
  _$IsoStatusImpl({this.code, this.name});

  factory _$IsoStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$IsoStatusImplFromJson(json);

  @override
  final String? code;
  @override
  final String? name;

  @override
  String toString() {
    return 'IsoStatus(code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsoStatusImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  /// Create a copy of IsoStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IsoStatusImplCopyWith<_$IsoStatusImpl> get copyWith =>
      __$$IsoStatusImplCopyWithImpl<_$IsoStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IsoStatusImplToJson(
      this,
    );
  }
}

abstract class _IsoStatus implements IsoStatus {
  factory _IsoStatus({final String? code, final String? name}) =
      _$IsoStatusImpl;

  factory _IsoStatus.fromJson(Map<String, dynamic> json) =
      _$IsoStatusImpl.fromJson;

  @override
  String? get code;
  @override
  String? get name;

  /// Create a copy of IsoStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IsoStatusImplCopyWith<_$IsoStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
