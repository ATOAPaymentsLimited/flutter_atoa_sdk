// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_status_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionStatusDetails _$TransactionStatusDetailsFromJson(
    Map<String, dynamic> json) {
  return _TransactionStatusDetails.fromJson(json);
}

/// @nodoc
mixin _$TransactionStatusDetails {
  TransactionStatus? get status => throw _privateConstructorUsedError;
  IsoStatus? get isoStatus => throw _privateConstructorUsedError;
  String? get statusUpdateDate => throw _privateConstructorUsedError;

  /// Create a copy of TransactionStatusDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionStatusDetailsCopyWith<TransactionStatusDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStatusDetailsCopyWith<$Res> {
  factory $TransactionStatusDetailsCopyWith(TransactionStatusDetails value,
          $Res Function(TransactionStatusDetails) then) =
      _$TransactionStatusDetailsCopyWithImpl<$Res, TransactionStatusDetails>;
  @useResult
  $Res call(
      {TransactionStatus? status,
      IsoStatus? isoStatus,
      String? statusUpdateDate});

  $TransactionStatusCopyWith<$Res>? get status;
  $IsoStatusCopyWith<$Res>? get isoStatus;
}

/// @nodoc
class _$TransactionStatusDetailsCopyWithImpl<$Res,
        $Val extends TransactionStatusDetails>
    implements $TransactionStatusDetailsCopyWith<$Res> {
  _$TransactionStatusDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionStatusDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? isoStatus = freezed,
    Object? statusUpdateDate = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus?,
      isoStatus: freezed == isoStatus
          ? _value.isoStatus
          : isoStatus // ignore: cast_nullable_to_non_nullable
              as IsoStatus?,
      statusUpdateDate: freezed == statusUpdateDate
          ? _value.statusUpdateDate
          : statusUpdateDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of TransactionStatusDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionStatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $TransactionStatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of TransactionStatusDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IsoStatusCopyWith<$Res>? get isoStatus {
    if (_value.isoStatus == null) {
      return null;
    }

    return $IsoStatusCopyWith<$Res>(_value.isoStatus!, (value) {
      return _then(_value.copyWith(isoStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionStatusDetailsImplCopyWith<$Res>
    implements $TransactionStatusDetailsCopyWith<$Res> {
  factory _$$TransactionStatusDetailsImplCopyWith(
          _$TransactionStatusDetailsImpl value,
          $Res Function(_$TransactionStatusDetailsImpl) then) =
      __$$TransactionStatusDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TransactionStatus? status,
      IsoStatus? isoStatus,
      String? statusUpdateDate});

  @override
  $TransactionStatusCopyWith<$Res>? get status;
  @override
  $IsoStatusCopyWith<$Res>? get isoStatus;
}

/// @nodoc
class __$$TransactionStatusDetailsImplCopyWithImpl<$Res>
    extends _$TransactionStatusDetailsCopyWithImpl<$Res,
        _$TransactionStatusDetailsImpl>
    implements _$$TransactionStatusDetailsImplCopyWith<$Res> {
  __$$TransactionStatusDetailsImplCopyWithImpl(
      _$TransactionStatusDetailsImpl _value,
      $Res Function(_$TransactionStatusDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionStatusDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? isoStatus = freezed,
    Object? statusUpdateDate = freezed,
  }) {
    return _then(_$TransactionStatusDetailsImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus?,
      isoStatus: freezed == isoStatus
          ? _value.isoStatus
          : isoStatus // ignore: cast_nullable_to_non_nullable
              as IsoStatus?,
      statusUpdateDate: freezed == statusUpdateDate
          ? _value.statusUpdateDate
          : statusUpdateDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$TransactionStatusDetailsImpl implements _TransactionStatusDetails {
  _$TransactionStatusDetailsImpl(
      {this.status, this.isoStatus, this.statusUpdateDate});

  factory _$TransactionStatusDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionStatusDetailsImplFromJson(json);

  @override
  final TransactionStatus? status;
  @override
  final IsoStatus? isoStatus;
  @override
  final String? statusUpdateDate;

  @override
  String toString() {
    return 'TransactionStatusDetails(status: $status, isoStatus: $isoStatus, statusUpdateDate: $statusUpdateDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionStatusDetailsImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isoStatus, isoStatus) ||
                other.isoStatus == isoStatus) &&
            (identical(other.statusUpdateDate, statusUpdateDate) ||
                other.statusUpdateDate == statusUpdateDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, isoStatus, statusUpdateDate);

  /// Create a copy of TransactionStatusDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionStatusDetailsImplCopyWith<_$TransactionStatusDetailsImpl>
      get copyWith => __$$TransactionStatusDetailsImplCopyWithImpl<
          _$TransactionStatusDetailsImpl>(this, _$identity);
}

abstract class _TransactionStatusDetails implements TransactionStatusDetails {
  factory _TransactionStatusDetails(
      {final TransactionStatus? status,
      final IsoStatus? isoStatus,
      final String? statusUpdateDate}) = _$TransactionStatusDetailsImpl;

  factory _TransactionStatusDetails.fromJson(Map<String, dynamic> json) =
      _$TransactionStatusDetailsImpl.fromJson;

  @override
  TransactionStatus? get status;
  @override
  IsoStatus? get isoStatus;
  @override
  String? get statusUpdateDate;

  /// Create a copy of TransactionStatusDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionStatusDetailsImplCopyWith<_$TransactionStatusDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
