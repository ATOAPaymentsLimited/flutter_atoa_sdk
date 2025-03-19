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
  final double totalAmount;

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

    AtoaSdk.show(
      context,
      paymentId: paymentId,
      showHowPaymentWorks: prefs.getBool('showHowPaymentWorks') ?? false,
      env: AtoaEnv.sandbox, // or AtoaEnv.prod
    );

    prefs.setBool('showHowPaymentWorks', false);
  }

  @override
  void dispose() {
    isLoading.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: context.regalColor.snowWhite,
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
                    style: context.bodyLarge!.copyWith(
                      color: context.grey.shade40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '£ ${widget.totalAmount.toString()}',
                    style: context.labelMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
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
    final paymentRequestId = await _getPaymentRequestId(amount: totalAmount);
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
                style: context.headlineSmall!.copyWith(
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
          'phoneNumber': 7857094720,
        },
        'orderId': '242u9384jfjkw',
        'currency': 'GBP',
        'amount': amount,
        'paymentType': 'TRANSACTION',
        'autoRedirect': false,
        'callbackParams': {
          'deviceId': '{deviceId}',
          'locationId': '{locationId}',
        },
        'redirectUrl': 'atoa://demoapp.com',
        'expiresIn': 60000000,
        'enableTips': true,
        'storeId': 'ee39ecfa-e336-461c-a957-1adc76ac087c',
        'strictExpiry': false,
        'allowRetry': true,
        'splitBill': false,
      };
}
