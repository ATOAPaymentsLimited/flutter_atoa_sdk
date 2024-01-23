import 'package:atoa_sdk/atoa_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class CotinueButton extends StatefulWidget {
  const CotinueButton({super.key});

  @override
  State<CotinueButton> createState() => _CotinueButtonState();
}

class _CotinueButtonState extends State<CotinueButton> {
  @override
  Widget build(BuildContext context) => SizedBox(
        height: 60.sp,
        width: double.infinity,
        child: Consumer<BankInstitutionsState>(
          builder: (_, state, child) => RegalButton.primary(
            onPressed: state.paymentAuth == null
                ? null
                : () async {
                    final launchApp = await context
                        .read<BankInstitutionsController>()
                        .authorizeBank();

                    if ((launchApp ?? false) && mounted) {
                      Navigator.pop(context);
                    }
                  },
            trackLabel: 'Continue Button',
            enableTracking: false,
            loading: state.isLoading,
            label: context.l10n.continueBtnText,
          ),
        ),
      );
}
