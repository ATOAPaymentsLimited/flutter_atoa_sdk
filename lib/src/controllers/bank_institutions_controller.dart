import 'package:atoa_core/atoa_core.dart';
// import 'package:atoa_sdk/atoa_sdk.dart';
// import 'package:external_app_launcher/external_app_launcher.dart';
// import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'bank_institutions_state.dart';
part 'bank_institutions_controller.freezed.dart';

class BankInstitutionsController extends StateNotifier<BankInstitutionsState> {
  BankInstitutionsController(this._atoa) : super(const BankInstitutionsState());

  final Atoa _atoa;

  Future<void> fetchBanks() async {
    state = state.copyWith(isLoading: true);
    final res = await _atoa.fetchInstitutions();

    state = state.copyWith(
      bankList: res,
      isLoading: false,
    );
  }

  // bool _urlSchemeEmptyFromApi = false;

  Future<void> checkBankAppAvailability() async {
    // if (_bankAccountAuthorization == null) return;

    // if (defaultTargetPlatform == TargetPlatform.iOS) {
    //   final bundleId = _bankAccountAuthorization!.iOSPackageName;
    //   _urlSchemeEmptyFromApi = !(bundleId != null && bundleId.isNotEmpty);
    // }

    // if (defaultTargetPlatform == TargetPlatform.android) {
    //   final pkgName = _bankAccountAuthorization!.androidPackageName;
    //   _urlSchemeEmptyFromApi = !(pkgName != null && pkgName.isNotEmpty);
    // }

    // if (_urlSchemeEmptyFromApi) {
    //   state = state.copyWith(isAppInstalled: true);
    //   return;
    // }

    // final dynamic result = await LaunchApp.isAppInstalled(
    //   androidPackageName: _bankAccountAuthorization!.androidPackageName,
    //   iosUrlScheme: _bankAccountAuthorization!.iOSPackageName,
    // );

    // state = state.copyWith(isAppInstalled: result is bool && result);
  }

  void selectBank(BankInstitution? selectedBank) {
    state = state.copyWith(selectedBank: selectedBank);
  }
}
