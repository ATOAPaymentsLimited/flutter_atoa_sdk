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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BankInstitutionsState {
  List<BankInstitution> get bankList => throw _privateConstructorUsedError;
  Exception? get error => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showPersonal => throw _privateConstructorUsedError;
  BankInstitution? get selectedBank => throw _privateConstructorUsedError;
  PaymentRequestData? get paymentDetails => throw _privateConstructorUsedError;
  PaymentAuthResponse? get paymentAuth => throw _privateConstructorUsedError;
  bool get isAppInstalled => throw _privateConstructorUsedError;
  bool get isLoadingAuth => throw _privateConstructorUsedError;
  Exception? get bankAuthError => throw _privateConstructorUsedError;
  bool get showHowPaymentWorks => throw _privateConstructorUsedError;

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
      Exception? error,
      bool isLoading,
      bool showPersonal,
      BankInstitution? selectedBank,
      PaymentRequestData? paymentDetails,
      PaymentAuthResponse? paymentAuth,
      bool isAppInstalled,
      bool isLoadingAuth,
      Exception? bankAuthError,
      bool showHowPaymentWorks});

  $BankInstitutionCopyWith<$Res>? get selectedBank;
  $PaymentRequestDataCopyWith<$Res>? get paymentDetails;
  $PaymentAuthResponseCopyWith<$Res>? get paymentAuth;
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
    Object? error = freezed,
    Object? isLoading = null,
    Object? showPersonal = null,
    Object? selectedBank = freezed,
    Object? paymentDetails = freezed,
    Object? paymentAuth = freezed,
    Object? isAppInstalled = null,
    Object? isLoadingAuth = null,
    Object? bankAuthError = freezed,
    Object? showHowPaymentWorks = null,
  }) {
    return _then(_value.copyWith(
      bankList: null == bankList
          ? _value.bankList
          : bankList // ignore: cast_nullable_to_non_nullable
              as List<BankInstitution>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
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
      paymentDetails: freezed == paymentDetails
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as PaymentRequestData?,
      paymentAuth: freezed == paymentAuth
          ? _value.paymentAuth
          : paymentAuth // ignore: cast_nullable_to_non_nullable
              as PaymentAuthResponse?,
      isAppInstalled: null == isAppInstalled
          ? _value.isAppInstalled
          : isAppInstalled // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingAuth: null == isLoadingAuth
          ? _value.isLoadingAuth
          : isLoadingAuth // ignore: cast_nullable_to_non_nullable
              as bool,
      bankAuthError: freezed == bankAuthError
          ? _value.bankAuthError
          : bankAuthError // ignore: cast_nullable_to_non_nullable
              as Exception?,
      showHowPaymentWorks: null == showHowPaymentWorks
          ? _value.showHowPaymentWorks
          : showHowPaymentWorks // ignore: cast_nullable_to_non_nullable
              as bool,
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

  @override
  @pragma('vm:prefer-inline')
  $PaymentRequestDataCopyWith<$Res>? get paymentDetails {
    if (_value.paymentDetails == null) {
      return null;
    }

    return $PaymentRequestDataCopyWith<$Res>(_value.paymentDetails!, (value) {
      return _then(_value.copyWith(paymentDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentAuthResponseCopyWith<$Res>? get paymentAuth {
    if (_value.paymentAuth == null) {
      return null;
    }

    return $PaymentAuthResponseCopyWith<$Res>(_value.paymentAuth!, (value) {
      return _then(_value.copyWith(paymentAuth: value) as $Val);
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
      Exception? error,
      bool isLoading,
      bool showPersonal,
      BankInstitution? selectedBank,
      PaymentRequestData? paymentDetails,
      PaymentAuthResponse? paymentAuth,
      bool isAppInstalled,
      bool isLoadingAuth,
      Exception? bankAuthError,
      bool showHowPaymentWorks});

  @override
  $BankInstitutionCopyWith<$Res>? get selectedBank;
  @override
  $PaymentRequestDataCopyWith<$Res>? get paymentDetails;
  @override
  $PaymentAuthResponseCopyWith<$Res>? get paymentAuth;
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
    Object? error = freezed,
    Object? isLoading = null,
    Object? showPersonal = null,
    Object? selectedBank = freezed,
    Object? paymentDetails = freezed,
    Object? paymentAuth = freezed,
    Object? isAppInstalled = null,
    Object? isLoadingAuth = null,
    Object? bankAuthError = freezed,
    Object? showHowPaymentWorks = null,
  }) {
    return _then(_$BankInstitutionsStateImpl(
      bankList: null == bankList
          ? _value._bankList
          : bankList // ignore: cast_nullable_to_non_nullable
              as List<BankInstitution>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
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
      paymentDetails: freezed == paymentDetails
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as PaymentRequestData?,
      paymentAuth: freezed == paymentAuth
          ? _value.paymentAuth
          : paymentAuth // ignore: cast_nullable_to_non_nullable
              as PaymentAuthResponse?,
      isAppInstalled: null == isAppInstalled
          ? _value.isAppInstalled
          : isAppInstalled // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingAuth: null == isLoadingAuth
          ? _value.isLoadingAuth
          : isLoadingAuth // ignore: cast_nullable_to_non_nullable
              as bool,
      bankAuthError: freezed == bankAuthError
          ? _value.bankAuthError
          : bankAuthError // ignore: cast_nullable_to_non_nullable
              as Exception?,
      showHowPaymentWorks: null == showHowPaymentWorks
          ? _value.showHowPaymentWorks
          : showHowPaymentWorks // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BankInstitutionsStateImpl extends _BankInstitutionsState
    with DiagnosticableTreeMixin {
  const _$BankInstitutionsStateImpl(
      {final List<BankInstitution> bankList = const [],
      this.error,
      this.isLoading = false,
      this.showPersonal = false,
      this.selectedBank,
      this.paymentDetails,
      this.paymentAuth,
      this.isAppInstalled = true,
      this.isLoadingAuth = false,
      this.bankAuthError,
      this.showHowPaymentWorks = true})
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
  final Exception? error;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool showPersonal;
  @override
  final BankInstitution? selectedBank;
  @override
  final PaymentRequestData? paymentDetails;
  @override
  final PaymentAuthResponse? paymentAuth;
  @override
  @JsonKey()
  final bool isAppInstalled;
  @override
  @JsonKey()
  final bool isLoadingAuth;
  @override
  final Exception? bankAuthError;
  @override
  @JsonKey()
  final bool showHowPaymentWorks;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BankInstitutionsState(bankList: $bankList, error: $error, isLoading: $isLoading, showPersonal: $showPersonal, selectedBank: $selectedBank, paymentDetails: $paymentDetails, paymentAuth: $paymentAuth, isAppInstalled: $isAppInstalled, isLoadingAuth: $isLoadingAuth, bankAuthError: $bankAuthError, showHowPaymentWorks: $showHowPaymentWorks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BankInstitutionsState'))
      ..add(DiagnosticsProperty('bankList', bankList))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('showPersonal', showPersonal))
      ..add(DiagnosticsProperty('selectedBank', selectedBank))
      ..add(DiagnosticsProperty('paymentDetails', paymentDetails))
      ..add(DiagnosticsProperty('paymentAuth', paymentAuth))
      ..add(DiagnosticsProperty('isAppInstalled', isAppInstalled))
      ..add(DiagnosticsProperty('isLoadingAuth', isLoadingAuth))
      ..add(DiagnosticsProperty('bankAuthError', bankAuthError))
      ..add(DiagnosticsProperty('showHowPaymentWorks', showHowPaymentWorks));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankInstitutionsStateImpl &&
            const DeepCollectionEquality().equals(other._bankList, _bankList) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.showPersonal, showPersonal) ||
                other.showPersonal == showPersonal) &&
            (identical(other.selectedBank, selectedBank) ||
                other.selectedBank == selectedBank) &&
            (identical(other.paymentDetails, paymentDetails) ||
                other.paymentDetails == paymentDetails) &&
            (identical(other.paymentAuth, paymentAuth) ||
                other.paymentAuth == paymentAuth) &&
            (identical(other.isAppInstalled, isAppInstalled) ||
                other.isAppInstalled == isAppInstalled) &&
            (identical(other.isLoadingAuth, isLoadingAuth) ||
                other.isLoadingAuth == isLoadingAuth) &&
            (identical(other.bankAuthError, bankAuthError) ||
                other.bankAuthError == bankAuthError) &&
            (identical(other.showHowPaymentWorks, showHowPaymentWorks) ||
                other.showHowPaymentWorks == showHowPaymentWorks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bankList),
      error,
      isLoading,
      showPersonal,
      selectedBank,
      paymentDetails,
      paymentAuth,
      isAppInstalled,
      isLoadingAuth,
      bankAuthError,
      showHowPaymentWorks);

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
      final Exception? error,
      final bool isLoading,
      final bool showPersonal,
      final BankInstitution? selectedBank,
      final PaymentRequestData? paymentDetails,
      final PaymentAuthResponse? paymentAuth,
      final bool isAppInstalled,
      final bool isLoadingAuth,
      final Exception? bankAuthError,
      final bool showHowPaymentWorks}) = _$BankInstitutionsStateImpl;
  const _BankInstitutionsState._() : super._();

  @override
  List<BankInstitution> get bankList;
  @override
  Exception? get error;
  @override
  bool get isLoading;
  @override
  bool get showPersonal;
  @override
  BankInstitution? get selectedBank;
  @override
  PaymentRequestData? get paymentDetails;
  @override
  PaymentAuthResponse? get paymentAuth;
  @override
  bool get isAppInstalled;
  @override
  bool get isLoadingAuth;
  @override
  Exception? get bankAuthError;
  @override
  bool get showHowPaymentWorks;
  @override
  @JsonKey(ignore: true)
  _$$BankInstitutionsStateImplCopyWith<_$BankInstitutionsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
