# Atoa Sdk

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)
[![License: MIT][license_badge]][license_link]

## Overview
The Atoa Payment Client for Flutter platform provides a convenient way to integrate payment functionality into your Flutter applications using Atoa SDK.

## Installation
To use the Atoa Payment Client in your Flutter project, follow these steps:

Add the following dependency to your pubspec.yaml file:

```yaml
dependencies:
  flutter_atoa_sdk: ^1.0.0
```

Run `flutter pub get` to install the package.

Usage
Showing Bottom Sheet
To show the Atoa Payment Client's bottom sheet, call the AtoaSdk.show method. This will display the bottom sheet with payment status.

```dart
import 'package:flutter/material.dart';
import 'package:atoa_payment_client/atoa_payment_client.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Atoa Payment Client Demo'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              bool? paymentStatus = await AtoaSdk.show(
                context, // BuildContext as the first positional parameter
                paymentId: 'your_payment_id_here', // paymentId as a named parameter
                period: Duration(seconds: 5), // interval at which status will be fetched
              );
              if (paymentStatus != null) {
                // Handle payment status
              } else {
                // Handle dismissal or error
              }
            },
            child: Text('Show Payment Bottom Sheet'),
          ),
        ),
      ),
    );
  }
}
```

## Handling Response
The bottom sheet returns a response in a nullable bool. You can handle this response accordingly in your application logic.

```dart
bool? paymentStatus = await AtoaSdk.show(
context,
paymentId: 'your_payment_id_here',
period: Duration(seconds: 5),
);
if (paymentStatus != null) {
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

`period` (named parameter): This parameter is optional and specifies the duration at which intervals the payment status will be fetched regularly. It takes a Duration object, allowing developers to customize the interval as needed. If not provided, the SDK may use a default interval.

Ensure that you provide valid values for these parameters according to your application's requirements.

## Note
Ensure that you have the necessary configurations set up for Atoa SDK integration, such as API keys and permissions, before using the Atoa Payment Client. Please refer to the official Atoa documentation for more details.

For any issues or inquiries, please contact support@atoa.com.

[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
