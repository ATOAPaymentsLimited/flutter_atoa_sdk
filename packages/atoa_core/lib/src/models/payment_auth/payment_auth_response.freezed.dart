// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_auth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentAuthResponse _$PaymentAuthResponseFromJson(Map<String, dynamic> json) {
  return _PaymentAuthResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentAuthResponse {
  String get authorisationUrl => throw _privateConstructorUsedError;
  String get paymentIdempotencyId => throw _privateConstructorUsedError;
  String? get userUuid => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  List<String>? get featureScope => throw _privateConstructorUsedError;
  String? get tracingId => throw _privateConstructorUsedError;
  String? get deepLinkAuthorisationUrl => throw _privateConstructorUsedError;
  String? get deepLinkAndroidAuthorisationUrl =>
      throw _privateConstructorUsedError;
  String? get deepLinkAuthorisationUrlIOS => throw _privateConstructorUsedError;
  String? get appStoreLink => throw _privateConstructorUsedError;
  String? get androidPackageName => throw _privateConstructorUsedError;
  String? get iOSPackageName => throw _privateConstructorUsedError;

  /// Serializes this PaymentAuthResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentAuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentAuthResponseCopyWith<PaymentAuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentAuthResponseCopyWith<$Res> {
  factory $PaymentAuthResponseCopyWith(
          PaymentAuthResponse value, $Res Function(PaymentAuthResponse) then) =
      _$PaymentAuthResponseCopyWithImpl<$Res, PaymentAuthResponse>;
  @useResult
  $Res call(
      {String authorisationUrl,
      String paymentIdempotencyId,
      String? userUuid,
      String? status,
      List<String>? featureScope,
      String? tracingId,
      String? deepLinkAuthorisationUrl,
      String? deepLinkAndroidAuthorisationUrl,
      String? deepLinkAuthorisationUrlIOS,
      String? appStoreLink,
      String? androidPackageName,
      String? iOSPackageName});
}

/// @nodoc
class _$PaymentAuthResponseCopyWithImpl<$Res, $Val extends PaymentAuthResponse>
    implements $PaymentAuthResponseCopyWith<$Res> {
  _$PaymentAuthResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentAuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorisationUrl = null,
    Object? paymentIdempotencyId = null,
    Object? userUuid = freezed,
    Object? status = freezed,
    Object? featureScope = freezed,
    Object? tracingId = freezed,
    Object? deepLinkAuthorisationUrl = freezed,
    Object? deepLinkAndroidAuthorisationUrl = freezed,
    Object? deepLinkAuthorisationUrlIOS = freezed,
    Object? appStoreLink = freezed,
    Object? androidPackageName = freezed,
    Object? iOSPackageName = freezed,
  }) {
    return _then(_value.copyWith(
      authorisationUrl: null == authorisationUrl
          ? _value.authorisationUrl
          : authorisationUrl // ignore: cast_nullable_to_non_nullable
              as String,
      paymentIdempotencyId: null == paymentIdempotencyId
          ? _value.paymentIdempotencyId
          : paymentIdempotencyId // ignore: cast_nullable_to_non_nullable
              as String,
      userUuid: freezed == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      featureScope: freezed == featureScope
          ? _value.featureScope
          : featureScope // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tracingId: freezed == tracingId
          ? _value.tracingId
          : tracingId // ignore: cast_nullable_to_non_nullable
              as String?,
      deepLinkAuthorisationUrl: freezed == deepLinkAuthorisationUrl
          ? _value.deepLinkAuthorisationUrl
          : deepLinkAuthorisationUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      deepLinkAndroidAuthorisationUrl: freezed ==
              deepLinkAndroidAuthorisationUrl
          ? _value.deepLinkAndroidAuthorisationUrl
          : deepLinkAndroidAuthorisationUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      deepLinkAuthorisationUrlIOS: freezed == deepLinkAuthorisationUrlIOS
          ? _value.deepLinkAuthorisationUrlIOS
          : deepLinkAuthorisationUrlIOS // ignore: cast_nullable_to_non_nullable
              as String?,
      appStoreLink: freezed == appStoreLink
          ? _value.appStoreLink
          : appStoreLink // ignore: cast_nullable_to_non_nullable
              as String?,
      androidPackageName: freezed == androidPackageName
          ? _value.androidPackageName
          : androidPackageName // ignore: cast_nullable_to_non_nullable
              as String?,
      iOSPackageName: freezed == iOSPackageName
          ? _value.iOSPackageName
          : iOSPackageName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentAuthResponseImplCopyWith<$Res>
    implements $PaymentAuthResponseCopyWith<$Res> {
  factory _$$PaymentAuthResponseImplCopyWith(_$PaymentAuthResponseImpl value,
          $Res Function(_$PaymentAuthResponseImpl) then) =
      __$$PaymentAuthResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String authorisationUrl,
      String paymentIdempotencyId,
      String? userUuid,
      String? status,
      List<String>? featureScope,
      String? tracingId,
      String? deepLinkAuthorisationUrl,
      String? deepLinkAndroidAuthorisationUrl,
      String? deepLinkAuthorisationUrlIOS,
      String? appStoreLink,
      String? androidPackageName,
      String? iOSPackageName});
}

/// @nodoc
class __$$PaymentAuthResponseImplCopyWithImpl<$Res>
    extends _$PaymentAuthResponseCopyWithImpl<$Res, _$PaymentAuthResponseImpl>
    implements _$$PaymentAuthResponseImplCopyWith<$Res> {
  __$$PaymentAuthResponseImplCopyWithImpl(_$PaymentAuthResponseImpl _value,
      $Res Function(_$PaymentAuthResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentAuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorisationUrl = null,
    Object? paymentIdempotencyId = null,
    Object? userUuid = freezed,
    Object? status = freezed,
    Object? featureScope = freezed,
    Object? tracingId = freezed,
    Object? deepLinkAuthorisationUrl = freezed,
    Object? deepLinkAndroidAuthorisationUrl = freezed,
    Object? deepLinkAuthorisationUrlIOS = freezed,
    Object? appStoreLink = freezed,
    Object? androidPackageName = freezed,
    Object? iOSPackageName = freezed,
  }) {
    return _then(_$PaymentAuthResponseImpl(
      authorisationUrl: null == authorisationUrl
          ? _value.authorisationUrl
          : authorisationUrl // ignore: cast_nullable_to_non_nullable
              as String,
      paymentIdempotencyId: null == paymentIdempotencyId
          ? _value.paymentIdempotencyId
          : paymentIdempotencyId // ignore: cast_nullable_to_non_nullable
              as String,
      userUuid: freezed == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      featureScope: freezed == featureScope
          ? _value._featureScope
          : featureScope // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tracingId: freezed == tracingId
          ? _value.tracingId
          : tracingId // ignore: cast_nullable_to_non_nullable
              as String?,
      deepLinkAuthorisationUrl: freezed == deepLinkAuthorisationUrl
          ? _value.deepLinkAuthorisationUrl
          : deepLinkAuthorisationUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      deepLinkAndroidAuthorisationUrl: freezed ==
              deepLinkAndroidAuthorisationUrl
          ? _value.deepLinkAndroidAuthorisationUrl
          : deepLinkAndroidAuthorisationUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      deepLinkAuthorisationUrlIOS: freezed == deepLinkAuthorisationUrlIOS
          ? _value.deepLinkAuthorisationUrlIOS
          : deepLinkAuthorisationUrlIOS // ignore: cast_nullable_to_non_nullable
              as String?,
      appStoreLink: freezed == appStoreLink
          ? _value.appStoreLink
          : appStoreLink // ignore: cast_nullable_to_non_nullable
              as String?,
      androidPackageName: freezed == androidPackageName
          ? _value.androidPackageName
          : androidPackageName // ignore: cast_nullable_to_non_nullable
              as String?,
      iOSPackageName: freezed == iOSPackageName
          ? _value.iOSPackageName
          : iOSPackageName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentAuthResponseImpl extends _PaymentAuthResponse {
  const _$PaymentAuthResponseImpl(
      {required this.authorisationUrl,
      required this.paymentIdempotencyId,
      this.userUuid,
      this.status,
      final List<String>? featureScope,
      this.tracingId,
      this.deepLinkAuthorisationUrl,
      this.deepLinkAndroidAuthorisationUrl,
      this.deepLinkAuthorisationUrlIOS,
      this.appStoreLink,
      this.androidPackageName,
      this.iOSPackageName})
      : _featureScope = featureScope,
        super._();

  factory _$PaymentAuthResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentAuthResponseImplFromJson(json);

  @override
  final String authorisationUrl;
  @override
  final String paymentIdempotencyId;
  @override
  final String? userUuid;
  @override
  final String? status;
  final List<String>? _featureScope;
  @override
  List<String>? get featureScope {
    final value = _featureScope;
    if (value == null) return null;
    if (_featureScope is EqualUnmodifiableListView) return _featureScope;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? tracingId;
  @override
  final String? deepLinkAuthorisationUrl;
  @override
  final String? deepLinkAndroidAuthorisationUrl;
  @override
  final String? deepLinkAuthorisationUrlIOS;
  @override
  final String? appStoreLink;
  @override
  final String? androidPackageName;
  @override
  final String? iOSPackageName;

  @override
  String toString() {
    return 'PaymentAuthResponse(authorisationUrl: $authorisationUrl, paymentIdempotencyId: $paymentIdempotencyId, userUuid: $userUuid, status: $status, featureScope: $featureScope, tracingId: $tracingId, deepLinkAuthorisationUrl: $deepLinkAuthorisationUrl, deepLinkAndroidAuthorisationUrl: $deepLinkAndroidAuthorisationUrl, deepLinkAuthorisationUrlIOS: $deepLinkAuthorisationUrlIOS, appStoreLink: $appStoreLink, androidPackageName: $androidPackageName, iOSPackageName: $iOSPackageName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentAuthResponseImpl &&
            (identical(other.authorisationUrl, authorisationUrl) ||
                other.authorisationUrl == authorisationUrl) &&
            (identical(other.paymentIdempotencyId, paymentIdempotencyId) ||
                other.paymentIdempotencyId == paymentIdempotencyId) &&
            (identical(other.userUuid, userUuid) ||
                other.userUuid == userUuid) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._featureScope, _featureScope) &&
            (identical(other.tracingId, tracingId) ||
                other.tracingId == tracingId) &&
            (identical(
                    other.deepLinkAuthorisationUrl, deepLinkAuthorisationUrl) ||
                other.deepLinkAuthorisationUrl == deepLinkAuthorisationUrl) &&
            (identical(other.deepLinkAndroidAuthorisationUrl,
                    deepLinkAndroidAuthorisationUrl) ||
                other.deepLinkAndroidAuthorisationUrl ==
                    deepLinkAndroidAuthorisationUrl) &&
            (identical(other.deepLinkAuthorisationUrlIOS,
                    deepLinkAuthorisationUrlIOS) ||
                other.deepLinkAuthorisationUrlIOS ==
                    deepLinkAuthorisationUrlIOS) &&
            (identical(other.appStoreLink, appStoreLink) ||
                other.appStoreLink == appStoreLink) &&
            (identical(other.androidPackageName, androidPackageName) ||
                other.androidPackageName == androidPackageName) &&
            (identical(other.iOSPackageName, iOSPackageName) ||
                other.iOSPackageName == iOSPackageName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      authorisationUrl,
      paymentIdempotencyId,
      userUuid,
      status,
      const DeepCollectionEquality().hash(_featureScope),
      tracingId,
      deepLinkAuthorisationUrl,
      deepLinkAndroidAuthorisationUrl,
      deepLinkAuthorisationUrlIOS,
      appStoreLink,
      androidPackageName,
      iOSPackageName);

  /// Create a copy of PaymentAuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentAuthResponseImplCopyWith<_$PaymentAuthResponseImpl> get copyWith =>
      __$$PaymentAuthResponseImplCopyWithImpl<_$PaymentAuthResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentAuthResponseImplToJson(
      this,
    );
  }
}

abstract class _PaymentAuthResponse extends PaymentAuthResponse {
  const factory _PaymentAuthResponse(
      {required final String authorisationUrl,
      required final String paymentIdempotencyId,
      final String? userUuid,
      final String? status,
      final List<String>? featureScope,
      final String? tracingId,
      final String? deepLinkAuthorisationUrl,
      final String? deepLinkAndroidAuthorisationUrl,
      final String? deepLinkAuthorisationUrlIOS,
      final String? appStoreLink,
      final String? androidPackageName,
      final String? iOSPackageName}) = _$PaymentAuthResponseImpl;
  const _PaymentAuthResponse._() : super._();

  factory _PaymentAuthResponse.fromJson(Map<String, dynamic> json) =
      _$PaymentAuthResponseImpl.fromJson;

  @override
  String get authorisationUrl;
  @override
  String get paymentIdempotencyId;
  @override
  String? get userUuid;
  @override
  String? get status;
  @override
  List<String>? get featureScope;
  @override
  String? get tracingId;
  @override
  String? get deepLinkAuthorisationUrl;
  @override
  String? get deepLinkAndroidAuthorisationUrl;
  @override
  String? get deepLinkAuthorisationUrlIOS;
  @override
  String? get appStoreLink;
  @override
  String? get androidPackageName;
  @override
  String? get iOSPackageName;

  /// Create a copy of PaymentAuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentAuthResponseImplCopyWith<_$PaymentAuthResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
