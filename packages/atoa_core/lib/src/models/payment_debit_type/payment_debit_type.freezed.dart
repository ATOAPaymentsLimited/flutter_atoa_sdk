// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_debit_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentDebitType _$PaymentDebitTypeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'sent':
      return PaymentDebitTypeSent.fromJson(json);
    case 'recieved':
      return PaymentDebitTypeReceived.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PaymentDebitType',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PaymentDebitType {
  bool? get debit => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? debit) sent,
    required TResult Function(bool? debit) recieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? debit)? sent,
    TResult? Function(bool? debit)? recieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? debit)? sent,
    TResult Function(bool? debit)? recieved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentDebitTypeSent value) sent,
    required TResult Function(PaymentDebitTypeReceived value) recieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentDebitTypeSent value)? sent,
    TResult? Function(PaymentDebitTypeReceived value)? recieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentDebitTypeSent value)? sent,
    TResult Function(PaymentDebitTypeReceived value)? recieved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PaymentDebitType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentDebitType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentDebitTypeCopyWith<PaymentDebitType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDebitTypeCopyWith<$Res> {
  factory $PaymentDebitTypeCopyWith(
          PaymentDebitType value, $Res Function(PaymentDebitType) then) =
      _$PaymentDebitTypeCopyWithImpl<$Res, PaymentDebitType>;
  @useResult
  $Res call({bool? debit});
}

/// @nodoc
class _$PaymentDebitTypeCopyWithImpl<$Res, $Val extends PaymentDebitType>
    implements $PaymentDebitTypeCopyWith<$Res> {
  _$PaymentDebitTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentDebitType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? debit = freezed,
  }) {
    return _then(_value.copyWith(
      debit: freezed == debit
          ? _value.debit
          : debit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentDebitTypeSentImplCopyWith<$Res>
    implements $PaymentDebitTypeCopyWith<$Res> {
  factory _$$PaymentDebitTypeSentImplCopyWith(_$PaymentDebitTypeSentImpl value,
          $Res Function(_$PaymentDebitTypeSentImpl) then) =
      __$$PaymentDebitTypeSentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? debit});
}

/// @nodoc
class __$$PaymentDebitTypeSentImplCopyWithImpl<$Res>
    extends _$PaymentDebitTypeCopyWithImpl<$Res, _$PaymentDebitTypeSentImpl>
    implements _$$PaymentDebitTypeSentImplCopyWith<$Res> {
  __$$PaymentDebitTypeSentImplCopyWithImpl(_$PaymentDebitTypeSentImpl _value,
      $Res Function(_$PaymentDebitTypeSentImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentDebitType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? debit = freezed,
  }) {
    return _then(_$PaymentDebitTypeSentImpl(
      debit: freezed == debit
          ? _value.debit
          : debit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentDebitTypeSentImpl extends PaymentDebitTypeSent {
  _$PaymentDebitTypeSentImpl({this.debit = true, final String? $type})
      : $type = $type ?? 'sent',
        super._();

  factory _$PaymentDebitTypeSentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentDebitTypeSentImplFromJson(json);

  @override
  @JsonKey()
  final bool? debit;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PaymentDebitType.sent(debit: $debit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentDebitTypeSentImpl &&
            (identical(other.debit, debit) || other.debit == debit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, debit);

  /// Create a copy of PaymentDebitType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentDebitTypeSentImplCopyWith<_$PaymentDebitTypeSentImpl>
      get copyWith =>
          __$$PaymentDebitTypeSentImplCopyWithImpl<_$PaymentDebitTypeSentImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? debit) sent,
    required TResult Function(bool? debit) recieved,
  }) {
    return sent(debit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? debit)? sent,
    TResult? Function(bool? debit)? recieved,
  }) {
    return sent?.call(debit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? debit)? sent,
    TResult Function(bool? debit)? recieved,
    required TResult orElse(),
  }) {
    if (sent != null) {
      return sent(debit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentDebitTypeSent value) sent,
    required TResult Function(PaymentDebitTypeReceived value) recieved,
  }) {
    return sent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentDebitTypeSent value)? sent,
    TResult? Function(PaymentDebitTypeReceived value)? recieved,
  }) {
    return sent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentDebitTypeSent value)? sent,
    TResult Function(PaymentDebitTypeReceived value)? recieved,
    required TResult orElse(),
  }) {
    if (sent != null) {
      return sent(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentDebitTypeSentImplToJson(
      this,
    );
  }
}

abstract class PaymentDebitTypeSent extends PaymentDebitType {
  factory PaymentDebitTypeSent({final bool? debit}) =
      _$PaymentDebitTypeSentImpl;
  PaymentDebitTypeSent._() : super._();

  factory PaymentDebitTypeSent.fromJson(Map<String, dynamic> json) =
      _$PaymentDebitTypeSentImpl.fromJson;

  @override
  bool? get debit;

  /// Create a copy of PaymentDebitType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentDebitTypeSentImplCopyWith<_$PaymentDebitTypeSentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentDebitTypeReceivedImplCopyWith<$Res>
    implements $PaymentDebitTypeCopyWith<$Res> {
  factory _$$PaymentDebitTypeReceivedImplCopyWith(
          _$PaymentDebitTypeReceivedImpl value,
          $Res Function(_$PaymentDebitTypeReceivedImpl) then) =
      __$$PaymentDebitTypeReceivedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? debit});
}

/// @nodoc
class __$$PaymentDebitTypeReceivedImplCopyWithImpl<$Res>
    extends _$PaymentDebitTypeCopyWithImpl<$Res, _$PaymentDebitTypeReceivedImpl>
    implements _$$PaymentDebitTypeReceivedImplCopyWith<$Res> {
  __$$PaymentDebitTypeReceivedImplCopyWithImpl(
      _$PaymentDebitTypeReceivedImpl _value,
      $Res Function(_$PaymentDebitTypeReceivedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentDebitType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? debit = freezed,
  }) {
    return _then(_$PaymentDebitTypeReceivedImpl(
      debit: freezed == debit
          ? _value.debit
          : debit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentDebitTypeReceivedImpl extends PaymentDebitTypeReceived {
  _$PaymentDebitTypeReceivedImpl({this.debit = false, final String? $type})
      : $type = $type ?? 'recieved',
        super._();

  factory _$PaymentDebitTypeReceivedImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentDebitTypeReceivedImplFromJson(json);

  @override
  @JsonKey()
  final bool? debit;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PaymentDebitType.recieved(debit: $debit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentDebitTypeReceivedImpl &&
            (identical(other.debit, debit) || other.debit == debit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, debit);

  /// Create a copy of PaymentDebitType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentDebitTypeReceivedImplCopyWith<_$PaymentDebitTypeReceivedImpl>
      get copyWith => __$$PaymentDebitTypeReceivedImplCopyWithImpl<
          _$PaymentDebitTypeReceivedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? debit) sent,
    required TResult Function(bool? debit) recieved,
  }) {
    return recieved(debit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? debit)? sent,
    TResult? Function(bool? debit)? recieved,
  }) {
    return recieved?.call(debit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? debit)? sent,
    TResult Function(bool? debit)? recieved,
    required TResult orElse(),
  }) {
    if (recieved != null) {
      return recieved(debit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentDebitTypeSent value) sent,
    required TResult Function(PaymentDebitTypeReceived value) recieved,
  }) {
    return recieved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentDebitTypeSent value)? sent,
    TResult? Function(PaymentDebitTypeReceived value)? recieved,
  }) {
    return recieved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentDebitTypeSent value)? sent,
    TResult Function(PaymentDebitTypeReceived value)? recieved,
    required TResult orElse(),
  }) {
    if (recieved != null) {
      return recieved(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentDebitTypeReceivedImplToJson(
      this,
    );
  }
}

abstract class PaymentDebitTypeReceived extends PaymentDebitType {
  factory PaymentDebitTypeReceived({final bool? debit}) =
      _$PaymentDebitTypeReceivedImpl;
  PaymentDebitTypeReceived._() : super._();

  factory PaymentDebitTypeReceived.fromJson(Map<String, dynamic> json) =
      _$PaymentDebitTypeReceivedImpl.fromJson;

  @override
  bool? get debit;

  /// Create a copy of PaymentDebitType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentDebitTypeReceivedImplCopyWith<_$PaymentDebitTypeReceivedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
