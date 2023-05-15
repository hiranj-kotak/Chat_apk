//packages
import 'package:flutter/material.dart';
//screens
//widgets
import './gradient_icon.dart';
//providers

class CircularButton extends StatelessWidget {
  final IconData icondata;

  const CircularButton({required this.icondata});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black12),
      ),
      child: RadiantGradientMask(
        child: Icon(
          icondata,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
