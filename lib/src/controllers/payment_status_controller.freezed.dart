// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_status_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentStatusState {
  TransactionDetails? get details => throw _privateConstructorUsedError;
  Exception? get exception => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentStatusStateCopyWith<PaymentStatusState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStatusStateCopyWith<$Res> {
  factory $PaymentStatusStateCopyWith(
          PaymentStatusState value, $Res Function(PaymentStatusState) then) =
      _$PaymentStatusStateCopyWithImpl<$Res, PaymentStatusState>;
  @useResult
  $Res call({TransactionDetails? details, Exception? exception});

  $TransactionDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class _$PaymentStatusStateCopyWithImpl<$Res, $Val extends PaymentStatusState>
    implements $PaymentStatusStateCopyWith<$Res> {
  _$PaymentStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as TransactionDetails?,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionDetailsCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $TransactionDetailsCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentStatusStateImplCopyWith<$Res>
    implements $PaymentStatusStateCopyWith<$Res> {
  factory _$$PaymentStatusStateImplCopyWith(_$PaymentStatusStateImpl value,
          $Res Function(_$PaymentStatusStateImpl) then) =
      __$$PaymentStatusStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TransactionDetails? details, Exception? exception});

  @override
  $TransactionDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class __$$PaymentStatusStateImplCopyWithImpl<$Res>
    extends _$PaymentStatusStateCopyWithImpl<$Res, _$PaymentStatusStateImpl>
    implements _$$PaymentStatusStateImplCopyWith<$Res> {
  __$$PaymentStatusStateImplCopyWithImpl(_$PaymentStatusStateImpl _value,
      $Res Function(_$PaymentStatusStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
    Object? exception = freezed,
  }) {
    return _then(_$PaymentStatusStateImpl(
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as TransactionDetails?,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$PaymentStatusStateImpl extends _PaymentStatusState {
  const _$PaymentStatusStateImpl({this.details, this.exception}) : super._();

  @override
  final TransactionDetails? details;
  @override
  final Exception? exception;

  @override
  String toString() {
    return 'PaymentStatusState(details: $details, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentStatusStateImpl &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, details, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentStatusStateImplCopyWith<_$PaymentStatusStateImpl> get copyWith =>
      __$$PaymentStatusStateImplCopyWithImpl<_$PaymentStatusStateImpl>(
          this, _$identity);
}

abstract class _PaymentStatusState extends PaymentStatusState {
  const factory _PaymentStatusState(
      {final TransactionDetails? details,
      final Exception? exception}) = _$PaymentStatusStateImpl;
  const _PaymentStatusState._() : super._();

  @override
  TransactionDetails? get details;
  @override
  Exception? get exception;
  @override
  @JsonKey(ignore: true)
  _$$PaymentStatusStateImplCopyWith<_$PaymentStatusStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
