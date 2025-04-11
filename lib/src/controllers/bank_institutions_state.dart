part of 'bank_institutions_controller.dart';

@freezed
class BankInstitutionsState with _$BankInstitutionsState {
  const factory BankInstitutionsState({
    @Default([]) List<BankInstitution> bankList,
    Exception? error,
    bool? isLoading,
    @Default(false) bool showPersonal,
    BankInstitution? selectedBank,
    PaymentRequestData? paymentDetails,
    PaymentAuthResponse? paymentAuth,
    @Default(true) bool isAppInstalled,
    @Default(true) bool isLoadingAuth,
    Exception? bankAuthError,
    bool? showHowPaymentWorks,
    SavedBankDetails? savedBankDetails,
    Exception? paymentDetailsError,
    Exception? bankFetchingError,
    @Default(false) bool hasLastPaymentDetails,
    BankInstitution? lastBankDetails,
    @Default(false) bool showConfirmation,
    bool? isLoadingDetails,
    @Default(false) bool showLinkExpired,
    bool? isLoadingFilterBanks,
  }) = _BankInstitutionsState;

  const BankInstitutionsState._();

  bool get isBankSelected => selectedBank != null;

  List<BankInstitution> get businessBanks =>
      paymentDetails?.amount.amount != null
          ? bankList
              .where(
                (e) =>
                    e.businessBank &&
                    e.transactionAmountLimit >= paymentDetails!.amount.amount,
              )
              .toList()
          : bankList.where((e) => e.businessBank).toList()
        ..sort();

  List<BankInstitution> get popularBusinessBanks =>
      paymentDetails?.amount.amount != null
          ? bankList
              .where(
                (e) =>
                    e.popularBank &&
                    e.businessBank &&
                    e.transactionAmountLimit >= paymentDetails!.amount.amount,
              )
              .toList()
          : bankList
              .where(
                (e) => e.popularBank && !e.businessBank,
              )
              .toList();

  List<BankInstitution> get businessBanksDisabled =>
      paymentDetails?.amount.amount != null
          ? bankList
              .where(
                (e) =>
                    e.businessBank &&
                    e.transactionAmountLimit < paymentDetails!.amount.amount,
              )
              .toList()
          : []
        ..sort();

  List<BankInstitution> get personalBankDiabled =>
      paymentDetails?.amount.amount != null
          ? bankList
              .where(
                (e) =>
                    !e.businessBank &&
                    e.transactionAmountLimit < paymentDetails!.amount.amount,
              )
              .toList()
          : [];

  List<BankInstitution> get popularPersonalBanks =>
      paymentDetails?.amount.amount != null
          ? bankList
              .where(
                (e) =>
                    e.popularBank &&
                    !e.businessBank &&
                    e.transactionAmountLimit >= paymentDetails!.amount.amount,
              )
              .toList()
          : bankList
              .where(
                (e) => e.popularBank && !e.businessBank,
              )
              .toList();

  List<BankInstitution> get personalBanks =>
      paymentDetails?.amount.amount != null
          ? bankList
              .where(
                (e) =>
                    !e.businessBank &&
                    e.transactionAmountLimit >= paymentDetails!.amount.amount,
              )
              .toList()
          : bankList
              .where(
                (e) => !e.popularBank && !e.businessBank,
              )
              .toList();
}
