import 'package:atoa_flutter_sdk/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:regal/regal.dart';
import 'package:shimmer/shimmer.dart';


class AtoaLoader extends StatefulWidget {
  const AtoaLoader({
    super.key
  });

  @override
  State<AtoaLoader> createState() => AtoaLoaderState();
}

class AtoaLoaderState extends State<AtoaLoader>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<double> animation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    animation = Tween<double>(
      begin: 0,
      end: 12.5664, // 2 Radians (360 degrees)
    ).animate(animationController);

    animationController.forward();

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController.repeat();
      }
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
        animation: animationController,
        builder: (context, child) => Transform.rotate(
          angle: animation.value,
          child: Assets.icons.spinner.svg(
            height: Spacing.huge.value * 2,
            width: Spacing.huge.value * 2,
          ),
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
          baseColor: context.brandColors.primary.shade500,
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
