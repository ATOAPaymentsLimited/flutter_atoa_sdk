import 'package:atoa_core/src/config/environment.dart';

class Endpoints {
  const Endpoints._();

  static String get baseUrl => AtoaConfig.baseUrl;

  //Institutions
  static const String institutions =
      'institutions/customer?sendDisabledBanks=true';

  /// Secure Payment Auth Url
  static const securedAuthUrl = 'payments/v1/secure-payment-auth';

  /// Payment Request
  static const getPaymentDetails = 'payments/get-payment-details';

  /// Payment Status
  static String getPaymentStatus(String id) => 'payments/payment-status/$id';
}
