import 'dart:async';

import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_sdk/src/utility/branding_color_utility.dart';
import 'package:atoa_sdk/src/utility/payment_utility.dart';
import 'package:collection/collection.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:url_launcher/url_launcher.dart';

part 'bank_institutions_controller.freezed.dart';
part 'bank_institutions_state.dart';

@injectable
class BankInstitutionsController extends StateNotifier<BankInstitutionsState> {
  BankInstitutionsController({
    required this.atoa,
  }) : super(const BankInstitutionsState()) {
    searchController = StreamController<String>();
    searchController.stream
        .debounce(const Duration(milliseconds: 600))
        .listen(_search);
  }

  final Atoa atoa;
  late StreamController<String> searchController;

  String searchTerm = '';

  void _search(String searchTerm) {
    fetchFilteredBanks(
      searchTerm,
      refresh: true,
    );
  }

  void search(String value) {
    searchTerm = value;
    searchController.sink.add(searchTerm);
  }

  set showHowPaymentWorks(bool? value) {
    state = state.copyWith(showHowPaymentWorks: value);
  }

  bool? get showHowPaymentWorks => state.showHowPaymentWorks;

  set showConfirmation(bool value) {
    state = state.copyWith(showConfirmation: value);
  }

  bool get showConfirmation => state.showConfirmation;

  set bankSelected(BankInstitution? value) {
    state = state.copyWith(lastBankDetails: value);
  }

  BankInstitution? get bankSelected => state.lastBankDetails;

  List<BankInstitution> get personalBanks =>
      state.bankList.where((bank) => !bank.businessBank).toList();

  List<BankInstitution> get businessBanks =>
      state.bankList.where((bank) => bank.businessBank).toList();

  Future<void> fetchFilteredBanks(
    String searchTerm, {
    required bool refresh,
  }) async {
    state = state.copyWith(isLoadingFilterBanks: true);

    try {
      final res = await callServer<List<BankInstitution>>(
        () => atoa.fetchInstitutions(
          searchTerm: searchTerm,
        ),
      );

      state = state.copyWith(bankList: res);
    } on AtoaException catch (e) {
      PaymentUtility.onError?.call(e);
      state = state.copyWith(bankFetchingError: e);
    } on Exception catch (e) {
      state = state.copyWith(bankFetchingError: e);
    } finally {
      state = state.copyWith(isLoadingFilterBanks: false);
    }
  }

  Future<void> getPaymentDetails() async {
    state = state.copyWith(isLoadingDetails: true);

    try {
      final paymentRes = await callServer(
        () => atoa.getPaymentDetails(
          PaymentUtility.paymentId,
          customerDetails: PaymentUtility.customerDetails,
        ),
      );

      state = state.copyWith(
        paymentDetails: paymentRes,
      );
      BrandingColorUtility.brandingBackgroundColor =
          BrandingColorUtility.getColor(
        state.paymentDetails?.merchantThemeDetails?.colorCode,
      );

      BrandingColorUtility.brandingForegroundColor =
          BrandingColorUtility.getColor(
        state.paymentDetails?.merchantThemeDetails?.foregroundColor,
      );
    } on AtoaException catch (e) {
      PaymentUtility.onError?.call(e);
      state = state.copyWith(
        paymentDetails: null,
        paymentDetailsError: e,
      );
    } on Exception catch (e) {
      state = state.copyWith(
        paymentDetails: null,
        paymentDetailsError: e,
      );
    } finally {
      state = state.copyWith(isLoadingDetails: false);
    }
  }

  Future<void> fetchBanks() async {
    state = state.copyWith(isLoading: true);

    try {
      final res =
          await callServer<List<BankInstitution>>(atoa.fetchInstitutions);
      final lastPaymentBank = state.paymentDetails?.lastPaymentBankDetails;
      final lastBankDetails = res.firstWhereOrNull(
        (element) => element.id == lastPaymentBank?.institutionId,
      );
      if (lastBankDetails != null &&
          state.paymentDetails?.amount.amount != null) {
        state = state.copyWith(
          hasLastPaymentDetails: lastBankDetails.enabled &&
              lastBankDetails.transactionAmountLimit >=
                  state.paymentDetails!.amount.amount,
          lastBankDetails: lastBankDetails,
        );
      }
      state = state.copyWith(
        bankList: res,
      );
    } on AtoaException catch (e) {
      PaymentUtility.onError?.call(e);
      state = state.copyWith(bankFetchingError: e);
    } on Exception catch (e) {
      state = state.copyWith(bankFetchingError: e);
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<bool?> authorizeBank() async {
    final paymentAuth = state.paymentAuth;

    if (paymentAuth == null) return null;

    try {
      switch (defaultTargetPlatform) {
        case TargetPlatform.android:
          final androidUrl = paymentAuth.deepLinkAndroidAuthorisationUrl ??
              paymentAuth.authorisationUrl;

          final androidUri = Uri.tryParse(androidUrl);
          if (androidUri == null) {
            throw Exception('Invalid Android URL: $androidUrl');
          }

          return await launchUrl(
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

          return await launchUrl(
            iosUri,
            mode: LaunchMode.externalApplication,
          );

        default:
          break;
      }
    } on Exception catch (e) {
      state = state.copyWith(error: e);
    }
    return null;
  }

  Future<void> checkBankAppAvailability() async {
    if (state.paymentAuth == null) return;

    var urlSchemeEmptyFromApi = false;

    if (defaultTargetPlatform == TargetPlatform.iOS) {
      final bundleId = state.paymentAuth?.iOSPackageName;
      urlSchemeEmptyFromApi = !(bundleId != null && bundleId.isNotEmpty);
    }

    if (defaultTargetPlatform == TargetPlatform.android) {
      final pkgName = state.paymentAuth?.androidPackageName;
      urlSchemeEmptyFromApi = !(pkgName != null && pkgName.isNotEmpty);
    }

    if (urlSchemeEmptyFromApi) {
      state = state.copyWith(isAppInstalled: true);
      return;
    }

    final dynamic result = await LaunchApp.isAppInstalled(
      androidPackageName: state.paymentAuth?.androidPackageName,
      iosUrlScheme: state.paymentAuth?.iOSPackageName,
    );

    state = state.copyWith(isAppInstalled: result is bool && result);
  }

  Future<void> selectBank(BankInstitution? selectedBank) async {
    if (selectedBank == null) return;

    state = state.copyWith(
      selectedBank: selectedBank,
      isLoadingAuth: true,
      paymentAuth: null,
      bankAuthError: null,
    );

    final paymentDetails = state.paymentDetails;

    if (paymentDetails == null) {
      state = state.copyWith(
        isLoadingAuth: false,
      );
      return;
    }

    final body = await paymentDetails.toBody(
      institutionId: selectedBank.id,
      paymentRequestId: PaymentUtility.paymentId,
      features: selectedBank.features,
      requestCreatedAt: paymentDetails.requestCreatedAt ?? '',
    );

    try {
      final paymentAuth = await callServer(() => atoa.getPaymentAuth(body));

      state = state.copyWith(paymentAuth: paymentAuth);
    } on AtoaException catch (e) {
      PaymentUtility.onError?.call(e);
      state = state.copyWith(
        selectedBank: null,
        paymentAuth: null,
        bankAuthError: e,
      );
    } on Exception catch (e) {
      state = state.copyWith(
        selectedBank: null,
        paymentAuth: null,
        bankAuthError: e,
      );
    } finally {
      state = state.copyWith(isLoadingAuth: false);
    }
    await checkBankAppAvailability();
  }

  void resetAppInstalled() {
    state = state.copyWith(
      isAppInstalled: true,
    );
  }

  Future<void> getPaymentDetailsAndBanks({
    required bool showHowPaymentWork,
  }) async {
    await getPaymentDetails();
    await fetchBanks();
    showHowPaymentWorks = showHowPaymentWork &&
        !state.hasLastPaymentDetails &&
        state.lastBankDetails == null;
  }

  void resetSelectBank() {
    state = state.copyWith(
      selectedBank: null,
      paymentAuth: null,
      showLinkExpired: false,
      isAppInstalled: true,
      lastBankDetails: null,
    );
  }

  set showLinkExpired(bool value) {
    state = state.copyWith(showLinkExpired: value);
  }

  bool get showLinkExpired => state.showLinkExpired;

  void startPolling() {
    _subscription?.cancel();
    var linkRefreshedCount = 0;
    Stream.periodic(
      const Duration(minutes: 5),
      (_) {
        linkRefreshedCount++;
        selectBank(state.selectedBank);
      },
    ).take(6).listen((_) async {
      if (linkRefreshedCount > 5) {
        startTimer(5);
        stop();
      }
    });
  }

  Timer? _timer;
  void startTimer(int minutes) {
    _timer = Timer(Duration(minutes: minutes), () {
      state = state.copyWith(showLinkExpired: true);
    });
  }

  void stop() {
    _subscription?.cancel();
  }

  StreamSubscription<dynamic>? _subscription;

  @override
  void dispose() {
    state = state.copyWith(
      selectedBank: null,
      paymentAuth: null,
      isAppInstalled: true,
      lastBankDetails: null,
    );
    _subscription?.cancel();
    _timer?.cancel();
    super.dispose();
  }
}
