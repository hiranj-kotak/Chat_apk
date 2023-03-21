//packages
import 'package:flutter/material.dart';
//screens
//widgets
import './add_story.dart';
import './story.dart';
//providers
import '../providers/person_list.dart';

class StatusBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
      child: Container(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            const Add_story(size: 60, icon: Icons.add),
            const Padding(
                padding: EdgeInsets.only(
              right: 16,
            )),
            Container(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  persons.length,
                  (index) => Story(
                    size: 60,
                    imageurl: persons[index]["picture"].toString(),
                    name:
                        "${persons[index]["first_name"]} ${persons[index]["last_name"]}",
                    showGreenStrip: persons[index]['isonline'] as bool,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
