# Devloper Docs

Steps to integrate Atoa in your Flutter App:

#### 1 [Install Atoa Flutter Package.](#installation)

#### 2 [Import Package.](#import-package)

#### 3 [Create a Payment Request in Server.](#create-a-payment-in-server)

#### 4 [Open Checkout.](#open-checkout)

#### 5 [Handle Payment Status.](#handle-payment-status)

#### 6 [Verify Payment Signature.](#verify-payment-signature)

## Installation

Run following to add Atoa SDK to your flutter project

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

## Open Checkout

Pass the `paymentRequestId` which you will get by calling above [API](#create-a-payment-request-in-server).

```dart
final transactionDetails = await AtoaSdk.show(
  context,
  paymentId: '<payment-request-id>',
  env: AtoaEnv.prod, /// or AtoaEnv.sandbox
);
```

## Handle Payment Status

There are two ways to handle payment status: [**Polling**](#polling) and [**Webhook**](#subscribe-to-webhook-optional) (Optional).

### Polling

Polling is handled out of the box by the package, once status is changed from `PENDING` to `SUCCESS` it closes the dialog with [`TransactionDetails`](https://github.com/ATOAPaymentsLimited/flutter_atoa_sdk/blob/main/packages/atoa_core/lib/src/models/transaction_details.dart) which includes `paymentIdempotencyId` and other values.

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

#### Redirection (Optional)

Redirection back to your app can be achieved by including `redirectUrl` in [API](#create-a-payment-request-in-server) and setting up **Deep Links** in your app.
Few resources are given below

- [Flutter Docs](https://docs.flutter.dev/ui/navigation/deep-linking)
- [Code With Andrea](https://codewithandrea.com/articles/flutter-deep-links/)

That's how redirection link will look like...

```md
https://<yourRedirectUrl>?status=<SUCCESS/FAILURE/PENDING>&paymenRequestId=<paymenRequestId>&paymentIdempotencyId=<paymentIdempotencyId>&orderId=<atoaOrderId>&atoaSignature<atoaSignature>
```

### Subscribe to webhook (Optional)

Atoa uses webhooks to notify your application whenever an event happens in your account. Webhooks are particularly useful for events such as changes in payment status like completion, failure, or pending.

To get started, you need to [Register your webhook endpoint](https://docs.atoa.me/api-reference/Webhook/CreateWebhookEvent) so Atoa knows where to deliver events.

After registration, your endpoint will start receiving detailed webhook payloads. These will inform you of payment status updates, such as `COMPLETED`, `PENDING`, or `FAILED`.

## Verify Payment Signature

You verify the signature by doing the [this](https://docs.atoa.me/introduction#step-4-verify-signature).

For any issues or inquiries, please contact hello@paywithatoa.co.uk.