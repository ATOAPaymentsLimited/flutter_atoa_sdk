// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BankMedia _$BankMediaFromJson(Map<String, dynamic> json) {
  return _BankMedia.fromJson(json);
}

/// @nodoc
mixin _$BankMedia {
  String get source => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Serializes this BankMedia to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BankMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BankMediaCopyWith<BankMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankMediaCopyWith<$Res> {
  factory $BankMediaCopyWith(BankMedia value, $Res Function(BankMedia) then) =
      _$BankMediaCopyWithImpl<$Res, BankMedia>;
  @useResult
  $Res call({String source, String type});
}

/// @nodoc
class _$BankMediaCopyWithImpl<$Res, $Val extends BankMedia>
    implements $BankMediaCopyWith<$Res> {
  _$BankMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BankMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankMediaImplCopyWith<$Res>
    implements $BankMediaCopyWith<$Res> {
  factory _$$BankMediaImplCopyWith(
          _$BankMediaImpl value, $Res Function(_$BankMediaImpl) then) =
      __$$BankMediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String source, String type});
}

/// @nodoc
class __$$BankMediaImplCopyWithImpl<$Res>
    extends _$BankMediaCopyWithImpl<$Res, _$BankMediaImpl>
    implements _$$BankMediaImplCopyWith<$Res> {
  __$$BankMediaImplCopyWithImpl(
      _$BankMediaImpl _value, $Res Function(_$BankMediaImpl) _then)
      : super(_value, _then);

  /// Create a copy of BankMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? type = null,
  }) {
    return _then(_$BankMediaImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankMediaImpl extends _BankMedia {
  const _$BankMediaImpl({required this.source, required this.type}) : super._();

  factory _$BankMediaImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankMediaImplFromJson(json);

  @override
  final String source;
  @override
  final String type;

  @override
  String toString() {
    return 'BankMedia(source: $source, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankMediaImpl &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, source, type);

  /// Create a copy of BankMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BankMediaImplCopyWith<_$BankMediaImpl> get copyWith =>
      __$$BankMediaImplCopyWithImpl<_$BankMediaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankMediaImplToJson(
      this,
    );
  }
}

abstract class _BankMedia extends BankMedia {
  const factory _BankMedia(
      {required final String source,
      required final String type}) = _$BankMediaImpl;
  const _BankMedia._() : super._();

  factory _BankMedia.fromJson(Map<String, dynamic> json) =
      _$BankMediaImpl.fromJson;

  @override
  String get source;
  @override
  String get type;

  /// Create a copy of BankMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BankMediaImplCopyWith<_$BankMediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
