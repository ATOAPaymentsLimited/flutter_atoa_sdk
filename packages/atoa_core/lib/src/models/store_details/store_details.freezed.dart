// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreDetails _$StoreDetailsFromJson(Map<String, dynamic> json) {
  return _StoreDetails.fromJson(json);
}

/// @nodoc
mixin _$StoreDetails {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, fromJson: _locationNameFromJson)
  String? get locationName => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreDetailsCopyWith<StoreDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDetailsCopyWith<$Res> {
  factory $StoreDetailsCopyWith(
          StoreDetails value, $Res Function(StoreDetails) then) =
      _$StoreDetailsCopyWithImpl<$Res, StoreDetails>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(includeIfNull: false, fromJson: _locationNameFromJson)
      String? locationName,
      String? address});
}

/// @nodoc
class _$StoreDetailsCopyWithImpl<$Res, $Val extends StoreDetails>
    implements $StoreDetailsCopyWith<$Res> {
  _$StoreDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? locationName = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreDetailsImplCopyWith<$Res>
    implements $StoreDetailsCopyWith<$Res> {
  factory _$$StoreDetailsImplCopyWith(
          _$StoreDetailsImpl value, $Res Function(_$StoreDetailsImpl) then) =
      __$$StoreDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(includeIfNull: false, fromJson: _locationNameFromJson)
      String? locationName,
      String? address});
}

/// @nodoc
class __$$StoreDetailsImplCopyWithImpl<$Res>
    extends _$StoreDetailsCopyWithImpl<$Res, _$StoreDetailsImpl>
    implements _$$StoreDetailsImplCopyWith<$Res> {
  __$$StoreDetailsImplCopyWithImpl(
      _$StoreDetailsImpl _value, $Res Function(_$StoreDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? locationName = freezed,
    Object? address = freezed,
  }) {
    return _then(_$StoreDetailsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreDetailsImpl extends _StoreDetails {
  const _$StoreDetailsImpl(
      {required this.id,
      @JsonKey(includeIfNull: false, fromJson: _locationNameFromJson)
      this.locationName,
      this.address})
      : super._();

  factory _$StoreDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreDetailsImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(includeIfNull: false, fromJson: _locationNameFromJson)
  final String? locationName;
  @override
  final String? address;

  @override
  String toString() {
    return 'StoreDetails(id: $id, locationName: $locationName, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, locationName, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreDetailsImplCopyWith<_$StoreDetailsImpl> get copyWith =>
      __$$StoreDetailsImplCopyWithImpl<_$StoreDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreDetailsImplToJson(
      this,
    );
  }
}

abstract class _StoreDetails extends StoreDetails {
  const factory _StoreDetails(
      {required final String id,
      @JsonKey(includeIfNull: false, fromJson: _locationNameFromJson)
      final String? locationName,
      final String? address}) = _$StoreDetailsImpl;
  const _StoreDetails._() : super._();

  factory _StoreDetails.fromJson(Map<String, dynamic> json) =
      _$StoreDetailsImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(includeIfNull: false, fromJson: _locationNameFromJson)
  String? get locationName;
  @override
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$StoreDetailsImplCopyWith<_$StoreDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
