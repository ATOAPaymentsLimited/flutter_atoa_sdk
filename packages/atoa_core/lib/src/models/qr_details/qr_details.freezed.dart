// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QrDetails _$QrDetailsFromJson(Map<String, dynamic> json) {
  return _QrDetails.fromJson(json);
}

/// @nodoc
mixin _$QrDetails {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get nickName => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get referenceId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get integrationId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get tableId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  IntegrationDetails? get integrationDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  double? get amount => throw _privateConstructorUsedError;

  /// Serializes this QrDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QrDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QrDetailsCopyWith<QrDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrDetailsCopyWith<$Res> {
  factory $QrDetailsCopyWith(QrDetails value, $Res Function(QrDetails) then) =
      _$QrDetailsCopyWithImpl<$Res, QrDetails>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(includeIfNull: false) String? nickName,
      @JsonKey(includeIfNull: false) String? referenceId,
      @JsonKey(includeIfNull: false) String? integrationId,
      @JsonKey(includeIfNull: false) String? tableId,
      @JsonKey(includeIfNull: false) IntegrationDetails? integrationDetails,
      @JsonKey(includeIfNull: false) double? amount});

  $IntegrationDetailsCopyWith<$Res>? get integrationDetails;
}

/// @nodoc
class _$QrDetailsCopyWithImpl<$Res, $Val extends QrDetails>
    implements $QrDetailsCopyWith<$Res> {
  _$QrDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QrDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickName = freezed,
    Object? referenceId = freezed,
    Object? integrationId = freezed,
    Object? tableId = freezed,
    Object? integrationDetails = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      integrationId: freezed == integrationId
          ? _value.integrationId
          : integrationId // ignore: cast_nullable_to_non_nullable
              as String?,
      tableId: freezed == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as String?,
      integrationDetails: freezed == integrationDetails
          ? _value.integrationDetails
          : integrationDetails // ignore: cast_nullable_to_non_nullable
              as IntegrationDetails?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  /// Create a copy of QrDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntegrationDetailsCopyWith<$Res>? get integrationDetails {
    if (_value.integrationDetails == null) {
      return null;
    }

    return $IntegrationDetailsCopyWith<$Res>(_value.integrationDetails!,
        (value) {
      return _then(_value.copyWith(integrationDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QrDetailsImplCopyWith<$Res>
    implements $QrDetailsCopyWith<$Res> {
  factory _$$QrDetailsImplCopyWith(
          _$QrDetailsImpl value, $Res Function(_$QrDetailsImpl) then) =
      __$$QrDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(includeIfNull: false) String? nickName,
      @JsonKey(includeIfNull: false) String? referenceId,
      @JsonKey(includeIfNull: false) String? integrationId,
      @JsonKey(includeIfNull: false) String? tableId,
      @JsonKey(includeIfNull: false) IntegrationDetails? integrationDetails,
      @JsonKey(includeIfNull: false) double? amount});

  @override
  $IntegrationDetailsCopyWith<$Res>? get integrationDetails;
}

/// @nodoc
class __$$QrDetailsImplCopyWithImpl<$Res>
    extends _$QrDetailsCopyWithImpl<$Res, _$QrDetailsImpl>
    implements _$$QrDetailsImplCopyWith<$Res> {
  __$$QrDetailsImplCopyWithImpl(
      _$QrDetailsImpl _value, $Res Function(_$QrDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickName = freezed,
    Object? referenceId = freezed,
    Object? integrationId = freezed,
    Object? tableId = freezed,
    Object? integrationDetails = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$QrDetailsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      integrationId: freezed == integrationId
          ? _value.integrationId
          : integrationId // ignore: cast_nullable_to_non_nullable
              as String?,
      tableId: freezed == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as String?,
      integrationDetails: freezed == integrationDetails
          ? _value.integrationDetails
          : integrationDetails // ignore: cast_nullable_to_non_nullable
              as IntegrationDetails?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QrDetailsImpl implements _QrDetails {
  _$QrDetailsImpl(
      {required this.id,
      @JsonKey(includeIfNull: false) this.nickName,
      @JsonKey(includeIfNull: false) this.referenceId,
      @JsonKey(includeIfNull: false) this.integrationId,
      @JsonKey(includeIfNull: false) this.tableId,
      @JsonKey(includeIfNull: false) this.integrationDetails,
      @JsonKey(includeIfNull: false) this.amount});

  factory _$QrDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$QrDetailsImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(includeIfNull: false)
  final String? nickName;
  @override
  @JsonKey(includeIfNull: false)
  final String? referenceId;
  @override
  @JsonKey(includeIfNull: false)
  final String? integrationId;
  @override
  @JsonKey(includeIfNull: false)
  final String? tableId;
  @override
  @JsonKey(includeIfNull: false)
  final IntegrationDetails? integrationDetails;
  @override
  @JsonKey(includeIfNull: false)
  final double? amount;

  @override
  String toString() {
    return 'QrDetails(id: $id, nickName: $nickName, referenceId: $referenceId, integrationId: $integrationId, tableId: $tableId, integrationDetails: $integrationDetails, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.integrationId, integrationId) ||
                other.integrationId == integrationId) &&
            (identical(other.tableId, tableId) || other.tableId == tableId) &&
            (identical(other.integrationDetails, integrationDetails) ||
                other.integrationDetails == integrationDetails) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nickName, referenceId,
      integrationId, tableId, integrationDetails, amount);

  /// Create a copy of QrDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QrDetailsImplCopyWith<_$QrDetailsImpl> get copyWith =>
      __$$QrDetailsImplCopyWithImpl<_$QrDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QrDetailsImplToJson(
      this,
    );
  }
}

abstract class _QrDetails implements QrDetails {
  factory _QrDetails(
      {required final String id,
      @JsonKey(includeIfNull: false) final String? nickName,
      @JsonKey(includeIfNull: false) final String? referenceId,
      @JsonKey(includeIfNull: false) final String? integrationId,
      @JsonKey(includeIfNull: false) final String? tableId,
      @JsonKey(includeIfNull: false)
      final IntegrationDetails? integrationDetails,
      @JsonKey(includeIfNull: false) final double? amount}) = _$QrDetailsImpl;

  factory _QrDetails.fromJson(Map<String, dynamic> json) =
      _$QrDetailsImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(includeIfNull: false)
  String? get nickName;
  @override
  @JsonKey(includeIfNull: false)
  String? get referenceId;
  @override
  @JsonKey(includeIfNull: false)
  String? get integrationId;
  @override
  @JsonKey(includeIfNull: false)
  String? get tableId;
  @override
  @JsonKey(includeIfNull: false)
  IntegrationDetails? get integrationDetails;
  @override
  @JsonKey(includeIfNull: false)
  double? get amount;

  /// Create a copy of QrDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QrDetailsImplCopyWith<_$QrDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
