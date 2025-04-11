import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:atoa_flutter_sdk/src/controllers/bank_institutions_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regal/regal.dart';

class BankLogosWidget extends StatelessWidget {
  const BankLogosWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.images.redBackAtoaLogo.image(
            width: Spacing.xtraLarge.value * 2,
            height: Spacing.xtraLarge.value * 2,
          ),
          Spacing.medium.xBox,
          Assets.gifs.dotLoading.lottie(
            width: Spacing.xtraLarge.value * 2 + Spacing.tiny.value,
            repeat: false,
          ),
          Spacing.medium.xBox,
          Stack(
            children: [
              Assets.images.bankLogos.image(
                width: Spacing.xtraLarge.value * 6 +
                    Spacing.small.value +
                    Spacing.tiny.value,
                height: Spacing.huge.value * 2,
              ),
              Positioned(
                left: Spacing.medium.value * 7 +
                    Spacing.mini.value +
                    Spacing.tiny.value,
                top: Spacing.mini.value,
                child: Container(
                  height: Spacing.xtraLarge.value * 2,
                  width: Spacing.xtraLarge.value * 2,
                  decoration: BoxDecoration(
                    color: NeutralColors.light().grey.shade100,
                    border: Border.all(
                      color: IntactColors.light().white,
                    ),
                    borderRadius:
                        BorderRadius.circular(Spacing.xtraLarge.value),
                  ),
                  child: Padding(
                    padding: Spacing.small.y,
                    child: CustomText.semantics(
                      '+${context.read<BankInstitutionsState>().bankList.length - 2}',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
}
