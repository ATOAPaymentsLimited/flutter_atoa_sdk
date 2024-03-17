import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
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
                    final auth =
                        context.read<BankInstitutionsState>().paymentAuth;
                    final launchApp = await context
                        .read<BankInstitutionsController>()
                        .authorizeBank();

                    if ((launchApp ?? false) &&
                        context.mounted &&
                        auth != null) {
                      context
                          .read<PaymentStatusController>()
                          .startListening(auth.paymentIdempotencyId);
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
