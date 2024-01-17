// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_institutions_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BankInstitutionsState {
  List<BankInstitution> get bankList => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isAppInstalled => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showPersonal => throw _privateConstructorUsedError;
  BankInstitution? get selectedBank => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BankInstitutionsStateCopyWith<BankInstitutionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankInstitutionsStateCopyWith<$Res> {
  factory $BankInstitutionsStateCopyWith(BankInstitutionsState value,
          $Res Function(BankInstitutionsState) then) =
      _$BankInstitutionsStateCopyWithImpl<$Res, BankInstitutionsState>;
  @useResult
  $Res call(
      {List<BankInstitution> bankList,
      String? errorMessage,
      bool isAppInstalled,
      bool isLoading,
      bool showPersonal,
      BankInstitution? selectedBank});

  $BankInstitutionCopyWith<$Res>? get selectedBank;
}

/// @nodoc
class _$BankInstitutionsStateCopyWithImpl<$Res,
        $Val extends BankInstitutionsState>
    implements $BankInstitutionsStateCopyWith<$Res> {
  _$BankInstitutionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankList = null,
    Object? errorMessage = freezed,
    Object? isAppInstalled = null,
    Object? isLoading = null,
    Object? showPersonal = null,
    Object? selectedBank = freezed,
  }) {
    return _then(_value.copyWith(
      bankList: null == bankList
          ? _value.bankList
          : bankList // ignore: cast_nullable_to_non_nullable
              as List<BankInstitution>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isAppInstalled: null == isAppInstalled
          ? _value.isAppInstalled
          : isAppInstalled // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showPersonal: null == showPersonal
          ? _value.showPersonal
          : showPersonal // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedBank: freezed == selectedBank
          ? _value.selectedBank
          : selectedBank // ignore: cast_nullable_to_non_nullable
              as BankInstitution?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BankInstitutionCopyWith<$Res>? get selectedBank {
    if (_value.selectedBank == null) {
      return null;
    }

    return $BankInstitutionCopyWith<$Res>(_value.selectedBank!, (value) {
      return _then(_value.copyWith(selectedBank: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BankInstitutionsStateImplCopyWith<$Res>
    implements $BankInstitutionsStateCopyWith<$Res> {
  factory _$$BankInstitutionsStateImplCopyWith(
          _$BankInstitutionsStateImpl value,
          $Res Function(_$BankInstitutionsStateImpl) then) =
      __$$BankInstitutionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BankInstitution> bankList,
      String? errorMessage,
      bool isAppInstalled,
      bool isLoading,
      bool showPersonal,
      BankInstitution? selectedBank});

  @override
  $BankInstitutionCopyWith<$Res>? get selectedBank;
}

/// @nodoc
class __$$BankInstitutionsStateImplCopyWithImpl<$Res>
    extends _$BankInstitutionsStateCopyWithImpl<$Res,
        _$BankInstitutionsStateImpl>
    implements _$$BankInstitutionsStateImplCopyWith<$Res> {
  __$$BankInstitutionsStateImplCopyWithImpl(_$BankInstitutionsStateImpl _value,
      $Res Function(_$BankInstitutionsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankList = null,
    Object? errorMessage = freezed,
    Object? isAppInstalled = null,
    Object? isLoading = null,
    Object? showPersonal = null,
    Object? selectedBank = freezed,
  }) {
    return _then(_$BankInstitutionsStateImpl(
      bankList: null == bankList
          ? _value._bankList
          : bankList // ignore: cast_nullable_to_non_nullable
              as List<BankInstitution>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isAppInstalled: null == isAppInstalled
          ? _value.isAppInstalled
          : isAppInstalled // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showPersonal: null == showPersonal
          ? _value.showPersonal
          : showPersonal // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedBank: freezed == selectedBank
          ? _value.selectedBank
          : selectedBank // ignore: cast_nullable_to_non_nullable
              as BankInstitution?,
    ));
  }
}

/// @nodoc

class _$BankInstitutionsStateImpl extends _BankInstitutionsState {
  const _$BankInstitutionsStateImpl(
      {final List<BankInstitution> bankList = const [],
      this.errorMessage,
      this.isAppInstalled = false,
      this.isLoading = false,
      this.showPersonal = false,
      this.selectedBank})
      : _bankList = bankList,
        super._();

  final List<BankInstitution> _bankList;
  @override
  @JsonKey()
  List<BankInstitution> get bankList {
    if (_bankList is EqualUnmodifiableListView) return _bankList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bankList);
  }

  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool isAppInstalled;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool showPersonal;
  @override
  final BankInstitution? selectedBank;

  @override
  String toString() {
    return 'BankInstitutionsState(bankList: $bankList, errorMessage: $errorMessage, isAppInstalled: $isAppInstalled, isLoading: $isLoading, showPersonal: $showPersonal, selectedBank: $selectedBank)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankInstitutionsStateImpl &&
            const DeepCollectionEquality().equals(other._bankList, _bankList) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isAppInstalled, isAppInstalled) ||
                other.isAppInstalled == isAppInstalled) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.showPersonal, showPersonal) ||
                other.showPersonal == showPersonal) &&
            (identical(other.selectedBank, selectedBank) ||
                other.selectedBank == selectedBank));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bankList),
      errorMessage,
      isAppInstalled,
      isLoading,
      showPersonal,
      selectedBank);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankInstitutionsStateImplCopyWith<_$BankInstitutionsStateImpl>
      get copyWith => __$$BankInstitutionsStateImplCopyWithImpl<
          _$BankInstitutionsStateImpl>(this, _$identity);
}

abstract class _BankInstitutionsState extends BankInstitutionsState {
  const factory _BankInstitutionsState(
      {final List<BankInstitution> bankList,
      final String? errorMessage,
      final bool isAppInstalled,
      final bool isLoading,
      final bool showPersonal,
      final BankInstitution? selectedBank}) = _$BankInstitutionsStateImpl;
  const _BankInstitutionsState._() : super._();

  @override
  List<BankInstitution> get bankList;
  @override
  String? get errorMessage;
  @override
  bool get isAppInstalled;
  @override
  bool get isLoading;
  @override
  bool get showPersonal;
  @override
  BankInstitution? get selectedBank;
  @override
  @JsonKey(ignore: true)
  _$$BankInstitutionsStateImplCopyWith<_$BankInstitutionsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
