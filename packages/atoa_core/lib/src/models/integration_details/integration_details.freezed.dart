// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'integration_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IntegrationDetails _$IntegrationDetailsFromJson(Map<String, dynamic> json) {
  return _IntegrationDetails.fromJson(json);
}

/// @nodoc
mixin _$IntegrationDetails {
  String? get storeId => throw _privateConstructorUsedError;
  String? get shopName => throw _privateConstructorUsedError;
  String? get shopImage => throw _privateConstructorUsedError;
  @parseToStringNull
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get paymentUrl => throw _privateConstructorUsedError;

  /// Serializes this IntegrationDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IntegrationDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IntegrationDetailsCopyWith<IntegrationDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntegrationDetailsCopyWith<$Res> {
  factory $IntegrationDetailsCopyWith(
          IntegrationDetails value, $Res Function(IntegrationDetails) then) =
      _$IntegrationDetailsCopyWithImpl<$Res, IntegrationDetails>;
  @useResult
  $Res call(
      {String? storeId,
      String? shopName,
      String? shopImage,
      @parseToStringNull String? orderId,
      @JsonKey(includeIfNull: false) String? paymentUrl});
}

/// @nodoc
class _$IntegrationDetailsCopyWithImpl<$Res, $Val extends IntegrationDetails>
    implements $IntegrationDetailsCopyWith<$Res> {
  _$IntegrationDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IntegrationDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = freezed,
    Object? shopName = freezed,
    Object? shopImage = freezed,
    Object? orderId = freezed,
    Object? paymentUrl = freezed,
  }) {
    return _then(_value.copyWith(
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      shopName: freezed == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String?,
      shopImage: freezed == shopImage
          ? _value.shopImage
          : shopImage // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentUrl: freezed == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IntegrationDetailsImplCopyWith<$Res>
    implements $IntegrationDetailsCopyWith<$Res> {
  factory _$$IntegrationDetailsImplCopyWith(_$IntegrationDetailsImpl value,
          $Res Function(_$IntegrationDetailsImpl) then) =
      __$$IntegrationDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? storeId,
      String? shopName,
      String? shopImage,
      @parseToStringNull String? orderId,
      @JsonKey(includeIfNull: false) String? paymentUrl});
}

/// @nodoc
class __$$IntegrationDetailsImplCopyWithImpl<$Res>
    extends _$IntegrationDetailsCopyWithImpl<$Res, _$IntegrationDetailsImpl>
    implements _$$IntegrationDetailsImplCopyWith<$Res> {
  __$$IntegrationDetailsImplCopyWithImpl(_$IntegrationDetailsImpl _value,
      $Res Function(_$IntegrationDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of IntegrationDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = freezed,
    Object? shopName = freezed,
    Object? shopImage = freezed,
    Object? orderId = freezed,
    Object? paymentUrl = freezed,
  }) {
    return _then(_$IntegrationDetailsImpl(
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      shopName: freezed == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String?,
      shopImage: freezed == shopImage
          ? _value.shopImage
          : shopImage // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentUrl: freezed == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IntegrationDetailsImpl implements _IntegrationDetails {
  _$IntegrationDetailsImpl(
      {this.storeId,
      this.shopName,
      this.shopImage,
      @parseToStringNull this.orderId,
      @JsonKey(includeIfNull: false) this.paymentUrl});

  factory _$IntegrationDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntegrationDetailsImplFromJson(json);

  @override
  final String? storeId;
  @override
  final String? shopName;
  @override
  final String? shopImage;
  @override
  @parseToStringNull
  final String? orderId;
  @override
  @JsonKey(includeIfNull: false)
  final String? paymentUrl;

  @override
  String toString() {
    return 'IntegrationDetails(storeId: $storeId, shopName: $shopName, shopImage: $shopImage, orderId: $orderId, paymentUrl: $paymentUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntegrationDetailsImpl &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.shopName, shopName) ||
                other.shopName == shopName) &&
            (identical(other.shopImage, shopImage) ||
                other.shopImage == shopImage) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.paymentUrl, paymentUrl) ||
                other.paymentUrl == paymentUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, storeId, shopName, shopImage, orderId, paymentUrl);

  /// Create a copy of IntegrationDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IntegrationDetailsImplCopyWith<_$IntegrationDetailsImpl> get copyWith =>
      __$$IntegrationDetailsImplCopyWithImpl<_$IntegrationDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IntegrationDetailsImplToJson(
      this,
    );
  }
}

abstract class _IntegrationDetails implements IntegrationDetails {
  factory _IntegrationDetails(
          {final String? storeId,
          final String? shopName,
          final String? shopImage,
          @parseToStringNull final String? orderId,
          @JsonKey(includeIfNull: false) final String? paymentUrl}) =
      _$IntegrationDetailsImpl;

  factory _IntegrationDetails.fromJson(Map<String, dynamic> json) =
      _$IntegrationDetailsImpl.fromJson;

  @override
  String? get storeId;
  @override
  String? get shopName;
  @override
  String? get shopImage;
  @override
  @parseToStringNull
  String? get orderId;
  @override
  @JsonKey(includeIfNull: false)
  String? get paymentUrl;

  /// Create a copy of IntegrationDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IntegrationDetailsImplCopyWith<_$IntegrationDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
