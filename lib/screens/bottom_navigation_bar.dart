//packages

import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hidable/hidable.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../colors.dart' as colors;
//screens
import '../screens/home_screen.dart';

//widgets
//providers
class BotomNavBar extends StatefulWidget {
  static const String route = '/';

  @override
  State<BotomNavBar> createState() => _BotomNavBarState();
}

class _BotomNavBarState extends State<BotomNavBar> {
  final ScrollController scrollController = ScrollController();
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.backgroundColor,
      body: HomeScreen(
        scrollController: scrollController,
      ),
      bottomNavigationBar: Hidable(
        controller: scrollController,
        child: CustomNavigationBar(
          iconSize: 25,
          backgroundColor: colors.backgroundColor,
          selectedColor: colors.greenColor,
          strokeColor: colors.backgroundColor,
          items: [
            CustomNavigationBarItem(icon: const Icon(LineAwesomeIcons.phone)),
            CustomNavigationBarItem(icon: const Icon(LineAwesomeIcons.sms)),
            CustomNavigationBarItem(icon: const Icon(LineAwesomeIcons.user)),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
