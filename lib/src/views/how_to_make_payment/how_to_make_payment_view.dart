import 'package:atoa_sdk/src/controllers/controllers.dart';
import 'package:atoa_sdk/src/shared_widgets/atoa_loader.dart';
import 'package:atoa_sdk/src/views/how_to_make_payment/widgets/bank_logos_widget.dart';
import 'package:atoa_sdk/src/views/how_to_make_payment/widgets/continue_button.dart';
import 'package:atoa_sdk/src/views/how_to_make_payment/widgets/how_payment_works_title_widget.dart';
import 'package:atoa_sdk/src/views/how_to_make_payment/widgets/how_to_make_payment_steps.dart';
import 'package:atoa_sdk/src/views/how_to_make_payment/widgets/trust_atoa_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class HowToMakePaymentView extends StatelessWidget {
  const HowToMakePaymentView({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const HowPaymentWorksTitleWidget(),
          Spacing.huge.yBox,
          Consumer<BankInstitutionsState>(
            builder: (_, state, __) {
              final isLoading = state.isLoadingDetails;

              if (isLoading == null || isLoading) {
                return SizedBox(
                  height: 0.5.sh,
                  child: const Center(
                    child: FetchingBankLoader(),
                  ),
                );
              }
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const BankLogosWidget(),
                  Spacing.xtraLarge.yBox * 2,
                  const HowToMakePaymentSteps(),
                  Spacing.huge.yBox,
                  const TrustAtoaWidget(),
                  Spacing.huge.yBox,
                  const ContinueButton(),
                  Spacing.medium.yBox,
                ],
              );
            },
          ),
        ],
      );
}
