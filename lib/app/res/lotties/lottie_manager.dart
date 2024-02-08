import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAssetManager extends StatelessWidget {
  const LottieAssetManager(
      {super.key,
      required this.lottiePath,
      this.animationController,
      this.animate,
      this.repeat});
  final String lottiePath;
  final AnimationController? animationController;
  final bool? animate;
  final bool? repeat;
  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      lottiePath,
      repeat: repeat,
      controller: animationController,
      animate: animate,
    );
  }
}
