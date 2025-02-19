// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payer_bank_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PayerBankDetails _$PayerBankDetailsFromJson(Map<String, dynamic> json) {
  return _PayerBankDetails.fromJson(json);
}

/// @nodoc
mixin _$PayerBankDetails {
  @JsonKey(includeIfNull: false)
  String? get name => throw _privateConstructorUsedError;
  List<BankAccountIdentifications>? get accountIdentifications =>
      throw _privateConstructorUsedError;

  /// Serializes this PayerBankDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayerBankDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayerBankDetailsCopyWith<PayerBankDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayerBankDetailsCopyWith<$Res> {
  factory $PayerBankDetailsCopyWith(
          PayerBankDetails value, $Res Function(PayerBankDetails) then) =
      _$PayerBankDetailsCopyWithImpl<$Res, PayerBankDetails>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? name,
      List<BankAccountIdentifications>? accountIdentifications});
}

/// @nodoc
class _$PayerBankDetailsCopyWithImpl<$Res, $Val extends PayerBankDetails>
    implements $PayerBankDetailsCopyWith<$Res> {
  _$PayerBankDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayerBankDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? accountIdentifications = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      accountIdentifications: freezed == accountIdentifications
          ? _value.accountIdentifications
          : accountIdentifications // ignore: cast_nullable_to_non_nullable
              as List<BankAccountIdentifications>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayerBankDetailsImplCopyWith<$Res>
    implements $PayerBankDetailsCopyWith<$Res> {
  factory _$$PayerBankDetailsImplCopyWith(_$PayerBankDetailsImpl value,
          $Res Function(_$PayerBankDetailsImpl) then) =
      __$$PayerBankDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? name,
      List<BankAccountIdentifications>? accountIdentifications});
}

/// @nodoc
class __$$PayerBankDetailsImplCopyWithImpl<$Res>
    extends _$PayerBankDetailsCopyWithImpl<$Res, _$PayerBankDetailsImpl>
    implements _$$PayerBankDetailsImplCopyWith<$Res> {
  __$$PayerBankDetailsImplCopyWithImpl(_$PayerBankDetailsImpl _value,
      $Res Function(_$PayerBankDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayerBankDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? accountIdentifications = freezed,
  }) {
    return _then(_$PayerBankDetailsImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      accountIdentifications: freezed == accountIdentifications
          ? _value._accountIdentifications
          : accountIdentifications // ignore: cast_nullable_to_non_nullable
              as List<BankAccountIdentifications>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayerBankDetailsImpl implements _PayerBankDetails {
  _$PayerBankDetailsImpl(
      {@JsonKey(includeIfNull: false) this.name,
      final List<BankAccountIdentifications>? accountIdentifications})
      : _accountIdentifications = accountIdentifications;

  factory _$PayerBankDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayerBankDetailsImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String? name;
  final List<BankAccountIdentifications>? _accountIdentifications;
  @override
  List<BankAccountIdentifications>? get accountIdentifications {
    final value = _accountIdentifications;
    if (value == null) return null;
    if (_accountIdentifications is EqualUnmodifiableListView)
      return _accountIdentifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PayerBankDetails(name: $name, accountIdentifications: $accountIdentifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayerBankDetailsImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(
                other._accountIdentifications, _accountIdentifications));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(_accountIdentifications));

  /// Create a copy of PayerBankDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayerBankDetailsImplCopyWith<_$PayerBankDetailsImpl> get copyWith =>
      __$$PayerBankDetailsImplCopyWithImpl<_$PayerBankDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayerBankDetailsImplToJson(
      this,
    );
  }
}

abstract class _PayerBankDetails implements PayerBankDetails {
  factory _PayerBankDetails(
          {@JsonKey(includeIfNull: false) final String? name,
          final List<BankAccountIdentifications>? accountIdentifications}) =
      _$PayerBankDetailsImpl;

  factory _PayerBankDetails.fromJson(Map<String, dynamic> json) =
      _$PayerBankDetailsImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String? get name;
  @override
  List<BankAccountIdentifications>? get accountIdentifications;

  /// Create a copy of PayerBankDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayerBankDetailsImplCopyWith<_$PayerBankDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
