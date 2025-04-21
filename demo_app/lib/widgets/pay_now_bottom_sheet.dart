import 'dart:convert';
import 'dart:io';

import 'package:atoa_flutter_sdk/atoa_flutter_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttersdk/utils/connectivity_controller.dart';
import 'package:fluttersdk/widgets/regal_button.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:regal/regal.dart' hide RegalButton;
import 'package:shared_preferences/shared_preferences.dart';

class PayNowBottomSheet extends StatefulWidget {
  const PayNowBottomSheet({
    super.key,
    required this.totalAmount,
  });
  final String totalAmount;

  @override
  State<PayNowBottomSheet> createState() => _PayNowBottomSheetState();
}

class _PayNowBottomSheetState extends State<PayNowBottomSheet> {
  final ValueNotifier<bool> isLoading = ValueNotifier(false);

  void _showSheet(BuildContext context, String paymentId) async {
    final prefs = await SharedPreferences.getInstance();

    if (!context.mounted) {
      return;
    }

    final transactionDetails = await AtoaSdk.pay(
      context,
      paymentId: paymentId,
      showHowPaymentWorks: prefs.getBool('showHowPaymentWorks') ?? false,
      customerDetails:
          // pass customer details for pre-select bank
          const CustomerDetails(
        phoneCountryCode: '44',
        phoneNumber: '8788899999',
        email: 'aaa@gmail.com',
      ),
      env: AtoaEnv.prod,
      // or AtoaEnv.sandbox

      onUserClose:
          (paymentRequestId, redirectUrlParams, signature, signatureHash) {
        // handle payment when user close the payment verification bottom sheet

        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(
        //     backgroundColor: RegalColors.darkOrange,
        //     content: Text(
        //       'User closed the payment for paymentRequestId: $paymentRequestId $redirectUrlParams $signature $signatureHash',
        //     ),
        //   ),
        // );
      },
      onPaymentStatusChange:
          (status, redirectUrlParams, signature, signatureHash) {
        // handle payment status
        //  print(
        //  'Payment Status Changed to $status $redirectUrlParams $signature, $signatureHash',
        // );
      },
      onError: (error) {
        // handle Atoa Mobile SDK error
        // print('Error in Atoa Mobile SDK ${error.message}');
      },
    );
    prefs.setBool('showHowPaymentWorks', false);
    if (!context.mounted) return;
    if (transactionDetails != null) {
      showStatus(transactionDetails);
    }
  }

  showStatus(TransactionDetails transactionDetails) {
    if (transactionDetails.isCompleted) {
      showSnackbar(
        text: 'Payment Successful',
        color: RegalColors.darkCyan,
      );
    } else if (transactionDetails.isPending) {
      showSnackbar(
        text: 'Payment Pending',
        color: RegalColors.darkOrange,
      );
    } else if (transactionDetails.isFailed) {
      showSnackbar(
        text: 'Payment Failed',
        color: RegalColors.darkVividRed,
      );
    } else if (!transactionDetails.isAwaitingAuth &&
        !transactionDetails.notIntitated) {
      showSnackbar(
        text: 'Payment ${transactionDetails.status.status}',
        color: RegalColors.grey.shade40,
      );
    }
  }

  void showSnackbar({required String text, required Color color}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: color,
        content: Text(text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            )),
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(24),
      ),
    );
  }

  @override
  void dispose() {
    isLoading.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: IntactColors.light().white,
          boxShadow: const [
            BoxShadow(
              color: Color(0x07000000),
              blurRadius: 12,
              offset: Offset(0, -8),
              spreadRadius: 0,
            )
          ],
        ),
        child: Padding(
          padding: Spacing.xtraLarge.all,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText.semantics(
                    'Total',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: NeutralColors.light().grey.shade800,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    '£ ${widget.totalAmount}',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              Spacing.huge.xBox,
              SizedBox(
                width: 164.sp,
                height: 56.sp,
                child: Builder(
                  builder: (context) {
                    final connectivityStatus =
                        context.watch<ConnectivityStatus>();
                    return ValueListenableBuilder(
                      valueListenable: isLoading,
                      builder: (context, value, child) {
                        return RegalButton.primary(
                          shrink: true,
                          enableTracking: false,
                          onPressed: () =>
                              _getPaymentId(context, widget.totalAmount),
                          label: 'Pay Now',
                          trackLabel: 'Pay Now',
                          enable:
                              !value && !connectivityStatus.isOfflineOrWaiting,
                          loading: value,
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor:
                                const Color.fromRGBO(52, 152, 219, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(Spacing.mini.value),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );

  Future<void> _getPaymentId(BuildContext context, totalAmount) async {
    isLoading.value = true;
    final paymentRequestId =
        await _getPaymentRequestId(amount: double.parse(totalAmount));
    if (context.mounted) {
      if (paymentRequestId.isNotEmpty) {
        isLoading.value = false;
        _showSheet(context, paymentRequestId);
      } else {
        isLoading.value = false;
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              backgroundColor: RegalColors.darkOrange,
              content: Text(
                'Oops, An Error Occurred',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontFamily: 'Montserrat',
                    ),
              ),
            ),
          );
      }
    }
  }

  Future<String> _getPaymentRequestId({required double amount}) async {
    // change it to dev url while testing
    final uri = Uri.parse(
      'https://api.atoa.me/api/payments/process-payment',
    );

    const atoaToken = String.fromEnvironment('atoa-token');

    final response = await http.post(
      uri,
      headers: {
        HttpHeaders.authorizationHeader: 'Bearer $atoaToken',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(_getRequestData(amount)),
    );

    final resMap = jsonDecode(response.body) as Map<String, dynamic>;

    return resMap['paymentRequestId'] as String? ?? '';
  }

  Map<String, dynamic> _getRequestData(double amount) => {
        'customerId': 'abc123',
        'consumerDetails': {
          'phoneCountryCode': '44',
          'phoneNumber': '8788899999',
          'email': 'aaa@gmail.com',
        },
        'orderId': '242u9384jfjkw',
        'currency': 'GBP',
        'amount': amount,
        'paymentType': 'TRANSACTION',
        'autoRedirect': false,
        'callbackParams': {
          'deviceId': '35356478',
          'locationId': '8956545',
        },
        'redirectUrl': 'atoa://devapp.atoa.me/sdk-redirect',
        'expiresIn': 60000000,
        'storeId': 'ee39ecfa-e336-461c-a957-1adc76ac087c',
        'strictExpiry': false,
        'splitBill': false,
      };
}
