//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//screens
//widgets
import './add_story.dart';
import './story.dart';
//providers
import '../providers/person_list.dart';
import '../providers/user.dart';

class StatusBar extends StatelessWidget {
  final bool showAddStory;
  StatusBar({this.showAddStory = true});
  @override
  Widget build(BuildContext context) {
    List<User> persons = Provider.of<Person>(context).persons;

    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
      child: Container(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            showAddStory
                ? const Add_story(size: 60, icon: Icons.add)
                : const SizedBox(),
            showAddStory
                ? const SizedBox(
                    width: 10,
                  )
                : const SizedBox(),
            Container(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  persons.length,
                  (index) => Story(
                    size: 60,
                    imageurl: persons[index].picture.toString(),
                    name:
                        "${persons[index].firstName} ${persons[index].lastName}",
                    showGreenStrip: persons[index].isonline,
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
