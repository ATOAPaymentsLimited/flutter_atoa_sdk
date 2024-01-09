// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audit_trail_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuditTrailDetails _$AuditTrailDetailsFromJson(Map<String, dynamic> json) {
  return _AuditTrailDetails.fromJson(json);
}

/// @nodoc
mixin _$AuditTrailDetails {
  String? get fullName => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;
  String? get citizenship => throw _privateConstructorUsedError;
  String? get homeAddress => throw _privateConstructorUsedError;
  String? get occupation => throw _privateConstructorUsedError;
  String? get sourceOfIncome => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuditTrailDetailsCopyWith<AuditTrailDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuditTrailDetailsCopyWith<$Res> {
  factory $AuditTrailDetailsCopyWith(
          AuditTrailDetails value, $Res Function(AuditTrailDetails) then) =
      _$AuditTrailDetailsCopyWithImpl<$Res, AuditTrailDetails>;
  @useResult
  $Res call(
      {String? fullName,
      String? dob,
      String? citizenship,
      String? homeAddress,
      String? occupation,
      String? sourceOfIncome});
}

/// @nodoc
class _$AuditTrailDetailsCopyWithImpl<$Res, $Val extends AuditTrailDetails>
    implements $AuditTrailDetailsCopyWith<$Res> {
  _$AuditTrailDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? dob = freezed,
    Object? citizenship = freezed,
    Object? homeAddress = freezed,
    Object? occupation = freezed,
    Object? sourceOfIncome = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      citizenship: freezed == citizenship
          ? _value.citizenship
          : citizenship // ignore: cast_nullable_to_non_nullable
              as String?,
      homeAddress: freezed == homeAddress
          ? _value.homeAddress
          : homeAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      occupation: freezed == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceOfIncome: freezed == sourceOfIncome
          ? _value.sourceOfIncome
          : sourceOfIncome // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuditTrailDetailsImplCopyWith<$Res>
    implements $AuditTrailDetailsCopyWith<$Res> {
  factory _$$AuditTrailDetailsImplCopyWith(_$AuditTrailDetailsImpl value,
          $Res Function(_$AuditTrailDetailsImpl) then) =
      __$$AuditTrailDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fullName,
      String? dob,
      String? citizenship,
      String? homeAddress,
      String? occupation,
      String? sourceOfIncome});
}

/// @nodoc
class __$$AuditTrailDetailsImplCopyWithImpl<$Res>
    extends _$AuditTrailDetailsCopyWithImpl<$Res, _$AuditTrailDetailsImpl>
    implements _$$AuditTrailDetailsImplCopyWith<$Res> {
  __$$AuditTrailDetailsImplCopyWithImpl(_$AuditTrailDetailsImpl _value,
      $Res Function(_$AuditTrailDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? dob = freezed,
    Object? citizenship = freezed,
    Object? homeAddress = freezed,
    Object? occupation = freezed,
    Object? sourceOfIncome = freezed,
  }) {
    return _then(_$AuditTrailDetailsImpl(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      citizenship: freezed == citizenship
          ? _value.citizenship
          : citizenship // ignore: cast_nullable_to_non_nullable
              as String?,
      homeAddress: freezed == homeAddress
          ? _value.homeAddress
          : homeAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      occupation: freezed == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceOfIncome: freezed == sourceOfIncome
          ? _value.sourceOfIncome
          : sourceOfIncome // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuditTrailDetailsImpl extends _AuditTrailDetails {
  const _$AuditTrailDetailsImpl(
      {this.fullName,
      this.dob,
      this.citizenship,
      this.homeAddress,
      this.occupation,
      this.sourceOfIncome})
      : super._();

  factory _$AuditTrailDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuditTrailDetailsImplFromJson(json);

  @override
  final String? fullName;
  @override
  final String? dob;
  @override
  final String? citizenship;
  @override
  final String? homeAddress;
  @override
  final String? occupation;
  @override
  final String? sourceOfIncome;

  @override
  String toString() {
    return 'AuditTrailDetails(fullName: $fullName, dob: $dob, citizenship: $citizenship, homeAddress: $homeAddress, occupation: $occupation, sourceOfIncome: $sourceOfIncome)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuditTrailDetailsImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.citizenship, citizenship) ||
                other.citizenship == citizenship) &&
            (identical(other.homeAddress, homeAddress) ||
                other.homeAddress == homeAddress) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.sourceOfIncome, sourceOfIncome) ||
                other.sourceOfIncome == sourceOfIncome));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, dob, citizenship,
      homeAddress, occupation, sourceOfIncome);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuditTrailDetailsImplCopyWith<_$AuditTrailDetailsImpl> get copyWith =>
      __$$AuditTrailDetailsImplCopyWithImpl<_$AuditTrailDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuditTrailDetailsImplToJson(
      this,
    );
  }
}

abstract class _AuditTrailDetails extends AuditTrailDetails {
  const factory _AuditTrailDetails(
      {final String? fullName,
      final String? dob,
      final String? citizenship,
      final String? homeAddress,
      final String? occupation,
      final String? sourceOfIncome}) = _$AuditTrailDetailsImpl;
  const _AuditTrailDetails._() : super._();

  factory _AuditTrailDetails.fromJson(Map<String, dynamic> json) =
      _$AuditTrailDetailsImpl.fromJson;

  @override
  String? get fullName;
  @override
  String? get dob;
  @override
  String? get citizenship;
  @override
  String? get homeAddress;
  @override
  String? get occupation;
  @override
  String? get sourceOfIncome;
  @override
  @JsonKey(ignore: true)
  _$$AuditTrailDetailsImplCopyWith<_$AuditTrailDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
