//packages
import 'dart:math';

import 'package:flutter/material.dart';
import '../colors.dart' as colors;
//screens
//widgets
import '../widgets/add_story.dart';
import '../widgets/message_tile.dart';
import '../widgets/story.dart';
import '../widgets/Status_bar.dart';
//providers
import '../providers/person_list.dart';

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
            gradient: LinearGradient(colors: [
              colors.greenGradadient.lightshade,
              colors.greenGradadient.darkshade,
            ]),
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
              StatusBar(),
              // Padding(
              //   padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
              //   child: Container(
              //     height: 100,
              //     child: ListView(
              //       scrollDirection: Axis.horizontal,
              //       children: [
              //         const Add_story(size: 60, icon: Icons.add),
              //         const Padding(
              //             padding: EdgeInsets.only(
              //           right: 16,
              //         )),
              //         Container(
              //           child: ListView(
              //             shrinkWrap: true,
              //             scrollDirection: Axis.horizontal,
              //             children: List.generate(
              //               persons.length,
              //               (index) => Story(
              //                 size: 60,
              //                 imageurl: persons[index]["picture"].toString(),
              //                 name:
              //                     "${persons[index]["first_name"]} ${persons[index]["last_name"]}",
              //                 showGreenStrip:
              //                     persons[index]['isonline'] as bool,
              //               ),
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              const Divider(
                thickness: 0.6,
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const Divider(
                      thickness: 0.3,
                    );
                  },
                  itemCount: persons.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => MessageTile(
                    name:
                        "${persons[index]["first_name"]} ${persons[index]["last_name"]}",
                    lastMessage: "Hello",
                    time: "19:25",
                    isonline: persons[index]['isonline'] as bool,
                    imageurl: persons[index]["picture"].toString(),
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
