// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionStatus {
  String? get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? status) completed,
    required TResult Function(String? status) pending,
    required TResult Function(String? status) failed,
    required TResult Function(String? status) refunded,
    required TResult Function(String? status) awaitingAuthorization,
    required TResult Function(String? status) cancelled,
    required TResult Function(String? status) expired,
    required TResult Function(String? status) paymentNotInitiated,
    required TResult Function(String? status) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status)? completed,
    TResult? Function(String? status)? pending,
    TResult? Function(String? status)? failed,
    TResult? Function(String? status)? refunded,
    TResult? Function(String? status)? awaitingAuthorization,
    TResult? Function(String? status)? cancelled,
    TResult? Function(String? status)? expired,
    TResult? Function(String? status)? paymentNotInitiated,
    TResult? Function(String? status)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status)? completed,
    TResult Function(String? status)? pending,
    TResult Function(String? status)? failed,
    TResult Function(String? status)? refunded,
    TResult Function(String? status)? awaitingAuthorization,
    TResult Function(String? status)? cancelled,
    TResult Function(String? status)? expired,
    TResult Function(String? status)? paymentNotInitiated,
    TResult Function(String? status)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionStatusCompleted value) completed,
    required TResult Function(TransactionStatusPending value) pending,
    required TResult Function(TransactionStatusFailed value) failed,
    required TResult Function(TransactionStatusRefunded value) refunded,
    required TResult Function(TransactionStatusAwaitingAuthorization value)
        awaitingAuthorization,
    required TResult Function(TransactionStatusCancelled value) cancelled,
    required TResult Function(TransactionStatusExpired value) expired,
    required TResult Function(TransactionStatusPaymentNotInitiated value)
        paymentNotInitiated,
    required TResult Function(TransactionStatusUnknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionStatusCompleted value)? completed,
    TResult? Function(TransactionStatusPending value)? pending,
    TResult? Function(TransactionStatusFailed value)? failed,
    TResult? Function(TransactionStatusRefunded value)? refunded,
    TResult? Function(TransactionStatusAwaitingAuthorization value)?
        awaitingAuthorization,
    TResult? Function(TransactionStatusCancelled value)? cancelled,
    TResult? Function(TransactionStatusExpired value)? expired,
    TResult? Function(TransactionStatusPaymentNotInitiated value)?
        paymentNotInitiated,
    TResult? Function(TransactionStatusUnknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionStatusCompleted value)? completed,
    TResult Function(TransactionStatusPending value)? pending,
    TResult Function(TransactionStatusFailed value)? failed,
    TResult Function(TransactionStatusRefunded value)? refunded,
    TResult Function(TransactionStatusAwaitingAuthorization value)?
        awaitingAuthorization,
    TResult Function(TransactionStatusCancelled value)? cancelled,
    TResult Function(TransactionStatusExpired value)? expired,
    TResult Function(TransactionStatusPaymentNotInitiated value)?
        paymentNotInitiated,
    TResult Function(TransactionStatusUnknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionStatusCopyWith<TransactionStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStatusCopyWith<$Res> {
  factory $TransactionStatusCopyWith(
          TransactionStatus value, $Res Function(TransactionStatus) then) =
      _$TransactionStatusCopyWithImpl<$Res, TransactionStatus>;
  @useResult
  $Res call({String? status});
}

/// @nodoc
class _$TransactionStatusCopyWithImpl<$Res, $Val extends TransactionStatus>
    implements $TransactionStatusCopyWith<$Res> {
  _$TransactionStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionStatusCompletedImplCopyWith<$Res>
    implements $TransactionStatusCopyWith<$Res> {
  factory _$$TransactionStatusCompletedImplCopyWith(
          _$TransactionStatusCompletedImpl value,
          $Res Function(_$TransactionStatusCompletedImpl) then) =
      __$$TransactionStatusCompletedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status});
}

/// @nodoc
class __$$TransactionStatusCompletedImplCopyWithImpl<$Res>
    extends _$TransactionStatusCopyWithImpl<$Res,
        _$TransactionStatusCompletedImpl>
    implements _$$TransactionStatusCompletedImplCopyWith<$Res> {
  __$$TransactionStatusCompletedImplCopyWithImpl(
      _$TransactionStatusCompletedImpl _value,
      $Res Function(_$TransactionStatusCompletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$TransactionStatusCompletedImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TransactionStatusCompletedImpl implements TransactionStatusCompleted {
  const _$TransactionStatusCompletedImpl({this.status = 'COMPLETED'});

  @override
  @JsonKey()
  final String? status;

  @override
  String toString() {
    return 'TransactionStatus.completed(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionStatusCompletedImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionStatusCompletedImplCopyWith<_$TransactionStatusCompletedImpl>
      get copyWith => __$$TransactionStatusCompletedImplCopyWithImpl<
          _$TransactionStatusCompletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? status) completed,
    required TResult Function(String? status) pending,
    required TResult Function(String? status) failed,
    required TResult Function(String? status) refunded,
    required TResult Function(String? status) awaitingAuthorization,
    required TResult Function(String? status) cancelled,
    required TResult Function(String? status) expired,
    required TResult Function(String? status) paymentNotInitiated,
    required TResult Function(String? status) unknown,
  }) {
    return completed(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status)? completed,
    TResult? Function(String? status)? pending,
    TResult? Function(String? status)? failed,
    TResult? Function(String? status)? refunded,
    TResult? Function(String? status)? awaitingAuthorization,
    TResult? Function(String? status)? cancelled,
    TResult? Function(String? status)? expired,
    TResult? Function(String? status)? paymentNotInitiated,
    TResult? Function(String? status)? unknown,
  }) {
    return completed?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status)? completed,
    TResult Function(String? status)? pending,
    TResult Function(String? status)? failed,
    TResult Function(String? status)? refunded,
    TResult Function(String? status)? awaitingAuthorization,
    TResult Function(String? status)? cancelled,
    TResult Function(String? status)? expired,
    TResult Function(String? status)? paymentNotInitiated,
    TResult Function(String? status)? unknown,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionStatusCompleted value) completed,
    required TResult Function(TransactionStatusPending value) pending,
    required TResult Function(TransactionStatusFailed value) failed,
    required TResult Function(TransactionStatusRefunded value) refunded,
    required TResult Function(TransactionStatusAwaitingAuthorization value)
        awaitingAuthorization,
    required TResult Function(TransactionStatusCancelled value) cancelled,
    required TResult Function(TransactionStatusExpired value) expired,
    required TResult Function(TransactionStatusPaymentNotInitiated value)
        paymentNotInitiated,
    required TResult Function(TransactionStatusUnknown value) unknown,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionStatusCompleted value)? completed,
    TResult? Function(TransactionStatusPending value)? pending,
    TResult? Function(TransactionStatusFailed value)? failed,
    TResult? Function(TransactionStatusRefunded value)? refunded,
    TResult? Function(TransactionStatusAwaitingAuthorization value)?
        awaitingAuthorization,
    TResult? Function(TransactionStatusCancelled value)? cancelled,
    TResult? Function(TransactionStatusExpired value)? expired,
    TResult? Function(TransactionStatusPaymentNotInitiated value)?
        paymentNotInitiated,
    TResult? Function(TransactionStatusUnknown value)? unknown,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionStatusCompleted value)? completed,
    TResult Function(TransactionStatusPending value)? pending,
    TResult Function(TransactionStatusFailed value)? failed,
    TResult Function(TransactionStatusRefunded value)? refunded,
    TResult Function(TransactionStatusAwaitingAuthorization value)?
        awaitingAuthorization,
    TResult Function(TransactionStatusCancelled value)? cancelled,
    TResult Function(TransactionStatusExpired value)? expired,
    TResult Function(TransactionStatusPaymentNotInitiated value)?
        paymentNotInitiated,
    TResult Function(TransactionStatusUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class TransactionStatusCompleted implements TransactionStatus {
  const factory TransactionStatusCompleted({final String? status}) =
      _$TransactionStatusCompletedImpl;

  @override
  String? get status;

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionStatusCompletedImplCopyWith<_$TransactionStatusCompletedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionStatusPendingImplCopyWith<$Res>
    implements $TransactionStatusCopyWith<$Res> {
  factory _$$TransactionStatusPendingImplCopyWith(
          _$TransactionStatusPendingImpl value,
          $Res Function(_$TransactionStatusPendingImpl) then) =
      __$$TransactionStatusPendingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status});
}

/// @nodoc
class __$$TransactionStatusPendingImplCopyWithImpl<$Res>
    extends _$TransactionStatusCopyWithImpl<$Res,
        _$TransactionStatusPendingImpl>
    implements _$$TransactionStatusPendingImplCopyWith<$Res> {
  __$$TransactionStatusPendingImplCopyWithImpl(
      _$TransactionStatusPendingImpl _value,
      $Res Function(_$TransactionStatusPendingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$TransactionStatusPendingImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TransactionStatusPendingImpl implements TransactionStatusPending {
  const _$TransactionStatusPendingImpl({this.status = 'PENDING'});

  @override
  @JsonKey()
  final String? status;

  @override
  String toString() {
    return 'TransactionStatus.pending(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionStatusPendingImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionStatusPendingImplCopyWith<_$TransactionStatusPendingImpl>
      get copyWith => __$$TransactionStatusPendingImplCopyWithImpl<
          _$TransactionStatusPendingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? status) completed,
    required TResult Function(String? status) pending,
    required TResult Function(String? status) failed,
    required TResult Function(String? status) refunded,
    required TResult Function(String? status) awaitingAuthorization,
    required TResult Function(String? status) cancelled,
    required TResult Function(String? status) expired,
    required TResult Function(String? status) paymentNotInitiated,
    required TResult Function(String? status) unknown,
  }) {
    return pending(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status)? completed,
    TResult? Function(String? status)? pending,
    TResult? Function(String? status)? failed,
    TResult? Function(String? status)? refunded,
    TResult? Function(String? status)? awaitingAuthorization,
    TResult? Function(String? status)? cancelled,
    TResult? Function(String? status)? expired,
    TResult? Function(String? status)? paymentNotInitiated,
    TResult? Function(String? status)? unknown,
  }) {
    return pending?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status)? completed,
    TResult Function(String? status)? pending,
    TResult Function(String? status)? failed,
    TResult Function(String? status)? refunded,
    TResult Function(String? status)? awaitingAuthorization,
    TResult Function(String? status)? cancelled,
    TResult Function(String? status)? expired,
    TResult Function(String? status)? paymentNotInitiated,
    TResult Function(String? status)? unknown,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionStatusCompleted value) completed,
    required TResult Function(TransactionStatusPending value) pending,
    required TResult Function(TransactionStatusFailed value) failed,
    required TResult Function(TransactionStatusRefunded value) refunded,
    required TResult Function(TransactionStatusAwaitingAuthorization value)
        awaitingAuthorization,
    required TResult Function(TransactionStatusCancelled value) cancelled,
    required TResult Function(TransactionStatusExpired value) expired,
    required TResult Function(TransactionStatusPaymentNotInitiated value)
        paymentNotInitiated,
    required TResult Function(TransactionStatusUnknown value) unknown,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionStatusCompleted value)? completed,
    TResult? Function(TransactionStatusPending value)? pending,
    TResult? Function(TransactionStatusFailed value)? failed,
    TResult? Function(TransactionStatusRefunded value)? refunded,
    TResult? Function(TransactionStatusAwaitingAuthorization value)?
        awaitingAuthorization,
    TResult? Function(TransactionStatusCancelled value)? cancelled,
    TResult? Function(TransactionStatusExpired value)? expired,
    TResult? Function(TransactionStatusPaymentNotInitiated value)?
        paymentNotInitiated,
    TResult? Function(TransactionStatusUnknown value)? unknown,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionStatusCompleted value)? completed,
    TResult Function(TransactionStatusPending value)? pending,
    TResult Function(TransactionStatusFailed value)? failed,
    TResult Function(TransactionStatusRefunded value)? refunded,
    TResult Function(TransactionStatusAwaitingAuthorization value)?
        awaitingAuthorization,
    TResult Function(TransactionStatusCancelled value)? cancelled,
    TResult Function(TransactionStatusExpired value)? expired,
    TResult Function(TransactionStatusPaymentNotInitiated value)?
        paymentNotInitiated,
    TResult Function(TransactionStatusUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class TransactionStatusPending implements TransactionStatus {
  const factory TransactionStatusPending({final String? status}) =
      _$TransactionStatusPendingImpl;

  @override
  String? get status;

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionStatusPendingImplCopyWith<_$TransactionStatusPendingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionStatusFailedImplCopyWith<$Res>
    implements $TransactionStatusCopyWith<$Res> {
  factory _$$TransactionStatusFailedImplCopyWith(
          _$TransactionStatusFailedImpl value,
          $Res Function(_$TransactionStatusFailedImpl) then) =
      __$$TransactionStatusFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status});
}

/// @nodoc
class __$$TransactionStatusFailedImplCopyWithImpl<$Res>
    extends _$TransactionStatusCopyWithImpl<$Res, _$TransactionStatusFailedImpl>
    implements _$$TransactionStatusFailedImplCopyWith<$Res> {
  __$$TransactionStatusFailedImplCopyWithImpl(
      _$TransactionStatusFailedImpl _value,
      $Res Function(_$TransactionStatusFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$TransactionStatusFailedImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TransactionStatusFailedImpl implements TransactionStatusFailed {
  const _$TransactionStatusFailedImpl({this.status = 'FAILED'});

  @override
  @JsonKey()
  final String? status;

  @override
  String toString() {
    return 'TransactionStatus.failed(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionStatusFailedImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionStatusFailedImplCopyWith<_$TransactionStatusFailedImpl>
      get copyWith => __$$TransactionStatusFailedImplCopyWithImpl<
          _$TransactionStatusFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? status) completed,
    required TResult Function(String? status) pending,
    required TResult Function(String? status) failed,
    required TResult Function(String? status) refunded,
    required TResult Function(String? status) awaitingAuthorization,
    required TResult Function(String? status) cancelled,
    required TResult Function(String? status) expired,
    required TResult Function(String? status) paymentNotInitiated,
    required TResult Function(String? status) unknown,
  }) {
    return failed(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status)? completed,
    TResult? Function(String? status)? pending,
    TResult? Function(String? status)? failed,
    TResult? Function(String? status)? refunded,
    TResult? Function(String? status)? awaitingAuthorization,
    TResult? Function(String? status)? cancelled,
    TResult? Function(String? status)? expired,
    TResult? Function(String? status)? paymentNotInitiated,
    TResult? Function(String? status)? unknown,
  }) {
    return failed?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status)? completed,
    TResult Function(String? status)? pending,
    TResult Function(String? status)? failed,
    TResult Function(String? status)? refunded,
    TResult Function(String? status)? awaitingAuthorization,
    TResult Function(String? status)? cancelled,
    TResult Function(String? status)? expired,
    TResult Function(String? status)? paymentNotInitiated,
    TResult Function(String? status)? unknown,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionStatusCompleted value) completed,
    required TResult Function(TransactionStatusPending value) pending,
    required TResult Function(TransactionStatusFailed value) failed,
    required TResult Function(TransactionStatusRefunded value) refunded,
    required TResult Function(TransactionStatusAwaitingAuthorization value)
        awaitingAuthorization,
    required TResult Function(TransactionStatusCancelled value) cancelled,
    required TResult Function(TransactionStatusExpired value) expired,
    required TResult Function(TransactionStatusPaymentNotInitiated value)
        paymentNotInitiated,
    required TResult Function(TransactionStatusUnknown value) unknown,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionStatusCompleted value)? completed,
    TResult? Function(TransactionStatusPending value)? pending,
    TResult? Function(TransactionStatusFailed value)? failed,
    TResult? Function(TransactionStatusRefunded value)? refunded,
    TResult? Function(TransactionStatusAwaitingAuthorization value)?
        awaitingAuthorization,
    TResult? Function(TransactionStatusCancelled value)? cancelled,
    TResult? Function(TransactionStatusExpired value)? expired,
    TResult? Function(TransactionStatusPaymentNotInitiated value)?
        paymentNotInitiated,
    TResult? Function(TransactionStatusUnknown value)? unknown,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionStatusCompleted value)? completed,
    TResult Function(TransactionStatusPending value)? pending,
    TResult Function(TransactionStatusFailed value)? failed,
    TResult Function(TransactionStatusRefunded value)? refunded,
    TResult Function(TransactionStatusAwaitingAuthorization value)?
        awaitingAuthorization,
    TResult Function(TransactionStatusCancelled value)? cancelled,
    TResult Function(TransactionStatusExpired value)? expired,
    TResult Function(TransactionStatusPaymentNotInitiated value)?
        paymentNotInitiated,
    TResult Function(TransactionStatusUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class TransactionStatusFailed implements TransactionStatus {
  const factory TransactionStatusFailed({final String? status}) =
      _$TransactionStatusFailedImpl;

  @override
  String? get status;

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionStatusFailedImplCopyWith<_$TransactionStatusFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionStatusRefundedImplCopyWith<$Res>
    implements $TransactionStatusCopyWith<$Res> {
  factory _$$TransactionStatusRefundedImplCopyWith(
          _$TransactionStatusRefundedImpl value,
          $Res Function(_$TransactionStatusRefundedImpl) then) =
      __$$TransactionStatusRefundedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status});
}

/// @nodoc
class __$$TransactionStatusRefundedImplCopyWithImpl<$Res>
    extends _$TransactionStatusCopyWithImpl<$Res,
        _$TransactionStatusRefundedImpl>
    implements _$$TransactionStatusRefundedImplCopyWith<$Res> {
  __$$TransactionStatusRefundedImplCopyWithImpl(
      _$TransactionStatusRefundedImpl _value,
      $Res Function(_$TransactionStatusRefundedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$TransactionStatusRefundedImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TransactionStatusRefundedImpl implements TransactionStatusRefunded {
  const _$TransactionStatusRefundedImpl({this.status = 'REFUNDED'});

  @override
  @JsonKey()
  final String? status;

  @override
  String toString() {
    return 'TransactionStatus.refunded(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionStatusRefundedImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionStatusRefundedImplCopyWith<_$TransactionStatusRefundedImpl>
      get copyWith => __$$TransactionStatusRefundedImplCopyWithImpl<
          _$TransactionStatusRefundedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? status) completed,
    required TResult Function(String? status) pending,
    required TResult Function(String? status) failed,
    required TResult Function(String? status) refunded,
    required TResult Function(String? status) awaitingAuthorization,
    required TResult Function(String? status) cancelled,
    required TResult Function(String? status) expired,
    required TResult Function(String? status) paymentNotInitiated,
    required TResult Function(String? status) unknown,
  }) {
    return refunded(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status)? completed,
    TResult? Function(String? status)? pending,
    TResult? Function(String? status)? failed,
    TResult? Function(String? status)? refunded,
    TResult? Function(String? status)? awaitingAuthorization,
    TResult? Function(String? status)? cancelled,
    TResult? Function(String? status)? expired,
    TResult? Function(String? status)? paymentNotInitiated,
    TResult? Function(String? status)? unknown,
  }) {
    return refunded?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status)? completed,
    TResult Function(String? status)? pending,
    TResult Function(String? status)? failed,
    TResult Function(String? status)? refunded,
    TResult Function(String? status)? awaitingAuthorization,
    TResult Function(String? status)? cancelled,
    TResult Function(String? status)? expired,
    TResult Function(String? status)? paymentNotInitiated,
    TResult Function(String? status)? unknown,
    required TResult orElse(),
  }) {
    if (refunded != null) {
      return refunded(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionStatusCompleted value) completed,
    required TResult Function(TransactionStatusPending value) pending,
    required TResult Function(TransactionStatusFailed value) failed,
    required TResult Function(TransactionStatusRefunded value) refunded,
    required TResult Function(TransactionStatusAwaitingAuthorization value)
        awaitingAuthorization,
    required TResult Function(TransactionStatusCancelled value) cancelled,
    required TResult Function(TransactionStatusExpired value) expired,
    required TResult Function(TransactionStatusPaymentNotInitiated value)
        paymentNotInitiated,
    required TResult Function(TransactionStatusUnknown value) unknown,
  }) {
    return refunded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionStatusCompleted value)? completed,
    TResult? Function(TransactionStatusPending value)? pending,
    TResult? Function(TransactionStatusFailed value)? failed,
    TResult? Function(TransactionStatusRefunded value)? refunded,
    TResult? Function(TransactionStatusAwaitingAuthorization value)?
        awaitingAuthorization,
    TResult? Function(TransactionStatusCancelled value)? cancelled,
    TResult? Function(TransactionStatusExpired value)? expired,
    TResult? Function(TransactionStatusPaymentNotInitiated value)?
        paymentNotInitiated,
    TResult? Function(TransactionStatusUnknown value)? unknown,
  }) {
    return refunded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionStatusCompleted value)? completed,
    TResult Function(TransactionStatusPending value)? pending,
    TResult Function(TransactionStatusFailed value)? failed,
    TResult Function(TransactionStatusRefunded value)? refunded,
    TResult Function(TransactionStatusAwaitingAuthorization value)?
        awaitingAuthorization,
    TResult Function(TransactionStatusCancelled value)? cancelled,
    TResult Function(TransactionStatusExpired value)? expired,
    TResult Function(TransactionStatusPaymentNotInitiated value)?
        paymentNotInitiated,
    TResult Function(TransactionStatusUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (refunded != null) {
      return refunded(this);
    }
    return orElse();
  }
}

abstract class TransactionStatusRefunded implements TransactionStatus {
  const factory TransactionStatusRefunded({final String? status}) =
      _$TransactionStatusRefundedImpl;

  @override
  String? get status;

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionStatusRefundedImplCopyWith<_$TransactionStatusRefundedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionStatusAwaitingAuthorizationImplCopyWith<$Res>
    implements $TransactionStatusCopyWith<$Res> {
  factory _$$TransactionStatusAwaitingAuthorizationImplCopyWith(
          _$TransactionStatusAwaitingAuthorizationImpl value,
          $Res Function(_$TransactionStatusAwaitingAuthorizationImpl) then) =
      __$$TransactionStatusAwaitingAuthorizationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status});
}

/// @nodoc
class __$$TransactionStatusAwaitingAuthorizationImplCopyWithImpl<$Res>
    extends _$TransactionStatusCopyWithImpl<$Res,
        _$TransactionStatusAwaitingAuthorizationImpl>
    implements _$$TransactionStatusAwaitingAuthorizationImplCopyWith<$Res> {
  __$$TransactionStatusAwaitingAuthorizationImplCopyWithImpl(
      _$TransactionStatusAwaitingAuthorizationImpl _value,
      $Res Function(_$TransactionStatusAwaitingAuthorizationImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$TransactionStatusAwaitingAuthorizationImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TransactionStatusAwaitingAuthorizationImpl
    implements TransactionStatusAwaitingAuthorization {
  const _$TransactionStatusAwaitingAuthorizationImpl(
      {this.status = 'AWAITING_AUTHORIZATION'});

  @override
  @JsonKey()
  final String? status;

  @override
  String toString() {
    return 'TransactionStatus.awaitingAuthorization(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionStatusAwaitingAuthorizationImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionStatusAwaitingAuthorizationImplCopyWith<
          _$TransactionStatusAwaitingAuthorizationImpl>
      get copyWith =>
          __$$TransactionStatusAwaitingAuthorizationImplCopyWithImpl<
              _$TransactionStatusAwaitingAuthorizationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? status) completed,
    required TResult Function(String? status) pending,
    required TResult Function(String? status) failed,
    required TResult Function(String? status) refunded,
    required TResult Function(String? status) awaitingAuthorization,
    required TResult Function(String? status) cancelled,
    required TResult Function(String? status) expired,
    required TResult Function(String? status) paymentNotInitiated,
    required TResult Function(String? status) unknown,
  }) {
    return awaitingAuthorization(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status)? completed,
    TResult? Function(String? status)? pending,
    TResult? Function(String? status)? failed,
    TResult? Function(String? status)? refunded,
    TResult? Function(String? status)? awaitingAuthorization,
    TResult? Function(String? status)? cancelled,
    TResult? Function(String? status)? expired,
    TResult? Function(String? status)? paymentNotInitiated,
    TResult? Function(String? status)? unknown,
  }) {
    return awaitingAuthorization?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status)? completed,
    TResult Function(String? status)? pending,
    TResult Function(String? status)? failed,
    TResult Function(String? status)? refunded,
    TResult Function(String? status)? awaitingAuthorization,
    TResult Function(String? status)? cancelled,
    TResult Function(String? status)? expired,
    TResult Function(String? status)? paymentNotInitiated,
    TResult Function(String? status)? unknown,
    required TResult orElse(),
  }) {
    if (awaitingAuthorization != null) {
      return awaitingAuthorization(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionStatusCompleted value) completed,
    required TResult Function(TransactionStatusPending value) pending,
    required TResult Function(TransactionStatusFailed value) failed,
    required TResult Function(TransactionStatusRefunded value) refunded,
    required TResult Function(TransactionStatusAwaitingAuthorization value)
        awaitingAuthorization,
    required TResult Function(TransactionStatusCancelled value) cancelled,
    required TResult Function(TransactionStatusExpired value) expired,
    required TResult Function(TransactionStatusPaymentNotInitiated value)
        paymentNotInitiated,
    required TResult Function(TransactionStatusUnknown value) unknown,
  }) {
    return awaitingAuthorization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionStatusCompleted value)? completed,
    TResult? Function(TransactionStatusPending value)? pending,
    TResult? Function(TransactionStatusFailed value)? failed,
    TResult? Function(TransactionStatusRefunded value)? refunded,
    TResult? Function(TransactionStatusAwaitingAuthorization value)?
        awaitingAuthorization,
    TResult? Function(TransactionStatusCancelled value)? cancelled,
    TResult? Function(TransactionStatusExpired value)? expired,
    TResult? Function(TransactionStatusPaymentNotInitiated value)?
        paymentNotInitiated,
    TResult? Function(TransactionStatusUnknown value)? unknown,
  }) {
    return awaitingAuthorization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionStatusCompleted value)? completed,
    TResult Function(TransactionStatusPending value)? pending,
    TResult Function(TransactionStatusFailed value)? failed,
    TResult Function(TransactionStatusRefunded value)? refunded,
    TResult Function(TransactionStatusAwaitingAuthorization value)?
        awaitingAuthorization,
    TResult Function(TransactionStatusCancelled value)? cancelled,
    TResult Function(TransactionStatusExpired value)? expired,
    TResult Function(TransactionStatusPaymentNotInitiated value)?
        paymentNotInitiated,
    TResult Function(TransactionStatusUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (awaitingAuthorization != null) {
      return awaitingAuthorization(this);
    }
    return orElse();
  }
}

abstract class TransactionStatusAwaitingAuthorization
    implements TransactionStatus {
  const factory TransactionStatusAwaitingAuthorization({final String? status}) =
      _$TransactionStatusAwaitingAuthorizationImpl;

  @override
  String? get status;

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionStatusAwaitingAuthorizationImplCopyWith<
          _$TransactionStatusAwaitingAuthorizationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionStatusCancelledImplCopyWith<$Res>
    implements $TransactionStatusCopyWith<$Res> {
  factory _$$TransactionStatusCancelledImplCopyWith(
          _$TransactionStatusCancelledImpl value,
          $Res Function(_$TransactionStatusCancelledImpl) then) =
      __$$TransactionStatusCancelledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status});
}

/// @nodoc
class __$$TransactionStatusCancelledImplCopyWithImpl<$Res>
    extends _$TransactionStatusCopyWithImpl<$Res,
        _$TransactionStatusCancelledImpl>
    implements _$$TransactionStatusCancelledImplCopyWith<$Res> {
  __$$TransactionStatusCancelledImplCopyWithImpl(
      _$TransactionStatusCancelledImpl _value,
      $Res Function(_$TransactionStatusCancelledImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$TransactionStatusCancelledImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TransactionStatusCancelledImpl implements TransactionStatusCancelled {
  const _$TransactionStatusCancelledImpl({this.status = 'CANCELLED'});

  @override
  @JsonKey()
  final String? status;

  @override
  String toString() {
    return 'TransactionStatus.cancelled(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionStatusCancelledImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionStatusCancelledImplCopyWith<_$TransactionStatusCancelledImpl>
      get copyWith => __$$TransactionStatusCancelledImplCopyWithImpl<
          _$TransactionStatusCancelledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? status) completed,
    required TResult Function(String? status) pending,
    required TResult Function(String? status) failed,
    required TResult Function(String? status) refunded,
    required TResult Function(String? status) awaitingAuthorization,
    required TResult Function(String? status) cancelled,
    required TResult Function(String? status) expired,
    required TResult Function(String? status) paymentNotInitiated,
    required TResult Function(String? status) unknown,
  }) {
    return cancelled(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status)? completed,
    TResult? Function(String? status)? pending,
    TResult? Function(String? status)? failed,
    TResult? Function(String? status)? refunded,
    TResult? Function(String? status)? awaitingAuthorization,
    TResult? Function(String? status)? cancelled,
    TResult? Function(String? status)? expired,
    TResult? Function(String? status)? paymentNotInitiated,
    TResult? Function(String? status)? unknown,
  }) {
    return cancelled?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status)? completed,
    TResult Function(String? status)? pending,
    TResult Function(String? status)? failed,
    TResult Function(String? status)? refunded,
    TResult Function(String? status)? awaitingAuthorization,
    TResult Function(String? status)? cancelled,
    TResult Function(String? status)? expired,
    TResult Function(String? status)? paymentNotInitiated,
    TResult Function(String? status)? unknown,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionStatusCompleted value) completed,
    required TResult Function(TransactionStatusPending value) pending,
    required TResult Function(TransactionStatusFailed value) failed,
    required TResult Function(TransactionStatusRefunded value) refunded,
    required TResult Function(TransactionStatusAwaitingAuthorization value)
        awaitingAuthorization,
    required TResult Function(TransactionStatusCancelled value) cancelled,
    required TResult Function(TransactionStatusExpired value) expired,
    required TResult Function(TransactionStatusPaymentNotInitiated value)
        paymentNotInitiated,
    required TResult Function(TransactionStatusUnknown value) unknown,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionStatusCompleted value)? completed,
    TResult? Function(TransactionStatusPending value)? pending,
    TResult? Function(TransactionStatusFailed value)? failed,
    TResult? Function(TransactionStatusRefunded value)? refunded,
    TResult? Function(TransactionStatusAwaitingAuthorization value)?
        awaitingAuthorization,
    TResult? Function(TransactionStatusCancelled value)? cancelled,
    TResult? Function(TransactionStatusExpired value)? expired,
    TResult? Function(TransactionStatusPaymentNotInitiated value)?
        paymentNotInitiated,
    TResult? Function(TransactionStatusUnknown value)? unknown,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionStatusCompleted value)? completed,
    TResult Function(TransactionStatusPending value)? pending,
    TResult Function(TransactionStatusFailed value)? failed,
    TResult Function(TransactionStatusRefunded value)? refunded,
    TResult Function(TransactionStatusAwaitingAuthorization value)?
        awaitingAuthorization,
    TResult Function(TransactionStatusCancelled value)? cancelled,
    TResult Function(TransactionStatusExpired value)? expired,
    TResult Function(TransactionStatusPaymentNotInitiated value)?
        paymentNotInitiated,
    TResult Function(TransactionStatusUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class TransactionStatusCancelled implements TransactionStatus {
  const factory TransactionStatusCancelled({final String? status}) =
      _$TransactionStatusCancelledImpl;

  @override
  String? get status;

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionStatusCancelledImplCopyWith<_$TransactionStatusCancelledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionStatusExpiredImplCopyWith<$Res>
    implements $TransactionStatusCopyWith<$Res> {
  factory _$$TransactionStatusExpiredImplCopyWith(
          _$TransactionStatusExpiredImpl value,
          $Res Function(_$TransactionStatusExpiredImpl) then) =
      __$$TransactionStatusExpiredImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status});
}

/// @nodoc
class __$$TransactionStatusExpiredImplCopyWithImpl<$Res>
    extends _$TransactionStatusCopyWithImpl<$Res,
        _$TransactionStatusExpiredImpl>
    implements _$$TransactionStatusExpiredImplCopyWith<$Res> {
  __$$TransactionStatusExpiredImplCopyWithImpl(
      _$TransactionStatusExpiredImpl _value,
      $Res Function(_$TransactionStatusExpiredImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$TransactionStatusExpiredImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TransactionStatusExpiredImpl implements TransactionStatusExpired {
  const _$TransactionStatusExpiredImpl({this.status = 'EXPIRED'});

  @override
  @JsonKey()
  final String? status;

  @override
  String toString() {
    return 'TransactionStatus.expired(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionStatusExpiredImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionStatusExpiredImplCopyWith<_$TransactionStatusExpiredImpl>
      get copyWith => __$$TransactionStatusExpiredImplCopyWithImpl<
          _$TransactionStatusExpiredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? status) completed,
    required TResult Function(String? status) pending,
    required TResult Function(String? status) failed,
    required TResult Function(String? status) refunded,
    required TResult Function(String? status) awaitingAuthorization,
    required TResult Function(String? status) cancelled,
    required TResult Function(String? status) expired,
    required TResult Function(String? status) paymentNotInitiated,
    required TResult Function(String? status) unknown,
  }) {
    return expired(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status)? completed,
    TResult? Function(String? status)? pending,
    TResult? Function(String? status)? failed,
    TResult? Function(String? status)? refunded,
    TResult? Function(String? status)? awaitingAuthorization,
    TResult? Function(String? status)? cancelled,
    TResult? Function(String? status)? expired,
    TResult? Function(String? status)? paymentNotInitiated,
    TResult? Function(String? status)? unknown,
  }) {
    return expired?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status)? completed,
    TResult Function(String? status)? pending,
    TResult Function(String? status)? failed,
    TResult Function(String? status)? refunded,
    TResult Function(String? status)? awaitingAuthorization,
    TResult Function(String? status)? cancelled,
    TResult Function(String? status)? expired,
    TResult Function(String? status)? paymentNotInitiated,
    TResult Function(String? status)? unknown,
    required TResult orElse(),
  }) {
    if (expired != null) {
      return expired(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionStatusCompleted value) completed,
    required TResult Function(TransactionStatusPending value) pending,
    required TResult Function(TransactionStatusFailed value) failed,
    required TResult Function(TransactionStatusRefunded value) refunded,
    required TResult Function(TransactionStatusAwaitingAuthorization value)
        awaitingAuthorization,
    required TResult Function(TransactionStatusCancelled value) cancelled,
    required TResult Function(TransactionStatusExpired value) expired,
    required TResult Function(TransactionStatusPaymentNotInitiated value)
        paymentNotInitiated,
    required TResult Function(TransactionStatusUnknown value) unknown,
  }) {
    return expired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionStatusCompleted value)? completed,
    TResult? Function(TransactionStatusPending value)? pending,
    TResult? Function(TransactionStatusFailed value)? failed,
    TResult? Function(TransactionStatusRefunded value)? refunded,
    TResult? Function(TransactionStatusAwaitingAuthorization value)?
        awaitingAuthorization,
    TResult? Function(TransactionStatusCancelled value)? cancelled,
    TResult? Function(TransactionStatusExpired value)? expired,
    TResult? Function(TransactionStatusPaymentNotInitiated value)?
        paymentNotInitiated,
    TResult? Function(TransactionStatusUnknown value)? unknown,
  }) {
    return expired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionStatusCompleted value)? completed,
    TResult Function(TransactionStatusPending value)? pending,
    TResult Function(TransactionStatusFailed value)? failed,
    TResult Function(TransactionStatusRefunded value)? refunded,
    TResult Function(TransactionStatusAwaitingAuthorization value)?
        awaitingAuthorization,
    TResult Function(TransactionStatusCancelled value)? cancelled,
    TResult Function(TransactionStatusExpired value)? expired,
    TResult Function(TransactionStatusPaymentNotInitiated value)?
        paymentNotInitiated,
    TResult Function(TransactionStatusUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (expired != null) {
      return expired(this);
    }
    return orElse();
  }
}

abstract class TransactionStatusExpired implements TransactionStatus {
  const factory TransactionStatusExpired({final String? status}) =
      _$TransactionStatusExpiredImpl;

  @override
  String? get status;

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionStatusExpiredImplCopyWith<_$TransactionStatusExpiredImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionStatusPaymentNotInitiatedImplCopyWith<$Res>
    implements $TransactionStatusCopyWith<$Res> {
  factory _$$TransactionStatusPaymentNotInitiatedImplCopyWith(
          _$TransactionStatusPaymentNotInitiatedImpl value,
          $Res Function(_$TransactionStatusPaymentNotInitiatedImpl) then) =
      __$$TransactionStatusPaymentNotInitiatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status});
}

/// @nodoc
class __$$TransactionStatusPaymentNotInitiatedImplCopyWithImpl<$Res>
    extends _$TransactionStatusCopyWithImpl<$Res,
        _$TransactionStatusPaymentNotInitiatedImpl>
    implements _$$TransactionStatusPaymentNotInitiatedImplCopyWith<$Res> {
  __$$TransactionStatusPaymentNotInitiatedImplCopyWithImpl(
      _$TransactionStatusPaymentNotInitiatedImpl _value,
      $Res Function(_$TransactionStatusPaymentNotInitiatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$TransactionStatusPaymentNotInitiatedImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TransactionStatusPaymentNotInitiatedImpl
    implements TransactionStatusPaymentNotInitiated {
  const _$TransactionStatusPaymentNotInitiatedImpl(
      {this.status = 'PAYMENT_NOT_INITIATED'});

  @override
  @JsonKey()
  final String? status;

  @override
  String toString() {
    return 'TransactionStatus.paymentNotInitiated(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionStatusPaymentNotInitiatedImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionStatusPaymentNotInitiatedImplCopyWith<
          _$TransactionStatusPaymentNotInitiatedImpl>
      get copyWith => __$$TransactionStatusPaymentNotInitiatedImplCopyWithImpl<
          _$TransactionStatusPaymentNotInitiatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? status) completed,
    required TResult Function(String? status) pending,
    required TResult Function(String? status) failed,
    required TResult Function(String? status) refunded,
    required TResult Function(String? status) awaitingAuthorization,
    required TResult Function(String? status) cancelled,
    required TResult Function(String? status) expired,
    required TResult Function(String? status) paymentNotInitiated,
    required TResult Function(String? status) unknown,
  }) {
    return paymentNotInitiated(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status)? completed,
    TResult? Function(String? status)? pending,
    TResult? Function(String? status)? failed,
    TResult? Function(String? status)? refunded,
    TResult? Function(String? status)? awaitingAuthorization,
    TResult? Function(String? status)? cancelled,
    TResult? Function(String? status)? expired,
    TResult? Function(String? status)? paymentNotInitiated,
    TResult? Function(String? status)? unknown,
  }) {
    return paymentNotInitiated?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status)? completed,
    TResult Function(String? status)? pending,
    TResult Function(String? status)? failed,
    TResult Function(String? status)? refunded,
    TResult Function(String? status)? awaitingAuthorization,
    TResult Function(String? status)? cancelled,
    TResult Function(String? status)? expired,
    TResult Function(String? status)? paymentNotInitiated,
    TResult Function(String? status)? unknown,
    required TResult orElse(),
  }) {
    if (paymentNotInitiated != null) {
      return paymentNotInitiated(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionStatusCompleted value) completed,
    required TResult Function(TransactionStatusPending value) pending,
    required TResult Function(TransactionStatusFailed value) failed,
    required TResult Function(TransactionStatusRefunded value) refunded,
    required TResult Function(TransactionStatusAwaitingAuthorization value)
        awaitingAuthorization,
    required TResult Function(TransactionStatusCancelled value) cancelled,
    required TResult Function(TransactionStatusExpired value) expired,
    required TResult Function(TransactionStatusPaymentNotInitiated value)
        paymentNotInitiated,
    required TResult Function(TransactionStatusUnknown value) unknown,
  }) {
    return paymentNotInitiated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionStatusCompleted value)? completed,
    TResult? Function(TransactionStatusPending value)? pending,
    TResult? Function(TransactionStatusFailed value)? failed,
    TResult? Function(TransactionStatusRefunded value)? refunded,
    TResult? Function(TransactionStatusAwaitingAuthorization value)?
        awaitingAuthorization,
    TResult? Function(TransactionStatusCancelled value)? cancelled,
    TResult? Function(TransactionStatusExpired value)? expired,
    TResult? Function(TransactionStatusPaymentNotInitiated value)?
        paymentNotInitiated,
    TResult? Function(TransactionStatusUnknown value)? unknown,
  }) {
    return paymentNotInitiated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionStatusCompleted value)? completed,
    TResult Function(TransactionStatusPending value)? pending,
    TResult Function(TransactionStatusFailed value)? failed,
    TResult Function(TransactionStatusRefunded value)? refunded,
    TResult Function(TransactionStatusAwaitingAuthorization value)?
        awaitingAuthorization,
    TResult Function(TransactionStatusCancelled value)? cancelled,
    TResult Function(TransactionStatusExpired value)? expired,
    TResult Function(TransactionStatusPaymentNotInitiated value)?
        paymentNotInitiated,
    TResult Function(TransactionStatusUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (paymentNotInitiated != null) {
      return paymentNotInitiated(this);
    }
    return orElse();
  }
}

abstract class TransactionStatusPaymentNotInitiated
    implements TransactionStatus {
  const factory TransactionStatusPaymentNotInitiated({final String? status}) =
      _$TransactionStatusPaymentNotInitiatedImpl;

  @override
  String? get status;

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionStatusPaymentNotInitiatedImplCopyWith<
          _$TransactionStatusPaymentNotInitiatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionStatusUnknownImplCopyWith<$Res>
    implements $TransactionStatusCopyWith<$Res> {
  factory _$$TransactionStatusUnknownImplCopyWith(
          _$TransactionStatusUnknownImpl value,
          $Res Function(_$TransactionStatusUnknownImpl) then) =
      __$$TransactionStatusUnknownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status});
}

/// @nodoc
class __$$TransactionStatusUnknownImplCopyWithImpl<$Res>
    extends _$TransactionStatusCopyWithImpl<$Res,
        _$TransactionStatusUnknownImpl>
    implements _$$TransactionStatusUnknownImplCopyWith<$Res> {
  __$$TransactionStatusUnknownImplCopyWithImpl(
      _$TransactionStatusUnknownImpl _value,
      $Res Function(_$TransactionStatusUnknownImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$TransactionStatusUnknownImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TransactionStatusUnknownImpl implements TransactionStatusUnknown {
  const _$TransactionStatusUnknownImpl({this.status});

  @override
  final String? status;

  @override
  String toString() {
    return 'TransactionStatus.unknown(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionStatusUnknownImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionStatusUnknownImplCopyWith<_$TransactionStatusUnknownImpl>
      get copyWith => __$$TransactionStatusUnknownImplCopyWithImpl<
          _$TransactionStatusUnknownImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? status) completed,
    required TResult Function(String? status) pending,
    required TResult Function(String? status) failed,
    required TResult Function(String? status) refunded,
    required TResult Function(String? status) awaitingAuthorization,
    required TResult Function(String? status) cancelled,
    required TResult Function(String? status) expired,
    required TResult Function(String? status) paymentNotInitiated,
    required TResult Function(String? status) unknown,
  }) {
    return unknown(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status)? completed,
    TResult? Function(String? status)? pending,
    TResult? Function(String? status)? failed,
    TResult? Function(String? status)? refunded,
    TResult? Function(String? status)? awaitingAuthorization,
    TResult? Function(String? status)? cancelled,
    TResult? Function(String? status)? expired,
    TResult? Function(String? status)? paymentNotInitiated,
    TResult? Function(String? status)? unknown,
  }) {
    return unknown?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status)? completed,
    TResult Function(String? status)? pending,
    TResult Function(String? status)? failed,
    TResult Function(String? status)? refunded,
    TResult Function(String? status)? awaitingAuthorization,
    TResult Function(String? status)? cancelled,
    TResult Function(String? status)? expired,
    TResult Function(String? status)? paymentNotInitiated,
    TResult Function(String? status)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionStatusCompleted value) completed,
    required TResult Function(TransactionStatusPending value) pending,
    required TResult Function(TransactionStatusFailed value) failed,
    required TResult Function(TransactionStatusRefunded value) refunded,
    required TResult Function(TransactionStatusAwaitingAuthorization value)
        awaitingAuthorization,
    required TResult Function(TransactionStatusCancelled value) cancelled,
    required TResult Function(TransactionStatusExpired value) expired,
    required TResult Function(TransactionStatusPaymentNotInitiated value)
        paymentNotInitiated,
    required TResult Function(TransactionStatusUnknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionStatusCompleted value)? completed,
    TResult? Function(TransactionStatusPending value)? pending,
    TResult? Function(TransactionStatusFailed value)? failed,
    TResult? Function(TransactionStatusRefunded value)? refunded,
    TResult? Function(TransactionStatusAwaitingAuthorization value)?
        awaitingAuthorization,
    TResult? Function(TransactionStatusCancelled value)? cancelled,
    TResult? Function(TransactionStatusExpired value)? expired,
    TResult? Function(TransactionStatusPaymentNotInitiated value)?
        paymentNotInitiated,
    TResult? Function(TransactionStatusUnknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionStatusCompleted value)? completed,
    TResult Function(TransactionStatusPending value)? pending,
    TResult Function(TransactionStatusFailed value)? failed,
    TResult Function(TransactionStatusRefunded value)? refunded,
    TResult Function(TransactionStatusAwaitingAuthorization value)?
        awaitingAuthorization,
    TResult Function(TransactionStatusCancelled value)? cancelled,
    TResult Function(TransactionStatusExpired value)? expired,
    TResult Function(TransactionStatusPaymentNotInitiated value)?
        paymentNotInitiated,
    TResult Function(TransactionStatusUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class TransactionStatusUnknown implements TransactionStatus {
  const factory TransactionStatusUnknown({final String? status}) =
      _$TransactionStatusUnknownImpl;

  @override
  String? get status;

  /// Create a copy of TransactionStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionStatusUnknownImplCopyWith<_$TransactionStatusUnknownImpl>
      get copyWith => throw _privateConstructorUsedError;
}
