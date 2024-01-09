// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchant_payee_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MerchantPayeeAddress _$MerchantPayeeAddressFromJson(Map<String, dynamic> json) {
  return _MerchantPayeeAddress.fromJson(json);
}

/// @nodoc
mixin _$MerchantPayeeAddress {
  String? get country => throw _privateConstructorUsedError;
  String? get postCode => throw _privateConstructorUsedError;
  String? get townName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MerchantPayeeAddressCopyWith<MerchantPayeeAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantPayeeAddressCopyWith<$Res> {
  factory $MerchantPayeeAddressCopyWith(MerchantPayeeAddress value,
          $Res Function(MerchantPayeeAddress) then) =
      _$MerchantPayeeAddressCopyWithImpl<$Res, MerchantPayeeAddress>;
  @useResult
  $Res call({String? country, String? postCode, String? townName});
}

/// @nodoc
class _$MerchantPayeeAddressCopyWithImpl<$Res,
        $Val extends MerchantPayeeAddress>
    implements $MerchantPayeeAddressCopyWith<$Res> {
  _$MerchantPayeeAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? postCode = freezed,
    Object? townName = freezed,
  }) {
    return _then(_value.copyWith(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      postCode: freezed == postCode
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String?,
      townName: freezed == townName
          ? _value.townName
          : townName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MerchantPayeeAddressImplCopyWith<$Res>
    implements $MerchantPayeeAddressCopyWith<$Res> {
  factory _$$MerchantPayeeAddressImplCopyWith(_$MerchantPayeeAddressImpl value,
          $Res Function(_$MerchantPayeeAddressImpl) then) =
      __$$MerchantPayeeAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? country, String? postCode, String? townName});
}

/// @nodoc
class __$$MerchantPayeeAddressImplCopyWithImpl<$Res>
    extends _$MerchantPayeeAddressCopyWithImpl<$Res, _$MerchantPayeeAddressImpl>
    implements _$$MerchantPayeeAddressImplCopyWith<$Res> {
  __$$MerchantPayeeAddressImplCopyWithImpl(_$MerchantPayeeAddressImpl _value,
      $Res Function(_$MerchantPayeeAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? postCode = freezed,
    Object? townName = freezed,
  }) {
    return _then(_$MerchantPayeeAddressImpl(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      postCode: freezed == postCode
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String?,
      townName: freezed == townName
          ? _value.townName
          : townName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MerchantPayeeAddressImpl extends _MerchantPayeeAddress {
  const _$MerchantPayeeAddressImpl({this.country, this.postCode, this.townName})
      : super._();

  factory _$MerchantPayeeAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$MerchantPayeeAddressImplFromJson(json);

  @override
  final String? country;
  @override
  final String? postCode;
  @override
  final String? townName;

  @override
  String toString() {
    return 'MerchantPayeeAddress(country: $country, postCode: $postCode, townName: $townName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchantPayeeAddressImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.postCode, postCode) ||
                other.postCode == postCode) &&
            (identical(other.townName, townName) ||
                other.townName == townName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, country, postCode, townName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MerchantPayeeAddressImplCopyWith<_$MerchantPayeeAddressImpl>
      get copyWith =>
          __$$MerchantPayeeAddressImplCopyWithImpl<_$MerchantPayeeAddressImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MerchantPayeeAddressImplToJson(
      this,
    );
  }
}

abstract class _MerchantPayeeAddress extends MerchantPayeeAddress {
  const factory _MerchantPayeeAddress(
      {final String? country,
      final String? postCode,
      final String? townName}) = _$MerchantPayeeAddressImpl;
  const _MerchantPayeeAddress._() : super._();

  factory _MerchantPayeeAddress.fromJson(Map<String, dynamic> json) =
      _$MerchantPayeeAddressImpl.fromJson;

  @override
  String? get country;
  @override
  String? get postCode;
  @override
  String? get townName;
  @override
  @JsonKey(ignore: true)
  _$$MerchantPayeeAddressImplCopyWith<_$MerchantPayeeAddressImpl>
      get copyWith => throw _privateConstructorUsedError;
}
