# Atoa Sdk

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

## Overview

The Atoa Payment Client for Flutter platform provides a convenient way to integrate payment functionality into your Flutter applications using Atoa SDK.

## Installation

To use the Atoa Payment Client in your Flutter project, follow these steps:

Add the following dependency to your pubspec.yaml file:

```yaml
dependencies:
  atoa_flutter_sdk: <latest-release>
```

Run `flutter pub get` to install the package.

## Handling Response

The bottom sheet returns a response in a nullable bool. You can handle this response accordingly in your application logic.

```dart
final paymentDetails = await AtoaSdk.show(
context,
paymentId: '<payment-request-id>',
interval: Duration(seconds: 5),
);
if (paymentDetails != null) {
// Handle the payment status
} else {
// Bottom sheet was dismissed or encountered an error
}
```

## Payment Status Display

The bottom sheet is responsible for showing the payment status. It will display relevant information regarding the payment process.

## Dismissal Behavior

The bottom sheet automatically dismisses itself after the latest payment status is fetched. You don't need to manually dismiss it.

## Parameters

`BuildContext`: This parameter is required and represents the context in which the bottom sheet will be shown.

`paymentId` (named parameter): This parameter is optional and represents the ID of the payment for which the status is being fetched. If provided, it allows the Atoa SDK to fetch the payment status associated with this ID.

`interval` (named parameter): This parameter is optional and specifies the duration at which intervals the payment status will be fetched regularly. It takes a Duration object, allowing developers to customize the interval as needed. If not provided, the SDK may use a default interval.

Ensure that you provide valid values for these parameters according to your application's requirements.

## Note

Ensure that you have the necessary configurations set up for Atoa SDK integration, such as API keys and permissions, before using the Atoa Payment Client. Please refer to the official Atoa documentation for more details.

For any issues or inquiries, please contact support@atoa.com.

[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
