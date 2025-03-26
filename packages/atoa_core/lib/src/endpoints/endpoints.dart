class Endpoints {
  const Endpoints._();

  static String get baseUrl => 'https://devapi.atoa.me/api/';

  //Institutions
  static const String institutions =
      'institutions/customer?sendDisabledBanks=true';

  /// Secure Payment Auth Url
  static const securedAuthUrl = 'payments/v1/secure-payment-auth';

  /// Payment Request
  static const getPaymentDetails = 'payments/get-payment-details';

  /// Payment Status
  static String getPaymentStatus(String id) => 'payments/payment-status/$id';

  // Saved bank
  static const getSavedBank = 'saved-bank';
}
