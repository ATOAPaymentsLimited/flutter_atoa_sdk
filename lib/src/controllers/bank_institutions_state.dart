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
    @Default(false) bool isLoadingAuth,
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

  List<BankInstitution> get normalPersonalBanks =>
      paymentDetails?.amount.amount != null
          ? bankList
              .where(
                (e) =>
                    !e.popularBank &&
                    !e.businessBank &&
                    e.transactionAmountLimit >= paymentDetails!.amount.amount,
              )
              .toList()
          : bankList
              .where(
                (e) => !e.popularBank && !e.businessBank,
              )
              .toList();

  List<BankInstitution> get gridBanks {
    if (bankList.isEmpty) return bankList;
    final gridBanks = popularPersonalBanks;
    final gridBankLength = gridBanks.length;
    if (gridBanks.length < 8 &&
        normalPersonalBanks.length >= 8 - gridBanks.length) {
      final normalBanks = normalPersonalBanks.sublist(0, 8 - gridBankLength);
      return [...gridBanks, ...normalBanks]..sort();
    }
    if (gridBanks.length < 8 &&
        normalPersonalBanks.length < 8 - gridBanks.length) {
      final normalBanks = normalPersonalBanks.sublist(
        0,
        normalPersonalBanks.length,
      );
      return [...gridBanks, ...normalBanks]..sort();
    }
    if (gridBanks.length > 8) {
      return popularPersonalBanks.sublist(0, 8)..sort();
    }
    return gridBanks..sort();
  }

  List<BankInstitution> get allNormalBanks {
    if (bankList.isEmpty) return bankList;
    if (popularPersonalBanks.length < 8 && normalPersonalBanks.length >= 8) {
      return normalPersonalBanks.sublist(8 - popularPersonalBanks.length)
        ..sort();
    }
    if (popularPersonalBanks.length < 8 && normalPersonalBanks.length < 8) {
      return normalPersonalBanks.sublist(normalPersonalBanks.length)..sort();
    }
    if (popularPersonalBanks.length > 8) {
      final remainingPopularBanks = popularPersonalBanks.sublist(8);
      return [...remainingPopularBanks, ...normalPersonalBanks]..sort();
    }
    return normalPersonalBanks..sort();
  }
}
