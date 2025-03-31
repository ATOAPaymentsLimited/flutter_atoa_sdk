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
  bool? get isLoading => throw _privateConstructorUsedError;
  bool get showPersonal => throw _privateConstructorUsedError;
  BankInstitution? get selectedBank => throw _privateConstructorUsedError;
  PaymentRequestData? get paymentDetails => throw _privateConstructorUsedError;
  PaymentAuthResponse? get paymentAuth => throw _privateConstructorUsedError;
  bool get isAppInstalled => throw _privateConstructorUsedError;
  bool get isLoadingAuth => throw _privateConstructorUsedError;
  Exception? get bankAuthError => throw _privateConstructorUsedError;
  bool? get showHowPaymentWorks => throw _privateConstructorUsedError;
  SavedBankDetails? get savedBankDetails => throw _privateConstructorUsedError;
  Exception? get paymentDetailsError => throw _privateConstructorUsedError;
  Exception? get bankFetchingError => throw _privateConstructorUsedError;
  bool get hasLastPaymentDetails => throw _privateConstructorUsedError;
  BankInstitution? get lastBankDetails => throw _privateConstructorUsedError;
  bool get showConfirmation => throw _privateConstructorUsedError;
  bool? get isPaymentAndBankLoading => throw _privateConstructorUsedError;
  bool get bankRedirectionFails => throw _privateConstructorUsedError;
  bool? get isLoadingDetails => throw _privateConstructorUsedError;

  /// Create a copy of BankInstitutionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      bool? isLoading,
      bool showPersonal,
      BankInstitution? selectedBank,
      PaymentRequestData? paymentDetails,
      PaymentAuthResponse? paymentAuth,
      bool isAppInstalled,
      bool isLoadingAuth,
      Exception? bankAuthError,
      bool? showHowPaymentWorks,
      SavedBankDetails? savedBankDetails,
      Exception? paymentDetailsError,
      Exception? bankFetchingError,
      bool hasLastPaymentDetails,
      BankInstitution? lastBankDetails,
      bool showConfirmation,
      bool? isPaymentAndBankLoading,
      bool bankRedirectionFails,
      bool? isLoadingDetails});

  $BankInstitutionCopyWith<$Res>? get selectedBank;
  $PaymentRequestDataCopyWith<$Res>? get paymentDetails;
  $PaymentAuthResponseCopyWith<$Res>? get paymentAuth;
  $SavedBankDetailsCopyWith<$Res>? get savedBankDetails;
  $BankInstitutionCopyWith<$Res>? get lastBankDetails;
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

  /// Create a copy of BankInstitutionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankList = null,
    Object? error = freezed,
    Object? isLoading = freezed,
    Object? showPersonal = null,
    Object? selectedBank = freezed,
    Object? paymentDetails = freezed,
    Object? paymentAuth = freezed,
    Object? isAppInstalled = null,
    Object? isLoadingAuth = null,
    Object? bankAuthError = freezed,
    Object? showHowPaymentWorks = freezed,
    Object? savedBankDetails = freezed,
    Object? paymentDetailsError = freezed,
    Object? bankFetchingError = freezed,
    Object? hasLastPaymentDetails = null,
    Object? lastBankDetails = freezed,
    Object? showConfirmation = null,
    Object? isPaymentAndBankLoading = freezed,
    Object? bankRedirectionFails = null,
    Object? isLoadingDetails = freezed,
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
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      showHowPaymentWorks: freezed == showHowPaymentWorks
          ? _value.showHowPaymentWorks
          : showHowPaymentWorks // ignore: cast_nullable_to_non_nullable
              as bool?,
      savedBankDetails: freezed == savedBankDetails
          ? _value.savedBankDetails
          : savedBankDetails // ignore: cast_nullable_to_non_nullable
              as SavedBankDetails?,
      paymentDetailsError: freezed == paymentDetailsError
          ? _value.paymentDetailsError
          : paymentDetailsError // ignore: cast_nullable_to_non_nullable
              as Exception?,
      bankFetchingError: freezed == bankFetchingError
          ? _value.bankFetchingError
          : bankFetchingError // ignore: cast_nullable_to_non_nullable
              as Exception?,
      hasLastPaymentDetails: null == hasLastPaymentDetails
          ? _value.hasLastPaymentDetails
          : hasLastPaymentDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      lastBankDetails: freezed == lastBankDetails
          ? _value.lastBankDetails
          : lastBankDetails // ignore: cast_nullable_to_non_nullable
              as BankInstitution?,
      showConfirmation: null == showConfirmation
          ? _value.showConfirmation
          : showConfirmation // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaymentAndBankLoading: freezed == isPaymentAndBankLoading
          ? _value.isPaymentAndBankLoading
          : isPaymentAndBankLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      bankRedirectionFails: null == bankRedirectionFails
          ? _value.bankRedirectionFails
          : bankRedirectionFails // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingDetails: freezed == isLoadingDetails
          ? _value.isLoadingDetails
          : isLoadingDetails // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of BankInstitutionsState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of BankInstitutionsState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of BankInstitutionsState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of BankInstitutionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SavedBankDetailsCopyWith<$Res>? get savedBankDetails {
    if (_value.savedBankDetails == null) {
      return null;
    }

    return $SavedBankDetailsCopyWith<$Res>(_value.savedBankDetails!, (value) {
      return _then(_value.copyWith(savedBankDetails: value) as $Val);
    });
  }

  /// Create a copy of BankInstitutionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BankInstitutionCopyWith<$Res>? get lastBankDetails {
    if (_value.lastBankDetails == null) {
      return null;
    }

    return $BankInstitutionCopyWith<$Res>(_value.lastBankDetails!, (value) {
      return _then(_value.copyWith(lastBankDetails: value) as $Val);
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
      bool? isLoading,
      bool showPersonal,
      BankInstitution? selectedBank,
      PaymentRequestData? paymentDetails,
      PaymentAuthResponse? paymentAuth,
      bool isAppInstalled,
      bool isLoadingAuth,
      Exception? bankAuthError,
      bool? showHowPaymentWorks,
      SavedBankDetails? savedBankDetails,
      Exception? paymentDetailsError,
      Exception? bankFetchingError,
      bool hasLastPaymentDetails,
      BankInstitution? lastBankDetails,
      bool showConfirmation,
      bool? isPaymentAndBankLoading,
      bool bankRedirectionFails,
      bool? isLoadingDetails});

  @override
  $BankInstitutionCopyWith<$Res>? get selectedBank;
  @override
  $PaymentRequestDataCopyWith<$Res>? get paymentDetails;
  @override
  $PaymentAuthResponseCopyWith<$Res>? get paymentAuth;
  @override
  $SavedBankDetailsCopyWith<$Res>? get savedBankDetails;
  @override
  $BankInstitutionCopyWith<$Res>? get lastBankDetails;
}

/// @nodoc
class __$$BankInstitutionsStateImplCopyWithImpl<$Res>
    extends _$BankInstitutionsStateCopyWithImpl<$Res,
        _$BankInstitutionsStateImpl>
    implements _$$BankInstitutionsStateImplCopyWith<$Res> {
  __$$BankInstitutionsStateImplCopyWithImpl(_$BankInstitutionsStateImpl _value,
      $Res Function(_$BankInstitutionsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BankInstitutionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankList = null,
    Object? error = freezed,
    Object? isLoading = freezed,
    Object? showPersonal = null,
    Object? selectedBank = freezed,
    Object? paymentDetails = freezed,
    Object? paymentAuth = freezed,
    Object? isAppInstalled = null,
    Object? isLoadingAuth = null,
    Object? bankAuthError = freezed,
    Object? showHowPaymentWorks = freezed,
    Object? savedBankDetails = freezed,
    Object? paymentDetailsError = freezed,
    Object? bankFetchingError = freezed,
    Object? hasLastPaymentDetails = null,
    Object? lastBankDetails = freezed,
    Object? showConfirmation = null,
    Object? isPaymentAndBankLoading = freezed,
    Object? bankRedirectionFails = null,
    Object? isLoadingDetails = freezed,
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
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      showHowPaymentWorks: freezed == showHowPaymentWorks
          ? _value.showHowPaymentWorks
          : showHowPaymentWorks // ignore: cast_nullable_to_non_nullable
              as bool?,
      savedBankDetails: freezed == savedBankDetails
          ? _value.savedBankDetails
          : savedBankDetails // ignore: cast_nullable_to_non_nullable
              as SavedBankDetails?,
      paymentDetailsError: freezed == paymentDetailsError
          ? _value.paymentDetailsError
          : paymentDetailsError // ignore: cast_nullable_to_non_nullable
              as Exception?,
      bankFetchingError: freezed == bankFetchingError
          ? _value.bankFetchingError
          : bankFetchingError // ignore: cast_nullable_to_non_nullable
              as Exception?,
      hasLastPaymentDetails: null == hasLastPaymentDetails
          ? _value.hasLastPaymentDetails
          : hasLastPaymentDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      lastBankDetails: freezed == lastBankDetails
          ? _value.lastBankDetails
          : lastBankDetails // ignore: cast_nullable_to_non_nullable
              as BankInstitution?,
      showConfirmation: null == showConfirmation
          ? _value.showConfirmation
          : showConfirmation // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaymentAndBankLoading: freezed == isPaymentAndBankLoading
          ? _value.isPaymentAndBankLoading
          : isPaymentAndBankLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      bankRedirectionFails: null == bankRedirectionFails
          ? _value.bankRedirectionFails
          : bankRedirectionFails // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingDetails: freezed == isLoadingDetails
          ? _value.isLoadingDetails
          : isLoadingDetails // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$BankInstitutionsStateImpl extends _BankInstitutionsState
    with DiagnosticableTreeMixin {
  const _$BankInstitutionsStateImpl(
      {final List<BankInstitution> bankList = const [],
      this.error,
      this.isLoading,
      this.showPersonal = false,
      this.selectedBank,
      this.paymentDetails,
      this.paymentAuth,
      this.isAppInstalled = true,
      this.isLoadingAuth = false,
      this.bankAuthError,
      this.showHowPaymentWorks,
      this.savedBankDetails,
      this.paymentDetailsError,
      this.bankFetchingError,
      this.hasLastPaymentDetails = false,
      this.lastBankDetails,
      this.showConfirmation = false,
      this.isPaymentAndBankLoading,
      this.bankRedirectionFails = false,
      this.isLoadingDetails})
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
  final bool? isLoading;
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
  final bool? showHowPaymentWorks;
  @override
  final SavedBankDetails? savedBankDetails;
  @override
  final Exception? paymentDetailsError;
  @override
  final Exception? bankFetchingError;
  @override
  @JsonKey()
  final bool hasLastPaymentDetails;
  @override
  final BankInstitution? lastBankDetails;
  @override
  @JsonKey()
  final bool showConfirmation;
  @override
  final bool? isPaymentAndBankLoading;
  @override
  @JsonKey()
  final bool bankRedirectionFails;
  @override
  final bool? isLoadingDetails;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BankInstitutionsState(bankList: $bankList, error: $error, isLoading: $isLoading, showPersonal: $showPersonal, selectedBank: $selectedBank, paymentDetails: $paymentDetails, paymentAuth: $paymentAuth, isAppInstalled: $isAppInstalled, isLoadingAuth: $isLoadingAuth, bankAuthError: $bankAuthError, showHowPaymentWorks: $showHowPaymentWorks, savedBankDetails: $savedBankDetails, paymentDetailsError: $paymentDetailsError, bankFetchingError: $bankFetchingError, hasLastPaymentDetails: $hasLastPaymentDetails, lastBankDetails: $lastBankDetails, showConfirmation: $showConfirmation, isPaymentAndBankLoading: $isPaymentAndBankLoading, bankRedirectionFails: $bankRedirectionFails, isLoadingDetails: $isLoadingDetails)';
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
      ..add(DiagnosticsProperty('showHowPaymentWorks', showHowPaymentWorks))
      ..add(DiagnosticsProperty('savedBankDetails', savedBankDetails))
      ..add(DiagnosticsProperty('paymentDetailsError', paymentDetailsError))
      ..add(DiagnosticsProperty('bankFetchingError', bankFetchingError))
      ..add(DiagnosticsProperty('hasLastPaymentDetails', hasLastPaymentDetails))
      ..add(DiagnosticsProperty('lastBankDetails', lastBankDetails))
      ..add(DiagnosticsProperty('showConfirmation', showConfirmation))
      ..add(DiagnosticsProperty(
          'isPaymentAndBankLoading', isPaymentAndBankLoading))
      ..add(DiagnosticsProperty('bankRedirectionFails', bankRedirectionFails))
      ..add(DiagnosticsProperty('isLoadingDetails', isLoadingDetails));
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
                other.showHowPaymentWorks == showHowPaymentWorks) &&
            (identical(other.savedBankDetails, savedBankDetails) ||
                other.savedBankDetails == savedBankDetails) &&
            (identical(other.paymentDetailsError, paymentDetailsError) ||
                other.paymentDetailsError == paymentDetailsError) &&
            (identical(other.bankFetchingError, bankFetchingError) ||
                other.bankFetchingError == bankFetchingError) &&
            (identical(other.hasLastPaymentDetails, hasLastPaymentDetails) ||
                other.hasLastPaymentDetails == hasLastPaymentDetails) &&
            (identical(other.lastBankDetails, lastBankDetails) ||
                other.lastBankDetails == lastBankDetails) &&
            (identical(other.showConfirmation, showConfirmation) ||
                other.showConfirmation == showConfirmation) &&
            (identical(
                    other.isPaymentAndBankLoading, isPaymentAndBankLoading) ||
                other.isPaymentAndBankLoading == isPaymentAndBankLoading) &&
            (identical(other.bankRedirectionFails, bankRedirectionFails) ||
                other.bankRedirectionFails == bankRedirectionFails) &&
            (identical(other.isLoadingDetails, isLoadingDetails) ||
                other.isLoadingDetails == isLoadingDetails));
  }

  @override
  int get hashCode => Object.hashAll([
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
        showHowPaymentWorks,
        savedBankDetails,
        paymentDetailsError,
        bankFetchingError,
        hasLastPaymentDetails,
        lastBankDetails,
        showConfirmation,
        isPaymentAndBankLoading,
        bankRedirectionFails,
        isLoadingDetails
      ]);

  /// Create a copy of BankInstitutionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      final bool? isLoading,
      final bool showPersonal,
      final BankInstitution? selectedBank,
      final PaymentRequestData? paymentDetails,
      final PaymentAuthResponse? paymentAuth,
      final bool isAppInstalled,
      final bool isLoadingAuth,
      final Exception? bankAuthError,
      final bool? showHowPaymentWorks,
      final SavedBankDetails? savedBankDetails,
      final Exception? paymentDetailsError,
      final Exception? bankFetchingError,
      final bool hasLastPaymentDetails,
      final BankInstitution? lastBankDetails,
      final bool showConfirmation,
      final bool? isPaymentAndBankLoading,
      final bool bankRedirectionFails,
      final bool? isLoadingDetails}) = _$BankInstitutionsStateImpl;
  const _BankInstitutionsState._() : super._();

  @override
  List<BankInstitution> get bankList;
  @override
  Exception? get error;
  @override
  bool? get isLoading;
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
  bool? get showHowPaymentWorks;
  @override
  SavedBankDetails? get savedBankDetails;
  @override
  Exception? get paymentDetailsError;
  @override
  Exception? get bankFetchingError;
  @override
  bool get hasLastPaymentDetails;
  @override
  BankInstitution? get lastBankDetails;
  @override
  bool get showConfirmation;
  @override
  bool? get isPaymentAndBankLoading;
  @override
  bool get bankRedirectionFails;
  @override
  bool? get isLoadingDetails;

  /// Create a copy of BankInstitutionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BankInstitutionsStateImplCopyWith<_$BankInstitutionsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
