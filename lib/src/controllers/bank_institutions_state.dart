part of 'bank_institutions_controller.dart';

@freezed
class BankInstitutionsState with _$BankInstitutionsState {
  const factory BankInstitutionsState({
    @Default([]) List<BankInstitution> bankList,
    String? errorMessage,
    @Default(false) bool isAppInstalled,
    @Default(false) bool isLoading,
    @Default(false) bool showPersonal,
    BankInstitution? selectedBank,
  }) = _BankInstitutionsState;

  const BankInstitutionsState._();

  bool get isBankSelected => selectedBank != null;

  List<BankInstitution> get businessBanks =>
      bankList.where((e) => e.businessBank).toList();

  List<BankInstitution> get personalBanks =>
      bankList.where((e) => !e.businessBank).toList();
}
