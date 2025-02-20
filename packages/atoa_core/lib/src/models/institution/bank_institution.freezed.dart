// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_institution.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BankInstitution _$BankInstitutionFromJson(Map<String, dynamic> json) {
  return _BankInstitutions.fromJson(json);
}

/// @nodoc
mixin _$BankInstitution {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  List<BankMedia> get media => throw _privateConstructorUsedError;
  List<String> get features => throw _privateConstructorUsedError;
  double get transactionAmountLimit => throw _privateConstructorUsedError;
  bool get businessBank => throw _privateConstructorUsedError;
  bool get popularBank => throw _privateConstructorUsedError;

  /// Serializes this BankInstitution to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BankInstitution
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BankInstitutionCopyWith<BankInstitution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankInstitutionCopyWith<$Res> {
  factory $BankInstitutionCopyWith(
          BankInstitution value, $Res Function(BankInstitution) then) =
      _$BankInstitutionCopyWithImpl<$Res, BankInstitution>;
  @useResult
  $Res call(
      {String id,
      String name,
      String fullName,
      List<BankMedia> media,
      List<String> features,
      double transactionAmountLimit,
      bool businessBank,
      bool popularBank});
}

/// @nodoc
class _$BankInstitutionCopyWithImpl<$Res, $Val extends BankInstitution>
    implements $BankInstitutionCopyWith<$Res> {
  _$BankInstitutionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BankInstitution
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fullName = null,
    Object? media = null,
    Object? features = null,
    Object? transactionAmountLimit = null,
    Object? businessBank = null,
    Object? popularBank = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<BankMedia>,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
      transactionAmountLimit: null == transactionAmountLimit
          ? _value.transactionAmountLimit
          : transactionAmountLimit // ignore: cast_nullable_to_non_nullable
              as double,
      businessBank: null == businessBank
          ? _value.businessBank
          : businessBank // ignore: cast_nullable_to_non_nullable
              as bool,
      popularBank: null == popularBank
          ? _value.popularBank
          : popularBank // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankInstitutionsImplCopyWith<$Res>
    implements $BankInstitutionCopyWith<$Res> {
  factory _$$BankInstitutionsImplCopyWith(_$BankInstitutionsImpl value,
          $Res Function(_$BankInstitutionsImpl) then) =
      __$$BankInstitutionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String fullName,
      List<BankMedia> media,
      List<String> features,
      double transactionAmountLimit,
      bool businessBank,
      bool popularBank});
}

/// @nodoc
class __$$BankInstitutionsImplCopyWithImpl<$Res>
    extends _$BankInstitutionCopyWithImpl<$Res, _$BankInstitutionsImpl>
    implements _$$BankInstitutionsImplCopyWith<$Res> {
  __$$BankInstitutionsImplCopyWithImpl(_$BankInstitutionsImpl _value,
      $Res Function(_$BankInstitutionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BankInstitution
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fullName = null,
    Object? media = null,
    Object? features = null,
    Object? transactionAmountLimit = null,
    Object? businessBank = null,
    Object? popularBank = null,
  }) {
    return _then(_$BankInstitutionsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<BankMedia>,
      features: null == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
      transactionAmountLimit: null == transactionAmountLimit
          ? _value.transactionAmountLimit
          : transactionAmountLimit // ignore: cast_nullable_to_non_nullable
              as double,
      businessBank: null == businessBank
          ? _value.businessBank
          : businessBank // ignore: cast_nullable_to_non_nullable
              as bool,
      popularBank: null == popularBank
          ? _value.popularBank
          : popularBank // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankInstitutionsImpl extends _BankInstitutions {
  const _$BankInstitutionsImpl(
      {required this.id,
      required this.name,
      required this.fullName,
      required final List<BankMedia> media,
      required final List<String> features,
      this.transactionAmountLimit = 15000,
      this.businessBank = false,
      this.popularBank = false})
      : _media = media,
        _features = features,
        super._();

  factory _$BankInstitutionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankInstitutionsImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String fullName;
  final List<BankMedia> _media;
  @override
  List<BankMedia> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  final List<String> _features;
  @override
  List<String> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  @override
  @JsonKey()
  final double transactionAmountLimit;
  @override
  @JsonKey()
  final bool businessBank;
  @override
  @JsonKey()
  final bool popularBank;

  @override
  String toString() {
    return 'BankInstitution(id: $id, name: $name, fullName: $fullName, media: $media, features: $features, transactionAmountLimit: $transactionAmountLimit, businessBank: $businessBank, popularBank: $popularBank)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankInstitutionsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            (identical(other.transactionAmountLimit, transactionAmountLimit) ||
                other.transactionAmountLimit == transactionAmountLimit) &&
            (identical(other.businessBank, businessBank) ||
                other.businessBank == businessBank) &&
            (identical(other.popularBank, popularBank) ||
                other.popularBank == popularBank));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      fullName,
      const DeepCollectionEquality().hash(_media),
      const DeepCollectionEquality().hash(_features),
      transactionAmountLimit,
      businessBank,
      popularBank);

  /// Create a copy of BankInstitution
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BankInstitutionsImplCopyWith<_$BankInstitutionsImpl> get copyWith =>
      __$$BankInstitutionsImplCopyWithImpl<_$BankInstitutionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankInstitutionsImplToJson(
      this,
    );
  }
}

abstract class _BankInstitutions extends BankInstitution {
  const factory _BankInstitutions(
      {required final String id,
      required final String name,
      required final String fullName,
      required final List<BankMedia> media,
      required final List<String> features,
      final double transactionAmountLimit,
      final bool businessBank,
      final bool popularBank}) = _$BankInstitutionsImpl;
  const _BankInstitutions._() : super._();

  factory _BankInstitutions.fromJson(Map<String, dynamic> json) =
      _$BankInstitutionsImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get fullName;
  @override
  List<BankMedia> get media;
  @override
  List<String> get features;
  @override
  double get transactionAmountLimit;
  @override
  bool get businessBank;
  @override
  bool get popularBank;

  /// Create a copy of BankInstitution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BankInstitutionsImplCopyWith<_$BankInstitutionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
