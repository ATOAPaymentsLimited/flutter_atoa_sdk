class Endpoints {
  const Endpoints._();

  static String get baseUrl => 'https://api.atoa.me/api/';

  //Institutions
  static const String institutions = 'institutions/customer';

  /// Secure Payment Auth Url
  String get securedAuthUrl => 'payments/v1/secure-payment-auth';

  /// Payment Request
  String get getPaymentDetails => 'payments/get-payment-details';
}
