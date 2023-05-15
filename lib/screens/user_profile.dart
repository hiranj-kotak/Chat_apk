//packages
import 'package:flutter/material.dart';
import '../colors.dart' as colors;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
//screens
//widgets
import '../widgets/profile_tile.dart';
import '../widgets/seeting_tile.dart';
//providers
import '../providers/person_list.dart';
import '../providers/user.dart' as u;

class UserScreen extends StatefulWidget {
  final ScrollController scrollController;

  const UserScreen({required this.scrollController});
  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    List<u.User> persons = Provider.of<Person>(context).persons;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 35,
            ),
            Profile_tile(
              name: "${persons[1].firstName} ${persons[1].lastName}",
              ImageUrl: persons[1].picture,
            ),
            const SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 0.8,
              color: colors.greycolor.lightshade,
              indent: 100,
              endIndent: 103,
            ),
            const SizedBox(
              height: 10,
            ),
            Setting_tile(
              title_txt: "Notifications",
              icon: Icons.notifications,
              type: "switch",
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 10),
              child: Text(
                "Manage",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: colors.blackColor.darkshade,
                ),
              ),
            ),
            Setting_tile(
              title_txt: "Settings",
              icon: Icons.settings,
              type: "arrow",
            ),
            Setting_tile(
              title_txt: "Share",
              icon: Icons.share,
              type: "arrow",
            ),
            Setting_tile(
              title_txt: "Change Password",
              icon: Icons.lock,
              type: "arrow",
            ),
            Setting_tile(
              title_txt: "Invite Friends",
              icon: Icons.group,
              type: "arrow",
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
