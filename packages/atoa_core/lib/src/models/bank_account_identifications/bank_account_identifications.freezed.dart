// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_account_identifications.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankAccountIdentifications _$BankAccountIdentificationsFromJson(
    Map<String, dynamic> json) {
  return _BankAccountIdentifications.fromJson(json);
}

/// @nodoc
mixin _$BankAccountIdentifications {
  String get type => throw _privateConstructorUsedError;
  String? get identification => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankAccountIdentificationsCopyWith<BankAccountIdentifications>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankAccountIdentificationsCopyWith<$Res> {
  factory $BankAccountIdentificationsCopyWith(BankAccountIdentifications value,
          $Res Function(BankAccountIdentifications) then) =
      _$BankAccountIdentificationsCopyWithImpl<$Res,
          BankAccountIdentifications>;
  @useResult
  $Res call({String type, String? identification});
}

/// @nodoc
class _$BankAccountIdentificationsCopyWithImpl<$Res,
        $Val extends BankAccountIdentifications>
    implements $BankAccountIdentificationsCopyWith<$Res> {
  _$BankAccountIdentificationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? identification = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      identification: freezed == identification
          ? _value.identification
          : identification // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankAccountIdentificationsImplCopyWith<$Res>
    implements $BankAccountIdentificationsCopyWith<$Res> {
  factory _$$BankAccountIdentificationsImplCopyWith(
          _$BankAccountIdentificationsImpl value,
          $Res Function(_$BankAccountIdentificationsImpl) then) =
      __$$BankAccountIdentificationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String? identification});
}

/// @nodoc
class __$$BankAccountIdentificationsImplCopyWithImpl<$Res>
    extends _$BankAccountIdentificationsCopyWithImpl<$Res,
        _$BankAccountIdentificationsImpl>
    implements _$$BankAccountIdentificationsImplCopyWith<$Res> {
  __$$BankAccountIdentificationsImplCopyWithImpl(
      _$BankAccountIdentificationsImpl _value,
      $Res Function(_$BankAccountIdentificationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? identification = freezed,
  }) {
    return _then(_$BankAccountIdentificationsImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      identification: freezed == identification
          ? _value.identification
          : identification // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankAccountIdentificationsImpl extends _BankAccountIdentifications {
  const _$BankAccountIdentificationsImpl(
      {required this.type, required this.identification})
      : super._();

  factory _$BankAccountIdentificationsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BankAccountIdentificationsImplFromJson(json);

  @override
  final String type;
  @override
  final String? identification;

  @override
  String toString() {
    return 'BankAccountIdentifications(type: $type, identification: $identification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankAccountIdentificationsImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.identification, identification) ||
                other.identification == identification));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, identification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankAccountIdentificationsImplCopyWith<_$BankAccountIdentificationsImpl>
      get copyWith => __$$BankAccountIdentificationsImplCopyWithImpl<
          _$BankAccountIdentificationsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankAccountIdentificationsImplToJson(
      this,
    );
  }
}

abstract class _BankAccountIdentifications extends BankAccountIdentifications {
  const factory _BankAccountIdentifications(
          {required final String type, required final String? identification}) =
      _$BankAccountIdentificationsImpl;
  const _BankAccountIdentifications._() : super._();

  factory _BankAccountIdentifications.fromJson(Map<String, dynamic> json) =
      _$BankAccountIdentificationsImpl.fromJson;

  @override
  String get type;
  @override
  String? get identification;
  @override
  @JsonKey(ignore: true)
  _$$BankAccountIdentificationsImplCopyWith<_$BankAccountIdentificationsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
