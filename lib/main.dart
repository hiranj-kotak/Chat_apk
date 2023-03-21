//packages
import 'package:flutter/material.dart';
//screens
import './screens/home_screen.dart';
import './screens/bottom_navigation_bar.dart';
//widgets
//providers

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        BotomNavBar.route: (context) => BotomNavBar(),
      },
    );
  }
}
