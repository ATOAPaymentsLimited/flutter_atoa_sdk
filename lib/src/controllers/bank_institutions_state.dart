part of 'bank_institutions_controller.dart';

@freezed
class BankInstitutionsState with _$BankInstitutionsState {
  const factory BankInstitutionsState({
    @Default([]) List<BankInstitution> bankList,
    Exception? error,
    @Default(false) bool isLoading,
    @Default(false) bool showPersonal,
    BankInstitution? selectedBank,
    PaymentRequestData? paymentDetails,
    PaymentAuthResponse? paymentAuth,
    @Default(true) bool isAppInstalled,
    @Default(false) bool isLoadingAuth,
    @Default(true) bool showHowPaymentWorks,
  }) = _BankInstitutionsState;

  const BankInstitutionsState._();

  bool get isBankSelected => selectedBank != null;

  List<BankInstitution> get businessBanks =>
      bankList.where((e) => e.businessBank).toList();

  List<BankInstitution> get personalBanks =>
      bankList.where((e) => !e.businessBank).toList();

  List<BankInstitution> get popularPersonalBanks =>
      bankList.where((e) => e.popularBank && !e.businessBank).toList();

  List<BankInstitution> get normalPersonalBanks =>
      personalBanks.where((e) => !e.popularBank && !e.businessBank).toList();

  List<BankInstitution> get gridBanks {
    final gridBanks = popularPersonalBanks;
    final gridBankLength = gridBanks.length;
    if (gridBanks.length < 8) {
      final normalBanks = normalPersonalBanks.sublist(0, 8 - gridBankLength);
      return [...gridBanks, ...normalBanks];
    }
    return gridBanks;
  }

  List<BankInstitution> get allNormalBanks {
    if (popularPersonalBanks.length < 8) {
      return normalPersonalBanks.sublist(8 - popularPersonalBanks.length);
    }
    return normalPersonalBanks;
  }
}
