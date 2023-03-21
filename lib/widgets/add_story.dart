//packages
import 'package:flutter/material.dart';
import '../colors.dart' as colors;
//screens
//widgets
//providers

class Add_story extends StatelessWidget {
  final double size;
  final IconData icon;

  const Add_story({
    required this.size,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                colors.greenGradadient.lightshade,
                colors.greenGradadient.darkshade,
              ],
            ),
          ),
          child: Icon(
            icon,
            color: colors.backgroundColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text("Add Story", style: TextStyle(color: colors.greycolor.lightshade)),
      ],
    );
  }
}
