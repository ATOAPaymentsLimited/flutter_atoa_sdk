import 'package:atoa_core/atoa_core.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:url_launcher/url_launcher.dart';

part 'bank_institutions_state.dart';
part 'bank_institutions_controller.freezed.dart';

@injectable
class BankInstitutionsController extends StateNotifier<BankInstitutionsState> {
  BankInstitutionsController({
    required this.atoa,
    @factoryParam required this.paymentId,
    @factoryParam required this.authKey,
  }) : super(const BankInstitutionsState());

  final Atoa atoa;
  final String paymentId;
  final String authKey;

  List<BankInstitution> get personalBanks =>
      state.bankList.where((bank) => !bank.businessBank).toList();

  List<BankInstitution> get businessBanks =>
      state.bankList.where((bank) => bank.businessBank).toList();

  Future<void> fetchBanks() async {
    state = state.copyWith(isLoading: true);

    try {
      final res =
          await callServer<List<BankInstitution>>(atoa.fetchInstitutions);

      state = state.copyWith(
        bankList: res,
        isLoading: false,
      );
    } on AtoaException catch (e) {
      state = state.copyWith(error: e, isLoading: false);
    } on Exception catch (e) {
      state = state.copyWith(error: e, isLoading: false);
    } finally {
      state = state.copyWith(error: null, isLoading: false);
    }

    try {
      final paymentRes =
          await callServer(() => atoa.getPaymentDetails(paymentId));

      state = state.copyWith(paymentDetails: paymentRes);
    } on AtoaException catch (e) {
      state = state.copyWith(
        paymentDetails: null,
        error: e,
      );
    } on Exception catch (e) {
      state = state.copyWith(
        paymentDetails: null,
        error: e,
      );
    } finally {
      state = state.copyWith(error: null, isLoading: false);
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
    } finally {
      state = state.copyWith(error: null, isLoading: false);
    }
    return null;
  }

  Future<void> selectBank(BankInstitution? selectedBank) async {
    state = state.copyWith(
      selectedBank: selectedBank,
      paymentAuth: null,
    );

    final paymentDetails = state.paymentDetails;

    if (paymentDetails == null || selectedBank == null) {
      return;
    }

    final body = paymentDetails.toBody(
      institutionId: selectedBank.id,
      paymentRequestId: paymentId,
      features: selectedBank.features,
      requestCreatedAt: paymentDetails.requestCreatedAt ?? '',
    );

    try {
      final paymentAuth = await callServer(() => atoa.getPaymentAuth(body));

      state = state.copyWith(paymentAuth: paymentAuth);
    } on AtoaException catch (e) {
      state = state.copyWith(
        selectedBank: null,
        paymentAuth: null,
        error: e,
      );
    } on Exception catch (e) {
      state = state.copyWith(
        selectedBank: null,
        paymentAuth: null,
        error: e,
      );
    } finally {
      state = state.copyWith(error: null, isLoading: false);
    }
  }

  Future<void> cancelPayment() async {
    //Make an Api call
    await callServer(
      () => atoa.cancelPayment(
        paymentId,
        authKey,
      ),
    );
  }
}
