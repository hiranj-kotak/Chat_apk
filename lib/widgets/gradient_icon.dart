//packages
import 'package:flutter/material.dart';
import '../colors.dart' as colors;

//screens
//widgets
//providers
class RadiantGradientMask extends StatelessWidget {
  RadiantGradientMask({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => RadialGradient(
        center: Alignment.center,
        radius: 0.5,
        colors: [
          colors.greenGradadient.lightshade,
          colors.greenGradadient.darkshade
        ],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: child,
    );
  }
}
