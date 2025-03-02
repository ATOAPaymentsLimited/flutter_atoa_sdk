import 'package:atoa_flutter_sdk/l10n/l10n.dart';
import 'package:atoa_flutter_sdk/src/controllers/controllers.dart';
import 'package:atoa_flutter_sdk/src/shared_widgets/dotted_line_painter.dart';
import 'package:atoa_flutter_sdk/src/views/cancel_confirmation_bottom_sheet/cancel_confirmation_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class CancelPaymentWidget extends StatelessWidget {
  const CancelPaymentWidget({
    required this.bankInstitutionController,
    super.key,
  });

  final BankInstitutionsController bankInstitutionController;

  @override
  Widget build(BuildContext context) => CustomInkWell(
        semanticsLabel: context.l10n.cancel,
        context: context,
        trackLabel: 'Cancel',
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomText.semantics(
              context.l10n.cancel,
              style: context.figtree.bodyLarge.w700.textColor(
                BrandColors.light().primary.shade500,
              ),
            ),
            CustomPaint(
              size: Size(
                Spacing.huge.value * 2 +
                    Spacing.mini.value +
                    Spacing.tiny.value,
                1,
              ),
              painter: DottedLinePainter(
                color: BrandColors.light().primary.shade500,
              ),
            ),
          ],
        ),
        onTap: () async {
          await cancelPayment(context);
        },
      );

  Future<void> cancelPayment(BuildContext context) async {
    final res = await CancelConfirmationBottomSheet.show(
      context,
    );

    if (res != null && res) {
      if (!context.mounted) {
        return;
      }
      Navigator.pop(context, true);
      await bankInstitutionController.cancelPayment();
    }
  }
}
