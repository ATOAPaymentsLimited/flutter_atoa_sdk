# Atoa Mobile Client SDK

The official mobile client SDK for integrating Atoa Payments into mobile applications.

[![pub package](https://img.shields.io/pub/v/atoa_flutter_sdk.svg)](https://pub.dartlang.org/packages/atoa_flutter_sdk)
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]
![Atoa SDK Flow][atoa_banner]

## Overview

The Atoa Mobile Client SDK allows merchants to easily integrate Atoa Payments into their mobile applications. The SDK provides a simple interface for showing a payment page that handles the entire payment flow securely and efficiently.

- [Installation](#installation)
- [Usage](#usage)
- [Example][example]
- [Complete Demo App](demo_app/lib/main.dart)
- [Handle Redirection](#handle-redirection-optional) (Optional)

| Please refer our official flutter documentation [here](https://docs.atoa.me/).

## Installation

Run following to add Atoa SDK to your flutter project

```sh
flutter pub add atoa_flutter_sdk
```

## Usage

Sample code to integrate can be found in [demo_app\lib\widgets\pay_now_bottom_sheet.dart](demo_app\lib\widgets\pay_now_bottom_sheet.dart).

#### Import package

```dart
import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
```

#### Show Payment Sheet

It's a full screen sheet which shows all the available bank list then once user selects the bank. They will be redirected to their bank app or website.

```dart
final paymentDetails = AtoaSdk.pay(
      context,
      paymentId: 'your-payment-request-id',
      showHowPaymentWorks: false,
      customerDetails: const CustomerDetails(
        phoneCountryCode: '44',
        phoneNumber: '8788899999',
        email: 'aaa@gmail.com',
      ),
      env: AtoaEnv.prod,
      // or AtoaEnv.sandbox

      onUserClose: (paymentRequestId) {
        // handle payment when user close the payment verification bottom sheet

         ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: RegalColors.darkOrange,
            content: Text(
             'User closed the payment for paymentRequestId: $paymentRequestId',
            ),
          ),
        );
      },
      onPaymentStatusChange: (status) {
        // handle payment status
         print('Payment Status Changed to $status');
      },
      onError: (error) {
        // handle Atoa Mobile SDK error
         print('Error in Atoa Mobile SDK ${error.message}');
      },
    );
```

### Customer Details for Previously Used Banks

The SDK supports displaying banks the customer has previously paid with through the `customerDetails` parameter:

#### Important Notes About Customer Details

- **Uniqueness**: The `customerDetails` should be a unique identifier for each customer in your system.
- **Persistence**: When a customer completes a payment, the bank they used is remembered and associated with this customerDetails.
- **Returning Customers**: For returning customers, providing the same `customerDetails` allows the SDK to offer the option to pay with banks they've previously used.
- **Security**: The information about previously used banks is securely stored by Atoa, not in your application.
- **Optional**: This parameter is optional. If not provided, each payment will be treated as a new transaction without showing previously used banks.

#### Best Practices

- Use a consistent and unique identifier from your system (e.g., user ID, customer reference).
- Keep the same `customerDetails` across all payments for the same customer to ensure continuity of previously used banks.
- Consider user consent and data privacy regulations when implementing this functionality.

## API Reference

#### Parameters

- `options`: Configuration object (required)
  - `environment`: The Atoa environment to use (enum: 'SANDBOX', 'PRODUCTION')
  - `paymentRequestId`: The payment request ID (required)
  - `customerDetails`: Customer details for the payment (optional)
  - `onError`: Error callback function (optional)
  - `onPaymentStatusChange`: Callback for payment status updates (optional)
  - `onUserClose`: Callback when payment dialog is closed (optional)

#### Detailed SDK Options

##### Environment

- Type: `EnvironmentTypeEnum`
- Required: Yes
- Values: 'SANDBOX' | 'PRODUCTION'
- Description: Specifies which Atoa environment to use for the payment

##### Payment Request ID

- Type: `string`
- Required: Yes
- Description: Unique identifier for the payment request

##### Customer Details

- Type: `CustomerDetails`
- Required: No
- Description: Customer information for the payment. When provided, the SDK will use this information to fetch the last bank used by the customer for payment, improving the user experience by showing their preferred bank first.

##### Event Handlers

###### onError

- Type: `(error: AtoaException) => void`
- Description: Called when an error occurs during the payment process
- Parameters:
  - `error`: Error object containing:
    - `message`: Error message
    - `details`: Additional error details (if available)

###### onPaymentStatusChange

- Type: `(data: { status: string; paymentRequestId: string; paymentIdempotencyId?: string }) => void`
- Description: Called when the payment status changes
- Parameters:
  - `data`: Status data object containing:
    - `status`: Current payment status
    - `paymentRequestId`: The payment request ID
    - `paymentIdempotencyId`: (optional) Payment idempotency ID

###### onUserCancel

- Type: `(paymentRequestId: string) => void`
- Description: Called when the user cancels the payment
- Parameters:
  - `paymentRequestId`: The payment request ID

### Methods

#### pay()

Shows the payment sheet with the configured options.

```dart
AtoaSdk.pay();
```

This method:

- Creates a custom mobile component for the payment sheet
- Handles all payment flow interactions

**Returns:**

- `TrasnactionDetails`

### Event Callbacks

#### onError(error)

Called when an error occurs during the payment process.

**Parameters:**

- `error`: Error object with:
  - `message`: Error message
  - `details`: Additional error details (if available)

#### onPaymentStatusChange(data)

Called when the payment status changes.

**Parameters:**

- `data`: Status data object with:
  - `status`: Current payment status
  - `paymentRequestId`: The payment request ID
  - `paymentIdempotencyId`: (optional) Payment idempotency ID

#### onUserCancel(paymentRequestId)

Called when the user cancels the payment.

**Parameters:**

- `paymentRequestId`: The payment request ID

## Handle Redirection (Optional)

Call the [payment-process](https://docs.atoa.me/api-reference/Payment/process-payment) API to generate a payment. In response, store the `paymentRequestId` on the backend. The `redirectUrl`, which can be passed as body parameters, redirects to your website and then opens your app via deep linking.

#### Resources For deep-linking

- [Flutter Docs](https://docs.flutter.dev/ui/navigation/deep-linking)
- [Code With Andrea](https://codewithandrea.com/articles/flutter-deep-links/)

For any issues or inquiries, please contact hello@paywithatoa.co.uk.

[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[atoa_banner]: https://raw.githubusercontent.com/ATOAPaymentsLimited/flutter_atoa_sdk/main/assets/atoa-sdk-flow.png
[example]: https://github.com/ATOAPaymentsLimited/flutter_atoa_sdk/tree/main/example

## License

MIT © [Atoa Payments Limited](https://github.com/ATOAPaymentsLimited)
