// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tips_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TipsInfo _$TipsInfoFromJson(Map<String, dynamic> json) {
  return _TipsInfo.fromJson(json);
}

/// @nodoc
mixin _$TipsInfo {
  @JsonKey(toJson: _parseEnumToIndex, fromJson: _jsonToEnum)
  TipsInfoTypeEnum get tipType => throw _privateConstructorUsedError;
  List<TipsOptionDetails> get tipOptions => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  bool? get allowCustomTips => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TipsInfoCopyWith<TipsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipsInfoCopyWith<$Res> {
  factory $TipsInfoCopyWith(TipsInfo value, $Res Function(TipsInfo) then) =
      _$TipsInfoCopyWithImpl<$Res, TipsInfo>;
  @useResult
  $Res call(
      {@JsonKey(toJson: _parseEnumToIndex, fromJson: _jsonToEnum)
      TipsInfoTypeEnum tipType,
      List<TipsOptionDetails> tipOptions,
      @JsonKey(includeIfNull: false) String? id,
      bool? status,
      bool? allowCustomTips});
}

/// @nodoc
class _$TipsInfoCopyWithImpl<$Res, $Val extends TipsInfo>
    implements $TipsInfoCopyWith<$Res> {
  _$TipsInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tipType = null,
    Object? tipOptions = null,
    Object? id = freezed,
    Object? status = freezed,
    Object? allowCustomTips = freezed,
  }) {
    return _then(_value.copyWith(
      tipType: null == tipType
          ? _value.tipType
          : tipType // ignore: cast_nullable_to_non_nullable
              as TipsInfoTypeEnum,
      tipOptions: null == tipOptions
          ? _value.tipOptions
          : tipOptions // ignore: cast_nullable_to_non_nullable
              as List<TipsOptionDetails>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowCustomTips: freezed == allowCustomTips
          ? _value.allowCustomTips
          : allowCustomTips // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TipsInfoImplCopyWith<$Res>
    implements $TipsInfoCopyWith<$Res> {
  factory _$$TipsInfoImplCopyWith(
          _$TipsInfoImpl value, $Res Function(_$TipsInfoImpl) then) =
      __$$TipsInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(toJson: _parseEnumToIndex, fromJson: _jsonToEnum)
      TipsInfoTypeEnum tipType,
      List<TipsOptionDetails> tipOptions,
      @JsonKey(includeIfNull: false) String? id,
      bool? status,
      bool? allowCustomTips});
}

/// @nodoc
class __$$TipsInfoImplCopyWithImpl<$Res>
    extends _$TipsInfoCopyWithImpl<$Res, _$TipsInfoImpl>
    implements _$$TipsInfoImplCopyWith<$Res> {
  __$$TipsInfoImplCopyWithImpl(
      _$TipsInfoImpl _value, $Res Function(_$TipsInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tipType = null,
    Object? tipOptions = null,
    Object? id = freezed,
    Object? status = freezed,
    Object? allowCustomTips = freezed,
  }) {
    return _then(_$TipsInfoImpl(
      tipType: null == tipType
          ? _value.tipType
          : tipType // ignore: cast_nullable_to_non_nullable
              as TipsInfoTypeEnum,
      tipOptions: null == tipOptions
          ? _value._tipOptions
          : tipOptions // ignore: cast_nullable_to_non_nullable
              as List<TipsOptionDetails>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowCustomTips: freezed == allowCustomTips
          ? _value.allowCustomTips
          : allowCustomTips // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TipsInfoImpl extends _TipsInfo {
  const _$TipsInfoImpl(
      {@JsonKey(toJson: _parseEnumToIndex, fromJson: _jsonToEnum)
      required this.tipType,
      required final List<TipsOptionDetails> tipOptions,
      @JsonKey(includeIfNull: false) this.id,
      this.status,
      this.allowCustomTips = true})
      : _tipOptions = tipOptions,
        super._();

  factory _$TipsInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TipsInfoImplFromJson(json);

  @override
  @JsonKey(toJson: _parseEnumToIndex, fromJson: _jsonToEnum)
  final TipsInfoTypeEnum tipType;
  final List<TipsOptionDetails> _tipOptions;
  @override
  List<TipsOptionDetails> get tipOptions {
    if (_tipOptions is EqualUnmodifiableListView) return _tipOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tipOptions);
  }

  @override
  @JsonKey(includeIfNull: false)
  final String? id;
  @override
  final bool? status;
  @override
  @JsonKey()
  final bool? allowCustomTips;

  @override
  String toString() {
    return 'TipsInfo(tipType: $tipType, tipOptions: $tipOptions, id: $id, status: $status, allowCustomTips: $allowCustomTips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TipsInfoImpl &&
            (identical(other.tipType, tipType) || other.tipType == tipType) &&
            const DeepCollectionEquality()
                .equals(other._tipOptions, _tipOptions) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.allowCustomTips, allowCustomTips) ||
                other.allowCustomTips == allowCustomTips));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      tipType,
      const DeepCollectionEquality().hash(_tipOptions),
      id,
      status,
      allowCustomTips);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TipsInfoImplCopyWith<_$TipsInfoImpl> get copyWith =>
      __$$TipsInfoImplCopyWithImpl<_$TipsInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TipsInfoImplToJson(
      this,
    );
  }
}

abstract class _TipsInfo extends TipsInfo {
  const factory _TipsInfo(
      {@JsonKey(toJson: _parseEnumToIndex, fromJson: _jsonToEnum)
      required final TipsInfoTypeEnum tipType,
      required final List<TipsOptionDetails> tipOptions,
      @JsonKey(includeIfNull: false) final String? id,
      final bool? status,
      final bool? allowCustomTips}) = _$TipsInfoImpl;
  const _TipsInfo._() : super._();

  factory _TipsInfo.fromJson(Map<String, dynamic> json) =
      _$TipsInfoImpl.fromJson;

  @override
  @JsonKey(toJson: _parseEnumToIndex, fromJson: _jsonToEnum)
  TipsInfoTypeEnum get tipType;
  @override
  List<TipsOptionDetails> get tipOptions;
  @override
  @JsonKey(includeIfNull: false)
  String? get id;
  @override
  bool? get status;
  @override
  bool? get allowCustomTips;
  @override
  @JsonKey(ignore: true)
  _$$TipsInfoImplCopyWith<_$TipsInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
