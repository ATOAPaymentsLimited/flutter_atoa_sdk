// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tips_option_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TipsOptionDetails _$TipsOptionDetailsFromJson(Map<String, dynamic> json) {
  return _TipsOptionDetails.fromJson(json);
}

/// @nodoc
mixin _$TipsOptionDetails {
  double get value => throw _privateConstructorUsedError;
  bool get mostTipped => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TipsOptionDetailsCopyWith<TipsOptionDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipsOptionDetailsCopyWith<$Res> {
  factory $TipsOptionDetailsCopyWith(
          TipsOptionDetails value, $Res Function(TipsOptionDetails) then) =
      _$TipsOptionDetailsCopyWithImpl<$Res, TipsOptionDetails>;
  @useResult
  $Res call({double value, bool mostTipped});
}

/// @nodoc
class _$TipsOptionDetailsCopyWithImpl<$Res, $Val extends TipsOptionDetails>
    implements $TipsOptionDetailsCopyWith<$Res> {
  _$TipsOptionDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? mostTipped = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      mostTipped: null == mostTipped
          ? _value.mostTipped
          : mostTipped // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TipsOptionDetailsImplCopyWith<$Res>
    implements $TipsOptionDetailsCopyWith<$Res> {
  factory _$$TipsOptionDetailsImplCopyWith(_$TipsOptionDetailsImpl value,
          $Res Function(_$TipsOptionDetailsImpl) then) =
      __$$TipsOptionDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value, bool mostTipped});
}

/// @nodoc
class __$$TipsOptionDetailsImplCopyWithImpl<$Res>
    extends _$TipsOptionDetailsCopyWithImpl<$Res, _$TipsOptionDetailsImpl>
    implements _$$TipsOptionDetailsImplCopyWith<$Res> {
  __$$TipsOptionDetailsImplCopyWithImpl(_$TipsOptionDetailsImpl _value,
      $Res Function(_$TipsOptionDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? mostTipped = null,
  }) {
    return _then(_$TipsOptionDetailsImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      mostTipped: null == mostTipped
          ? _value.mostTipped
          : mostTipped // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TipsOptionDetailsImpl extends _TipsOptionDetails {
  const _$TipsOptionDetailsImpl({required this.value, this.mostTipped = false})
      : super._();

  factory _$TipsOptionDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TipsOptionDetailsImplFromJson(json);

  @override
  final double value;
  @override
  @JsonKey()
  final bool mostTipped;

  @override
  String toString() {
    return 'TipsOptionDetails(value: $value, mostTipped: $mostTipped)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TipsOptionDetailsImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.mostTipped, mostTipped) ||
                other.mostTipped == mostTipped));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, mostTipped);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TipsOptionDetailsImplCopyWith<_$TipsOptionDetailsImpl> get copyWith =>
      __$$TipsOptionDetailsImplCopyWithImpl<_$TipsOptionDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TipsOptionDetailsImplToJson(
      this,
    );
  }
}

abstract class _TipsOptionDetails extends TipsOptionDetails {
  const factory _TipsOptionDetails(
      {required final double value,
      final bool mostTipped}) = _$TipsOptionDetailsImpl;
  const _TipsOptionDetails._() : super._();

  factory _TipsOptionDetails.fromJson(Map<String, dynamic> json) =
      _$TipsOptionDetailsImpl.fromJson;

  @override
  double get value;
  @override
  bool get mostTipped;
  @override
  @JsonKey(ignore: true)
  _$$TipsOptionDetailsImplCopyWith<_$TipsOptionDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
