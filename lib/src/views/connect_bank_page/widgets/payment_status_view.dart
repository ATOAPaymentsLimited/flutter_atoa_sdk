import 'package:atoa_sdk/src/controllers/controllers.dart';
import 'package:atoa_sdk/src/shared_widgets/success_tick.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class PaymentStatusView extends StatefulWidget {
  const PaymentStatusView({super.key});

  @override
  State<PaymentStatusView> createState() => _PaymentStatusViewState();
}

class _PaymentStatusViewState extends State<PaymentStatusView> {
  bool? _isSuccess;

  @override
  Widget build(BuildContext context) => Consumer<PaymentStatusState>(
        builder: (_, state, __) {
          if (!state.started) {
            return const SizedBox.shrink();
          }

          if (state.isCompleted) {
            _isSuccess = true;

            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SuccessTick(),
                  Spacing.huge.yBox,
                  CustomText.semantics(
                    '£ ${state.details?.paidAmount}',
                    style: context.headlineLarge!.copyWith(fontSize: 40.sp),
                  ),
                  Spacing.huge.yBox,
                  if (state.details?.createdAt != null)
                    CustomText.semantics(
                      state.details!.createdAt,
                      style: context.bodyLarge!
                          .copyWith(color: context.grey.shade60),
                    ),
                  Spacing.huge.yBox,
                  Container(
                    padding: Spacing.medium.y,
                    width: 220.sp,
                    decoration: BoxDecoration(
                      color: RegalColors.darkCyan,
                      borderRadius: BorderRadius.circular(
                        Spacing.small.value,
                      ),
                    ),
                    child: CustomText.semantics(
                      'Successful',
                      style: context.bodyLarge!
                          .copyWith(color: RegalColors.snowWhite),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Spacing.huge.yBox,
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: RegalButton.primary(
                      shrink: true,
                      onPressed: () {
                        Navigator.pop(context, _isSuccess);
                      },
                      trackLabel: 'Go Back',
                      label: 'Go Back',
                    ),
                  ),
                ],
              ),
            );
          }

          if (state.isFailed) {
            _isSuccess = false;
          }

          if (_isSuccess == null) {
            return const DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              ),
            );
          }

          return const DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Center(
              child: Text('Something Went wront'),
            ),
          );
        },
      );
}
