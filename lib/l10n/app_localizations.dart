import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// No description provided for @mobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Mobile Number'**
  String get mobileNumber;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @continueBtnText.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueBtnText;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @requestOtpError.
  ///
  /// In en, this message translates to:
  /// **'Oops! We’re having a problem sending you a PIN. Please try again.'**
  String get requestOtpError;

  /// No description provided for @validateOtpError.
  ///
  /// In en, this message translates to:
  /// **'Sorry, we’re having a problem validating your Secure PIN. Please try again.'**
  String get validateOtpError;

  /// No description provided for @registration.
  ///
  /// In en, this message translates to:
  /// **'Registration'**
  String get registration;

  /// No description provided for @inputNotEmptyError.
  ///
  /// In en, this message translates to:
  /// **'{field} should not be empty'**
  String inputNotEmptyError(String field);

  /// No description provided for @inputOnlySpaceError.
  ///
  /// In en, this message translates to:
  /// **'{field} should not contain only spaces'**
  String inputOnlySpaceError(String field);

  /// No description provided for @shortInputError.
  ///
  /// In en, this message translates to:
  /// **'{field} is too short'**
  String shortInputError(String field);

  /// No description provided for @extraSpaceError.
  ///
  /// In en, this message translates to:
  /// **'Extra spaces found in between words'**
  String get extraSpaceError;

  /// No description provided for @groupName.
  ///
  /// In en, this message translates to:
  /// **'Group Name'**
  String get groupName;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @enterCode.
  ///
  /// In en, this message translates to:
  /// **'Enter code sent to'**
  String get enterCode;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @selectCountry.
  ///
  /// In en, this message translates to:
  /// **'Select Country'**
  String get selectCountry;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @emailAddress.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get emailAddress;

  /// No description provided for @emailInputHint.
  ///
  /// In en, this message translates to:
  /// **'eg. john_doe@company.com'**
  String get emailInputHint;

  /// No description provided for @legalNameInputHint.
  ///
  /// In en, this message translates to:
  /// **'eg. John Doe'**
  String get legalNameInputHint;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @selectAccount.
  ///
  /// In en, this message translates to:
  /// **'Select Account'**
  String get selectAccount;

  /// No description provided for @fetchingDataFromServer.
  ///
  /// In en, this message translates to:
  /// **'One moment, please…'**
  String get fetchingDataFromServer;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @defaultUnknownError.
  ///
  /// In en, this message translates to:
  /// **'Oops! We’ve encountered a problem. Please try again. If the issue persists please message us at hello@paywithatoa.co.uk.'**
  String get defaultUnknownError;

  /// No description provided for @goBack.
  ///
  /// In en, this message translates to:
  /// **'Go Back'**
  String get goBack;

  /// No description provided for @selectBank.
  ///
  /// In en, this message translates to:
  /// **'Select Bank'**
  String get selectBank;

  /// No description provided for @scanQrCode.
  ///
  /// In en, this message translates to:
  /// **'Scan QR Code'**
  String get scanQrCode;

  /// No description provided for @scanQr.
  ///
  /// In en, this message translates to:
  /// **'Scan QR'**
  String get scanQr;

  /// No description provided for @transactions.
  ///
  /// In en, this message translates to:
  /// **'Transactions'**
  String get transactions;

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'VIEW ALL'**
  String get viewAll;

  /// No description provided for @offers.
  ///
  /// In en, this message translates to:
  /// **'Offers'**
  String get offers;

  /// No description provided for @searchTransactionsNotFound.
  ///
  /// In en, this message translates to:
  /// **'Sorry, we didn’t find any transactions!'**
  String get searchTransactionsNotFound;

  /// No description provided for @noPaymentsYet.
  ///
  /// In en, this message translates to:
  /// **'No payments yet,\nStart transacting now!'**
  String get noPaymentsYet;

  /// No description provided for @scanAnyQrCode.
  ///
  /// In en, this message translates to:
  /// **'Scan any Atoa QR code to pay'**
  String get scanAnyQrCode;

  /// No description provided for @scanFromGallery.
  ///
  /// In en, this message translates to:
  /// **'Scan From Gallery'**
  String get scanFromGallery;

  /// No description provided for @myAccount.
  ///
  /// In en, this message translates to:
  /// **'My Account'**
  String get myAccount;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @bankAccounts.
  ///
  /// In en, this message translates to:
  /// **'Bank Accounts'**
  String get bankAccounts;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @primary.
  ///
  /// In en, this message translates to:
  /// **'Primary'**
  String get primary;

  /// No description provided for @addBankAccount.
  ///
  /// In en, this message translates to:
  /// **'Add a Bank Account'**
  String get addBankAccount;

  /// No description provided for @setAsPrimaryAccount.
  ///
  /// In en, this message translates to:
  /// **'Set as Default'**
  String get setAsPrimaryAccount;

  /// No description provided for @bankAccSetAsPrimary.
  ///
  /// In en, this message translates to:
  /// **'Your Default Bank Account has been updated.'**
  String get bankAccSetAsPrimary;

  /// No description provided for @logoutConfirmMsg.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to logout?'**
  String get logoutConfirmMsg;

  /// No description provided for @oops.
  ///
  /// In en, this message translates to:
  /// **'Oops!'**
  String get oops;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @reference.
  ///
  /// In en, this message translates to:
  /// **'Reference'**
  String get reference;

  /// No description provided for @refund.
  ///
  /// In en, this message translates to:
  /// **'Refund'**
  String get refund;

  /// No description provided for @download.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get download;

  /// No description provided for @paymentFailed.
  ///
  /// In en, this message translates to:
  /// **'Payment Failed'**
  String get paymentFailed;

  /// No description provided for @awaitingAuthorization.
  ///
  /// In en, this message translates to:
  /// **'Awaiting Authorisation'**
  String get awaitingAuthorization;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// No description provided for @appLockEnabledSuccess.
  ///
  /// In en, this message translates to:
  /// **'App lock enabled'**
  String get appLockEnabledSuccess;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @aboutDesc.
  ///
  /// In en, this message translates to:
  /// **'Legal Terms, Versions & Software licenses'**
  String get aboutDesc;

  /// No description provided for @versionandLicenses.
  ///
  /// In en, this message translates to:
  /// **'App Versions & Licenses'**
  String get versionandLicenses;

  /// No description provided for @processing.
  ///
  /// In en, this message translates to:
  /// **'Processing'**
  String get processing;

  /// No description provided for @enterAmount.
  ///
  /// In en, this message translates to:
  /// **'Enter Amount'**
  String get enterAmount;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @atoaPayPrivacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Atoa Pay Privacy Policy'**
  String get atoaPayPrivacyPolicy;

  /// No description provided for @less.
  ///
  /// In en, this message translates to:
  /// **'Less'**
  String get less;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'more'**
  String get more;

  /// No description provided for @goTo.
  ///
  /// In en, this message translates to:
  /// **'Go To'**
  String get goTo;

  /// No description provided for @pay.
  ///
  /// In en, this message translates to:
  /// **'Pay'**
  String get pay;

  /// No description provided for @to.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get to;

  /// No description provided for @couldNotLaunch.
  ///
  /// In en, this message translates to:
  /// **'Sorry, redirection failed. Please try again or email hello@paywithatoa.co.uk'**
  String get couldNotLaunch;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @personalDetails.
  ///
  /// In en, this message translates to:
  /// **'Personal Details'**
  String get personalDetails;

  /// No description provided for @updatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Updated Successfully'**
  String get updatedSuccessfully;

  /// No description provided for @defaultError.
  ///
  /// In en, this message translates to:
  /// **'Oops, An Error Occurred'**
  String get defaultError;

  /// No description provided for @applicationLegaseeText.
  ///
  /// In en, this message translates to:
  /// **'©2023 Atoa Payments Limited. Atoa Payments Limited operates under a license issued to Yapily Connect Limited (#827001) and under a commercial agreement with Yapily Ltd (#10842280). Yapily Connect Ltd is regulated by the UK Financial Conduct Authority under the Payment Services Regulations 2017 as an Authorised Payment Institutions to provide account information services and payment initiation services. Visit www.paywithatoa.co.uk/terms for details.'**
  String get applicationLegaseeText;

  /// No description provided for @instantBankPay.
  ///
  /// In en, this message translates to:
  /// **'Instant Bank Pay'**
  String get instantBankPay;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Signup'**
  String get signUp;

  /// No description provided for @phoneNumberHint.
  ///
  /// In en, this message translates to:
  /// **'Mobile Number'**
  String get phoneNumberHint;

  /// No description provided for @atoaFooterTextHomePage.
  ///
  /// In en, this message translates to:
  /// **'©2023 Atoa Payments Limited. Atoa Payments Limited operates under a license issued to Yapily Connect Limited (#827001). Yapily Connect Ltd is regulated by the UK Financial Conduct Authority under the Payment Services Regulations 2017 as an Authorised Payment Institutions to provide account information services and payment initiation services. Visit www.paywithatoa.co.uk/terms for details.'**
  String get atoaFooterTextHomePage;

  /// No description provided for @splitBills.
  ///
  /// In en, this message translates to:
  /// **'Split Bills'**
  String get splitBills;

  /// No description provided for @rewards.
  ///
  /// In en, this message translates to:
  /// **'Rewards'**
  String get rewards;

  /// No description provided for @recentPayments.
  ///
  /// In en, this message translates to:
  /// **'RECENT PAYMENTS'**
  String get recentPayments;

  /// No description provided for @recentGroups.
  ///
  /// In en, this message translates to:
  /// **'Recent Groups'**
  String get recentGroups;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @noNotificationFound.
  ///
  /// In en, this message translates to:
  /// **'No Notifications Found'**
  String get noNotificationFound;

  /// No description provided for @report.
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get report;

  /// No description provided for @merchant.
  ///
  /// In en, this message translates to:
  /// **'Merchant'**
  String get merchant;

  /// No description provided for @get.
  ///
  /// In en, this message translates to:
  /// **'Get'**
  String get get;

  /// No description provided for @help.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// No description provided for @taxChargesIncluded.
  ///
  /// In en, this message translates to:
  /// **'VAT included'**
  String get taxChargesIncluded;

  /// No description provided for @serviceChargesIncluded.
  ///
  /// In en, this message translates to:
  /// **'Service Charges Included'**
  String get serviceChargesIncluded;

  /// No description provided for @from.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get from;

  /// No description provided for @toMerchant.
  ///
  /// In en, this message translates to:
  /// **'To Merchant'**
  String get toMerchant;

  /// No description provided for @note.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get note;

  /// No description provided for @paymentFailedDesc.
  ///
  /// In en, this message translates to:
  /// **'Oops, this bank app is down at the moment. Atoa is working fine. Please pay with another bank.'**
  String get paymentFailedDesc;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @paid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get paid;

  /// No description provided for @paymentRefunded.
  ///
  /// In en, this message translates to:
  /// **'Refunded'**
  String get paymentRefunded;

  /// No description provided for @paymentprocessing.
  ///
  /// In en, this message translates to:
  /// **'Processing'**
  String get paymentprocessing;

  /// No description provided for @awaitingAuth.
  ///
  /// In en, this message translates to:
  /// **'Awaiting Authorization'**
  String get awaitingAuth;

  /// No description provided for @splitWithFriends.
  ///
  /// In en, this message translates to:
  /// **'Split with Friends'**
  String get splitWithFriends;

  /// No description provided for @people.
  ///
  /// In en, this message translates to:
  /// **'People'**
  String get people;

  /// No description provided for @myQrCode.
  ///
  /// In en, this message translates to:
  /// **'My QR Code'**
  String get myQrCode;

  /// No description provided for @showMyQrCode.
  ///
  /// In en, this message translates to:
  /// **'Show my QR Code'**
  String get showMyQrCode;

  /// No description provided for @resendCode.
  ///
  /// In en, this message translates to:
  /// **'Resend Code'**
  String get resendCode;

  /// No description provided for @didntReceiveYourCode.
  ///
  /// In en, this message translates to:
  /// **'Didn’t receive your code?'**
  String get didntReceiveYourCode;

  /// No description provided for @resendIn.
  ///
  /// In en, this message translates to:
  /// **'Resend in'**
  String get resendIn;

  /// No description provided for @enterFullName.
  ///
  /// In en, this message translates to:
  /// **'Enter your Full Legal Name'**
  String get enterFullName;

  /// No description provided for @fullNameError.
  ///
  /// In en, this message translates to:
  /// **'Please enter your full name'**
  String get fullNameError;

  /// No description provided for @enterPostCode.
  ///
  /// In en, this message translates to:
  /// **'Enter Post Code'**
  String get enterPostCode;

  /// No description provided for @postCodeError.
  ///
  /// In en, this message translates to:
  /// **'Please enter your post code'**
  String get postCodeError;

  /// No description provided for @invalidPostCodeError.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid post code'**
  String get invalidPostCodeError;

  /// No description provided for @ifYouWereReferred.
  ///
  /// In en, this message translates to:
  /// **'Enter a referral code,\nif you have one'**
  String get ifYouWereReferred;

  /// No description provided for @please.
  ///
  /// In en, this message translates to:
  /// **'please'**
  String get please;

  /// No description provided for @code.
  ///
  /// In en, this message translates to:
  /// **'Code'**
  String get code;

  /// No description provided for @postCodeExample.
  ///
  /// In en, this message translates to:
  /// **'eg. SW1A 1AA'**
  String get postCodeExample;

  /// No description provided for @createHashtag.
  ///
  /// In en, this message translates to:
  /// **'Create Hashtag'**
  String get createHashtag;

  /// No description provided for @yourUniqueID.
  ///
  /// In en, this message translates to:
  /// **'Your unique ID for getting paid'**
  String get yourUniqueID;

  /// No description provided for @hashtagExample.
  ///
  /// In en, this message translates to:
  /// **'eg. #Atoa'**
  String get hashtagExample;

  /// No description provided for @connectYourBank.
  ///
  /// In en, this message translates to:
  /// **'Connect Your Bank'**
  String get connectYourBank;

  /// No description provided for @connectYourBankAccount.
  ///
  /// In en, this message translates to:
  /// **'Connect your Bank Account'**
  String get connectYourBankAccount;

  /// No description provided for @connectYourBankAccountDesc.
  ///
  /// In en, this message translates to:
  /// **'Add your account details\nto receive cashback'**
  String get connectYourBankAccountDesc;

  /// No description provided for @connect.
  ///
  /// In en, this message translates to:
  /// **'Connect'**
  String get connect;

  /// No description provided for @sendReceivePaymentWithAtoa.
  ///
  /// In en, this message translates to:
  /// **'To send and receive payments using Atoa'**
  String get sendReceivePaymentWithAtoa;

  /// No description provided for @continuingAgree.
  ///
  /// In en, this message translates to:
  /// **'By Continuing you agree to the'**
  String get continuingAgree;

  /// No description provided for @atoa.
  ///
  /// In en, this message translates to:
  /// **'Atoa'**
  String get atoa;

  /// No description provided for @terms.
  ///
  /// In en, this message translates to:
  /// **'Terms'**
  String get terms;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get and;

  /// No description provided for @atoaPoweredByYapily.
  ///
  /// In en, this message translates to:
  /// **'Atoa is powered by Yapily Connect Ltd, a company regulated and authorised by the UK Financial Conduct Authority'**
  String get atoaPoweredByYapily;

  /// No description provided for @legalNameExample.
  ///
  /// In en, this message translates to:
  /// **'eg. John Doe'**
  String get legalNameExample;

  /// No description provided for @goToHome.
  ///
  /// In en, this message translates to:
  /// **'Go to Home'**
  String get goToHome;

  /// No description provided for @processingYourRequest.
  ///
  /// In en, this message translates to:
  /// **'Processing your request...'**
  String get processingYourRequest;

  /// No description provided for @invalidReferralCode.
  ///
  /// In en, this message translates to:
  /// **'Invalid Referral Code'**
  String get invalidReferralCode;

  /// No description provided for @request.
  ///
  /// In en, this message translates to:
  /// **'Request'**
  String get request;

  /// No description provided for @sent.
  ///
  /// In en, this message translates to:
  /// **'Sent'**
  String get sent;

  /// No description provided for @tapToViewReward.
  ///
  /// In en, this message translates to:
  /// **'Tap to View Reward'**
  String get tapToViewReward;

  /// No description provided for @contacts.
  ///
  /// In en, this message translates to:
  /// **'Contacts'**
  String get contacts;

  /// No description provided for @cashTradingAccount.
  ///
  /// In en, this message translates to:
  /// **'Cash Trading Account'**
  String get cashTradingAccount;

  /// No description provided for @cashIncomeAccount.
  ///
  /// In en, this message translates to:
  /// **'Cash Income Account'**
  String get cashIncomeAccount;

  /// No description provided for @cashPaymentAccount.
  ///
  /// In en, this message translates to:
  /// **'Cash Payment Account'**
  String get cashPaymentAccount;

  /// No description provided for @chargeCardAccount.
  ///
  /// In en, this message translates to:
  /// **'Charge Card Account'**
  String get chargeCardAccount;

  /// No description provided for @chargesAccount.
  ///
  /// In en, this message translates to:
  /// **'Charges Account'**
  String get chargesAccount;

  /// No description provided for @commissionAccount.
  ///
  /// In en, this message translates to:
  /// **'Commission Account'**
  String get commissionAccount;

  /// No description provided for @creditCardAccount.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Account'**
  String get creditCardAccount;

  /// No description provided for @currentAccount.
  ///
  /// In en, this message translates to:
  /// **'Current Account'**
  String get currentAccount;

  /// No description provided for @eMoneyAccount.
  ///
  /// In en, this message translates to:
  /// **'E-Money Account'**
  String get eMoneyAccount;

  /// No description provided for @limitedLiquiditySavingsAccount.
  ///
  /// In en, this message translates to:
  /// **'Limited Liquidity Savings Account'**
  String get limitedLiquiditySavingsAccount;

  /// No description provided for @loanAccount.
  ///
  /// In en, this message translates to:
  /// **'Loan Account'**
  String get loanAccount;

  /// No description provided for @marginalLendingAccount.
  ///
  /// In en, this message translates to:
  /// **'Marginal Lending Account'**
  String get marginalLendingAccount;

  /// No description provided for @moneyMarketAccount.
  ///
  /// In en, this message translates to:
  /// **'Money Market Account'**
  String get moneyMarketAccount;

  /// No description provided for @mortgageAccount.
  ///
  /// In en, this message translates to:
  /// **'Mortgage Account'**
  String get mortgageAccount;

  /// No description provided for @nonResidentExternalAccount.
  ///
  /// In en, this message translates to:
  /// **'Non Resident External Account'**
  String get nonResidentExternalAccount;

  /// No description provided for @otherAccount.
  ///
  /// In en, this message translates to:
  /// **'Other Account'**
  String get otherAccount;

  /// No description provided for @overdraftAccount.
  ///
  /// In en, this message translates to:
  /// **'Overdraft Account'**
  String get overdraftAccount;

  /// No description provided for @overnightDepositAccount.
  ///
  /// In en, this message translates to:
  /// **'Overnight Deposit Account'**
  String get overnightDepositAccount;

  /// No description provided for @prepaidCardAccount.
  ///
  /// In en, this message translates to:
  /// **'Prepaid Card Account'**
  String get prepaidCardAccount;

  /// No description provided for @salaryAccount.
  ///
  /// In en, this message translates to:
  /// **'Salary Account'**
  String get salaryAccount;

  /// No description provided for @savingsAccount.
  ///
  /// In en, this message translates to:
  /// **'Savings Account'**
  String get savingsAccount;

  /// No description provided for @settlementAccount.
  ///
  /// In en, this message translates to:
  /// **'Settlement Account'**
  String get settlementAccount;

  /// No description provided for @taxAccount.
  ///
  /// In en, this message translates to:
  /// **'Tax Account'**
  String get taxAccount;

  /// No description provided for @unknownAccount.
  ///
  /// In en, this message translates to:
  /// **'Unknown Account'**
  String get unknownAccount;

  /// No description provided for @accountNotSupported.
  ///
  /// In en, this message translates to:
  /// **'Account not Supported'**
  String get accountNotSupported;

  /// No description provided for @forInstantBankTransfer.
  ///
  /// In en, this message translates to:
  /// **'for Instant Bank Transfer'**
  String get forInstantBankTransfer;

  /// No description provided for @pleaseSelectAnotherBankAccount.
  ///
  /// In en, this message translates to:
  /// **'Please select another Bank Account'**
  String get pleaseSelectAnotherBankAccount;

  /// No description provided for @authorizationFailed.
  ///
  /// In en, this message translates to:
  /// **'Authorisation Failed'**
  String get authorizationFailed;

  /// No description provided for @failedToConnectToYourBank.
  ///
  /// In en, this message translates to:
  /// **'Failed to connect to your bank.'**
  String get failedToConnectToYourBank;

  /// No description provided for @yourBankAppMightBeDown.
  ///
  /// In en, this message translates to:
  /// **'Your Bank App might be down at the moment'**
  String get yourBankAppMightBeDown;

  /// No description provided for @received.
  ///
  /// In en, this message translates to:
  /// **'Received'**
  String get received;

  /// No description provided for @receipt.
  ///
  /// In en, this message translates to:
  /// **'Receipt'**
  String get receipt;

  /// No description provided for @user.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get user;

  /// No description provided for @appLock.
  ///
  /// In en, this message translates to:
  /// **'App Lock'**
  String get appLock;

  /// No description provided for @enabled.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get enabled;

  /// No description provided for @disabled.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get disabled;

  /// No description provided for @secureAtoa.
  ///
  /// In en, this message translates to:
  /// **'Secure Atoa'**
  String get secureAtoa;

  /// No description provided for @secureAtoaDesc.
  ///
  /// In en, this message translates to:
  /// **'Secure Atoa using your existing device biometrics like FaceID or Fingerprint'**
  String get secureAtoaDesc;

  /// No description provided for @primaryAccount.
  ///
  /// In en, this message translates to:
  /// **'Primary Account'**
  String get primaryAccount;

  /// No description provided for @showQrCode.
  ///
  /// In en, this message translates to:
  /// **'Show QR Code'**
  String get showQrCode;

  /// No description provided for @othersCanScanCode.
  ///
  /// In en, this message translates to:
  /// **'Others can scan this code to pay you'**
  String get othersCanScanCode;

  /// No description provided for @myBanks.
  ///
  /// In en, this message translates to:
  /// **'My Banks'**
  String get myBanks;

  /// No description provided for @addModifyBankAccounts.
  ///
  /// In en, this message translates to:
  /// **'Add/Modify Bank Accounts'**
  String get addModifyBankAccounts;

  /// No description provided for @support.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get support;

  /// No description provided for @chatWithUs.
  ///
  /// In en, this message translates to:
  /// **'Chat with us'**
  String get chatWithUs;

  /// No description provided for @forgetAccount.
  ///
  /// In en, this message translates to:
  /// **'Forget Account'**
  String get forgetAccount;

  /// No description provided for @cannotForgetPrimary.
  ///
  /// In en, this message translates to:
  /// **'Sorry, you can’t delete your Primary Account.'**
  String get cannotForgetPrimary;

  /// No description provided for @bankAccDeleted.
  ///
  /// In en, this message translates to:
  /// **'Bank Account Deleted'**
  String get bankAccDeleted;

  /// No description provided for @fullLegalName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullLegalName;

  /// No description provided for @invalidEmailError.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid e-mail address'**
  String get invalidEmailError;

  /// No description provided for @atoaID.
  ///
  /// In en, this message translates to:
  /// **'Atoa ID'**
  String get atoaID;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @onboardingTitleStep1.
  ///
  /// In en, this message translates to:
  /// **'Send, Receive, Earn'**
  String get onboardingTitleStep1;

  /// No description provided for @onboardingTitleStep2.
  ///
  /// In en, this message translates to:
  /// **'Got bills to pay?'**
  String get onboardingTitleStep2;

  /// No description provided for @onboardingTitleStep3.
  ///
  /// In en, this message translates to:
  /// **'Pay in Store'**
  String get onboardingTitleStep3;

  /// No description provided for @onboardingDescStep1.
  ///
  /// In en, this message translates to:
  /// **'Send money and get paid back for anything, from nights out to rent!'**
  String get onboardingDescStep1;

  /// No description provided for @onboardingDescStep2.
  ///
  /// In en, this message translates to:
  /// **'Split bills equally, unequally, uniquely. Let us do the maths!'**
  String get onboardingDescStep2;

  /// No description provided for @onboardingDescStep3.
  ///
  /// In en, this message translates to:
  /// **'Earn cashback when you\npay in stores that use Atoa!'**
  String get onboardingDescStep3;

  /// No description provided for @collect.
  ///
  /// In en, this message translates to:
  /// **'Collect'**
  String get collect;

  /// No description provided for @spend.
  ///
  /// In en, this message translates to:
  /// **'Spend'**
  String get spend;

  /// No description provided for @moreOptions.
  ///
  /// In en, this message translates to:
  /// **'More Options'**
  String get moreOptions;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @refresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// No description provided for @blockUser.
  ///
  /// In en, this message translates to:
  /// **'Block User'**
  String get blockUser;

  /// No description provided for @unBlockUser.
  ///
  /// In en, this message translates to:
  /// **'Unblock User'**
  String get unBlockUser;

  /// No description provided for @refunded.
  ///
  /// In en, this message translates to:
  /// **'Refunded'**
  String get refunded;

  /// No description provided for @cancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get cancelled;

  /// No description provided for @unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknown;

  /// No description provided for @privacySecurity.
  ///
  /// In en, this message translates to:
  /// **'Privacy & Security'**
  String get privacySecurity;

  /// No description provided for @biometrics.
  ///
  /// In en, this message translates to:
  /// **'Biometrics, profile visibility'**
  String get biometrics;

  /// No description provided for @addYourPhoto.
  ///
  /// In en, this message translates to:
  /// **'Add Your Profile Photo'**
  String get addYourPhoto;

  /// No description provided for @editPhoto.
  ///
  /// In en, this message translates to:
  /// **'Edit Photo'**
  String get editPhoto;

  /// No description provided for @addPhoto.
  ///
  /// In en, this message translates to:
  /// **'Add Photo'**
  String get addPhoto;

  /// No description provided for @takePhoto.
  ///
  /// In en, this message translates to:
  /// **'Take Photo'**
  String get takePhoto;

  /// No description provided for @chooseFromGallery.
  ///
  /// In en, this message translates to:
  /// **'Choose from Gallery'**
  String get chooseFromGallery;

  /// No description provided for @newPayment.
  ///
  /// In en, this message translates to:
  /// **'New Payment'**
  String get newPayment;

  /// No description provided for @payWithoutTip.
  ///
  /// In en, this message translates to:
  /// **'Pay Without Tip'**
  String get payWithoutTip;

  /// No description provided for @payNow.
  ///
  /// In en, this message translates to:
  /// **'Pay Now'**
  String get payNow;

  /// No description provided for @addAnotherBank.
  ///
  /// In en, this message translates to:
  /// **'Add Another Bank'**
  String get addAnotherBank;

  /// No description provided for @mostTipped.
  ///
  /// In en, this message translates to:
  /// **'Most Tipped'**
  String get mostTipped;

  /// No description provided for @noteOptionalHintText.
  ///
  /// In en, this message translates to:
  /// **'What\'s it for?'**
  String get noteOptionalHintText;

  /// No description provided for @thanksForAddingATipText.
  ///
  /// In en, this message translates to:
  /// **'Thanks for adding a Tip!'**
  String get thanksForAddingATipText;

  /// No description provided for @addATipText.
  ///
  /// In en, this message translates to:
  /// **'Would you like to add a Tip?'**
  String get addATipText;

  /// No description provided for @addBankAccountToContinue.
  ///
  /// In en, this message translates to:
  /// **'Add Bank Account to continue'**
  String get addBankAccountToContinue;

  /// No description provided for @chooseAccountToPayWith.
  ///
  /// In en, this message translates to:
  /// **'Select Account to pay with'**
  String get chooseAccountToPayWith;

  /// No description provided for @chooseAccountToRequestWith.
  ///
  /// In en, this message translates to:
  /// **'Select Account to request with'**
  String get chooseAccountToRequestWith;

  /// No description provided for @waitingForAuthorization.
  ///
  /// In en, this message translates to:
  /// **'Waiting for Authorisation'**
  String get waitingForAuthorization;

  /// No description provided for @errorOccurredWhileRedirectingToBank.
  ///
  /// In en, this message translates to:
  /// **'Sorry, an error occured while redirecting to your Bank. They may be having technical difficulties.'**
  String get errorOccurredWhileRedirectingToBank;

  /// No description provided for @noContactsFoundInContactBook.
  ///
  /// In en, this message translates to:
  /// **'Sorry, no contacts were found in your contact book.'**
  String get noContactsFoundInContactBook;

  /// No description provided for @noResultsFor.
  ///
  /// In en, this message translates to:
  /// **'No results for'**
  String get noResultsFor;

  /// No description provided for @noSearchFoundContactSyncDescription.
  ///
  /// In en, this message translates to:
  /// **'Search by entering a Person’s Name, Phone Number, or Atoa ID'**
  String get noSearchFoundContactSyncDescription;

  /// No description provided for @contactsOnAtoa.
  ///
  /// In en, this message translates to:
  /// **'CONTACTS ON ATOA'**
  String get contactsOnAtoa;

  /// No description provided for @contactsNotOnAtoa.
  ///
  /// In en, this message translates to:
  /// **'CONTACTS NOT ON ATOA'**
  String get contactsNotOnAtoa;

  /// No description provided for @invite.
  ///
  /// In en, this message translates to:
  /// **'Invite'**
  String get invite;

  /// No description provided for @totalAmountShouldNotBeMoreThan.
  ///
  /// In en, this message translates to:
  /// **'Please enter an amount below {amount}'**
  String totalAmountShouldNotBeMoreThan(double amount);

  /// No description provided for @enterAmountGreaterThan.
  ///
  /// In en, this message translates to:
  /// **'Please enter amount greater than {amount}'**
  String enterAmountGreaterThan(double amount);

  /// No description provided for @enterAmountSmallerThan.
  ///
  /// In en, this message translates to:
  /// **'Please enter an amount below {amount}'**
  String enterAmountSmallerThan(double amount);

  /// No description provided for @almostThere.
  ///
  /// In en, this message translates to:
  /// **'Almost There!'**
  String get almostThere;

  /// No description provided for @verifyingYourPaymentStatusText.
  ///
  /// In en, this message translates to:
  /// **'We are verifying your payment status'**
  String get verifyingYourPaymentStatusText;

  /// No description provided for @oopsErrorOccurred.
  ///
  /// In en, this message translates to:
  /// **'Uh-oh! We’re sorry, an unknown error has occured. Please try again or notify us at hello@paywithatoa.co.uk.'**
  String get oopsErrorOccurred;

  /// No description provided for @cashback.
  ///
  /// In en, this message translates to:
  /// **'Cashback'**
  String get cashback;

  /// No description provided for @youBlockedUserTitle.
  ///
  /// In en, this message translates to:
  /// **'You’ve blocked this User'**
  String get youBlockedUserTitle;

  /// No description provided for @unlock.
  ///
  /// In en, this message translates to:
  /// **'Unlock'**
  String get unlock;

  /// No description provided for @blockedUserMsg.
  ///
  /// In en, this message translates to:
  /// **'They won’t be notified that you’ve blocked them. You’ll need to unblock them before being able to send or request payments.'**
  String get blockedUserMsg;

  /// No description provided for @yesLogoutNow.
  ///
  /// In en, this message translates to:
  /// **'Logout Now'**
  String get yesLogoutNow;

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome back'**
  String get welcomeBack;

  /// No description provided for @atoaIsLocked.
  ///
  /// In en, this message translates to:
  /// **'Atoa is locked'**
  String get atoaIsLocked;

  /// No description provided for @securityDesc.
  ///
  /// In en, this message translates to:
  /// **'Just tap your fingerprint or face ID to get started'**
  String get securityDesc;

  /// No description provided for @unblock.
  ///
  /// In en, this message translates to:
  /// **'Unblock'**
  String get unblock;

  /// No description provided for @youHaveWonAPrize.
  ///
  /// In en, this message translates to:
  /// **'You have won a prize!'**
  String get youHaveWonAPrize;

  /// No description provided for @scratchToRevealYourReward.
  ///
  /// In en, this message translates to:
  /// **'Scratch to reveal your reward'**
  String get scratchToRevealYourReward;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @cashbackWillBeCreditedMessage.
  ///
  /// In en, this message translates to:
  /// **'Cashback will be credited to your bank account ending {maskedAccountNumber} within 1-2 working days'**
  String cashbackWillBeCreditedMessage(int hour, String maskedAccountNumber);

  /// No description provided for @blockUserConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Block \"{name}\"?'**
  String blockUserConfirmTitle(String name);

  /// No description provided for @blockUserDesc.
  ///
  /// In en, this message translates to:
  /// **'They’ll no longer be able to send or request payments from you using Atoa Pay. They won’t be notified that they’ve been blocked.'**
  String get blockUserDesc;

  /// No description provided for @youHaveWonAPrizeForDownloadingAtoa.
  ///
  /// In en, this message translates to:
  /// **'You have won a prize\nfor joining Atoa!'**
  String get youHaveWonAPrizeForDownloadingAtoa;

  /// No description provided for @updateDialogText.
  ///
  /// In en, this message translates to:
  /// **'Heads up! It seems like you\'re using an older version of Atoa Pay. Update now to get the most out of our app and enjoy the latest features.'**
  String get updateDialogText;

  /// No description provided for @updateAppText.
  ///
  /// In en, this message translates to:
  /// **'📢 Update Atoa Pay!'**
  String get updateAppText;

  /// No description provided for @amountInPound.
  ///
  /// In en, this message translates to:
  /// **'£{amount}'**
  String amountInPound(String amount);

  /// No description provided for @coins.
  ///
  /// In en, this message translates to:
  /// **'Coins'**
  String get coins;

  /// No description provided for @keepPaying.
  ///
  /// In en, this message translates to:
  /// **'Win rewards every time you\npay in-store with Atoa!'**
  String get keepPaying;

  /// No description provided for @currencySymbol.
  ///
  /// In en, this message translates to:
  /// **'£'**
  String get currencySymbol;

  /// No description provided for @congratulations.
  ///
  /// In en, this message translates to:
  /// **'Congratulations'**
  String get congratulations;

  /// No description provided for @noInternetConnectivity.
  ///
  /// In en, this message translates to:
  /// **'No Internet Signal'**
  String get noInternetConnectivity;

  /// No description provided for @noInternetTitle.
  ///
  /// In en, this message translates to:
  /// **'Are you in the Tube? It looks like you have no signal. Please connect to Wi-Fi.'**
  String get noInternetTitle;

  /// No description provided for @serverNotReachableError.
  ///
  /// In en, this message translates to:
  /// **'It seems we can’t connect to our servers right now. Can I borrow some Wi-Fi from you?'**
  String get serverNotReachableError;

  /// No description provided for @downloadAppDesc.
  ///
  /// In en, this message translates to:
  /// **'Please download and install your bank app to\nconnect your bank and use Atoa seamlessly'**
  String get downloadAppDesc;

  /// No description provided for @ensureBankAppIsInstalled.
  ///
  /// In en, this message translates to:
  /// **'Please make sure you have a Bank App installed on your Phone in order to use Atoa Pay.'**
  String get ensureBankAppIsInstalled;

  /// No description provided for @downloadBankApp.
  ///
  /// In en, this message translates to:
  /// **'Download the Bank App Now'**
  String get downloadBankApp;

  /// No description provided for @alreadyUpToDate.
  ///
  /// In en, this message translates to:
  /// **'Already up-to date'**
  String get alreadyUpToDate;

  /// No description provided for @bankAppNotFound.
  ///
  /// In en, this message translates to:
  /// **'Bank App Not Found'**
  String get bankAppNotFound;

  /// No description provided for @noContactPermissionDesc.
  ///
  /// In en, this message translates to:
  /// **'We require your permission to access contacts in order to carry out payments to your friends'**
  String get noContactPermissionDesc;

  /// No description provided for @syncContactLabel.
  ///
  /// In en, this message translates to:
  /// **'Sync Contacts'**
  String get syncContactLabel;

  /// No description provided for @contactSyncConsentText.
  ///
  /// In en, this message translates to:
  /// **'We only store details like Name and Number of contacts for letting you do Instant Bank payments to your friends. We do not share your contacts with anyone outside of Atoa and its contracted service providers. You can read more on our '**
  String get contactSyncConsentText;

  /// No description provided for @errorOnContactSync.
  ///
  /// In en, this message translates to:
  /// **'Uh-oh! An error occured while syncing your contacts. Please try again.'**
  String get errorOnContactSync;

  /// No description provided for @others.
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get others;

  /// No description provided for @inYourContacts.
  ///
  /// In en, this message translates to:
  /// **'IN YOUR CONTACTS'**
  String get inYourContacts;

  /// No description provided for @inviteMessage.
  ///
  /// In en, this message translates to:
  /// **'Join me on Atoa Pay! It’s a fast, safe, and free way to pay and get paid for anyone with a UK Bank! Use my referral code {referralCode}! Sign up with this link: {referralLink}'**
  String inviteMessage(String referralCode, String referralLink);

  /// No description provided for @inviteMessageWithReferralAmount.
  ///
  /// In en, this message translates to:
  /// **'Join me on Atoa Pay! It’s a fast, safe, and free way to pay and get paid for anyone with a UK Bank! Use my referral code: {referralCode} and we’ll both get {referralAmount}! Sign up with this link: {referralLink}'**
  String inviteMessageWithReferralAmount(String referralCode, double referralAmount, String referralLink);

  /// No description provided for @noRewards.
  ///
  /// In en, this message translates to:
  /// **'No Rewards'**
  String get noRewards;

  /// No description provided for @addingRewardsToYourAccount.
  ///
  /// In en, this message translates to:
  /// **'Adding rewards to your account'**
  String get addingRewardsToYourAccount;

  /// No description provided for @expired.
  ///
  /// In en, this message translates to:
  /// **'Expired'**
  String get expired;

  /// No description provided for @paymentExpired.
  ///
  /// In en, this message translates to:
  /// **'Payment Expired'**
  String get paymentExpired;

  /// No description provided for @downloadSuccessfulNotificationTitleIos.
  ///
  /// In en, this message translates to:
  /// **'Download Successful'**
  String get downloadSuccessfulNotificationTitleIos;

  /// No description provided for @downloadSuccessfulNotificationBodyIos.
  ///
  /// In en, this message translates to:
  /// **'File saved to : Atoa Pay>Download'**
  String get downloadSuccessfulNotificationBodyIos;

  /// No description provided for @downloadFailedNotificationTitleIos.
  ///
  /// In en, this message translates to:
  /// **'Download Failed'**
  String get downloadFailedNotificationTitleIos;

  /// No description provided for @permissionRequiredError.
  ///
  /// In en, this message translates to:
  /// **'Please add the required permissions'**
  String get permissionRequiredError;

  /// No description provided for @downloadFailedErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'Oops! An error occured while downloading. Please try again!'**
  String get downloadFailedErrorMessage;

  /// No description provided for @downloadStarted.
  ///
  /// In en, this message translates to:
  /// **'Your download has started.'**
  String get downloadStarted;

  /// No description provided for @characterLimitReached.
  ///
  /// In en, this message translates to:
  /// **'Character limit reached'**
  String get characterLimitReached;

  /// No description provided for @charactersRequired.
  ///
  /// In en, this message translates to:
  /// **'{char} characters required'**
  String charactersRequired(int char);

  /// No description provided for @hashtagAlreadyExists.
  ///
  /// In en, this message translates to:
  /// **'This Atoa ID already exists! Please choose another.'**
  String get hashtagAlreadyExists;

  /// No description provided for @scanThisCodeToPay.
  ///
  /// In en, this message translates to:
  /// **'Scan this code to pay'**
  String get scanThisCodeToPay;

  /// No description provided for @youHaveWonAPrizeForPaying.
  ///
  /// In en, this message translates to:
  /// **'You Have Won a Prize for\nmaking a payment'**
  String get youHaveWonAPrizeForPaying;

  /// No description provided for @looksLikeYouHaveBeenReferred.
  ///
  /// In en, this message translates to:
  /// **'Looks like you have been invited, would you like to accept ?'**
  String get looksLikeYouHaveBeenReferred;

  /// No description provided for @enterReferralCode.
  ///
  /// In en, this message translates to:
  /// **'Enter Referral Code'**
  String get enterReferralCode;

  /// No description provided for @skipAutoReferralTitle.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you don’t want to accept a referral?'**
  String get skipAutoReferralTitle;

  /// No description provided for @skipAutoReferralDesc.
  ///
  /// In en, this message translates to:
  /// **'You will not be able to undo this action. Your friends will not receive any rewards for referring you.'**
  String get skipAutoReferralDesc;

  /// No description provided for @skipReferralConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Continue Without Accepting'**
  String get skipReferralConfirmation;

  /// No description provided for @enterDateOfBirth.
  ///
  /// In en, this message translates to:
  /// **'Enter Date of Birth'**
  String get enterDateOfBirth;

  /// No description provided for @weCollectYourDateOfBirth.
  ///
  /// In en, this message translates to:
  /// **'We collect your date of birth to send you and your friends birthday reminders'**
  String get weCollectYourDateOfBirth;

  /// No description provided for @pickADate.
  ///
  /// In en, this message translates to:
  /// **'Pick a date'**
  String get pickADate;

  /// No description provided for @userNotFound.
  ///
  /// In en, this message translates to:
  /// **'User not found'**
  String get userNotFound;

  /// No description provided for @scanAnotherQrCode.
  ///
  /// In en, this message translates to:
  /// **'Scan another QR Code'**
  String get scanAnotherQrCode;

  /// No description provided for @ownQrErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'You can’t pay yourself!'**
  String get ownQrErrorTitle;

  /// No description provided for @ownQrErrorDesc.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t process your transaction as you\'re trying to send money to your own bank account.'**
  String get ownQrErrorDesc;

  /// No description provided for @paymentRequestNotFound.
  ///
  /// In en, this message translates to:
  /// **'Payment request not found'**
  String get paymentRequestNotFound;

  /// No description provided for @wantToEarnMoreFreePaymentsText.
  ///
  /// In en, this message translates to:
  /// **'Want to get more free payments?'**
  String get wantToEarnMoreFreePaymentsText;

  /// No description provided for @referYourFriendsToAtoa.
  ///
  /// In en, this message translates to:
  /// **'Refer your friends to Atoa'**
  String get referYourFriendsToAtoa;

  /// No description provided for @yourArePaying.
  ///
  /// In en, this message translates to:
  /// **'You’re paying'**
  String get yourArePaying;

  /// No description provided for @selectAccountToPayWith.
  ///
  /// In en, this message translates to:
  /// **'Select account to pay with '**
  String get selectAccountToPayWith;

  /// No description provided for @selectAccountToRequestWith.
  ///
  /// In en, this message translates to:
  /// **'Select account to request with '**
  String get selectAccountToRequestWith;

  /// No description provided for @minutesRemaining.
  ///
  /// In en, this message translates to:
  /// **'mins remaining'**
  String get minutesRemaining;

  /// No description provided for @openYourBankAppToApprove.
  ///
  /// In en, this message translates to:
  /// **'Make sure you approve this payment in your banking app before the timer ends'**
  String get openYourBankAppToApprove;

  /// No description provided for @openBankApp.
  ///
  /// In en, this message translates to:
  /// **'Open Bank App'**
  String get openBankApp;

  /// No description provided for @dontPressBackOrCloseAppWhileTxn.
  ///
  /// In en, this message translates to:
  /// **'Do not press back or force close this app until the transaction is complete'**
  String get dontPressBackOrCloseAppWhileTxn;

  /// No description provided for @cancelPayment.
  ///
  /// In en, this message translates to:
  /// **'Cancel Payment'**
  String get cancelPayment;

  /// No description provided for @cancelPaymentConfirmationTile.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to\nCancel the payment?'**
  String get cancelPaymentConfirmationTile;

  /// No description provided for @cancelPaymentConfirmationSubtitle.
  ///
  /// In en, this message translates to:
  /// **'The Payment request will get cancelled only if you have not completed the payment in your Bank App'**
  String get cancelPaymentConfirmationSubtitle;

  /// No description provided for @yesCancelPayment.
  ///
  /// In en, this message translates to:
  /// **'Yes, Cancel Payment'**
  String get yesCancelPayment;

  /// No description provided for @keepTrying.
  ///
  /// In en, this message translates to:
  /// **'Keep Trying'**
  String get keepTrying;

  /// No description provided for @errorFetchingpaymentStatusTitle.
  ///
  /// In en, this message translates to:
  /// **'Payment Status Error'**
  String get errorFetchingpaymentStatusTitle;

  /// No description provided for @errorFetchingpaymentStatusDescription.
  ///
  /// In en, this message translates to:
  /// **'Sorry, we’ve run into an error while we were fetching your payment status. Please wait a moment and try again.'**
  String get errorFetchingpaymentStatusDescription;

  /// No description provided for @cameraAccessDeniedTitle.
  ///
  /// In en, this message translates to:
  /// **'Camera access denied'**
  String get cameraAccessDeniedTitle;

  /// No description provided for @cameraAccessDeniedDescription.
  ///
  /// In en, this message translates to:
  /// **'Please give Atoa access to\nyour camera to continue'**
  String get cameraAccessDeniedDescription;

  /// No description provided for @openSettingsToAllowAccess.
  ///
  /// In en, this message translates to:
  /// **'Open Settings to Allow Access'**
  String get openSettingsToAllowAccess;

  /// No description provided for @sending.
  ///
  /// In en, this message translates to:
  /// **'Sending'**
  String get sending;

  /// No description provided for @successfullyReferredTitle.
  ///
  /// In en, this message translates to:
  /// **'Successfully Referred'**
  String get successfullyReferredTitle;

  /// No description provided for @successfullyReferredDescription.
  ///
  /// In en, this message translates to:
  /// **'Yay! You are one step closer\nto receiving rewards'**
  String get successfullyReferredDescription;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// No description provided for @friendsHaveJoinedAtoaTxt.
  ///
  /// In en, this message translates to:
  /// **'Your friends have joined Atoa, remind them to complete payments worth more than £{amount} each for you to receive your reward'**
  String friendsHaveJoinedAtoaTxt(String amount);

  /// No description provided for @receiverNotInContacts.
  ///
  /// In en, this message translates to:
  /// **'{name} is not in your contacts. You can still\nconduct payments using your Atoa ID.'**
  String receiverNotInContacts(String name);

  /// No description provided for @fromReferrals.
  ///
  /// In en, this message translates to:
  /// **'from {count} invites'**
  String fromReferrals(String count);

  /// No description provided for @friendsHaveJoinedAtoaTxt2.
  ///
  /// In en, this message translates to:
  /// **'Your friends have joined Atoa but they need to send {amount}+ in payments to make you a winner!'**
  String friendsHaveJoinedAtoaTxt2(double amount);

  /// No description provided for @youHaveWon.
  ///
  /// In en, this message translates to:
  /// **'You’ve won'**
  String get youHaveWon;

  /// No description provided for @acceptedAnotherReferral.
  ///
  /// In en, this message translates to:
  /// **'Accepted another referral'**
  String get acceptedAnotherReferral;

  /// No description provided for @referralExpired.
  ///
  /// In en, this message translates to:
  /// **'Referral Expired'**
  String get referralExpired;

  /// No description provided for @reminderSent.
  ///
  /// In en, this message translates to:
  /// **'Reminder Sent'**
  String get reminderSent;

  /// No description provided for @inviteSent.
  ///
  /// In en, this message translates to:
  /// **'Invite Sent'**
  String get inviteSent;

  /// No description provided for @remind.
  ///
  /// In en, this message translates to:
  /// **'Remind'**
  String get remind;

  /// No description provided for @rewardsProcessing.
  ///
  /// In en, this message translates to:
  /// **'Rewards Processing'**
  String get rewardsProcessing;

  /// No description provided for @rewardsProcessingDesc.
  ///
  /// In en, this message translates to:
  /// **'Please give us some time to pay out your reward. You’ll receive a push notification once its done.'**
  String get rewardsProcessingDesc;

  /// No description provided for @iUnderstand.
  ///
  /// In en, this message translates to:
  /// **'I Understand'**
  String get iUnderstand;

  /// No description provided for @youwon.
  ///
  /// In en, this message translates to:
  /// **'You won'**
  String get youwon;

  /// No description provided for @referAndEarn.
  ///
  /// In en, this message translates to:
  /// **'Invite Friends'**
  String get referAndEarn;

  /// No description provided for @inviteBusiness.
  ///
  /// In en, this message translates to:
  /// **'Invite Business'**
  String get inviteBusiness;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms & Conditions'**
  String get termsAndConditions;

  /// No description provided for @referralCode.
  ///
  /// In en, this message translates to:
  /// **'Referral Code'**
  String get referralCode;

  /// No description provided for @shareLink.
  ///
  /// In en, this message translates to:
  /// **'Share Link'**
  String get shareLink;

  /// No description provided for @referralCodeCopied.
  ///
  /// In en, this message translates to:
  /// **'Referral Code Copied'**
  String get referralCodeCopied;

  /// No description provided for @failed.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get failed;

  /// No description provided for @isRequestingText.
  ///
  /// In en, this message translates to:
  /// **'is Requesting'**
  String get isRequestingText;

  /// No description provided for @youAreRequestingText.
  ///
  /// In en, this message translates to:
  /// **'You’re Requesting'**
  String get youAreRequestingText;

  /// No description provided for @youRequestedText.
  ///
  /// In en, this message translates to:
  /// **'You Requested'**
  String get youRequestedText;

  /// No description provided for @requestCancelled.
  ///
  /// In en, this message translates to:
  /// **'Request Cancelled'**
  String get requestCancelled;

  /// No description provided for @youHaveDeclined.
  ///
  /// In en, this message translates to:
  /// **'You’ve Declined'**
  String get youHaveDeclined;

  /// No description provided for @requestDeclined.
  ///
  /// In en, this message translates to:
  /// **'Request Declined'**
  String get requestDeclined;

  /// No description provided for @requestExpired.
  ///
  /// In en, this message translates to:
  /// **'Request Expired'**
  String get requestExpired;

  /// No description provided for @internalReward.
  ///
  /// In en, this message translates to:
  /// **'Internal Reward'**
  String get internalReward;

  /// No description provided for @requested.
  ///
  /// In en, this message translates to:
  /// **'Requested'**
  String get requested;

  /// No description provided for @waitingForPayment.
  ///
  /// In en, this message translates to:
  /// **'Waiting for payment'**
  String get waitingForPayment;

  /// No description provided for @keepRequest.
  ///
  /// In en, this message translates to:
  /// **'Keep Request'**
  String get keepRequest;

  /// No description provided for @cancelRequest.
  ///
  /// In en, this message translates to:
  /// **'Cancel Request'**
  String get cancelRequest;

  /// No description provided for @dontDecline.
  ///
  /// In en, this message translates to:
  /// **'Don’t Decline'**
  String get dontDecline;

  /// No description provided for @decline.
  ///
  /// In en, this message translates to:
  /// **'Decline'**
  String get decline;

  /// No description provided for @declinePayRequestConfirmationTitle.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to\ndecline the request?'**
  String get declinePayRequestConfirmationTitle;

  /// No description provided for @cancelPayRequestConfirmationTitle.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to\ncancel payment request of\n£{amount}?'**
  String cancelPayRequestConfirmationTitle(String amount);

  /// No description provided for @monthlyReward.
  ///
  /// In en, this message translates to:
  /// **'You have won the prize for using Atoa for a month'**
  String get monthlyReward;

  /// No description provided for @settlementInProcessInfoText.
  ///
  /// In en, this message translates to:
  /// **'It is taking longer than normal, Please be patient while we check for updated status, in case of discrepancy payment will be refunded'**
  String get settlementInProcessInfoText;

  /// No description provided for @dateOfBirth.
  ///
  /// In en, this message translates to:
  /// **'Date of Birth'**
  String get dateOfBirth;

  /// No description provided for @ago.
  ///
  /// In en, this message translates to:
  /// **'ago'**
  String get ago;

  /// No description provided for @now.
  ///
  /// In en, this message translates to:
  /// **'now'**
  String get now;

  /// No description provided for @createGroupPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Enter group name'**
  String get createGroupPageTitle;

  /// No description provided for @createGroupBtnText.
  ///
  /// In en, this message translates to:
  /// **'Create Group'**
  String get createGroupBtnText;

  /// No description provided for @enterTotalExpenseAmount.
  ///
  /// In en, this message translates to:
  /// **'Enter total expense amount'**
  String get enterTotalExpenseAmount;

  /// No description provided for @createSplitRequestPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Create Split Request'**
  String get createSplitRequestPageTitle;

  /// No description provided for @totalAmount.
  ///
  /// In en, this message translates to:
  /// **'Total amount'**
  String get totalAmount;

  /// No description provided for @exceedingByAmount.
  ///
  /// In en, this message translates to:
  /// **'Reduce by £{amount}'**
  String exceedingByAmount(String amount);

  /// No description provided for @amountRemaining.
  ///
  /// In en, this message translates to:
  /// **'£{amount} Remaining'**
  String amountRemaining(String amount);

  /// No description provided for @sendRequest.
  ///
  /// In en, this message translates to:
  /// **'Send Request'**
  String get sendRequest;

  /// No description provided for @splitEquallyBetween.
  ///
  /// In en, this message translates to:
  /// **'Split equally between {member}'**
  String splitEquallyBetween(int member);

  /// No description provided for @you.
  ///
  /// In en, this message translates to:
  /// **'You'**
  String get you;

  /// No description provided for @noSplitAvailable.
  ///
  /// In en, this message translates to:
  /// **'No Splits available\nStart by creating a New Split'**
  String get noSplitAvailable;

  /// No description provided for @newSplit.
  ///
  /// In en, this message translates to:
  /// **'New Split'**
  String get newSplit;

  /// No description provided for @createNewExpense.
  ///
  /// In en, this message translates to:
  /// **'Create a New Expense'**
  String get createNewExpense;

  /// No description provided for @splitExistingExpense.
  ///
  /// In en, this message translates to:
  /// **'Split an Existing Expense'**
  String get splitExistingExpense;

  /// No description provided for @negativeMoney.
  ///
  /// In en, this message translates to:
  /// **'-{amount}'**
  String negativeMoney(double amount);

  /// No description provided for @youllReceive.
  ///
  /// In en, this message translates to:
  /// **'You’ll receive'**
  String get youllReceive;

  /// No description provided for @youllPay.
  ///
  /// In en, this message translates to:
  /// **'You’ll pay'**
  String get youllPay;

  /// No description provided for @splitBillSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search by group or contact'**
  String get splitBillSearchHint;

  /// No description provided for @groups.
  ///
  /// In en, this message translates to:
  /// **'Groups'**
  String get groups;

  /// No description provided for @newGroup.
  ///
  /// In en, this message translates to:
  /// **'New Group'**
  String get newGroup;

  /// No description provided for @settled.
  ///
  /// In en, this message translates to:
  /// **'Settled'**
  String get settled;

  /// No description provided for @youllReceiveAmount.
  ///
  /// In en, this message translates to:
  /// **'You’ll receive {amount}'**
  String youllReceiveAmount(double amount);

  /// No description provided for @youllPayAmount.
  ///
  /// In en, this message translates to:
  /// **'You’ll pay {amount}'**
  String youllPayAmount(double amount);

  /// No description provided for @groupDetails.
  ///
  /// In en, this message translates to:
  /// **'Group Details'**
  String get groupDetails;

  /// No description provided for @groupMembers.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, zero {No Group Member} other{{count} GROUP MEMBERS}}'**
  String groupMembers(int count);

  /// No description provided for @countMembers.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, zero {No Member} one {1 Member} other{{count} Members}}'**
  String countMembers(int count);

  /// No description provided for @paymentRequest.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, zero {PAYMENT REQUEST}  other{PAYMENT REQUEST ({count})}}'**
  String paymentRequest(int count);

  /// No description provided for @addMembers.
  ///
  /// In en, this message translates to:
  /// **'Add Members'**
  String get addMembers;

  /// No description provided for @leaveGroup.
  ///
  /// In en, this message translates to:
  /// **'Leave group'**
  String get leaveGroup;

  /// No description provided for @shareUsing.
  ///
  /// In en, this message translates to:
  /// **'Share using'**
  String get shareUsing;

  /// No description provided for @telegram.
  ///
  /// In en, this message translates to:
  /// **'Telegram'**
  String get telegram;

  /// No description provided for @whatsapp.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @sms.
  ///
  /// In en, this message translates to:
  /// **'SMS'**
  String get sms;

  /// No description provided for @joinMeEmailSubject.
  ///
  /// In en, this message translates to:
  /// **'Join me on Atoa Pay'**
  String get joinMeEmailSubject;

  /// No description provided for @joinAtoaWithSignUpLink.
  ///
  /// In en, this message translates to:
  /// **'Join {userName} and download the Atoa Pay app today! Sign up with this link'**
  String joinAtoaWithSignUpLink(String userName);

  /// No description provided for @yourFriend.
  ///
  /// In en, this message translates to:
  /// **'your friend'**
  String get yourFriend;

  /// No description provided for @closeSplitRequestConfirmationTitle.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to\nclose this split request?'**
  String closeSplitRequestConfirmationTitle(String amount);

  /// No description provided for @closeRequest.
  ///
  /// In en, this message translates to:
  /// **'Close Request'**
  String get closeRequest;

  /// No description provided for @closed.
  ///
  /// In en, this message translates to:
  /// **'Closed'**
  String get closed;

  /// No description provided for @youPaid.
  ///
  /// In en, this message translates to:
  /// **'You paid'**
  String get youPaid;

  /// No description provided for @receivedMembersCountText.
  ///
  /// In en, this message translates to:
  /// **'Received {totalPaidMembers} of {totalMembers}'**
  String receivedMembersCountText(int totalPaidMembers, int totalMembers);

  /// No description provided for @amountLeftText.
  ///
  /// In en, this message translates to:
  /// **'£{amount} left'**
  String amountLeftText(String amount);

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @splitReqEditTotalAmountLessThanPaidAmountErrorText.
  ///
  /// In en, this message translates to:
  /// **'Total Amount should be greater than or eqaual to the current total received amount'**
  String get splitReqEditTotalAmountLessThanPaidAmountErrorText;

  /// No description provided for @unpaid.
  ///
  /// In en, this message translates to:
  /// **'Unpaid'**
  String get unpaid;

  /// No description provided for @markedAsPaid.
  ///
  /// In en, this message translates to:
  /// **'Marked as paid'**
  String get markedAsPaid;

  /// No description provided for @markAsPaid.
  ///
  /// In en, this message translates to:
  /// **'Mark as paid'**
  String get markAsPaid;

  /// No description provided for @noOfPeoplePaidText.
  ///
  /// In en, this message translates to:
  /// **'{totalPaidMembers} of {totalMembers} people paid'**
  String noOfPeoplePaidText(int totalPaidMembers, int totalMembers);

  /// No description provided for @sendReminder.
  ///
  /// In en, this message translates to:
  /// **'Send Reminder'**
  String get sendReminder;

  /// No description provided for @splitGroupInfoDescText.
  ///
  /// In en, this message translates to:
  /// **'Split and keep track of your expenses here\nand remind your friends to pay on time. '**
  String get splitGroupInfoDescText;

  /// No description provided for @createdGroupAlongWithOtherText.
  ///
  /// In en, this message translates to:
  /// **'{ownerName} created this group with {memberLength} others'**
  String createdGroupAlongWithOtherText(String ownerName, int memberLength);

  /// No description provided for @memberCountText.
  ///
  /// In en, this message translates to:
  /// **'{memberCount} Members'**
  String memberCountText(int memberCount);

  /// No description provided for @updateRequest.
  ///
  /// In en, this message translates to:
  /// **'Update Request'**
  String get updateRequest;

  /// No description provided for @markAsPaidConfirmationDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Do you want to mark as paid? This action cannot be undone'**
  String get markAsPaidConfirmationDialogTitle;

  /// No description provided for @editGroupName.
  ///
  /// In en, this message translates to:
  /// **'Edit Group Name'**
  String get editGroupName;

  /// No description provided for @groupNameEmptyError.
  ///
  /// In en, this message translates to:
  /// **'Group name cannot be empty'**
  String get groupNameEmptyError;

  /// No description provided for @admin.
  ///
  /// In en, this message translates to:
  /// **'Admin'**
  String get admin;

  /// No description provided for @removeUserFromGroup.
  ///
  /// In en, this message translates to:
  /// **'Remove \"{userName}\" from the group'**
  String removeUserFromGroup(String userName);

  /// No description provided for @removeUserFromGroupDesc.
  ///
  /// In en, this message translates to:
  /// **'They won\'t be able to create new split requests but can participate in existing ones'**
  String removeUserFromGroupDesc(String userName);

  /// No description provided for @remove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get remove;

  /// No description provided for @member.
  ///
  /// In en, this message translates to:
  /// **'Member'**
  String get member;

  /// No description provided for @searchTransactions.
  ///
  /// In en, this message translates to:
  /// **'Search Transactions'**
  String get searchTransactions;

  /// No description provided for @selectTransaction.
  ///
  /// In en, this message translates to:
  /// **'Select Transaction'**
  String get selectTransaction;

  /// No description provided for @loadingRequest.
  ///
  /// In en, this message translates to:
  /// **'Loading Request'**
  String get loadingRequest;

  /// No description provided for @viewRequest.
  ///
  /// In en, this message translates to:
  /// **'View Request'**
  String get viewRequest;

  /// No description provided for @noLongerParticipant.
  ///
  /// In en, this message translates to:
  /// **'You are no longer a participant.'**
  String get noLongerParticipant;

  /// No description provided for @noLongerParticipantDesc.
  ///
  /// In en, this message translates to:
  /// **'You can’t create new split requests, but you are\nable to participate in existing split requests.'**
  String get noLongerParticipantDesc;

  /// No description provided for @leavingGroupTitle.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to leave?'**
  String get leavingGroupTitle;

  /// No description provided for @leavingGroupDesc.
  ///
  /// In en, this message translates to:
  /// **'This will not allow you to create new split requests, but you will be able to participate in existing split requests.'**
  String get leavingGroupDesc;

  /// No description provided for @yesSure.
  ///
  /// In en, this message translates to:
  /// **'Yes, sure'**
  String get yesSure;

  /// No description provided for @leftGroupSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'You have left the group successfully'**
  String get leftGroupSuccessfully;

  /// No description provided for @invitedToAtoa.
  ///
  /// In en, this message translates to:
  /// **'Invited to Atoa'**
  String get invitedToAtoa;

  /// No description provided for @duplicateMemberError.
  ///
  /// In en, this message translates to:
  /// **'Cannot add same member twice'**
  String get duplicateMemberError;

  /// No description provided for @splitReqMemberMinAmountErrorText.
  ///
  /// In en, this message translates to:
  /// **'Min Value :- £1'**
  String get splitReqMemberMinAmountErrorText;

  /// No description provided for @groupFetchError.
  ///
  /// In en, this message translates to:
  /// **'Failed to fetch group details'**
  String get groupFetchError;

  /// No description provided for @splitReqCantCloseErrorMsg.
  ///
  /// In en, this message translates to:
  /// **'This Split Request cannot be closed, as some payment is still in progress'**
  String get splitReqCantCloseErrorMsg;

  /// No description provided for @emptyGroupCTA.
  ///
  /// In en, this message translates to:
  /// **'Creating a new split request requires adding members to the group besides yourself'**
  String get emptyGroupCTA;

  /// No description provided for @taxCharge.
  ///
  /// In en, this message translates to:
  /// **'Tax Charge'**
  String get taxCharge;

  /// No description provided for @serviceCharge.
  ///
  /// In en, this message translates to:
  /// **'Service Charge'**
  String get serviceCharge;

  /// No description provided for @discount.
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get discount;

  /// No description provided for @vatCharge.
  ///
  /// In en, this message translates to:
  /// **'VAT Charge'**
  String get vatCharge;

  /// No description provided for @orderDetailsNotFound.
  ///
  /// In en, this message translates to:
  /// **'Order Details Not Found'**
  String get orderDetailsNotFound;

  /// No description provided for @orderDetailsNotFoundDescription.
  ///
  /// In en, this message translates to:
  /// **'We’re facing some difficulty fetching the details of your order. You can continue with the payment or ask for support from the staff if you’d like to confirm the details.'**
  String get orderDetailsNotFoundDescription;

  /// No description provided for @orderAlreadyPaid.
  ///
  /// In en, this message translates to:
  /// **'This Order has already been paid,\nThanks for using Atoa!'**
  String get orderAlreadyPaid;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @kycPendingTitle.
  ///
  /// In en, this message translates to:
  /// **'Verify Your Identity'**
  String get kycPendingTitle;

  /// No description provided for @kycPendingDesc.
  ///
  /// In en, this message translates to:
  /// **'To continue using Atoa without payment limits'**
  String get kycPendingDesc;

  /// No description provided for @kycSuccessTitle.
  ///
  /// In en, this message translates to:
  /// **'ID Verification Successful'**
  String get kycSuccessTitle;

  /// No description provided for @kycSuccessDesc.
  ///
  /// In en, this message translates to:
  /// **'You can now make as many payments as you need, without limits'**
  String get kycSuccessDesc;

  /// No description provided for @kycProcessingTitle.
  ///
  /// In en, this message translates to:
  /// **'ID Verification Processing'**
  String get kycProcessingTitle;

  /// No description provided for @kycProcessingDesc.
  ///
  /// In en, this message translates to:
  /// **'Please wait while we review your details'**
  String get kycProcessingDesc;

  /// No description provided for @kycFailedTitle.
  ///
  /// In en, this message translates to:
  /// **'ID Verification Failed'**
  String get kycFailedTitle;

  /// No description provided for @kycFailedDesc.
  ///
  /// In en, this message translates to:
  /// **'Incorrect document provided, please try again'**
  String get kycFailedDesc;

  /// No description provided for @paymentLimitUsed.
  ///
  /// In en, this message translates to:
  /// **'Payment limit used'**
  String get paymentLimitUsed;

  /// No description provided for @identityVerification.
  ///
  /// In en, this message translates to:
  /// **'ID Verification'**
  String get identityVerification;

  /// No description provided for @identityVerificationDesc.
  ///
  /// In en, this message translates to:
  /// **'Verifying your identity\nhelps us keep Atoa safe for everyone.'**
  String get identityVerificationDesc;

  /// No description provided for @verifyingYourDetails.
  ///
  /// In en, this message translates to:
  /// **'Verifying your Details'**
  String get verifyingYourDetails;

  /// No description provided for @uploadIdentityDocuments.
  ///
  /// In en, this message translates to:
  /// **'Upload Passport / UK Driving License / Biometric Residence Permit and Upload selfie'**
  String get uploadIdentityDocuments;

  /// No description provided for @kycDocumentsExplanation.
  ///
  /// In en, this message translates to:
  /// **'We need this information in order to protect merchants and consumers.'**
  String get kycDocumentsExplanation;

  /// No description provided for @startVerification.
  ///
  /// In en, this message translates to:
  /// **'Start Verification'**
  String get startVerification;

  /// No description provided for @proofOfIdentity.
  ///
  /// In en, this message translates to:
  /// **'Proof of Identity'**
  String get proofOfIdentity;

  /// No description provided for @proofOfIdentityDesc.
  ///
  /// In en, this message translates to:
  /// **'Upload a clear picture that includes your\nPhoto and Name on your ID'**
  String get proofOfIdentityDesc;

  /// No description provided for @verifyDetails.
  ///
  /// In en, this message translates to:
  /// **'Verify Details'**
  String get verifyDetails;

  /// No description provided for @verifyDetailsDesc.
  ///
  /// In en, this message translates to:
  /// **'Verify that the information in your documents matches the details displayed below'**
  String get verifyDetailsDesc;

  /// No description provided for @passportOrBiometricResidencePermit.
  ///
  /// In en, this message translates to:
  /// **'Passport'**
  String get passportOrBiometricResidencePermit;

  /// No description provided for @licenseFront.
  ///
  /// In en, this message translates to:
  /// **'Front'**
  String get licenseFront;

  /// No description provided for @licenseBack.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get licenseBack;

  /// No description provided for @aSelfie.
  ///
  /// In en, this message translates to:
  /// **'a Selfie'**
  String get aSelfie;

  /// No description provided for @ukDrivingLicense.
  ///
  /// In en, this message translates to:
  /// **'UK Driving License or\nBiometric Residence Permit'**
  String get ukDrivingLicense;

  /// No description provided for @uploadFailed.
  ///
  /// In en, this message translates to:
  /// **'Upload failed, please retry'**
  String get uploadFailed;

  /// No description provided for @loadingProgress.
  ///
  /// In en, this message translates to:
  /// **'{progress}% Uploading...'**
  String loadingProgress(int progress);

  /// No description provided for @upload.
  ///
  /// In en, this message translates to:
  /// **'Upload'**
  String get upload;

  /// No description provided for @uploaded.
  ///
  /// In en, this message translates to:
  /// **'Uploaded'**
  String get uploaded;

  /// No description provided for @clearSelfieDesc.
  ///
  /// In en, this message translates to:
  /// **'Please ensure your face is clearly visible in the photo, as it will be used for identification purposes.'**
  String get clearSelfieDesc;

  /// No description provided for @proceed.
  ///
  /// In en, this message translates to:
  /// **'Proceed'**
  String get proceed;

  /// No description provided for @retakeSelfie.
  ///
  /// In en, this message translates to:
  /// **'Retake Selfie'**
  String get retakeSelfie;

  /// No description provided for @addressLine1.
  ///
  /// In en, this message translates to:
  /// **'Address Line 1'**
  String get addressLine1;

  /// No description provided for @addressLine1InputHint.
  ///
  /// In en, this message translates to:
  /// **'Street / Building'**
  String get addressLine1InputHint;

  /// No description provided for @addressLine2.
  ///
  /// In en, this message translates to:
  /// **'Address Line 2'**
  String get addressLine2;

  /// No description provided for @addressLine2InputHint.
  ///
  /// In en, this message translates to:
  /// **'Unit / Flat Number'**
  String get addressLine2InputHint;

  /// No description provided for @cityTown.
  ///
  /// In en, this message translates to:
  /// **'City / Town'**
  String get cityTown;

  /// No description provided for @postcode.
  ///
  /// In en, this message translates to:
  /// **'Post Code'**
  String get postcode;

  /// No description provided for @postcodeInputHint.
  ///
  /// In en, this message translates to:
  /// **'555-555'**
  String get postcodeInputHint;

  /// No description provided for @submitForVerification.
  ///
  /// In en, this message translates to:
  /// **'Submit for Verification'**
  String get submitForVerification;

  /// No description provided for @chooseFromFiles.
  ///
  /// In en, this message translates to:
  /// **'Choose from Files'**
  String get chooseFromFiles;

  /// No description provided for @kycSubmittedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Your KYC details have been submitted successfully'**
  String get kycSubmittedSuccess;

  /// No description provided for @paymentStarted.
  ///
  /// In en, this message translates to:
  /// **'Payment Started'**
  String get paymentStarted;

  /// No description provided for @pageNotFound.
  ///
  /// In en, this message translates to:
  /// **'Page Not Found'**
  String get pageNotFound;

  /// No description provided for @pageNotFoundDescription.
  ///
  /// In en, this message translates to:
  /// **'Oops! The page you’re looking for was moved, removed or might have never existed'**
  String get pageNotFoundDescription;

  /// No description provided for @ageCTA.
  ///
  /// In en, this message translates to:
  /// **'You need to be 18+ years old to use Atoa'**
  String get ageCTA;

  /// No description provided for @here.
  ///
  /// In en, this message translates to:
  /// **'here'**
  String get here;

  /// No description provided for @referBusinessPart1.
  ///
  /// In en, this message translates to:
  /// **'Time to level up? Refer business owners that you know to '**
  String get referBusinessPart1;

  /// No description provided for @atoaBusiness.
  ///
  /// In en, this message translates to:
  /// **'Atoa Business'**
  String get atoaBusiness;

  /// No description provided for @referBusinessPart2.
  ///
  /// In en, this message translates to:
  /// **'. You\'ll earn {cashback} when they take {transactOver} in payments.'**
  String referBusinessPart2(String cashback, String transactOver);

  /// No description provided for @removeFromGroup.
  ///
  /// In en, this message translates to:
  /// **'Remove from Group'**
  String get removeFromGroup;

  /// No description provided for @editID.
  ///
  /// In en, this message translates to:
  /// **'Edit ID'**
  String get editID;

  /// No description provided for @confirmHashIdTitle.
  ///
  /// In en, this message translates to:
  /// **'Please confirm your\nAtoa ID'**
  String get confirmHashIdTitle;

  /// No description provided for @confirmHashIdDesc.
  ///
  /// In en, this message translates to:
  /// **'This ID will be permanent and\ncannot be changed later'**
  String get confirmHashIdDesc;

  /// No description provided for @enterYourMobile.
  ///
  /// In en, this message translates to:
  /// **'Enter your mobile number'**
  String get enterYourMobile;

  /// No description provided for @termsOfService.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get termsOfService;

  /// No description provided for @betterLuckNextTime.
  ///
  /// In en, this message translates to:
  /// **'Better luck\nnext time'**
  String get betterLuckNextTime;

  /// No description provided for @totalCashbackReceived.
  ///
  /// In en, this message translates to:
  /// **'Total Cashback Received'**
  String get totalCashbackReceived;

  /// No description provided for @bySigningUp.
  ///
  /// In en, this message translates to:
  /// **'By Continuing you agree to the'**
  String get bySigningUp;

  /// No description provided for @contactSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search contacts to invite'**
  String get contactSearchHint;

  /// No description provided for @inviteFriends.
  ///
  /// In en, this message translates to:
  /// **'Invite Friends'**
  String get inviteFriends;

  /// No description provided for @contactsConsentText.
  ///
  /// In en, this message translates to:
  /// **'We only store details like Name and Number of contacts for letting you do Instant Bank payments to your friends and also used for crediting referral bonuses. We do not share your contacts with anyone outside of Atoa and its contracted service providers. You can read more on our'**
  String get contactsConsentText;

  /// No description provided for @fetchContactFailure.
  ///
  /// In en, this message translates to:
  /// **'Unable to fetch contacts'**
  String get fetchContactFailure;

  /// No description provided for @noContactsFound.
  ///
  /// In en, this message translates to:
  /// **'No Contacts Found'**
  String get noContactsFound;

  /// No description provided for @rewardText.
  ///
  /// In en, this message translates to:
  /// **'Get {amount}'**
  String rewardText(double amount);

  /// No description provided for @winText.
  ///
  /// In en, this message translates to:
  /// **'Win {amount}'**
  String winText(int amount);

  /// No description provided for @win.
  ///
  /// In en, this message translates to:
  /// **'Win'**
  String get win;

  /// No description provided for @winUpto.
  ///
  /// In en, this message translates to:
  /// **'Win upto {amount}'**
  String winUpto(double amount);

  /// No description provided for @freePayments.
  ///
  /// In en, this message translates to:
  /// **'Atoa has a free monthly\npayment limit'**
  String get freePayments;

  /// No description provided for @freePaymentsDesc.
  ///
  /// In en, this message translates to:
  /// **'Ditch your wallet and pay for free at any store using Atoa. You can use it unlimited times, but there\'s a limit to the number of free payments you can make to friends. Don\'t worry, it refreshes each month!'**
  String get freePaymentsDesc;

  /// No description provided for @freePaymentsReachedMsg.
  ///
  /// In en, this message translates to:
  /// **'You’ve reached your\nfree monthly payment\nlimit'**
  String get freePaymentsReachedMsg;

  /// No description provided for @freePaymentsReachedDesc.
  ///
  /// In en, this message translates to:
  /// **'Ditch your wallet and pay for free at any store using Atoa. You can use it unlimited times, but there\'s a limit to the number of free payments you can make to friends. Don\'t worry, it refreshes each month!'**
  String get freePaymentsReachedDesc;

  /// No description provided for @paymentLimitReachedErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'User has reached\ntheir payment limit'**
  String get paymentLimitReachedErrorTitle;

  /// No description provided for @paymentLimitReachedErrorDesc.
  ///
  /// In en, this message translates to:
  /// **'This user has exceeded the monthly payment limit for personal use. Ask them to use the Atoa business app to accept unlimited payments.'**
  String get paymentLimitReachedErrorDesc;

  /// No description provided for @startPayment.
  ///
  /// In en, this message translates to:
  /// **'Start Payment'**
  String get startPayment;

  /// No description provided for @claimReward.
  ///
  /// In en, this message translates to:
  /// **'Claim Reward'**
  String get claimReward;

  /// No description provided for @hiUser.
  ///
  /// In en, this message translates to:
  /// **'Hi, {firstName}!'**
  String hiUser(String firstName);

  /// No description provided for @payments.
  ///
  /// In en, this message translates to:
  /// **'Payments'**
  String get payments;

  /// No description provided for @wonText.
  ///
  /// In en, this message translates to:
  /// **'Won {amount}'**
  String wonText(double amount);

  /// No description provided for @vatIncluded.
  ///
  /// In en, this message translates to:
  /// **'VAT Included'**
  String get vatIncluded;

  /// No description provided for @verifyingTheCode.
  ///
  /// In en, this message translates to:
  /// **'Verifying the code...'**
  String get verifyingTheCode;

  /// No description provided for @gifsHint.
  ///
  /// In en, this message translates to:
  /// **'Search powered by Tenor GiFs'**
  String get gifsHint;

  /// No description provided for @noBankAccountErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Oops, the receiver’s\naccount is not linked'**
  String get noBankAccountErrorTitle;

  /// No description provided for @noBankAccountErrorDesc.
  ///
  /// In en, this message translates to:
  /// **'To receive funds, the receiver needs to connect their bank account. Please ask them to link their bank account.'**
  String get noBankAccountErrorDesc;

  /// No description provided for @transactionLimitErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'This user has reached\ntheir payment limit'**
  String get transactionLimitErrorTitle;

  /// No description provided for @transactionLimitErrorDesc.
  ///
  /// In en, this message translates to:
  /// **'Ask them to verify their ID on Atoa to accept payments from anyone.'**
  String get transactionLimitErrorDesc;

  /// No description provided for @merchantSuspendedErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Oops, unable to proceed\nwith payment'**
  String get merchantSuspendedErrorTitle;

  /// No description provided for @merchantSuspendedErrorDesc.
  ///
  /// In en, this message translates to:
  /// **'The business you\'re trying to pay has been suspended for unusual payment behaviour.'**
  String get merchantSuspendedErrorDesc;

  /// No description provided for @trustBusinessText.
  ///
  /// In en, this message translates to:
  /// **'I trust this Business and accept'**
  String get trustBusinessText;

  /// No description provided for @atoaTermsAndService.
  ///
  /// In en, this message translates to:
  /// **'Atoa\'s Terms of service.'**
  String get atoaTermsAndService;

  /// No description provided for @selfTransferErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'You can’t pay yourself!'**
  String get selfTransferErrorTitle;

  /// No description provided for @selfTransferErrorDesc.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t process your transaction as you\'re trying to send money to the same bank account. Please double-check the account details and try again.'**
  String get selfTransferErrorDesc;

  /// No description provided for @potentialConsumerInviteTitle.
  ///
  /// In en, this message translates to:
  /// **'Your friend needs to join\nAtoa to receive payments.'**
  String get potentialConsumerInviteTitle;

  /// No description provided for @potentialConsumerInviteDesc.
  ///
  /// In en, this message translates to:
  /// **'When they complete their first payment,\nyou\'ll both get {amount} cashback.'**
  String potentialConsumerInviteDesc(double amount);

  /// No description provided for @inviteAndWin.
  ///
  /// In en, this message translates to:
  /// **'Invite and Win {amount}'**
  String inviteAndWin(double amount);

  /// No description provided for @successfullyInvitedTitle.
  ///
  /// In en, this message translates to:
  /// **'Successfully invited'**
  String get successfullyInvitedTitle;

  /// No description provided for @successfullyInvitedDesc.
  ///
  /// In en, this message translates to:
  /// **'Yay! You are one step closer to completing your payment and receiving your rewards.'**
  String get successfullyInvitedDesc;

  /// No description provided for @unableToProceedPayment.
  ///
  /// In en, this message translates to:
  /// **'Oops, unable to proceed \n with the payment...'**
  String get unableToProceedPayment;

  /// No description provided for @inviteBusinesses.
  ///
  /// In en, this message translates to:
  /// **'Invite Businesses'**
  String get inviteBusinesses;

  /// No description provided for @updatedTermsTitle.
  ///
  /// In en, this message translates to:
  /// **'Some Legal Bits...'**
  String get updatedTermsTitle;

  /// No description provided for @updatedTermsDesc.
  ///
  /// In en, this message translates to:
  /// **'We occasionally have to update our Terms and Conditions. Please read and accept our updated Terms of Use, Terms of Service, and Privacy Policy. You can also access at any time via the Legal section of this App.'**
  String get updatedTermsDesc;

  /// No description provided for @termsOfUse.
  ///
  /// In en, this message translates to:
  /// **'Terms of Use'**
  String get termsOfUse;

  /// No description provided for @iHaveReadTerms.
  ///
  /// In en, this message translates to:
  /// **'I’ve read and agree to our '**
  String get iHaveReadTerms;

  /// No description provided for @accept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get accept;

  /// No description provided for @platformTermsOfUse.
  ///
  /// In en, this message translates to:
  /// **'Platform Terms of Use'**
  String get platformTermsOfUse;

  /// No description provided for @completeToUnlock.
  ///
  /// In en, this message translates to:
  /// **'Complete more payments to unlock'**
  String get completeToUnlock;

  /// No description provided for @hadRequested.
  ///
  /// In en, this message translates to:
  /// **'had requested {amount}'**
  String hadRequested(double amount);

  /// No description provided for @getAmountEach.
  ///
  /// In en, this message translates to:
  /// **'Get {amount} Each'**
  String getAmountEach(double amount);

  /// No description provided for @good.
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get good;

  /// No description provided for @great.
  ///
  /// In en, this message translates to:
  /// **'Great'**
  String get great;

  /// No description provided for @amazing.
  ///
  /// In en, this message translates to:
  /// **'Amazing'**
  String get amazing;

  /// No description provided for @custom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get custom;

  /// No description provided for @newRequest.
  ///
  /// In en, this message translates to:
  /// **'New Request'**
  String get newRequest;

  /// No description provided for @newRequestDescription.
  ///
  /// In en, this message translates to:
  /// **'Invite friends and send funds to their bank'**
  String get newRequestDescription;

  /// No description provided for @searchBarHintText.
  ///
  /// In en, this message translates to:
  /// **'Search by contact or #ID'**
  String get searchBarHintText;

  /// No description provided for @exploreChallengesCapital.
  ///
  /// In en, this message translates to:
  /// **'EXPLORE CHALLENGES'**
  String get exploreChallengesCapital;

  /// No description provided for @exploreAtoaCapital.
  ///
  /// In en, this message translates to:
  /// **'EXPLORE ATOA'**
  String get exploreAtoaCapital;

  /// No description provided for @appUnderMaintenance.
  ///
  /// In en, this message translates to:
  /// **'App Under Maintenance'**
  String get appUnderMaintenance;

  /// No description provided for @appUnderMaintenanceDesc.
  ///
  /// In en, this message translates to:
  /// **'We\'re sprucing things up to bring you a smoother experience. We\'ll be back before you know it.'**
  String get appUnderMaintenanceDesc;

  /// No description provided for @appUnderMaintenanceThankyou.
  ///
  /// In en, this message translates to:
  /// **'Thank you for your understanding.'**
  String get appUnderMaintenanceThankyou;

  /// No description provided for @somethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Oops! Something Went Wrong'**
  String get somethingWentWrong;

  /// No description provided for @lowConnectivityError.
  ///
  /// In en, this message translates to:
  /// **'We\'re having trouble connecting to the server at the moment. Please ensure you have a stable internet connection and try reopening the app.'**
  String get lowConnectivityError;

  /// No description provided for @finish.
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get finish;

  /// No description provided for @homePageCoachMark1Desc.
  ///
  /// In en, this message translates to:
  /// **'No more IOUs! Send instant payments to friends and family across any UK bank account'**
  String get homePageCoachMark1Desc;

  /// No description provided for @homePageCoachMark2Desc.
  ///
  /// In en, this message translates to:
  /// **'Scan Atoa QR codes to pay in-store and help local businesses save on card fees. You can win rewards too!'**
  String get homePageCoachMark2Desc;

  /// No description provided for @homePageCoachMark3Desc.
  ///
  /// In en, this message translates to:
  /// **'Send money to family and friends for free across any UK Bank'**
  String get homePageCoachMark3Desc;

  /// No description provided for @homePageCoachMark4Desc.
  ///
  /// In en, this message translates to:
  /// **'No bank details, no problem. Split bills with friends and family in seconds...'**
  String get homePageCoachMark4Desc;

  /// No description provided for @homePageCoachMark5Desc.
  ///
  /// In en, this message translates to:
  /// **'Atoa Pay rewards you for just using it! New challenges will appear here, so keep checking back'**
  String get homePageCoachMark5Desc;

  /// No description provided for @qrCodePageCoachMark1Desc.
  ///
  /// In en, this message translates to:
  /// **'Friends can use this unique #ID to search for you on Atoa'**
  String get qrCodePageCoachMark1Desc;

  /// No description provided for @qrCodePageCoachMark2Desc.
  ///
  /// In en, this message translates to:
  /// **'Flash this QR code at anyone to get paid instantly... it\'s that easy! '**
  String get qrCodePageCoachMark2Desc;

  /// No description provided for @splitBillsCoachMark1Title.
  ///
  /// In en, this message translates to:
  /// **'Split Bill Tracker'**
  String get splitBillsCoachMark1Title;

  /// No description provided for @splitBillsCoachMark1Desc.
  ///
  /// In en, this message translates to:
  /// **'Keep tabs on amounts due in and out'**
  String get splitBillsCoachMark1Desc;

  /// No description provided for @splitBillsCoachMark2Title.
  ///
  /// In en, this message translates to:
  /// **'Your Split Groups'**
  String get splitBillsCoachMark2Title;

  /// No description provided for @splitBillsCoachMark2Desc.
  ///
  /// In en, this message translates to:
  /// **'Stay on top of your group expenses - check and edit the summary or start a new bill '**
  String get splitBillsCoachMark2Desc;

  /// No description provided for @shareMyQrDesc.
  ///
  /// In en, this message translates to:
  /// **'Please scan this QR code (or follow the link) to pay \"{name}\" instantly using Atoa Pay!\n{link}'**
  String shareMyQrDesc(String name, String link);

  /// No description provided for @bankSliderTitle.
  ///
  /// In en, this message translates to:
  /// **'COMPATIBLE WITH ALL MAJOR UK BANKING APPS'**
  String get bankSliderTitle;

  /// No description provided for @permissionRequired.
  ///
  /// In en, this message translates to:
  /// **'Permission Required'**
  String get permissionRequired;

  /// No description provided for @permissionRequiredDesc.
  ///
  /// In en, this message translates to:
  /// **'To send invites, we need permission\nto access your contacts'**
  String get permissionRequiredDesc;

  /// No description provided for @howWeCollectData.
  ///
  /// In en, this message translates to:
  /// **'How we collect data'**
  String get howWeCollectData;

  /// No description provided for @howWeCollectDataTitle.
  ///
  /// In en, this message translates to:
  /// **'Your data is safe with us'**
  String get howWeCollectDataTitle;

  /// No description provided for @business.
  ///
  /// In en, this message translates to:
  /// **'Business'**
  String get business;

  /// No description provided for @winCashbackText.
  ///
  /// In en, this message translates to:
  /// **'Win {amount} Cashback'**
  String winCashbackText(int amount);

  /// No description provided for @paymentDetails.
  ///
  /// In en, this message translates to:
  /// **'Payment Details'**
  String get paymentDetails;

  /// No description provided for @rewardsCollected.
  ///
  /// In en, this message translates to:
  /// **'REWARDS COLLECTED'**
  String get rewardsCollected;

  /// No description provided for @atoaLogoDesc.
  ///
  /// In en, this message translates to:
  /// **'Can’t pay \nfairer than that™'**
  String get atoaLogoDesc;

  /// No description provided for @saveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get saveChanges;

  /// No description provided for @viewLicenses.
  ///
  /// In en, this message translates to:
  /// **'View Licenses'**
  String get viewLicenses;

  /// No description provided for @payInStore.
  ///
  /// In en, this message translates to:
  /// **'Pay-in-store'**
  String get payInStore;

  /// No description provided for @sendReferralReminderDesc.
  ///
  /// In en, this message translates to:
  /// **'Send your friends a quick\nnudge to download Atoa'**
  String get sendReferralReminderDesc;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @updateAvailable.
  ///
  /// In en, this message translates to:
  /// **'Update Available'**
  String get updateAvailable;

  /// No description provided for @later.
  ///
  /// In en, this message translates to:
  /// **'Later'**
  String get later;

  /// No description provided for @updateNow.
  ///
  /// In en, this message translates to:
  /// **'Update Now'**
  String get updateNow;

  /// No description provided for @cannotSeeReferral.
  ///
  /// In en, this message translates to:
  /// **'Can\'t see your referral?'**
  String get cannotSeeReferral;

  /// No description provided for @noPayments.
  ///
  /// In en, this message translates to:
  /// **'No payments yet. Time for lift off?'**
  String get noPayments;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @systemPrefs.
  ///
  /// In en, this message translates to:
  /// **'Use system preferences'**
  String get systemPrefs;

  /// No description provided for @light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light;

  /// No description provided for @dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// No description provided for @galleryPermission.
  ///
  /// In en, this message translates to:
  /// **'Please grant Atoa permission to access your picture gallery. This can be found in settings.'**
  String get galleryPermission;

  /// No description provided for @cameraPermission.
  ///
  /// In en, this message translates to:
  /// **'Please grant Atoa permission to access your camera. This can be found in settings.'**
  String get cameraPermission;

  /// No description provided for @documentsPermission.
  ///
  /// In en, this message translates to:
  /// **'Please grant Atoa permission to access your documents. This can be found in settings.'**
  String get documentsPermission;

  /// No description provided for @invalidQR.
  ///
  /// In en, this message translates to:
  /// **'This QR is invalid now'**
  String get invalidQR;

  /// No description provided for @notAtoaQR.
  ///
  /// In en, this message translates to:
  /// **'This QR is not a Atoa Supported QR.'**
  String get notAtoaQR;

  /// No description provided for @noQrCodeFound.
  ///
  /// In en, this message translates to:
  /// **'No QR code found in image'**
  String get noQrCodeFound;

  /// No description provided for @alreadySelected.
  ///
  /// In en, this message translates to:
  /// **'Already Selected'**
  String get alreadySelected;

  /// No description provided for @bankIsDown.
  ///
  /// In en, this message translates to:
  /// **'This bank is down at this moment, please try with some different account or try again later'**
  String get bankIsDown;

  /// No description provided for @select2Person.
  ///
  /// In en, this message translates to:
  /// **'Select atleast 2 person to create split request'**
  String get select2Person;

  /// No description provided for @emptyJoinedReferral.
  ///
  /// In en, this message translates to:
  /// **'Make sure your friends join Atoa and make {amount}+ in payments for you to be rewarded '**
  String emptyJoinedReferral(double amount);

  /// No description provided for @notificationCard.
  ///
  /// In en, this message translates to:
  /// **'Notification Card'**
  String get notificationCard;

  /// No description provided for @userProfileImage.
  ///
  /// In en, this message translates to:
  /// **'User Profile Image'**
  String get userProfileImage;

  /// No description provided for @payAndRequestContactsSearchBar.
  ///
  /// In en, this message translates to:
  /// **'Pay and Request Contact\'s Search Bar'**
  String get payAndRequestContactsSearchBar;

  /// No description provided for @reSyncAllContacts.
  ///
  /// In en, this message translates to:
  /// **'ReSync All Contacts'**
  String get reSyncAllContacts;

  /// No description provided for @countryCodePicker.
  ///
  /// In en, this message translates to:
  /// **'Country code Picker'**
  String get countryCodePicker;

  /// No description provided for @closeFreePaymentInfoDialogIcon.
  ///
  /// In en, this message translates to:
  /// **'Close Free Payment Info Dialog Icon'**
  String get closeFreePaymentInfoDialogIcon;

  /// No description provided for @payInStoreButton.
  ///
  /// In en, this message translates to:
  /// **'Pay In Store Button'**
  String get payInStoreButton;

  /// No description provided for @referYourFriendsButton.
  ///
  /// In en, this message translates to:
  /// **'Refer Your Friends Button'**
  String get referYourFriendsButton;

  /// No description provided for @checkbox.
  ///
  /// In en, this message translates to:
  /// **'Checkbox'**
  String get checkbox;

  /// No description provided for @contactTile.
  ///
  /// In en, this message translates to:
  /// **'Contact Tile'**
  String get contactTile;

  /// No description provided for @closeIcon.
  ///
  /// In en, this message translates to:
  /// **'Close Icon'**
  String get closeIcon;

  /// No description provided for @optionTile.
  ///
  /// In en, this message translates to:
  /// **'Option Tile'**
  String get optionTile;

  /// No description provided for @shareCard.
  ///
  /// In en, this message translates to:
  /// **'Share Card'**
  String get shareCard;

  /// No description provided for @goBackToPreviousCoachMark.
  ///
  /// In en, this message translates to:
  /// **'Go back to previous coach mark'**
  String get goBackToPreviousCoachMark;

  /// No description provided for @appLockEnableSwitch.
  ///
  /// In en, this message translates to:
  /// **'App Lock Enable Switch'**
  String get appLockEnableSwitch;

  /// No description provided for @groupNameEditIcon.
  ///
  /// In en, this message translates to:
  /// **'Group Name Edit Icon'**
  String get groupNameEditIcon;

  /// No description provided for @bankAccountTile.
  ///
  /// In en, this message translates to:
  /// **'Bank Account Tile'**
  String get bankAccountTile;

  /// No description provided for @searchBar.
  ///
  /// In en, this message translates to:
  /// **'Search Bar'**
  String get searchBar;

  /// No description provided for @transactionTab.
  ///
  /// In en, this message translates to:
  /// **'Transactions Tab'**
  String get transactionTab;

  /// No description provided for @shareIcon.
  ///
  /// In en, this message translates to:
  /// **'Share Icon'**
  String get shareIcon;

  /// No description provided for @refreshIcon.
  ///
  /// In en, this message translates to:
  /// **'Refresh Icon'**
  String get refreshIcon;

  /// No description provided for @transactionDetails.
  ///
  /// In en, this message translates to:
  /// **'Transaction Details'**
  String get transactionDetails;

  /// No description provided for @transactionRewardBanner.
  ///
  /// In en, this message translates to:
  /// **'Transaction Reward Banner'**
  String get transactionRewardBanner;

  /// No description provided for @senderReceiverProfilePicture.
  ///
  /// In en, this message translates to:
  /// **'Sender/Receiver Profile Picture'**
  String get senderReceiverProfilePicture;

  /// No description provided for @senderReceiverName.
  ///
  /// In en, this message translates to:
  /// **'Sender/Receiver Name'**
  String get senderReceiverName;

  /// No description provided for @gifs.
  ///
  /// In en, this message translates to:
  /// **'Gifs'**
  String get gifs;

  /// No description provided for @bankCard.
  ///
  /// In en, this message translates to:
  /// **'Bank Card'**
  String get bankCard;

  /// No description provided for @splitGroupMenu.
  ///
  /// In en, this message translates to:
  /// **'Split Group Menu'**
  String get splitGroupMenu;

  /// No description provided for @cashbackClaimableCard.
  ///
  /// In en, this message translates to:
  /// **'Cashback Claimable Card'**
  String get cashbackClaimableCard;

  /// No description provided for @cashbackClaimedCard.
  ///
  /// In en, this message translates to:
  /// **'Cashback Claimed Card'**
  String get cashbackClaimedCard;

  /// No description provided for @cashbackInProgressCard.
  ///
  /// In en, this message translates to:
  /// **'Cashback In-Progress Card'**
  String get cashbackInProgressCard;

  /// No description provided for @documentType.
  ///
  /// In en, this message translates to:
  /// **'Document Type'**
  String get documentType;

  /// No description provided for @kycSuccessCard.
  ///
  /// In en, this message translates to:
  /// **'KYC Success Card'**
  String get kycSuccessCard;

  /// No description provided for @kycFailedCard.
  ///
  /// In en, this message translates to:
  /// **'KYC Failed Card'**
  String get kycFailedCard;

  /// No description provided for @kycPendingCard.
  ///
  /// In en, this message translates to:
  /// **'KYC Pending Card'**
  String get kycPendingCard;

  /// No description provided for @userInforamtion.
  ///
  /// In en, this message translates to:
  /// **'User Information'**
  String get userInforamtion;

  /// No description provided for @uiBackButton.
  ///
  /// In en, this message translates to:
  /// **'UI Back Button'**
  String get uiBackButton;

  /// No description provided for @acceptTermsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Accept Terms And Conditions'**
  String get acceptTermsAndConditions;

  /// No description provided for @addNotesField.
  ///
  /// In en, this message translates to:
  /// **'Add Notes Field'**
  String get addNotesField;

  /// No description provided for @editIcon.
  ///
  /// In en, this message translates to:
  /// **'Edit Icon'**
  String get editIcon;

  /// No description provided for @addCustomTipOption.
  ///
  /// In en, this message translates to:
  /// **'Add Custom Tip Option'**
  String get addCustomTipOption;

  /// No description provided for @tipsCard.
  ///
  /// In en, this message translates to:
  /// **'Tips Card'**
  String get tipsCard;

  /// No description provided for @paymentMessageCard.
  ///
  /// In en, this message translates to:
  /// **'Payment Message Card'**
  String get paymentMessageCard;

  /// No description provided for @scanQrFromGallery.
  ///
  /// In en, this message translates to:
  /// **'Scan QR From Gallery'**
  String get scanQrFromGallery;

  /// No description provided for @referralInformationCard.
  ///
  /// In en, this message translates to:
  /// **'Referral Information Card'**
  String get referralInformationCard;

  /// No description provided for @referralContactTile.
  ///
  /// In en, this message translates to:
  /// **'Referral Contact Tile'**
  String get referralContactTile;

  /// No description provided for @selectReferralContact.
  ///
  /// In en, this message translates to:
  /// **'Select Referral Contact'**
  String get selectReferralContact;

  /// No description provided for @scratchCard.
  ///
  /// In en, this message translates to:
  /// **'Scratch Card'**
  String get scratchCard;

  /// No description provided for @bankAccountDetails.
  ///
  /// In en, this message translates to:
  /// **'Bank Account Details'**
  String get bankAccountDetails;

  /// No description provided for @splitGroup.
  ///
  /// In en, this message translates to:
  /// **'Split Group'**
  String get splitGroup;

  /// No description provided for @enterGroupNameField.
  ///
  /// In en, this message translates to:
  /// **'Enter Split Group Name Field'**
  String get enterGroupNameField;

  /// No description provided for @splitEquallySwitch.
  ///
  /// In en, this message translates to:
  /// **'Split Equally Switch'**
  String get splitEquallySwitch;

  /// No description provided for @splitGroupActionMenu.
  ///
  /// In en, this message translates to:
  /// **'Split Group Action Menu'**
  String get splitGroupActionMenu;

  /// No description provided for @clearSelectedGif.
  ///
  /// In en, this message translates to:
  /// **'Clear Selected Gif'**
  String get clearSelectedGif;

  /// No description provided for @enableOrDisableTorch.
  ///
  /// In en, this message translates to:
  /// **'Enable or Disable Torch'**
  String get enableOrDisableTorch;

  /// No description provided for @selectGif.
  ///
  /// In en, this message translates to:
  /// **'Select Gifs'**
  String get selectGif;

  /// No description provided for @findMoreGifs.
  ///
  /// In en, this message translates to:
  /// **'Find More Gifs'**
  String get findMoreGifs;

  /// No description provided for @clearSearchFieldIcon.
  ///
  /// In en, this message translates to:
  /// **'Clear Search Field Icon'**
  String get clearSearchFieldIcon;

  /// No description provided for @splitGroupProfilePhoto.
  ///
  /// In en, this message translates to:
  /// **'Split Group Profile Photo'**
  String get splitGroupProfilePhoto;

  /// No description provided for @editOrAddGroupPhotoIcon.
  ///
  /// In en, this message translates to:
  /// **'Edit Or Add Group Photo Icon'**
  String get editOrAddGroupPhotoIcon;

  /// No description provided for @splitRequestCard.
  ///
  /// In en, this message translates to:
  /// **'Split Request Card'**
  String get splitRequestCard;

  /// No description provided for @openSplitRequestIcon.
  ///
  /// In en, this message translates to:
  /// **'Open Split Request Icon'**
  String get openSplitRequestIcon;

  /// No description provided for @splitRequestSenderCard.
  ///
  /// In en, this message translates to:
  /// **'Split Request Sender Card'**
  String get splitRequestSenderCard;

  /// No description provided for @splitRequestMemberEdit.
  ///
  /// In en, this message translates to:
  /// **'Split Request Member Edit Tile'**
  String get splitRequestMemberEdit;

  /// No description provided for @selectSplitRequestMember.
  ///
  /// In en, this message translates to:
  /// **'Select Split Request Member'**
  String get selectSplitRequestMember;

  /// No description provided for @closeKeyboard.
  ///
  /// In en, this message translates to:
  /// **'Close Keyboard'**
  String get closeKeyboard;

  /// No description provided for @enterGroupName.
  ///
  /// In en, this message translates to:
  /// **'Enter Group Name'**
  String get enterGroupName;

  /// No description provided for @enterSplitAmount.
  ///
  /// In en, this message translates to:
  /// **'Enter Split Amount'**
  String get enterSplitAmount;

  /// No description provided for @editSplitAmount.
  ///
  /// In en, this message translates to:
  /// **'Edit Split Amount'**
  String get editSplitAmount;

  /// No description provided for @enterYourEmailAddress.
  ///
  /// In en, this message translates to:
  /// **'Enter Yuor Email Address'**
  String get enterYourEmailAddress;

  /// No description provided for @enterUniqueHashId.
  ///
  /// In en, this message translates to:
  /// **'Enter Unique Hash ID'**
  String get enterUniqueHashId;

  /// No description provided for @hashId.
  ///
  /// In en, this message translates to:
  /// **'Hash Id'**
  String get hashId;

  /// No description provided for @selectYourDateOfBirth.
  ///
  /// In en, this message translates to:
  /// **'Select Your Date of Birth'**
  String get selectYourDateOfBirth;

  /// No description provided for @enterYourCity.
  ///
  /// In en, this message translates to:
  /// **'Enter Your City/Town'**
  String get enterYourCity;

  /// No description provided for @enterAddressLine1.
  ///
  /// In en, this message translates to:
  /// **'Enter Address Line 1'**
  String get enterAddressLine1;

  /// No description provided for @enterTotalAmountForPayment.
  ///
  /// In en, this message translates to:
  /// **'Enter Total Amount For Payment'**
  String get enterTotalAmountForPayment;

  /// No description provided for @enterTipAmount.
  ///
  /// In en, this message translates to:
  /// **'Enter Tip Amount'**
  String get enterTipAmount;

  /// No description provided for @copiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get copiedToClipboard;

  /// No description provided for @suggestedGifTopics.
  ///
  /// In en, this message translates to:
  /// **'Suggested Gif Topics'**
  String get suggestedGifTopics;

  /// No description provided for @unselectTipIcon.
  ///
  /// In en, this message translates to:
  /// **'Unselect Tip Icon'**
  String get unselectTipIcon;

  /// No description provided for @referralTabBar.
  ///
  /// In en, this message translates to:
  /// **'Referral Tab Bars'**
  String get referralTabBar;

  /// No description provided for @appThemeToggle.
  ///
  /// In en, this message translates to:
  /// **'App Theme Toggle'**
  String get appThemeToggle;

  /// No description provided for @moreDetailsIcon.
  ///
  /// In en, this message translates to:
  /// **'More Details Icon'**
  String get moreDetailsIcon;

  /// No description provided for @copyCodeIcon.
  ///
  /// In en, this message translates to:
  /// **'Copy Referral Code Icon'**
  String get copyCodeIcon;

  /// No description provided for @inviteFriendDesc.
  ///
  /// In en, this message translates to:
  /// **'To send invites, we need permission\nto access your contacts'**
  String get inviteFriendDesc;

  /// No description provided for @inviteFriendConsent.
  ///
  /// In en, this message translates to:
  /// **'When you invite a contact, we only store their name and number so you can track the referral. We never share your contacts outside of Atoa. Read more in our '**
  String get inviteFriendConsent;

  /// No description provided for @yourInvites.
  ///
  /// In en, this message translates to:
  /// **'Your Invites'**
  String get yourInvites;

  /// No description provided for @joined.
  ///
  /// In en, this message translates to:
  /// **'Joined'**
  String get joined;

  /// No description provided for @referral.
  ///
  /// In en, this message translates to:
  /// **'referral'**
  String get referral;

  /// No description provided for @noPendingReferralMessage.
  ///
  /// In en, this message translates to:
  /// **'You\'re unstoppable! There\'s no limit on invites, so keep sharing to earn more.'**
  String get noPendingReferralMessage;

  /// No description provided for @invalidPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Please provide a valid phone number'**
  String get invalidPhoneNumber;

  /// No description provided for @forceAuthorizeBankTitle.
  ///
  /// In en, this message translates to:
  /// **'Having trouble connecting?'**
  String get forceAuthorizeBankTitle;

  /// No description provided for @forceAuthorizeBankDesc.
  ///
  /// In en, this message translates to:
  /// **'Trouble linking your bank account? Tap the button below to connect using your browser.'**
  String get forceAuthorizeBankDesc;

  /// No description provided for @tryNow.
  ///
  /// In en, this message translates to:
  /// **'Try Now'**
  String get tryNow;

  /// No description provided for @doYouKnow.
  ///
  /// In en, this message translates to:
  /// **'Do you know {name}?'**
  String doYouKnow(String name);

  /// No description provided for @paymentWarning.
  ///
  /// In en, this message translates to:
  /// **'This person doesn’t seem to be in your phonebook. Make sure you’re sending money to someone you know and trust.'**
  String get paymentWarning;

  /// No description provided for @selectYourBank.
  ///
  /// In en, this message translates to:
  /// **'Select your Bank'**
  String get selectYourBank;

  /// No description provided for @paymentWarningDesc.
  ///
  /// In en, this message translates to:
  /// **'If you do choose to continue with this payment, Atoa and your Bank will not be able to refund you.'**
  String get paymentWarningDesc;

  /// No description provided for @cancelThisPayment.
  ///
  /// In en, this message translates to:
  /// **'Cancel This Payment'**
  String get cancelThisPayment;

  /// No description provided for @continueToPay.
  ///
  /// In en, this message translates to:
  /// **'Continue to Pay'**
  String get continueToPay;

  /// No description provided for @seeOur.
  ///
  /// In en, this message translates to:
  /// **'See Our '**
  String get seeOur;

  /// No description provided for @forMore.
  ///
  /// In en, this message translates to:
  /// **' for more.'**
  String get forMore;

  /// No description provided for @splitEqually.
  ///
  /// In en, this message translates to:
  /// **'Split Equally'**
  String get splitEqually;

  /// No description provided for @peopleSmall.
  ///
  /// In en, this message translates to:
  /// **'people'**
  String get peopleSmall;

  /// No description provided for @payFor.
  ///
  /// In en, this message translates to:
  /// **'Pay for'**
  String get payFor;

  /// No description provided for @outOf.
  ///
  /// In en, this message translates to:
  /// **'Out of'**
  String get outOf;

  /// No description provided for @proceedToPay.
  ///
  /// In en, this message translates to:
  /// **'Proceed to Pay {amount}'**
  String proceedToPay(double amount);

  /// No description provided for @amountText.
  ///
  /// In en, this message translates to:
  /// **'{amount}'**
  String amountText(double amount);

  /// No description provided for @enterCustomAmount.
  ///
  /// In en, this message translates to:
  /// **'Enter Custom Amount'**
  String get enterCustomAmount;

  /// No description provided for @splitTheBill.
  ///
  /// In en, this message translates to:
  /// **'Split the Bill'**
  String get splitTheBill;

  /// No description provided for @maxAmountError.
  ///
  /// In en, this message translates to:
  /// **'Enter an amount lesser than\nyour bill of {amount}'**
  String maxAmountError(double amount);

  /// No description provided for @atLocation.
  ///
  /// In en, this message translates to:
  /// **'at {location}'**
  String atLocation(String location);

  /// No description provided for @yourTotalBill.
  ///
  /// In en, this message translates to:
  /// **'Your total bill'**
  String get yourTotalBill;

  /// No description provided for @leftToPay.
  ///
  /// In en, this message translates to:
  /// **'Left to pay'**
  String get leftToPay;

  /// No description provided for @paymentsMade.
  ///
  /// In en, this message translates to:
  /// **'Payments made'**
  String get paymentsMade;

  /// No description provided for @itemsPurchased.
  ///
  /// In en, this message translates to:
  /// **'Items Purchased'**
  String get itemsPurchased;

  /// No description provided for @totalDiscount.
  ///
  /// In en, this message translates to:
  /// **'Total Discount'**
  String get totalDiscount;

  /// No description provided for @appSolutelyLovingAtoa.
  ///
  /// In en, this message translates to:
  /// **'App-solutely loving Atoa?'**
  String get appSolutelyLovingAtoa;

  /// No description provided for @notReally.
  ///
  /// In en, this message translates to:
  /// **'Not really'**
  String get notReally;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes!'**
  String get yes;

  /// No description provided for @negativeReviewSorryMessage.
  ///
  /// In en, this message translates to:
  /// **'Oh dear, we’re sorry!\nHow can we make the app better for you?'**
  String get negativeReviewSorryMessage;

  /// No description provided for @typeYourFeedbackHere.
  ///
  /// In en, this message translates to:
  /// **'Type your feedback here...'**
  String get typeYourFeedbackHere;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @submitWithoutDetails.
  ///
  /// In en, this message translates to:
  /// **'Submit Without Details'**
  String get submitWithoutDetails;

  /// No description provided for @appReviewSubmittedSheetTitle.
  ///
  /// In en, this message translates to:
  /// **'We love hearing from you!'**
  String get appReviewSubmittedSheetTitle;

  /// No description provided for @appReviewSubmittedSheetDesc.
  ///
  /// In en, this message translates to:
  /// **'Thanks for your feedback – it helps us to make Atoa bigger and better.'**
  String get appReviewSubmittedSheetDesc;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading'**
  String get loading;

  /// No description provided for @timeIn12Hour.
  ///
  /// In en, this message translates to:
  /// **'{time}'**
  String timeIn12Hour(DateTime time);

  /// No description provided for @nationality.
  ///
  /// In en, this message translates to:
  /// **'Nationality'**
  String get nationality;

  /// No description provided for @occupation.
  ///
  /// In en, this message translates to:
  /// **'Occupation'**
  String get occupation;

  /// No description provided for @sourceOfIncome.
  ///
  /// In en, this message translates to:
  /// **'Primary Source of income'**
  String get sourceOfIncome;

  /// No description provided for @homeAddress.
  ///
  /// In en, this message translates to:
  /// **'Home address'**
  String get homeAddress;

  /// No description provided for @extraDetails.
  ///
  /// In en, this message translates to:
  /// **'Extra Details'**
  String get extraDetails;

  /// No description provided for @extraDetailsDesc.
  ///
  /// In en, this message translates to:
  /// **'We’re required under law to collect some basic details from you for any payments that exceed {amount}'**
  String extraDetailsDesc(double amount);

  /// No description provided for @extraDetailsMsg.
  ///
  /// In en, this message translates to:
  /// **'For amounts over £15,000, provide extra details in the next step.'**
  String get extraDetailsMsg;

  /// No description provided for @selectNationality.
  ///
  /// In en, this message translates to:
  /// **'Select Nationality'**
  String get selectNationality;

  /// No description provided for @searchNationality.
  ///
  /// In en, this message translates to:
  /// **'Search for your nationality'**
  String get searchNationality;

  /// No description provided for @selectOccupation.
  ///
  /// In en, this message translates to:
  /// **'Select Occupation'**
  String get selectOccupation;

  /// No description provided for @selectSourceOfWealth.
  ///
  /// In en, this message translates to:
  /// **'Select Source of Wealth'**
  String get selectSourceOfWealth;

  /// No description provided for @required.
  ///
  /// In en, this message translates to:
  /// **'{field} *'**
  String required(String field);

  /// No description provided for @bankPaymentAmountLimitErrMsg.
  ///
  /// In en, this message translates to:
  /// **'{name}\'s payment limit is {amount} – please select another bank to pay from.'**
  String bankPaymentAmountLimitErrMsg(String name, double amount);

  /// No description provided for @paidByYou.
  ///
  /// In en, this message translates to:
  /// **'Paid by you'**
  String get paidByYou;

  /// No description provided for @paidBySomeoneElse.
  ///
  /// In en, this message translates to:
  /// **'Paid by others'**
  String get paidBySomeoneElse;

  /// No description provided for @goBackToBill.
  ///
  /// In en, this message translates to:
  /// **'Go back to Bill'**
  String get goBackToBill;

  /// No description provided for @plusTip.
  ///
  /// In en, this message translates to:
  /// **'+Tip'**
  String get plusTip;

  /// No description provided for @amountLeftUpdatedTitle.
  ///
  /// In en, this message translates to:
  /// **'Amount left to pay is Updated'**
  String get amountLeftUpdatedTitle;

  /// No description provided for @amountLeftUpdatedDesc.
  ///
  /// In en, this message translates to:
  /// **'Someone else made a payment, please check again and proceed'**
  String get amountLeftUpdatedDesc;

  /// No description provided for @splittingBy.
  ///
  /// In en, this message translates to:
  /// **'Splitting by {count}'**
  String splittingBy(int count);

  /// No description provided for @splitDifferently.
  ///
  /// In en, this message translates to:
  /// **'Split Differently'**
  String get splitDifferently;

  /// No description provided for @tapToEnterAmount.
  ///
  /// In en, this message translates to:
  /// **'Tap to Enter Amount'**
  String get tapToEnterAmount;

  /// No description provided for @uptoDateBill.
  ///
  /// In en, this message translates to:
  /// **'Bill is up to date'**
  String get uptoDateBill;

  /// No description provided for @lastPaidDate.
  ///
  /// In en, this message translates to:
  /// **'Last paid on {date}'**
  String lastPaidDate(DateTime date);

  /// No description provided for @splitBillPaidErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Split bill has already been paid'**
  String get splitBillPaidErrorTitle;

  /// No description provided for @splitBillPaidErrorDesc.
  ///
  /// In en, this message translates to:
  /// **'Oops! It looks like the split bill you\'re trying to pay has already been paid.'**
  String get splitBillPaidErrorDesc;

  /// No description provided for @leftoverAmountError.
  ///
  /// In en, this message translates to:
  /// **'The leftover amount can\'t be less than {minAmount},\ntry to pay the full amount of {amount}'**
  String leftoverAmountError(double minAmount, double amount);

  /// No description provided for @amountToShare.
  ///
  /// In en, this message translates to:
  /// **'Amount to share'**
  String get amountToShare;

  /// No description provided for @payLeftover.
  ///
  /// In en, this message translates to:
  /// **'Pay What’s Left {amount}'**
  String payLeftover(double amount);

  /// No description provided for @selectAnotherBank.
  ///
  /// In en, this message translates to:
  /// **'Select Another Bank'**
  String get selectAnotherBank;

  /// No description provided for @inviteBusinessDesc.
  ///
  /// In en, this message translates to:
  /// **'Help them save on card fees'**
  String get inviteBusinessDesc;

  /// No description provided for @inviteFriendsDesc.
  ///
  /// In en, this message translates to:
  /// **'Share the love and get {amount}'**
  String inviteFriendsDesc(double amount);

  /// No description provided for @dismiss.
  ///
  /// In en, this message translates to:
  /// **'Dismiss'**
  String get dismiss;

  /// No description provided for @removePhoto.
  ///
  /// In en, this message translates to:
  /// **'Remove Photo'**
  String get removePhoto;

  /// No description provided for @paidOn.
  ///
  /// In en, this message translates to:
  /// **'Paid on {date}'**
  String paidOn(DateTime date);

  /// No description provided for @referenceNo.
  ///
  /// In en, this message translates to:
  /// **'Reference : {reference}'**
  String referenceNo(String reference);

  /// No description provided for @bankTabBar.
  ///
  /// In en, this message translates to:
  /// **'Bank Tab Bar'**
  String get bankTabBar;

  /// No description provided for @personalBanks.
  ///
  /// In en, this message translates to:
  /// **'Personal Banks'**
  String get personalBanks;

  /// No description provided for @businessBanks.
  ///
  /// In en, this message translates to:
  /// **'Business Banks'**
  String get businessBanks;

  /// No description provided for @one.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get one;

  /// No description provided for @two.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get two;

  /// No description provided for @three.
  ///
  /// In en, this message translates to:
  /// **'3'**
  String get three;

  /// No description provided for @continueToYourBank.
  ///
  /// In en, this message translates to:
  /// **'Continue to your bank'**
  String get continueToYourBank;

  /// No description provided for @iUnderstandContinue.
  ///
  /// In en, this message translates to:
  /// **'I understand, continue  →'**
  String get iUnderstandContinue;

  /// No description provided for @poweredBy.
  ///
  /// In en, this message translates to:
  /// **'Powered by '**
  String get poweredBy;

  /// No description provided for @trustedByBusinesses.
  ///
  /// In en, this message translates to:
  /// **'Trusted by thousands of businesses in the UK'**
  String get trustedByBusinesses;

  /// No description provided for @makePaymentStep3Text1.
  ///
  /// In en, this message translates to:
  /// **'Once the payment’s '**
  String get makePaymentStep3Text1;

  /// No description provided for @makePaymentStep3Text2.
  ///
  /// In en, this message translates to:
  /// **'confirmed, '**
  String get makePaymentStep3Text2;

  /// No description provided for @makePaymentStep3Text3.
  ///
  /// In en, this message translates to:
  /// **'we’ll redirect you to the success page.'**
  String get makePaymentStep3Text3;

  /// No description provided for @makePaymentStep2Text1.
  ///
  /// In en, this message translates to:
  /// **'You can '**
  String get makePaymentStep2Text1;

  /// No description provided for @makePaymentStep2Text2.
  ///
  /// In en, this message translates to:
  /// **'login securely '**
  String get makePaymentStep2Text2;

  /// No description provided for @makePaymentStep2Text3.
  ///
  /// In en, this message translates to:
  /// **'and approve your payment. Your details stay confidential.'**
  String get makePaymentStep2Text3;

  /// No description provided for @makePaymentStep1Text1.
  ///
  /// In en, this message translates to:
  /// **'Your '**
  String get makePaymentStep1Text1;

  /// No description provided for @makePaymentStep1Text2.
  ///
  /// In en, this message translates to:
  /// **'Bank app '**
  String get makePaymentStep1Text2;

  /// No description provided for @makePaymentStep1Text3.
  ///
  /// In en, this message translates to:
  /// **'will open on selection automatically if it’s installed'**
  String get makePaymentStep1Text3;

  /// No description provided for @ensureBankAppInstalled.
  ///
  /// In en, this message translates to:
  /// **'Ensure the selected bank’s app is installed on your phone.'**
  String get ensureBankAppInstalled;

  /// No description provided for @allBanks.
  ///
  /// In en, this message translates to:
  /// **'ALL BANKS'**
  String get allBanks;

  /// No description provided for @noResults.
  ///
  /// In en, this message translates to:
  /// **'No results'**
  String get noResults;

  /// No description provided for @noResultsDesc.
  ///
  /// In en, this message translates to:
  /// **'No results for ”ashwin ahmed” in banks. Try using different keywords.'**
  String get noResultsDesc;

  /// No description provided for @somethingWentWrongDesc.
  ///
  /// In en, this message translates to:
  /// **'An unknown error occurred. We track these errors automatically, Please try again.'**
  String get somethingWentWrongDesc;

  /// No description provided for @oopsSomethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Oops! Something went wrong'**
  String get oopsSomethingWentWrong;

  /// No description provided for @searchYour.
  ///
  /// In en, this message translates to:
  /// **'Search your '**
  String get searchYour;

  /// No description provided for @payingTo.
  ///
  /// In en, this message translates to:
  /// **'Paying to'**
  String get payingTo;

  /// No description provided for @goToBank.
  ///
  /// In en, this message translates to:
  /// **'Go to {bankName}  →'**
  String goToBank(Object bankName);

  /// No description provided for @atoaTerms.
  ///
  /// In en, this message translates to:
  /// **'Atoa Terms '**
  String get atoaTerms;

  /// No description provided for @verifyingYourPayment.
  ///
  /// In en, this message translates to:
  /// **'Verifying payment status with your bank.'**
  String get verifyingYourPayment;

  /// No description provided for @noteWithColon.
  ///
  /// In en, this message translates to:
  /// **'Note: '**
  String get noteWithColon;

  /// No description provided for @doNotCloseWarning.
  ///
  /// In en, this message translates to:
  /// **'Do not press back or close this screen until the transaction is complete'**
  String get doNotCloseWarning;

  /// No description provided for @couldNotCompletePayment.
  ///
  /// In en, this message translates to:
  /// **'Could not complete payment? '**
  String get couldNotCompletePayment;

  /// No description provided for @cancelPaymentTitle.
  ///
  /// In en, this message translates to:
  /// **'Do you want to cancel the payment?'**
  String get cancelPaymentTitle;

  /// No description provided for @cancelPaymentReason1.
  ///
  /// In en, this message translates to:
  /// **'Help us improve by telling us why!'**
  String get cancelPaymentReason1;

  /// No description provided for @cancelPaymentReason2.
  ///
  /// In en, this message translates to:
  /// **'It’s taking too long to load'**
  String get cancelPaymentReason2;

  /// No description provided for @cancelPaymentReason3.
  ///
  /// In en, this message translates to:
  /// **'I’m facing issues with my bank'**
  String get cancelPaymentReason3;

  /// No description provided for @cancelPaymentReason4.
  ///
  /// In en, this message translates to:
  /// **'I don’t trust this method'**
  String get cancelPaymentReason4;

  /// No description provided for @cancelPaymentReason5.
  ///
  /// In en, this message translates to:
  /// **'Other (please specify)'**
  String get cancelPaymentReason5;

  /// No description provided for @yesCanclePayment.
  ///
  /// In en, this message translates to:
  /// **'Yes, cancel payment'**
  String get yesCanclePayment;

  /// No description provided for @recommendingAppInstallPart1.
  ///
  /// In en, this message translates to:
  /// **'For a smoother payment, we recommend downloading the '**
  String get recommendingAppInstallPart1;

  /// No description provided for @recommendingAppInstallPart2.
  ///
  /// In en, this message translates to:
  /// **' Or, continue using internet banking if that works better for you.'**
  String get recommendingAppInstallPart2;

  /// No description provided for @bankApp.
  ///
  /// In en, this message translates to:
  /// **'{bankName} app'**
  String bankApp(String bankName);

  /// No description provided for @noDismiss.
  ///
  /// In en, this message translates to:
  /// **'No, dismiss'**
  String get noDismiss;

  /// No description provided for @tip.
  ///
  /// In en, this message translates to:
  /// **'Tip'**
  String get tip;

  /// No description provided for @valueCopiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'{label} copied to clipboard'**
  String valueCopiedToClipboard(String label);

  /// No description provided for @callBank.
  ///
  /// In en, this message translates to:
  /// **'Call Bank'**
  String get callBank;

  /// No description provided for @viewTransactionDetails.
  ///
  /// In en, this message translates to:
  /// **'View Transaction Details'**
  String get viewTransactionDetails;

  /// No description provided for @referenceId.
  ///
  /// In en, this message translates to:
  /// **'Reference ID'**
  String get referenceId;

  /// No description provided for @orderId.
  ///
  /// In en, this message translates to:
  /// **'Order ID'**
  String get orderId;

  /// No description provided for @awaitAuthDesc.
  ///
  /// In en, this message translates to:
  /// **'Payment under processing.'**
  String get awaitAuthDesc;

  /// No description provided for @paymentSuccessful.
  ///
  /// In en, this message translates to:
  /// **'Payment Successful'**
  String get paymentSuccessful;

  /// No description provided for @receivedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Received Successfully'**
  String get receivedSuccessfully;

  /// No description provided for @paymentReceivedDesc.
  ///
  /// In en, this message translates to:
  /// **'Payment has been received successfully.'**
  String get paymentReceivedDesc;

  /// No description provided for @paymentRefundedDesc.
  ///
  /// In en, this message translates to:
  /// **'Funds have been credited back to your bank account.'**
  String get paymentRefundedDesc;

  /// No description provided for @paymentCancelledDesc.
  ///
  /// In en, this message translates to:
  /// **'You cancelled the payment.'**
  String get paymentCancelledDesc;

  /// No description provided for @paymentExpiredDesc.
  ///
  /// In en, this message translates to:
  /// **'The payment you\'re trying to make has expired.'**
  String get paymentExpiredDesc;

  /// No description provided for @unknownStatusDesc.
  ///
  /// In en, this message translates to:
  /// **'Unknown error'**
  String get unknownStatusDesc;

  /// No description provided for @writeYourReason.
  ///
  /// In en, this message translates to:
  /// **'Write your reason...'**
  String get writeYourReason;

  /// No description provided for @termsAndPolicy.
  ///
  /// In en, this message translates to:
  /// **'Terms and policy'**
  String get termsAndPolicy;

  /// No description provided for @howWeProtectData.
  ///
  /// In en, this message translates to:
  /// **'How we protect your data.'**
  String get howWeProtectData;

  /// No description provided for @rulesForService.
  ///
  /// In en, this message translates to:
  /// **'Rules for using our service.'**
  String get rulesForService;

  /// No description provided for @atoaYapilyText.
  ///
  /// In en, this message translates to:
  /// **'Atoa is powered by Yapily Connect Ltd, a company regulated and authorised by the UK Financial Conduct Authority'**
  String get atoaYapilyText;

  /// No description provided for @review.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get review;

  /// No description provided for @downTime.
  ///
  /// In en, this message translates to:
  /// **'Downtime'**
  String get downTime;

  /// No description provided for @okay.
  ///
  /// In en, this message translates to:
  /// **'Okay'**
  String get okay;

  /// No description provided for @bankDown.
  ///
  /// In en, this message translates to:
  /// **'{bankName} bank is currently down for maintenance. Please select a different bank and try again.'**
  String bankDown(String bankName);

  /// No description provided for @atoaTermsAndPolicy.
  ///
  /// In en, this message translates to:
  /// **'Atoa Terms and Privacy Policy'**
  String get atoaTermsAndPolicy;

  /// No description provided for @bankReviewInfoText.
  ///
  /// In en, this message translates to:
  /// **'We’ll send you to your bank’s app or website to confirm this payment.'**
  String get bankReviewInfoText;

  /// No description provided for @paymentInProgress.
  ///
  /// In en, this message translates to:
  /// **'Payment in progress'**
  String get paymentInProgress;

  /// No description provided for @noResultFound.
  ///
  /// In en, this message translates to:
  /// **'No results for ”{search}” in banks. Try using different keywords.'**
  String noResultFound(String search);

  /// No description provided for @results.
  ///
  /// In en, this message translates to:
  /// **'RESULTS'**
  String get results;

  /// No description provided for @change.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get change;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
