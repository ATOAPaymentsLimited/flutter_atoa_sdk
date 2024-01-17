import 'package:atoa_sdk/atoa_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class CotinueButton extends StatelessWidget {
  const CotinueButton({super.key});

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 60.sp,
        width: double.infinity,
        child: Consumer<BankInstitutionsState>(
          builder: (_, state, child) => RegalButton.primary(
            trackLabel:
                '${state.isAppInstalled ? 'Continue' : 'Download Bank App'} Button',
            enableTracking: false,
            onPressed: state.isLoading ? () {} : null,
            loading: state.isLoading,
            label: state.isAppInstalled
                ? context.l10n.continueBtnText
                : context.l10n.downloadBankApp,
          ),
        ),
      );
}
