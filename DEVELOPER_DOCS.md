# Developer Docs

Steps to integrate Atoa in your Flutter App:

#### 0. [Prerequisites](#prerequisites)

#### 1. [Install Atoa Flutter Package.](#installation)

#### 2. [Import Package.](#import-package)

#### 3. [Create a Payment Request in Server.](#create-a-payment-in-server)

#### 4. [Initiate Payment.](#initiate-payment)

#### 5. [Handle Payment Status.](#handle-payment-status)

#### 6. [Store Fields in Server.](#store-fields-in-server)

#### 7. [Verify Payment Signature.](#verify-payment-signature)

## Prerequisites

First, you must create an Atoa account and generate the access secret. See the Getting Started guide for more [information](https://docs.atoa.me/introduction#step-1-sign-up-for-developer-access).

## Installation

Run the following to add Atoa SDK to your Flutter project

```sh
flutter pub add atoa_flutter_sdk
```

## Import package

```dart
import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
```

## Create a Payment Request in Server

```sh
https://api.atoa.me/api/payments/process-payment
```

```sh
curl --location --request POST 'https://api.atoa.me/api/payments/process-payment' \
--header 'Authorization: Bearer {Access Secret}' \
--header 'Content-Type: application/json' \
--data-raw '{
    "customerId": "<Your Unique Customer Id>",
    "orderId": "<Order Id>",
    "amount": "<Total Amount >",
    "currency": "GBP",
    "paymentType": "<DOMESTIC>",
    "autoRedirect": "<true or false>",
    "consumerDetails": {
      "phoneCountryCode": "<Country Code>",
      "phoneNumber": "<Phone Number>"
  }
}'

```

Check the [process-payment](https://docs.atoa.me/api-reference/Payment/process-payment) for further information.

## Initiate Payment

Pass the paymentRequestId, which you got by calling the [process-payment](https://docs.atoa.me/api-reference/Payment/process-payment) API.

```dart
final transactionDetails = await AtoaSdk.show(
  context,
  paymentId: '<payment-request-id>',
  env: AtoaEnv.prod, /// or AtoaEnv.sandbox
);
```

## Handle Payment Status

Two ways to handle payment status are [**Polling**](https://docs.atoa.me/api-reference/Payment/getPaymentStatus) and [**Webhook**](https://docs.atoa.me/api-reference/Webhook/CreateWebhookEvent).

### Polling

Polling is handled out of the box by the package. Once the status is changed from `PENDING` to `SUCCESS`, the dialog with `TransactionDetails`, including `paymentIdempotencyId` and other values, is closed.

```dart
if (transactionDetails != null) {
  if(transactionDetails.isCompleted) {
    // handle success
  } else {
    // handle failure / pending statuses
  }
} else {
// Bottom sheet was dismissed
}
```

#### Redirection

Redirection back to your app can be achieved by including `redirectUrl` in [API](#create-a-payment-request-in-server) and setting up **Deep Links** in your app.
A few resources are given below

- [Flutter Docs](https://docs.flutter.dev/ui/navigation/deep-linking)
- [Code With Andrea](https://codewithandrea.com/articles/flutter-deep-links/)

That's how the redirection link will look like

```md
https://<yourRedirectUrl>?status=<SUCCESS/FAILURE/PENDING>&paymenRequestId=<paymenRequestId>&paymentIdempotencyId=<paymentIdempotencyId>&orderId=<atoaOrderId>&atoaSignature<atoaSignature>
```

### Subscribe to webhook (Recommended)

Atoa uses webhooks to notify your application whenever an event happens in your account. Webhooks are particularly useful for events such as changes in payment status, such as completion, failure, or pending.

To get started, you must [Register your webhook endpoint](https://docs.atoa.me/api-reference/Webhook/CreateWebhookEvent) so Atoa knows where to deliver events.

After registration, your endpoint will start receiving detailed webhook payloads. These will inform you of payment status updates, such as `COMPLETED`, `PENDING`, or `FAILED`.

## Store Fields in Server

Store the following in your backend once the transaction is complete.

```sh
 "signatureHash": string
 "paymentIdempotencyId": string
```

## Verify Payment Signature

This is a mandatory step to confirm the authenticity of the details returned to the Checkout form for successful payments.

You can verify the signature by doing [this](https://docs.atoa.me/introduction#step-4-verify-signature).

##

For any issues or inquiries, please get in touch with us by writing to hello@paywithatoa.co.uk or by clicking [help](https://help.paywithatoa.co.uk/).
