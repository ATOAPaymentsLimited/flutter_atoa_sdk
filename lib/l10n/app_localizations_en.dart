import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get today => 'Today';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get mobileNumber => 'Mobile Number';

  @override
  String get next => 'Next';

  @override
  String get continueBtnText => 'Continue';

  @override
  String get cancel => 'Cancel';

  @override
  String get requestOtpError => 'Oops! We’re having a problem sending you a PIN. Please try again.';

  @override
  String get validateOtpError => 'Sorry, we’re having a problem validating your Secure PIN. Please try again.';

  @override
  String get registration => 'Registration';

  @override
  String inputNotEmptyError(String field) {
    return '$field should not be empty';
  }

  @override
  String inputOnlySpaceError(String field) {
    return '$field should not contain only spaces';
  }

  @override
  String shortInputError(String field) {
    return '$field is too short';
  }

  @override
  String get extraSpaceError => 'Extra spaces found in between words';

  @override
  String get groupName => 'Group Name';

  @override
  String get phoneNumber => 'Phone Number';

  @override
  String get enterCode => 'Enter code sent to';

  @override
  String get send => 'Send';

  @override
  String get search => 'Search';

  @override
  String get selectCountry => 'Select Country';

  @override
  String get ok => 'OK';

  @override
  String get emailAddress => 'Email Address';

  @override
  String get emailInputHint => 'eg. john_doe@company.com';

  @override
  String get legalNameInputHint => 'eg. John Doe';

  @override
  String get register => 'Register';

  @override
  String get selectAccount => 'Select Account';

  @override
  String get fetchingDataFromServer => 'One moment, please…';

  @override
  String get confirm => 'Confirm';

  @override
  String get defaultUnknownError => 'Oops! We’ve encountered a problem. Please try again. If the issue persists please message us at hello@paywithatoa.co.uk.';

  @override
  String get goBack => 'Go Back';

  @override
  String get selectBank => 'Select your Bank';

  @override
  String get scanQrCode => 'Scan QR Code';

  @override
  String get scanQr => 'Scan QR';

  @override
  String get transactions => 'Transactions';

  @override
  String get viewAll => 'VIEW ALL';

  @override
  String get offers => 'Offers';

  @override
  String get searchTransactionsNotFound => 'Sorry, we didn’t find any transactions!';

  @override
  String get noPaymentsYet => 'No payments yet,\nStart transacting now!';

  @override
  String get scanAnyQrCode => 'Scan any Atoa QR code to pay';

  @override
  String get scanFromGallery => 'Scan From Gallery';

  @override
  String get myAccount => 'My Account';

  @override
  String get settings => 'Settings';

  @override
  String get profile => 'Profile';

  @override
  String get bankAccounts => 'Bank Accounts';

  @override
  String get logout => 'Logout';

  @override
  String get primary => 'Primary';

  @override
  String get addBankAccount => 'Add a Bank Account';

  @override
  String get setAsPrimaryAccount => 'Set as Default';

  @override
  String get bankAccSetAsPrimary => 'Your Default Bank Account has been updated.';

  @override
  String get logoutConfirmMsg => 'Are you sure you want to logout?';

  @override
  String get oops => 'Oops!';

  @override
  String get retry => 'Retry';

  @override
  String get reference => 'Reference';

  @override
  String get refund => 'Refund';

  @override
  String get download => 'Download';

  @override
  String get paymentFailed => 'Payment Failed';

  @override
  String get awaitingAuthorization => 'Awaiting Authorisation';

  @override
  String get pending => 'Pending';

  @override
  String get appLockEnabledSuccess => 'App lock enabled';

  @override
  String get skip => 'Skip';

  @override
  String get about => 'About';

  @override
  String get aboutDesc => 'Legal Terms, Versions & Software licenses';

  @override
  String get versionandLicenses => 'App Versions & Licenses';

  @override
  String get processing => 'Processing';

  @override
  String get enterAmount => 'Enter Amount';

  @override
  String get clear => 'Clear';

  @override
  String get login => 'Login';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get atoaPayPrivacyPolicy => 'Atoa Pay Privacy Policy';

  @override
  String get less => 'Less';

  @override
  String get more => 'more';

  @override
  String get goTo => 'Go To';

  @override
  String get pay => 'Pay';

  @override
  String get to => 'To';

  @override
  String get couldNotLaunch => 'Sorry, redirection failed. Please try again or email hello@paywithatoa.co.uk';

  @override
  String get update => 'Update';

  @override
  String get personalDetails => 'Personal Details';

  @override
  String get updatedSuccessfully => 'Updated Successfully';

  @override
  String get defaultError => 'Oops, An Error Occurred';

  @override
  String get applicationLegaseeText => '©2023 Atoa Payments Limited. Atoa Payments Limited operates under a license issued to Yapily Connect Limited (#827001) and under a commercial agreement with Yapily Ltd (#10842280). Yapily Connect Ltd is regulated by the UK Financial Conduct Authority under the Payment Services Regulations 2017 as an Authorised Payment Institutions to provide account information services and payment initiation services. Visit www.paywithatoa.co.uk/terms for details.';

  @override
  String get instantBankPay => 'Instant Bank Pay';

  @override
  String get signUp => 'Signup';

  @override
  String get phoneNumberHint => 'Mobile Number';

  @override
  String get atoaFooterTextHomePage => '©2023 Atoa Payments Limited. Atoa Payments Limited operates under a license issued to Yapily Connect Limited (#827001). Yapily Connect Ltd is regulated by the UK Financial Conduct Authority under the Payment Services Regulations 2017 as an Authorised Payment Institutions to provide account information services and payment initiation services. Visit www.paywithatoa.co.uk/terms for details.';

  @override
  String get splitBills => 'Split Bills';

  @override
  String get rewards => 'Rewards';

  @override
  String get recentPayments => 'RECENT PAYMENTS';

  @override
  String get recentGroups => 'Recent Groups';

  @override
  String get notifications => 'Notifications';

  @override
  String get noNotificationFound => 'No Notifications Found';

  @override
  String get report => 'Report';

  @override
  String get merchant => 'Merchant';

  @override
  String get get => 'Get';

  @override
  String get help => 'Help';

  @override
  String get taxChargesIncluded => 'VAT included';

  @override
  String get serviceChargesIncluded => 'Service Charges Included';

  @override
  String get from => 'From';

  @override
  String get toMerchant => 'To Merchant';

  @override
  String get note => 'Note';

  @override
  String get paymentFailedDesc => 'Oops, this bank app is down at the moment. Atoa is working fine. Please pay with another bank.';

  @override
  String get all => 'All';

  @override
  String get paid => 'Paid';

  @override
  String get paymentRefunded => 'Refunded';

  @override
  String get paymentprocessing => 'Processing';

  @override
  String get awaitingAuth => 'Awaiting Authorization';

  @override
  String get splitWithFriends => 'Split with Friends';

  @override
  String get people => 'People';

  @override
  String get myQrCode => 'My QR Code';

  @override
  String get showMyQrCode => 'Show my QR Code';

  @override
  String get resendCode => 'Resend Code';

  @override
  String get didntReceiveYourCode => 'Didn’t receive your code?';

  @override
  String get resendIn => 'Resend in';

  @override
  String get enterFullName => 'Enter your Full Legal Name';

  @override
  String get fullNameError => 'Please enter your full name';

  @override
  String get enterPostCode => 'Enter Post Code';

  @override
  String get postCodeError => 'Please enter your post code';

  @override
  String get invalidPostCodeError => 'Please enter valid post code';

  @override
  String get ifYouWereReferred => 'Enter a referral code,\nif you have one';

  @override
  String get please => 'please';

  @override
  String get code => 'Code';

  @override
  String get postCodeExample => 'eg. SW1A 1AA';

  @override
  String get createHashtag => 'Create Hashtag';

  @override
  String get yourUniqueID => 'Your unique ID for getting paid';

  @override
  String get hashtagExample => 'eg. #Atoa';

  @override
  String get connectYourBank => 'Connect Your Bank';

  @override
  String get connectYourBankAccount => 'Connect your Bank Account';

  @override
  String get connectYourBankAccountDesc => 'Add your account details\nto receive cashback';

  @override
  String get connect => 'Connect';

  @override
  String get sendReceivePaymentWithAtoa => 'To send and receive payments using Atoa';

  @override
  String get selectYourBank => 'Select your Bank';

  @override
  String get continuingAgree => 'By Continuing you agree to the';

  @override
  String get atoa => 'Atoa';

  @override
  String get terms => 'Terms';

  @override
  String get and => 'and';

  @override
  String get atoaPoweredByYapily => 'Atoa is powered by Yapily Connect Ltd, a company regulated and authorised by the UK Financial Conduct Authority';

  @override
  String get legalNameExample => 'eg. John Doe';

  @override
  String get goToHome => 'Go to Home';

  @override
  String get processingYourRequest => 'Processing your request...';

  @override
  String get invalidReferralCode => 'Invalid Referral Code';

  @override
  String get request => 'Request';

  @override
  String get sent => 'Sent';

  @override
  String get tapToViewReward => 'Tap to View Reward';

  @override
  String get contacts => 'Contacts';

  @override
  String get cashTradingAccount => 'Cash Trading Account';

  @override
  String get cashIncomeAccount => 'Cash Income Account';

  @override
  String get cashPaymentAccount => 'Cash Payment Account';

  @override
  String get chargeCardAccount => 'Charge Card Account';

  @override
  String get chargesAccount => 'Charges Account';

  @override
  String get commissionAccount => 'Commission Account';

  @override
  String get creditCardAccount => 'Credit Card Account';

  @override
  String get currentAccount => 'Current Account';

  @override
  String get eMoneyAccount => 'E-Money Account';

  @override
  String get limitedLiquiditySavingsAccount => 'Limited Liquidity Savings Account';

  @override
  String get loanAccount => 'Loan Account';

  @override
  String get marginalLendingAccount => 'Marginal Lending Account';

  @override
  String get moneyMarketAccount => 'Money Market Account';

  @override
  String get mortgageAccount => 'Mortgage Account';

  @override
  String get nonResidentExternalAccount => 'Non Resident External Account';

  @override
  String get otherAccount => 'Other Account';

  @override
  String get overdraftAccount => 'Overdraft Account';

  @override
  String get overnightDepositAccount => 'Overnight Deposit Account';

  @override
  String get prepaidCardAccount => 'Prepaid Card Account';

  @override
  String get salaryAccount => 'Salary Account';

  @override
  String get savingsAccount => 'Savings Account';

  @override
  String get settlementAccount => 'Settlement Account';

  @override
  String get taxAccount => 'Tax Account';

  @override
  String get unknownAccount => 'Unknown Account';

  @override
  String get accountNotSupported => 'Account not Supported';

  @override
  String get forInstantBankTransfer => 'for Instant Bank Transfer';

  @override
  String get pleaseSelectAnotherBankAccount => 'Please select another Bank Account';

  @override
  String get authorizationFailed => 'Authorisation Failed';

  @override
  String get failedToConnectToYourBank => 'Failed to connect to your bank.';

  @override
  String get yourBankAppMightBeDown => 'Your Bank App might be down at the moment';

  @override
  String get received => 'Received';

  @override
  String get receipt => 'Receipt';

  @override
  String get user => 'User';

  @override
  String get appLock => 'App Lock';

  @override
  String get enabled => 'Enabled';

  @override
  String get disabled => 'Disabled';

  @override
  String get secureAtoa => 'Secure Atoa';

  @override
  String get secureAtoaDesc => 'Secure Atoa using your existing device biometrics like FaceID or Fingerprint';

  @override
  String get primaryAccount => 'Primary Account';

  @override
  String get showQrCode => 'Show QR Code';

  @override
  String get othersCanScanCode => 'Others can scan this code to pay you';

  @override
  String get myBanks => 'My Banks';

  @override
  String get addModifyBankAccounts => 'Add/Modify Bank Accounts';

  @override
  String get support => 'Support';

  @override
  String get chatWithUs => 'Chat with us';

  @override
  String get forgetAccount => 'Forget Account';

  @override
  String get cannotForgetPrimary => 'Sorry, you can’t delete your Primary Account.';

  @override
  String get bankAccDeleted => 'Bank Account Deleted';

  @override
  String get fullLegalName => 'Full Name';

  @override
  String get invalidEmailError => 'Please enter a valid e-mail address';

  @override
  String get atoaID => 'Atoa ID';

  @override
  String get save => 'Save';

  @override
  String get onboardingTitleStep1 => 'Send, Receive, Earn';

  @override
  String get onboardingTitleStep2 => 'Got bills to pay?';

  @override
  String get onboardingTitleStep3 => 'Pay in Store';

  @override
  String get onboardingDescStep1 => 'Send money and get paid back for anything, from nights out to rent!';

  @override
  String get onboardingDescStep2 => 'Split bills equally, unequally, uniquely. Let us do the maths!';

  @override
  String get onboardingDescStep3 => 'Earn cashback when you\npay in stores that use Atoa!';

  @override
  String get collect => 'Collect';

  @override
  String get spend => 'Spend';

  @override
  String get moreOptions => 'More Options';

  @override
  String get getStarted => 'Get Started';

  @override
  String get refresh => 'Refresh';

  @override
  String get blockUser => 'Block User';

  @override
  String get unBlockUser => 'Unblock User';

  @override
  String get refunded => 'Refunded';

  @override
  String get cancelled => 'Cancelled';

  @override
  String get unknown => 'Unknown';

  @override
  String get privacySecurity => 'Privacy & Security';

  @override
  String get biometrics => 'Biometrics, profile visibility';

  @override
  String get addYourPhoto => 'Add Your Profile Photo';

  @override
  String get editPhoto => 'Edit Photo';

  @override
  String get addPhoto => 'Add Photo';

  @override
  String get takePhoto => 'Take Photo';

  @override
  String get chooseFromGallery => 'Choose from Gallery';

  @override
  String get newPayment => 'New Payment';

  @override
  String get payWithoutTip => 'Pay Without Tip';

  @override
  String get payNow => 'Pay Now';

  @override
  String get addAnotherBank => 'Add Another Bank';

  @override
  String get mostTipped => 'Most Tipped';

  @override
  String get noteOptionalHintText => 'What\'s it for?';

  @override
  String get thanksForAddingATipText => 'Thanks for adding a Tip!';

  @override
  String get addATipText => 'Would you like to add a Tip?';

  @override
  String get addBankAccountToContinue => 'Add Bank Account to continue';

  @override
  String get chooseAccountToPayWith => 'Select Account to pay with';

  @override
  String get chooseAccountToRequestWith => 'Select Account to request with';

  @override
  String get waitingForAuthorization => 'Waiting for Authorisation';

  @override
  String get errorOccurredWhileRedirectingToBank => 'Sorry, an error occured while redirecting to your Bank. They may be having technical difficulties.';

  @override
  String get noContactsFoundInContactBook => 'Sorry, no contacts were found in your contact book.';

  @override
  String get noResultsFor => 'No results for';

  @override
  String get noSearchFoundContactSyncDescription => 'Search by entering a Person’s Name, Phone Number, or Atoa ID';

  @override
  String get contactsOnAtoa => 'CONTACTS ON ATOA';

  @override
  String get contactsNotOnAtoa => 'CONTACTS NOT ON ATOA';

  @override
  String get invite => 'Invite';

  @override
  String totalAmountShouldNotBeMoreThan(double amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 2,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return 'Please enter an amount below $amountString';
  }

  @override
  String enterAmountGreaterThan(double amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 2,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return 'Please enter amount greater than $amountString';
  }

  @override
  String enterAmountSmallerThan(double amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 0,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return 'Please enter an amount below $amountString';
  }

  @override
  String get almostThere => 'Almost There!';

  @override
  String get verifyingYourPaymentStatusText => 'We are verifying your payment status';

  @override
  String get oopsErrorOccurred => 'Uh-oh! We’re sorry, an unknown error has occured. Please try again or notify us at hello@paywithatoa.co.uk.';

  @override
  String get cashback => 'Cashback';

  @override
  String get youBlockedUserTitle => 'You’ve blocked this User';

  @override
  String get unlock => 'Unlock';

  @override
  String get blockedUserMsg => 'They won’t be notified that you’ve blocked them. You’ll need to unblock them before being able to send or request payments.';

  @override
  String get yesLogoutNow => 'Logout Now';

  @override
  String get welcomeBack => 'Welcome back';

  @override
  String get atoaIsLocked => 'Atoa is locked';

  @override
  String get securityDesc => 'Just tap your fingerprint or face ID to get started';

  @override
  String get unblock => 'Unblock';

  @override
  String get youHaveWonAPrize => 'You have won a prize!';

  @override
  String get scratchToRevealYourReward => 'Scratch to reveal your reward';

  @override
  String get done => 'Done';

  @override
  String cashbackWillBeCreditedMessage(int hour, String maskedAccountNumber) {
    return 'Cashback will be credited to your bank account ending $maskedAccountNumber within 1-2 working days';
  }

  @override
  String blockUserConfirmTitle(String name) {
    return 'Block \"$name\"?';
  }

  @override
  String get blockUserDesc => 'They’ll no longer be able to send or request payments from you using Atoa Pay. They won’t be notified that they’ve been blocked.';

  @override
  String get youHaveWonAPrizeForDownloadingAtoa => 'You have won a prize\nfor joining Atoa!';

  @override
  String get updateDialogText => 'Heads up! It seems like you\'re using an older version of Atoa Pay. Update now to get the most out of our app and enjoy the latest features.';

  @override
  String get updateAppText => '📢 Update Atoa Pay!';

  @override
  String amountInPound(String amount) {
    return '£$amount';
  }

  @override
  String get coins => 'Coins';

  @override
  String get keepPaying => 'Win rewards every time you\npay in-store with Atoa!';

  @override
  String get currencySymbol => '£';

  @override
  String get congratulations => 'Congratulations';

  @override
  String get noInternetConnectivity => 'No Internet Signal';

  @override
  String get noInternetTitle => 'Are you in the Tube? It looks like you have no signal. Please connect to Wi-Fi.';

  @override
  String get serverNotReachableError => 'It seems we can’t connect to our servers right now. Can I borrow some Wi-Fi from you?';

  @override
  String get downloadAppDesc => 'Please download and install your bank app to\nconnect your bank and use Atoa seamlessly';

  @override
  String get ensureBankAppIsInstalled => 'Please make sure you have a Bank App installed on your Phone in order to use Atoa Pay.';

  @override
  String get downloadBankApp => 'Download the Bank App Now';

  @override
  String get alreadyUpToDate => 'Already up-to date';

  @override
  String get bankAppNotFound => 'Bank App Not Found';

  @override
  String get noContactPermissionDesc => 'We require your permission to access contacts in order to carry out payments to your friends';

  @override
  String get syncContactLabel => 'Sync Contacts';

  @override
  String get contactSyncConsentText => 'We only store details like Name and Number of contacts for letting you do Instant Bank payments to your friends. We do not share your contacts with anyone outside of Atoa and its contracted service providers. You can read more on our ';

  @override
  String get errorOnContactSync => 'Uh-oh! An error occured while syncing your contacts. Please try again.';

  @override
  String get others => 'Others';

  @override
  String get inYourContacts => 'IN YOUR CONTACTS';

  @override
  String inviteMessage(String referralCode, String referralLink) {
    return 'Join me on Atoa Pay! It’s a fast, safe, and free way to pay and get paid for anyone with a UK Bank! Use my referral code $referralCode! Sign up with this link: $referralLink';
  }

  @override
  String inviteMessageWithReferralAmount(String referralCode, double referralAmount, String referralLink) {
    final intl.NumberFormat referralAmountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 2,
      name: 'GBP',
      symbol: '£'
    );
    final String referralAmountString = referralAmountNumberFormat.format(referralAmount);

    return 'Join me on Atoa Pay! It’s a fast, safe, and free way to pay and get paid for anyone with a UK Bank! Use my referral code: $referralCode and we’ll both get $referralAmountString! Sign up with this link: $referralLink';
  }

  @override
  String get noRewards => 'No Rewards';

  @override
  String get addingRewardsToYourAccount => 'Adding rewards to your account';

  @override
  String get expired => 'Expired';

  @override
  String get paymentExpired => 'Payment Expired';

  @override
  String get downloadSuccessfulNotificationTitleIos => 'Download Successful';

  @override
  String get downloadSuccessfulNotificationBodyIos => 'File saved to : Atoa Pay>Download';

  @override
  String get downloadFailedNotificationTitleIos => 'Download Failed';

  @override
  String get permissionRequiredError => 'Please add the required permissions';

  @override
  String get downloadFailedErrorMessage => 'Oops! An error occured while downloading. Please try again!';

  @override
  String get downloadStarted => 'Your download has started.';

  @override
  String get characterLimitReached => 'Character limit reached';

  @override
  String charactersRequired(int char) {
    return '$char characters required';
  }

  @override
  String get hashtagAlreadyExists => 'This Atoa ID already exists! Please choose another.';

  @override
  String get scanThisCodeToPay => 'Scan this code to pay';

  @override
  String get youHaveWonAPrizeForPaying => 'You Have Won a Prize for\nmaking a payment';

  @override
  String get looksLikeYouHaveBeenReferred => 'Looks like you have been invited, would you like to accept ?';

  @override
  String get enterReferralCode => 'Enter Referral Code';

  @override
  String get skipAutoReferralTitle => 'Are you sure you don’t want to accept a referral?';

  @override
  String get skipAutoReferralDesc => 'You will not be able to undo this action. Your friends will not receive any rewards for referring you.';

  @override
  String get skipReferralConfirmation => 'Continue Without Accepting';

  @override
  String get enterDateOfBirth => 'Enter Date of Birth';

  @override
  String get weCollectYourDateOfBirth => 'We collect your date of birth to send you and your friends birthday reminders';

  @override
  String get pickADate => 'Pick a date';

  @override
  String get userNotFound => 'User not found';

  @override
  String get scanAnotherQrCode => 'Scan another QR Code';

  @override
  String get ownQrErrorTitle => 'You can’t pay yourself!';

  @override
  String get ownQrErrorDesc => 'We couldn\'t process your transaction as you\'re trying to send money to your own bank account.';

  @override
  String get paymentRequestNotFound => 'Payment request not found';

  @override
  String get wantToEarnMoreFreePaymentsText => 'Want to get more free payments?';

  @override
  String get referYourFriendsToAtoa => 'Refer your friends to Atoa';

  @override
  String get yourArePaying => 'You’re paying';

  @override
  String get selectAccountToPayWith => 'Select account to pay with ';

  @override
  String get selectAccountToRequestWith => 'Select account to request with ';

  @override
  String get minutesRemaining => 'mins remaining';

  @override
  String get openYourBankAppToApprove => 'Make sure you approve this payment in your banking app before the timer ends';

  @override
  String get openBankApp => 'Open Bank App';

  @override
  String get dontPressBackOrCloseAppWhileTxn => 'Do not press back or force close this app until the transaction is complete';

  @override
  String get cancelPayment => 'Cancel Payment';

  @override
  String get cancelPaymentConfirmationTile => 'Are you sure you want to\nCancel the payment?';

  @override
  String get cancelPaymentConfirmationSubtitle => 'The Payment request will get cancelled only if you have not completed the payment in your Bank App';

  @override
  String get yesCancelPayment => 'Yes, Cancel Payment';

  @override
  String get keepTrying => 'Keep Trying';

  @override
  String get errorFetchingpaymentStatusTitle => 'Payment Status Error';

  @override
  String get errorFetchingpaymentStatusDescription => 'Sorry, we’ve run into an error while we were fetching your payment status. Please wait a moment and try again.';

  @override
  String get cameraAccessDeniedTitle => 'Camera access denied';

  @override
  String get cameraAccessDeniedDescription => 'Please give Atoa access to\nyour camera to continue';

  @override
  String get openSettingsToAllowAccess => 'Open Settings to Allow Access';

  @override
  String get sending => 'Sending';

  @override
  String get successfullyReferredTitle => 'Successfully Referred';

  @override
  String get successfullyReferredDescription => 'Yay! You are one step closer\nto receiving rewards';

  @override
  String get completed => 'Completed';

  @override
  String friendsHaveJoinedAtoaTxt(String amount) {
    return 'Your friends have joined Atoa, remind them to complete payments worth more than £$amount each for you to receive your reward';
  }

  @override
  String receiverNotInContacts(String name) {
    return '$name is not in your contacts. You can still\nconduct payments using your Atoa ID.';
  }

  @override
  String fromReferrals(String count) {
    return 'from $count invites';
  }

  @override
  String friendsHaveJoinedAtoaTxt2(double amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 0,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return 'Your friends have joined Atoa but they need to send $amountString+ in payments to make you a winner!';
  }

  @override
  String get youHaveWon => 'You’ve won';

  @override
  String get acceptedAnotherReferral => 'Accepted another referral';

  @override
  String get referralExpired => 'Referral Expired';

  @override
  String get reminderSent => 'Reminder Sent';

  @override
  String get inviteSent => 'Invite Sent';

  @override
  String get remind => 'Remind';

  @override
  String get rewardsProcessing => 'Rewards Processing';

  @override
  String get rewardsProcessingDesc => 'Please give us some time to pay out your reward. You’ll receive a push notification once its done.';

  @override
  String get iUnderstand => 'I Understand';

  @override
  String get youwon => 'You won';

  @override
  String get referAndEarn => 'Invite Friends';

  @override
  String get inviteBusiness => 'Invite Business';

  @override
  String get termsAndConditions => 'Terms & Conditions';

  @override
  String get referralCode => 'Referral Code';

  @override
  String get shareLink => 'Share Link';

  @override
  String get referralCodeCopied => 'Referral Code Copied';

  @override
  String get failed => 'Failed';

  @override
  String get isRequestingText => 'is Requesting';

  @override
  String get youAreRequestingText => 'You’re Requesting';

  @override
  String get youRequestedText => 'You Requested';

  @override
  String get requestCancelled => 'Request Cancelled';

  @override
  String get youHaveDeclined => 'You’ve Declined';

  @override
  String get requestDeclined => 'Request Declined';

  @override
  String get requestExpired => 'Request Expired';

  @override
  String get internalReward => 'Internal Reward';

  @override
  String get requested => 'Requested';

  @override
  String get waitingForPayment => 'Waiting for payment';

  @override
  String get keepRequest => 'Keep Request';

  @override
  String get cancelRequest => 'Cancel Request';

  @override
  String get dontDecline => 'Don’t Decline';

  @override
  String get decline => 'Decline';

  @override
  String get declinePayRequestConfirmationTitle => 'Are you sure you want to\ndecline the request?';

  @override
  String cancelPayRequestConfirmationTitle(String amount) {
    return 'Are you sure you want to\ncancel payment request of\n£$amount?';
  }

  @override
  String get monthlyReward => 'You have won the prize for using Atoa for a month';

  @override
  String get settlementInProcessInfoText => 'It is taking longer than normal, Please be patient while we check for updated status, in case of discrepancy payment will be refunded';

  @override
  String get dateOfBirth => 'Date of Birth';

  @override
  String get ago => 'ago';

  @override
  String get now => 'now';

  @override
  String get createGroupPageTitle => 'Enter group name';

  @override
  String get createGroupBtnText => 'Create Group';

  @override
  String get enterTotalExpenseAmount => 'Enter total expense amount';

  @override
  String get createSplitRequestPageTitle => 'Create Split Request';

  @override
  String get totalAmount => 'Total amount';

  @override
  String exceedingByAmount(String amount) {
    return 'Reduce by £$amount';
  }

  @override
  String amountRemaining(String amount) {
    return '£$amount Remaining';
  }

  @override
  String get sendRequest => 'Send Request';

  @override
  String splitEquallyBetween(int member) {
    return 'Split equally between $member';
  }

  @override
  String get you => 'You';

  @override
  String get noSplitAvailable => 'No Splits available\nStart by creating a New Split';

  @override
  String get newSplit => 'New Split';

  @override
  String get createNewExpense => 'Create a New Expense';

  @override
  String get splitExistingExpense => 'Split an Existing Expense';

  @override
  String negativeMoney(double amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 2,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return '-$amountString';
  }

  @override
  String get youllReceive => 'You’ll receive';

  @override
  String get youllPay => 'You’ll pay';

  @override
  String get splitBillSearchHint => 'Search by group or contact';

  @override
  String get groups => 'Groups';

  @override
  String get newGroup => 'New Group';

  @override
  String get settled => 'Settled';

  @override
  String youllReceiveAmount(double amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 2,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return 'You’ll receive $amountString';
  }

  @override
  String youllPayAmount(double amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 2,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return 'You’ll pay $amountString';
  }

  @override
  String get groupDetails => 'Group Details';

  @override
  String groupMembers(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count GROUP MEMBERS',
      zero: 'No Group Member',
    );
    return '$_temp0';
  }

  @override
  String countMembers(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Members',
      one: '1 Member',
      zero: 'No Member',
    );
    return '$_temp0';
  }

  @override
  String paymentRequest(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'PAYMENT REQUEST ($count)',
      zero: 'PAYMENT REQUEST',
    );
    return '$_temp0';
  }

  @override
  String get addMembers => 'Add Members';

  @override
  String get leaveGroup => 'Leave group';

  @override
  String get shareUsing => 'Share using';

  @override
  String get telegram => 'Telegram';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get email => 'Email';

  @override
  String get sms => 'SMS';

  @override
  String get joinMeEmailSubject => 'Join me on Atoa Pay';

  @override
  String joinAtoaWithSignUpLink(String userName) {
    return 'Join $userName and download the Atoa Pay app today! Sign up with this link';
  }

  @override
  String get yourFriend => 'your friend';

  @override
  String closeSplitRequestConfirmationTitle(String amount) {
    return 'Are you sure you want to\nclose this split request?';
  }

  @override
  String get closeRequest => 'Close Request';

  @override
  String get closed => 'Closed';

  @override
  String get youPaid => 'You paid';

  @override
  String receivedMembersCountText(int totalPaidMembers, int totalMembers) {
    return 'Received $totalPaidMembers of $totalMembers';
  }

  @override
  String amountLeftText(String amount) {
    return '£$amount left';
  }

  @override
  String get edit => 'Edit';

  @override
  String get splitReqEditTotalAmountLessThanPaidAmountErrorText => 'Total Amount should be greater than or eqaual to the current total received amount';

  @override
  String get unpaid => 'Unpaid';

  @override
  String get markedAsPaid => 'Marked as paid';

  @override
  String get markAsPaid => 'Mark as paid';

  @override
  String noOfPeoplePaidText(int totalPaidMembers, int totalMembers) {
    return '$totalPaidMembers of $totalMembers people paid';
  }

  @override
  String get sendReminder => 'Send Reminder';

  @override
  String get splitGroupInfoDescText => 'Split and keep track of your expenses here\nand remind your friends to pay on time. ';

  @override
  String createdGroupAlongWithOtherText(String ownerName, int memberLength) {
    return '$ownerName created this group with $memberLength others';
  }

  @override
  String memberCountText(int memberCount) {
    return '$memberCount Members';
  }

  @override
  String get updateRequest => 'Update Request';

  @override
  String get markAsPaidConfirmationDialogTitle => 'Do you want to mark as paid? This action cannot be undone';

  @override
  String get editGroupName => 'Edit Group Name';

  @override
  String get groupNameEmptyError => 'Group name cannot be empty';

  @override
  String get admin => 'Admin';

  @override
  String removeUserFromGroup(String userName) {
    return 'Remove \"$userName\" from the group';
  }

  @override
  String removeUserFromGroupDesc(String userName) {
    return 'They won\'t be able to create new split requests but can participate in existing ones';
  }

  @override
  String get remove => 'Remove';

  @override
  String get member => 'Member';

  @override
  String get searchTransactions => 'Search Transactions';

  @override
  String get selectTransaction => 'Select Transaction';

  @override
  String get loadingRequest => 'Loading Request';

  @override
  String get viewRequest => 'View Request';

  @override
  String get noLongerParticipant => 'You are no longer a participant.';

  @override
  String get noLongerParticipantDesc => 'You can’t create new split requests, but you are\nable to participate in existing split requests.';

  @override
  String get leavingGroupTitle => 'Are you sure you want to leave?';

  @override
  String get leavingGroupDesc => 'This will not allow you to create new split requests, but you will be able to participate in existing split requests.';

  @override
  String get yesSure => 'Yes, sure';

  @override
  String get leftGroupSuccessfully => 'You have left the group successfully';

  @override
  String get invitedToAtoa => 'Invited to Atoa';

  @override
  String get duplicateMemberError => 'Cannot add same member twice';

  @override
  String get splitReqMemberMinAmountErrorText => 'Min Value :- £1';

  @override
  String get groupFetchError => 'Failed to fetch group details';

  @override
  String get splitReqCantCloseErrorMsg => 'This Split Request cannot be closed, as some payment is still in progress';

  @override
  String get emptyGroupCTA => 'Creating a new split request requires adding members to the group besides yourself';

  @override
  String get taxCharge => 'Tax Charge';

  @override
  String get serviceCharge => 'Service Charge';

  @override
  String get discount => 'Discount';

  @override
  String get vatCharge => 'VAT Charge';

  @override
  String get orderDetailsNotFound => 'Order Details Not Found';

  @override
  String get orderDetailsNotFoundDescription => 'We’re facing some difficulty fetching the details of your order. You can continue with the payment or ask for support from the staff if you’d like to confirm the details.';

  @override
  String get orderAlreadyPaid => 'This Order has already been paid,\nThanks for using Atoa!';

  @override
  String get total => 'Total';

  @override
  String get kycPendingTitle => 'Verify Your Identity';

  @override
  String get kycPendingDesc => 'To continue using Atoa without payment limits';

  @override
  String get kycSuccessTitle => 'ID Verification Successful';

  @override
  String get kycSuccessDesc => 'You can now make as many payments as you need, without limits';

  @override
  String get kycProcessingTitle => 'ID Verification Processing';

  @override
  String get kycProcessingDesc => 'Please wait while we review your details';

  @override
  String get kycFailedTitle => 'ID Verification Failed';

  @override
  String get kycFailedDesc => 'Incorrect document provided, please try again';

  @override
  String get paymentLimitUsed => 'Payment limit used';

  @override
  String get identityVerification => 'ID Verification';

  @override
  String get identityVerificationDesc => 'Verifying your identity\nhelps us keep Atoa safe for everyone.';

  @override
  String get verifyingYourDetails => 'Verifying your Details';

  @override
  String get uploadIdentityDocuments => 'Upload Passport / UK Driving License / Biometric Residence Permit and Upload selfie';

  @override
  String get kycDocumentsExplanation => 'We need this information in order to protect merchants and consumers.';

  @override
  String get startVerification => 'Start Verification';

  @override
  String get proofOfIdentity => 'Proof of Identity';

  @override
  String get proofOfIdentityDesc => 'Upload a clear picture that includes your\nPhoto and Name on your ID';

  @override
  String get verifyDetails => 'Verify Details';

  @override
  String get verifyDetailsDesc => 'Verify that the information in your documents matches the details displayed below';

  @override
  String get passportOrBiometricResidencePermit => 'Passport';

  @override
  String get licenseFront => 'Front';

  @override
  String get licenseBack => 'Back';

  @override
  String get aSelfie => 'a Selfie';

  @override
  String get ukDrivingLicense => 'UK Driving License or\nBiometric Residence Permit';

  @override
  String get uploadFailed => 'Upload failed, please retry';

  @override
  String loadingProgress(int progress) {
    return '$progress% Uploading...';
  }

  @override
  String get upload => 'Upload';

  @override
  String get uploaded => 'Uploaded';

  @override
  String get clearSelfieDesc => 'Please ensure your face is clearly visible in the photo, as it will be used for identification purposes.';

  @override
  String get proceed => 'Proceed';

  @override
  String get retakeSelfie => 'Retake Selfie';

  @override
  String get addressLine1 => 'Address Line 1';

  @override
  String get addressLine1InputHint => 'Street / Building';

  @override
  String get addressLine2 => 'Address Line 2';

  @override
  String get addressLine2InputHint => 'Unit / Flat Number';

  @override
  String get cityTown => 'City / Town';

  @override
  String get postcode => 'Post Code';

  @override
  String get postcodeInputHint => '555-555';

  @override
  String get submitForVerification => 'Submit for Verification';

  @override
  String get chooseFromFiles => 'Choose from Files';

  @override
  String get kycSubmittedSuccess => 'Your KYC details have been submitted successfully';

  @override
  String get paymentStarted => 'Payment Started';

  @override
  String get pageNotFound => 'Page Not Found';

  @override
  String get pageNotFoundDescription => 'Oops! The page you’re looking for was moved, removed or might have never existed';

  @override
  String get ageCTA => 'You need to be 18+ years old to use Atoa';

  @override
  String get here => 'here';

  @override
  String get referBusinessPart1 => 'Time to level up? Refer business owners that you know to ';

  @override
  String get atoaBusiness => 'Atoa Business';

  @override
  String referBusinessPart2(String cashback, String transactOver) {
    return '. You\'ll earn $cashback when they take $transactOver in payments.';
  }

  @override
  String get removeFromGroup => 'Remove from Group';

  @override
  String get editID => 'Edit ID';

  @override
  String get confirmHashIdTitle => 'Please confirm your\nAtoa ID';

  @override
  String get confirmHashIdDesc => 'This ID will be permanent and\ncannot be changed later';

  @override
  String get enterYourMobile => 'Enter your mobile number';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get betterLuckNextTime => 'Better luck\nnext time';

  @override
  String get totalCashbackReceived => 'Total Cashback Received';

  @override
  String get bySigningUp => 'By Continuing you agree to the';

  @override
  String get contactSearchHint => 'Search contacts to invite';

  @override
  String get inviteFriends => 'Invite Friends';

  @override
  String get contactsConsentText => 'We only store details like Name and Number of contacts for letting you do Instant Bank payments to your friends and also used for crediting referral bonuses. We do not share your contacts with anyone outside of Atoa and its contracted service providers. You can read more on our';

  @override
  String get fetchContactFailure => 'Unable to fetch contacts';

  @override
  String get noContactsFound => 'No Contacts Found';

  @override
  String rewardText(double amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 0,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return 'Get $amountString';
  }

  @override
  String winText(int amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 0,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return 'Win $amountString';
  }

  @override
  String get win => 'Win';

  @override
  String winUpto(double amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 0,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return 'Win upto $amountString';
  }

  @override
  String get freePayments => 'Atoa has a free monthly\npayment limit';

  @override
  String get freePaymentsDesc => 'Ditch your wallet and pay for free at any store using Atoa. You can use it unlimited times, but there\'s a limit to the number of free payments you can make to friends. Don\'t worry, it refreshes each month!';

  @override
  String get freePaymentsReachedMsg => 'You’ve reached your\nfree monthly payment\nlimit';

  @override
  String get freePaymentsReachedDesc => 'Ditch your wallet and pay for free at any store using Atoa. You can use it unlimited times, but there\'s a limit to the number of free payments you can make to friends. Don\'t worry, it refreshes each month!';

  @override
  String get paymentLimitReachedErrorTitle => 'User has reached\ntheir payment limit';

  @override
  String get paymentLimitReachedErrorDesc => 'This user has exceeded the monthly payment limit for personal use. Ask them to use the Atoa business app to accept unlimited payments.';

  @override
  String get startPayment => 'Start Payment';

  @override
  String get claimReward => 'Claim Reward';

  @override
  String hiUser(String firstName) {
    return 'Hi, $firstName!';
  }

  @override
  String get payments => 'Payments';

  @override
  String wonText(double amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 0,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return 'Won $amountString';
  }

  @override
  String get vatIncluded => 'VAT Included';

  @override
  String get verifyingTheCode => 'Verifying the code...';

  @override
  String get gifsHint => 'Search powered by Tenor GiFs';

  @override
  String get noBankAccountErrorTitle => 'Oops, the receiver’s\naccount is not linked';

  @override
  String get noBankAccountErrorDesc => 'To receive funds, the receiver needs to connect their bank account. Please ask them to link their bank account.';

  @override
  String get transactionLimitErrorTitle => 'This user has reached\ntheir payment limit';

  @override
  String get transactionLimitErrorDesc => 'Ask them to verify their ID on Atoa to accept payments from anyone.';

  @override
  String get merchantSuspendedErrorTitle => 'Oops, unable to proceed\nwith payment';

  @override
  String get merchantSuspendedErrorDesc => 'The business you\'re trying to pay has been suspended for unusual payment behaviour.';

  @override
  String get trustBusinessText => 'I trust this Business and accept';

  @override
  String get atoaTermsAndService => 'Atoa\'s Terms of service.';

  @override
  String get selfTransferErrorTitle => 'You can’t pay yourself!';

  @override
  String get selfTransferErrorDesc => 'We couldn\'t process your transaction as you\'re trying to send money to the same bank account. Please double-check the account details and try again.';

  @override
  String get potentialConsumerInviteTitle => 'Your friend needs to join\nAtoa to receive payments.';

  @override
  String potentialConsumerInviteDesc(double amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 0,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return 'When they complete their first payment,\nyou\'ll both get $amountString cashback.';
  }

  @override
  String inviteAndWin(double amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 0,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return 'Invite and Win $amountString';
  }

  @override
  String get successfullyInvitedTitle => 'Successfully invited';

  @override
  String get successfullyInvitedDesc => 'Yay! You are one step closer to completing your payment and receiving your rewards.';

  @override
  String get unableToProceedPayment => 'Oops, unable to proceed \n with the payment...';

  @override
  String get inviteBusinesses => 'Invite Businesses';

  @override
  String get updatedTermsTitle => 'Some Legal Bits...';

  @override
  String get updatedTermsDesc => 'We occasionally have to update our Terms and Conditions. Please read and accept our updated Terms of Use, Terms of Service, and Privacy Policy. You can also access at any time via the Legal section of this App.';

  @override
  String get termsOfUse => 'Terms of Use';

  @override
  String get iHaveReadTerms => 'I’ve read and agree to our ';

  @override
  String get accept => 'Accept';

  @override
  String get platformTermsOfUse => 'Platform Terms of Use';

  @override
  String get completeToUnlock => 'Complete more payments to unlock';

  @override
  String hadRequested(double amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 2,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return 'had requested $amountString';
  }

  @override
  String getAmountEach(double amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 0,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return 'Get $amountString Each';
  }

  @override
  String get good => 'Good';

  @override
  String get great => 'Great';

  @override
  String get amazing => 'Amazing';

  @override
  String get custom => 'Custom';

  @override
  String get newRequest => 'New Request';

  @override
  String get newRequestDescription => 'Invite friends and send funds to their bank';

  @override
  String get searchBarHintText => 'Search by contact or #ID';

  @override
  String get exploreChallengesCapital => 'EXPLORE CHALLENGES';

  @override
  String get exploreAtoaCapital => 'EXPLORE ATOA';

  @override
  String get appUnderMaintenance => 'App Under Maintenance';

  @override
  String get appUnderMaintenanceDesc => 'We\'re sprucing things up to bring you a smoother experience. We\'ll be back before you know it.';

  @override
  String get appUnderMaintenanceThankyou => 'Thank you for your understanding.';

  @override
  String get somethingWentWrong => 'Oops! Something Went Wrong';

  @override
  String get lowConnectivityError => 'We\'re having trouble connecting to the server at the moment. Please ensure you have a stable internet connection and try reopening the app.';

  @override
  String get finish => 'Finish';

  @override
  String get homePageCoachMark1Desc => 'No more IOUs! Send instant payments to friends and family across any UK bank account';

  @override
  String get homePageCoachMark2Desc => 'Scan Atoa QR codes to pay in-store and help local businesses save on card fees. You can win rewards too!';

  @override
  String get homePageCoachMark3Desc => 'Send money to family and friends for free across any UK Bank';

  @override
  String get homePageCoachMark4Desc => 'No bank details, no problem. Split bills with friends and family in seconds...';

  @override
  String get homePageCoachMark5Desc => 'Atoa Pay rewards you for just using it! New challenges will appear here, so keep checking back';

  @override
  String get qrCodePageCoachMark1Desc => 'Friends can use this unique #ID to search for you on Atoa';

  @override
  String get qrCodePageCoachMark2Desc => 'Flash this QR code at anyone to get paid instantly... it\'s that easy! ';

  @override
  String get splitBillsCoachMark1Title => 'Split Bill Tracker';

  @override
  String get splitBillsCoachMark1Desc => 'Keep tabs on amounts due in and out';

  @override
  String get splitBillsCoachMark2Title => 'Your Split Groups';

  @override
  String get splitBillsCoachMark2Desc => 'Stay on top of your group expenses - check and edit the summary or start a new bill ';

  @override
  String shareMyQrDesc(String name, String link) {
    return 'Please scan this QR code (or follow the link) to pay \"$name\" instantly using Atoa Pay!\n$link';
  }

  @override
  String get bankSliderTitle => 'COMPATIBLE WITH ALL MAJOR UK BANKING APPS';

  @override
  String get permissionRequired => 'Permission Required';

  @override
  String get permissionRequiredDesc => 'To send invites, we need permission\nto access your contacts';

  @override
  String get howWeCollectData => 'How we collect data';

  @override
  String get howWeCollectDataTitle => 'Your data is safe with us';

  @override
  String get business => 'Business';

  @override
  String winCashbackText(int amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 0,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return 'Win $amountString Cashback';
  }

  @override
  String get paymentDetails => 'Payment Details';

  @override
  String get rewardsCollected => 'REWARDS COLLECTED';

  @override
  String get atoaLogoDesc => 'Can’t pay \nfairer than that™';

  @override
  String get saveChanges => 'Save Changes';

  @override
  String get viewLicenses => 'View Licenses';

  @override
  String get payInStore => 'Pay-in-store';

  @override
  String get sendReferralReminderDesc => 'Send your friends a quick\nnudge to download Atoa';

  @override
  String get verify => 'Verify';

  @override
  String get updateAvailable => 'Update Available';

  @override
  String get later => 'Later';

  @override
  String get updateNow => 'Update Now';

  @override
  String get cannotSeeReferral => 'Can\'t see your referral?';

  @override
  String get noPayments => 'No payments yet. Time for lift off?';

  @override
  String get theme => 'Theme';

  @override
  String get systemPrefs => 'Use system preferences';

  @override
  String get light => 'Light';

  @override
  String get dark => 'Dark';

  @override
  String get galleryPermission => 'Please grant Atoa permission to access your picture gallery. This can be found in settings.';

  @override
  String get cameraPermission => 'Please grant Atoa permission to access your camera. This can be found in settings.';

  @override
  String get documentsPermission => 'Please grant Atoa permission to access your documents. This can be found in settings.';

  @override
  String get invalidQR => 'This QR is invalid now';

  @override
  String get notAtoaQR => 'This QR is not a Atoa Supported QR.';

  @override
  String get noQrCodeFound => 'No QR code found in image';

  @override
  String get alreadySelected => 'Already Selected';

  @override
  String get bankIsDown => 'This bank is down at this moment, please try with some different account or try again later';

  @override
  String get select2Person => 'Select atleast 2 person to create split request';

  @override
  String emptyJoinedReferral(double amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 0,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return 'Make sure your friends join Atoa and make $amountString+ in payments for you to be rewarded ';
  }

  @override
  String get notificationCard => 'Notification Card';

  @override
  String get userProfileImage => 'User Profile Image';

  @override
  String get payAndRequestContactsSearchBar => 'Pay and Request Contact\'s Search Bar';

  @override
  String get reSyncAllContacts => 'ReSync All Contacts';

  @override
  String get countryCodePicker => 'Country code Picker';

  @override
  String get closeFreePaymentInfoDialogIcon => 'Close Free Payment Info Dialog Icon';

  @override
  String get payInStoreButton => 'Pay In Store Button';

  @override
  String get referYourFriendsButton => 'Refer Your Friends Button';

  @override
  String get checkbox => 'Checkbox';

  @override
  String get contactTile => 'Contact Tile';

  @override
  String get closeIcon => 'Close Icon';

  @override
  String get optionTile => 'Option Tile';

  @override
  String get shareCard => 'Share Card';

  @override
  String get goBackToPreviousCoachMark => 'Go back to previous coach mark';

  @override
  String get appLockEnableSwitch => 'App Lock Enable Switch';

  @override
  String get groupNameEditIcon => 'Group Name Edit Icon';

  @override
  String get bankAccountTile => 'Bank Account Tile';

  @override
  String get searchBar => 'Search Bar';

  @override
  String get transactionTab => 'Transactions Tab';

  @override
  String get shareIcon => 'Share Icon';

  @override
  String get refreshIcon => 'Refresh Icon';

  @override
  String get transactionDetails => 'Transaction Details';

  @override
  String get transactionRewardBanner => 'Transaction Reward Banner';

  @override
  String get senderReceiverProfilePicture => 'Sender/Receiver Profile Picture';

  @override
  String get senderReceiverName => 'Sender/Receiver Name';

  @override
  String get gifs => 'Gifs';

  @override
  String get bankCard => 'Bank Card';

  @override
  String get splitGroupMenu => 'Split Group Menu';

  @override
  String get cashbackClaimableCard => 'Cashback Claimable Card';

  @override
  String get cashbackClaimedCard => 'Cashback Claimed Card';

  @override
  String get cashbackInProgressCard => 'Cashback In-Progress Card';

  @override
  String get documentType => 'Document Type';

  @override
  String get kycSuccessCard => 'KYC Success Card';

  @override
  String get kycFailedCard => 'KYC Failed Card';

  @override
  String get kycPendingCard => 'KYC Pending Card';

  @override
  String get userInforamtion => 'User Information';

  @override
  String get uiBackButton => 'UI Back Button';

  @override
  String get acceptTermsAndConditions => 'Accept Terms And Conditions';

  @override
  String get addNotesField => 'Add Notes Field';

  @override
  String get editIcon => 'Edit Icon';

  @override
  String get addCustomTipOption => 'Add Custom Tip Option';

  @override
  String get tipsCard => 'Tips Card';

  @override
  String get paymentMessageCard => 'Payment Message Card';

  @override
  String get scanQrFromGallery => 'Scan QR From Gallery';

  @override
  String get referralInformationCard => 'Referral Information Card';

  @override
  String get referralContactTile => 'Referral Contact Tile';

  @override
  String get selectReferralContact => 'Select Referral Contact';

  @override
  String get scratchCard => 'Scratch Card';

  @override
  String get bankAccountDetails => 'Bank Account Details';

  @override
  String get splitGroup => 'Split Group';

  @override
  String get enterGroupNameField => 'Enter Split Group Name Field';

  @override
  String get splitEquallySwitch => 'Split Equally Switch';

  @override
  String get splitGroupActionMenu => 'Split Group Action Menu';

  @override
  String get clearSelectedGif => 'Clear Selected Gif';

  @override
  String get enableOrDisableTorch => 'Enable or Disable Torch';

  @override
  String get selectGif => 'Select Gifs';

  @override
  String get findMoreGifs => 'Find More Gifs';

  @override
  String get clearSearchFieldIcon => 'Clear Search Field Icon';

  @override
  String get splitGroupProfilePhoto => 'Split Group Profile Photo';

  @override
  String get editOrAddGroupPhotoIcon => 'Edit Or Add Group Photo Icon';

  @override
  String get splitRequestCard => 'Split Request Card';

  @override
  String get openSplitRequestIcon => 'Open Split Request Icon';

  @override
  String get splitRequestSenderCard => 'Split Request Sender Card';

  @override
  String get splitRequestMemberEdit => 'Split Request Member Edit Tile';

  @override
  String get selectSplitRequestMember => 'Select Split Request Member';

  @override
  String get closeKeyboard => 'Close Keyboard';

  @override
  String get enterGroupName => 'Enter Group Name';

  @override
  String get enterSplitAmount => 'Enter Split Amount';

  @override
  String get editSplitAmount => 'Edit Split Amount';

  @override
  String get enterYourEmailAddress => 'Enter Yuor Email Address';

  @override
  String get enterUniqueHashId => 'Enter Unique Hash ID';

  @override
  String get hashId => 'Hash Id';

  @override
  String get selectYourDateOfBirth => 'Select Your Date of Birth';

  @override
  String get enterYourCity => 'Enter Your City/Town';

  @override
  String get enterAddressLine1 => 'Enter Address Line 1';

  @override
  String get enterTotalAmountForPayment => 'Enter Total Amount For Payment';

  @override
  String get enterTipAmount => 'Enter Tip Amount';

  @override
  String get copiedToClipboard => 'Copied to clipboard';

  @override
  String get suggestedGifTopics => 'Suggested Gif Topics';

  @override
  String get unselectTipIcon => 'Unselect Tip Icon';

  @override
  String get referralTabBar => 'Referral Tab Bars';

  @override
  String get appThemeToggle => 'App Theme Toggle';

  @override
  String get moreDetailsIcon => 'More Details Icon';

  @override
  String get copyCodeIcon => 'Copy Referral Code Icon';

  @override
  String get inviteFriendDesc => 'To send invites, we need permission\nto access your contacts';

  @override
  String get inviteFriendConsent => 'When you invite a contact, we only store their name and number so you can track the referral. We never share your contacts outside of Atoa. Read more in our ';

  @override
  String get yourInvites => 'Your Invites';

  @override
  String get joined => 'Joined';

  @override
  String get referral => 'referral';

  @override
  String get noPendingReferralMessage => 'You\'re unstoppable! There\'s no limit on invites, so keep sharing to earn more.';

  @override
  String get invalidPhoneNumber => 'Please provide a valid phone number';

  @override
  String get forceAuthorizeBankTitle => 'Having trouble connecting?';

  @override
  String get forceAuthorizeBankDesc => 'Trouble linking your bank account? Tap the button below to connect using your browser.';

  @override
  String get tryNow => 'Try Now';

  @override
  String doYouKnow(String name) {
    return 'Do you know $name?';
  }

  @override
  String get paymentWarning => 'This person doesn’t seem to be in your phonebook. Make sure you’re sending money to someone you know and trust.';

  @override
  String get paymentWarningDesc => 'If you do choose to continue with this payment, Atoa and your Bank will not be able to refund you.';

  @override
  String get cancelThisPayment => 'Cancel This Payment';

  @override
  String get continueToPay => 'Continue to Pay';

  @override
  String get seeOur => 'See Our ';

  @override
  String get forMore => ' for more.';

  @override
  String get splitEqually => 'Split Equally';

  @override
  String get peopleSmall => 'people';

  @override
  String get payFor => 'Pay for';

  @override
  String get outOf => 'Out of';

  @override
  String proceedToPay(double amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 2,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return 'Proceed to Pay $amountString';
  }

  @override
  String amountText(double amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 2,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return '$amountString';
  }

  @override
  String get enterCustomAmount => 'Enter Custom Amount';

  @override
  String get splitTheBill => 'Split the Bill';

  @override
  String maxAmountError(double amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 2,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return 'Enter an amount lesser than\nyour bill of $amountString';
  }

  @override
  String atLocation(String location) {
    return 'at $location';
  }

  @override
  String get yourTotalBill => 'Your total bill';

  @override
  String get leftToPay => 'Left to pay';

  @override
  String get paymentsMade => 'Payments made';

  @override
  String get itemsPurchased => 'Items Purchased';

  @override
  String get totalDiscount => 'Total Discount';

  @override
  String get appSolutelyLovingAtoa => 'App-solutely loving Atoa?';

  @override
  String get notReally => 'Not really';

  @override
  String get yes => 'Yes!';

  @override
  String get negativeReviewSorryMessage => 'Oh dear, we’re sorry!\nHow can we make the app better for you?';

  @override
  String get typeYourFeedbackHere => 'Type your feedback here...';

  @override
  String get submit => 'Submit';

  @override
  String get submitWithoutDetails => 'Submit Without Details';

  @override
  String get appReviewSubmittedSheetTitle => 'We love hearing from you!';

  @override
  String get appReviewSubmittedSheetDesc => 'Thanks for your feedback – it helps us to make Atoa bigger and better.';

  @override
  String get loading => 'Loading';

  @override
  String timeIn12Hour(DateTime time) {
    final intl.DateFormat timeDateFormat = intl.DateFormat('hh:mm a', localeName);
    final String timeString = timeDateFormat.format(time);

    return '$timeString';
  }

  @override
  String get nationality => 'Nationality';

  @override
  String get occupation => 'Occupation';

  @override
  String get sourceOfIncome => 'Primary Source of income';

  @override
  String get homeAddress => 'Home address';

  @override
  String get extraDetails => 'Extra Details';

  @override
  String extraDetailsDesc(double amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 0,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return 'We’re required under law to collect some basic details from you for any payments that exceed $amountString';
  }

  @override
  String get extraDetailsMsg => 'For amounts over £15,000, provide extra details in the next step.';

  @override
  String get selectNationality => 'Select Nationality';

  @override
  String get searchNationality => 'Search for your nationality';

  @override
  String get selectOccupation => 'Select Occupation';

  @override
  String get selectSourceOfWealth => 'Select Source of Wealth';

  @override
  String required(String field) {
    return '$field *';
  }

  @override
  String bankPaymentAmountLimitErrMsg(String name, double amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 0,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return '$name\'s payment limit is $amountString – please select another bank to pay from.';
  }

  @override
  String get paidByYou => 'Paid by you';

  @override
  String get paidBySomeoneElse => 'Paid by others';

  @override
  String get goBackToBill => 'Go back to Bill';

  @override
  String get plusTip => '+Tip';

  @override
  String get amountLeftUpdatedTitle => 'Amount left to pay is Updated';

  @override
  String get amountLeftUpdatedDesc => 'Someone else made a payment, please check again and proceed';

  @override
  String splittingBy(int count) {
    return 'Splitting by $count';
  }

  @override
  String get splitDifferently => 'Split Differently';

  @override
  String get tapToEnterAmount => 'Tap to Enter Amount';

  @override
  String get uptoDateBill => 'Bill is up to date';

  @override
  String lastPaidDate(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat('MMM d yyyy, hh:mm a', localeName);
    final String dateString = dateDateFormat.format(date);

    return 'Last paid on $dateString';
  }

  @override
  String get splitBillPaidErrorTitle => 'Split bill has already been paid';

  @override
  String get splitBillPaidErrorDesc => 'Oops! It looks like the split bill you\'re trying to pay has already been paid.';

  @override
  String leftoverAmountError(double minAmount, double amount) {
    final intl.NumberFormat minAmountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 2,
      name: 'GBP',
      symbol: '£'
    );
    final String minAmountString = minAmountNumberFormat.format(minAmount);
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 2,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return 'The leftover amount can\'t be less than $minAmountString,\ntry to pay the full amount of $amountString';
  }

  @override
  String get amountToShare => 'Amount to share';

  @override
  String payLeftover(double amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 2,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return 'Pay What’s Left $amountString';
  }

  @override
  String get selectAnotherBank => 'Select Another Bank';

  @override
  String get inviteBusinessDesc => 'Help them save on card fees';

  @override
  String inviteFriendsDesc(double amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 0,
      name: 'GBP',
      symbol: '£'
    );
    final String amountString = amountNumberFormat.format(amount);

    return 'Share the love and get $amountString';
  }

  @override
  String get dismiss => 'Dismiss';

  @override
  String get removePhoto => 'Remove Photo';

  @override
  String paidOn(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat('MMM d yyyy, hh:mm a', localeName);
    final String dateString = dateDateFormat.format(date);

    return 'Paid on $dateString';
  }

  @override
  String referenceNo(String reference) {
    return 'Reference : $reference';
  }

  @override
  String get bankTabBar => 'Bank Tab Bar';

  @override
  String get personalBanks => 'Personal Banks';

  @override
  String get businessBanks => 'Business Banks';
}
