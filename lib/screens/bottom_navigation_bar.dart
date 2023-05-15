//packages

import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hidable/hidable.dart';
import '../colors.dart' as colors;
//screens
import '../screens/home_screen.dart';
import '../screens/call_screen.dart';
import '../screens/user_profile.dart';

//widgets
//providers
class BotomNavBar extends StatefulWidget {
  static const String route = '/mainScreen';

  @override
  State<BotomNavBar> createState() => _BotomNavBarState();
}

class _BotomNavBarState extends State<BotomNavBar> {
  final ScrollController _scrollController = ScrollController();
  Widget getBody(int index) {
    if (index == 0) {
      return CallScreen(
        scrollController: _scrollController,
      );
    } else if (index == 1) {
      return HomeScreen(
        scrollController: _scrollController,
      );
    } else if (index == 2) {
      return UserScreen(
        scrollController: _scrollController,
      );
    } else {
      return HomeScreen(
        scrollController: _scrollController,
      );
    }
  }

  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.backgroundColor,
      body: getBody(_currentIndex),
      bottomNavigationBar: Hidable(
        controller: _scrollController,
        child: CustomNavigationBar(
          iconSize: 25,
          backgroundColor: colors.backgroundColor,
          selectedColor: colors.greenColor,
          strokeColor: colors.backgroundColor,
          items: [
            CustomNavigationBarItem(icon: const Icon(Icons.phone)),
            CustomNavigationBarItem(icon: const Icon(Icons.messenger_rounded)),
            CustomNavigationBarItem(icon: const Icon(Icons.person)),
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
