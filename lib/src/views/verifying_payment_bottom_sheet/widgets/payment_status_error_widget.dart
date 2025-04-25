import 'package:atoa_core/atoa_core.dart';
import 'package:atoa_sdk/src/controllers/controllers.dart';
import 'package:atoa_sdk/src/shared_widgets/bottom_sheet_actions.dart';
import 'package:atoa_sdk/src/views/bank_selection_bottom_sheet/widgets/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class PaymentStatusErrorWidget extends StatelessWidget {
  const PaymentStatusErrorWidget({
    required this.error,
    super.key,
  });

  final Exception error;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BottomSheetAction(
                semanticsLabel: 'Close Dialog Sheet Icon',
                trackLabel: 'Close Dialog Sheet Icon',
                onTap: () {
                  context.read<PaymentStatusController>().stop();
                  Navigator.pop(
                    context,
                    context.read<PaymentStatusState>().details,
                  );
                },
                child: Icon(
                  Icons.close,
                  size: Spacing.large.value,
                  color: IntactColors.light().black,
                ),
              ),
            ],
          ),
          Spacing.huge.yBox * 8,
          AtoaErrorWidget(
            message: error is AtoaException
                ? (error as AtoaException).message
                : null,
          ),
          Spacing.huge.yBox * 8,
        ],
      );
}
