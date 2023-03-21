//packages
import 'package:flutter/material.dart';
import '../colors.dart' as colors;
//screens
//widgets
//providers

class Story extends StatelessWidget {
  final double size;
  final String imageurl;
  final String name;
  final bool showGreenStrip;

  const Story({
    required this.size,
    required this.imageurl,
    required this.name,
    required this.showGreenStrip,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: showGreenStrip
                  ? Border.all(
                      color: colors.greenColor,
                      width: 1,
                    )
                  : null,
            ),
            child: Padding(
              padding: EdgeInsets.all(showGreenStrip ? 2.25 : 0),
              child: Container(
                  height: size,
                  width: size,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(imageurl), fit: BoxFit.cover),
                  )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(name, style: TextStyle(color: colors.greycolor.lightshade)),
        ],
      ),
    );
  }
}
