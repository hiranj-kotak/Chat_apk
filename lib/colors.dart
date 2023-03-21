import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Doubleshade {
  final Color lightshade;
  final Color darkshade;

  Doubleshade(this.lightshade, this.darkshade);
}

const Color backgroundColor = Color(0xFFFFFFFF);
const Color greenColor = Color(0xFF5CE27F);
const Color yellowColor = Color(0xFFFFE12D);
const Color redColor = Color(0xFFE25C5C);

Doubleshade greenGradadient = Doubleshade(greenColor, Color(0xFF5CABE2));
Doubleshade blackColor = Doubleshade(Color(0xFF313131), Color(0xFF121212));
Doubleshade greycolor = Doubleshade(Color(0xFFB1B1B1), Color(0xFFEFEFEF));
