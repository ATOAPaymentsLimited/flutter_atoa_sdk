class Endpoints {
  const Endpoints._();

  static String get baseUrl => 'https://api.atoa.me/api/';

  //Institutions
  static const String institutions = 'institutions/customer';

  /// Secure Payment Auth Url
  static const securedAuthUrl = 'payments/v1/secure-payment-auth';

  /// Payment Request
  static const getPaymentDetails = 'payments/get-payment-details';
}
