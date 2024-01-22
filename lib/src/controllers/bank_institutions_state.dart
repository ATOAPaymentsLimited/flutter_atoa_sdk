part of 'bank_institutions_controller.dart';

@freezed
class BankInstitutionsState with _$BankInstitutionsState {
  const factory BankInstitutionsState({
    @Default([]) List<BankInstitution> bankList,
    String? errorMessage,
    bool? isBankAppInstalled,
    @Default(false) bool isLoading,
    @Default(false) bool showPersonal,
    BankInstitution? selectedBank,
    PaymentRequestData? paymentDetails,
    PaymentAuthResponse? paymentAuth,
  }) = _BankInstitutionsState;

  const BankInstitutionsState._();

  bool get isBankSelected => selectedBank != null;

  List<BankInstitution> get businessBanks =>
      bankList.where((e) => e.businessBank).toList();

  List<BankInstitution> get personalBanks =>
      bankList.where((e) => !e.businessBank).toList();

  bool get urlSchemeEmptyFromApi => switch (defaultTargetPlatform) {
        TargetPlatform.android =>
          paymentAuth?.androidPackageName?.isEmpty ?? true,
        TargetPlatform.iOS => paymentAuth?.iOSPackageName?.isEmpty ?? true,
        _ => true,
      };
}
