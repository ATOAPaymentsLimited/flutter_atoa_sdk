import 'package:atoa_core/atoa_core.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:url_launcher/url_launcher.dart';

part 'bank_institutions_state.dart';
part 'bank_institutions_controller.freezed.dart';

class BankInstitutionsController extends StateNotifier<BankInstitutionsState> {
  BankInstitutionsController({
    required this.paymentId,
    required Atoa atoa,
  })  : _atoa = atoa,
        super(const BankInstitutionsState());

  final Atoa _atoa;
  final String paymentId;

  Future<void> fetchBanks() async {
    state = state.copyWith(isLoading: true);
    final res = await _atoa.fetchInstitutions();

    state = state.copyWith(
      bankList: res,
      isLoading: false,
    );

    final paymentRes = await _atoa.getPaymentDetails(paymentId);

    state = state.copyWith(
      paymentDetails: paymentRes,
      isLoading: false,
    );
  }

  void authorizeBank() {
    final paymentAuth = state.paymentAuth;

    if (paymentAuth == null) return;

    try {
      switch (defaultTargetPlatform) {
        case TargetPlatform.android:
          final androidUrl = paymentAuth.deepLinkAndroidAuthorisationUrl ??
              paymentAuth.authorisationUrl;

          final androidUri = Uri.tryParse(androidUrl);
          if (androidUri == null) {
            throw Exception('Invalid Android URL: $androidUrl');
          }

          launchUrl(
            androidUri,
            mode: LaunchMode.externalApplication,
          );

        case TargetPlatform.iOS:
          final iosUrl = paymentAuth.deepLinkAuthorisationUrlIOS ??
              paymentAuth.authorisationUrl;

          final iosUri = Uri.tryParse(iosUrl);
          if (iosUri == null) {
            throw Exception('Invalid iOS URL: $iosUrl');
          }

          launchUrl(
            iosUri,
            mode: LaunchMode.externalApplication,
          );

        default:
          break;
      }
    } catch (e) {
      state = state.copyWith(errorMessage: e.toString());
    }
  }

  Future<void> selectBank(BankInstitution? selectedBank) async {
    state = state.copyWith(selectedBank: selectedBank, paymentAuth: null);

    final paymentDetails = state.paymentDetails;

    if (paymentDetails == null || selectedBank == null) {
      return;
    }

    final body = paymentDetails.toBody(
      institutionId: selectedBank.id,
      features: selectedBank.features,
    );

    try {
      final paymentAuth = await _atoa.getPaymentAuth(body);

      state = state.copyWith(paymentAuth: paymentAuth);
      await checkBankAppAvailability();
    } on AtoaException catch (e) {
      state = state.copyWith(
        selectedBank: null,
        paymentAuth: null,
        errorMessage: e.message,
      );
    } catch (e) {
      state = state.copyWith(
        selectedBank: null,
        paymentAuth: null,
        errorMessage: e.toString(),
      );
    } finally {
      state = state.copyWith(errorMessage: null);
    }
  }

  bool urlSchemeEmptyFromApi = false;

  Future<void> checkBankAppAvailability() async {
    final bankAccountAuthorization = state.paymentAuth;
    if (bankAccountAuthorization == null) return;

    if (defaultTargetPlatform == TargetPlatform.iOS) {
      final bundleId = bankAccountAuthorization.iOSPackageName;
      urlSchemeEmptyFromApi = !(bundleId != null && bundleId.isNotEmpty);
    }

    if (defaultTargetPlatform == TargetPlatform.android) {
      final pkgName = bankAccountAuthorization.androidPackageName;
      urlSchemeEmptyFromApi = !(pkgName != null && pkgName.isNotEmpty);
    }

    if (urlSchemeEmptyFromApi) {
      state = state.copyWith(isBankAppInstalled: true);
      return;
    }

    final result = await LaunchApp.isAppInstalled(
      androidPackageName: bankAccountAuthorization.androidPackageName,
      iosUrlScheme: bankAccountAuthorization.iOSPackageName,
    );

    state = state.copyWith(isBankAppInstalled: result is bool && result);
  }
}
