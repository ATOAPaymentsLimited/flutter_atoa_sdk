import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';
import 'package:shimmer/shimmer.dart';

class AtoaLoader extends StatelessWidget {
  const AtoaLoader({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Center(
        child: Shimmer.fromColors(
          baseColor: BrandColors.light().primary.shade500,
          highlightColor: context.intactColors.white,
          child: Assets.icons.spinner.svg(),
        ),
      );
}

class SDKLoader extends StatelessWidget {
  const SDKLoader({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Center(
        child: Shimmer.fromColors(
          baseColor: BrandColors.light().primary.shade500,
          highlightColor: context.intactColors.white,
          child: Assets.icons.atoaLogo.svg(),
        ),
      );
}

class FetchingBankLoader extends StatelessWidget {
  const FetchingBankLoader({super.key});

  @override
  Widget build(BuildContext context) => Assets.gifs.animatedGridLoader.lottie();
}
