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
  }) = _BankInstitutionsState;

  const BankInstitutionsState._();

  bool get isBankSelected => selectedBank != null;

  List<BankInstitution> get businessBanks =>
      bankList.where((e) => e.businessBank).toList();

  List<BankInstitution> get personalBanks =>
      bankList.where((e) => !e.businessBank).toList();

  List<BankInstitution> get popularPersonalBanks =>
      bankList.where((e) => e.popularBank && !e.businessBank).toList();

  List<BankInstitution> get normalPersonalBanks => personalBanks
      .where((element) => !element.popularBank && !element.businessBank)
      .toList();
}
