//packages
import 'dart:math';

import 'package:flutter/material.dart';
import '../colors.dart' as colors;
import 'package:provider/provider.dart';
//screens
//widgets
import '../widgets/message_tile.dart';
import '../widgets/Status_bar.dart';
import '../widgets/search_bar.dart';
//providers
import '../providers/person_list.dart';
import '../providers/user.dart';

class HomeScreen extends StatefulWidget {
  static const String route = '/homescreen';
  final ScrollController scrollController;
  HomeScreen({
    required this.scrollController,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isSearch = false;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    List<User> persons = Provider.of<Person>(context).persons;
    return Scaffold(
      backgroundColor: colors.backgroundColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.transparent,
        child: Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                colors.greenGradadient.lightshade,
                colors.greenGradadient.darkshade,
              ],
            ),
          ),
          child: Icon(Icons.group_add),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 26),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Chats",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 16.0,
                    ),
                    child: Transform.rotate(
                      angle: _isSearch ? pi * (90 / 360) : 0,
                      child: IconButton(
                        icon: Icon(
                          _isSearch == false ? Icons.search : Icons.add,
                          size: 32,
                          color: colors.greenColor,
                        ),
                        onPressed: () {
                          setState(() {
                            _isSearch = !_isSearch;
                            controller.clear();
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              const Divider(
                thickness: 0.6,
              ),
              _isSearch ? SearchBar(controller: controller) : StatusBar(),
              const Divider(
                thickness: 0.6,
              ),
              Expanded(
                child: ListView.separated(
                  controller: widget.scrollController,
                  separatorBuilder: (context, index) {
                    return const Divider(
                      thickness: 0.3,
                    );
                  },
                  itemCount: persons.length,
                  itemBuilder: (context, index) => MessageTile(
                    u: persons[index],
                    lastMessage: "Hello",
                    time: "19:25",
                    msgCounter: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
