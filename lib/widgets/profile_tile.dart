//packages
import 'package:flutter/material.dart';
import '../colors.dart' as colors;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';

//screens
//widgets
//providers

class Profile_tile extends StatelessWidget {
  final String name;
  final String ImageUrl;
  Profile_tile({required this.name, required this.ImageUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(ImageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 20,
                    color: colors.blackColor.darkshade,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "View Profile",
                  style: TextStyle(
                    fontSize: 15,
                    color: colors.blackColor.lightshade,
                  ),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: IconButton(
                  icon: Icon(FontAwesomeIcons.signOut, color: colors.redColor),
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    Navigator.popUntil(context, (route) => route.isFirst);
                    Navigator.pushReplacementNamed(context, 'phone');
                  }),
            )
          ],
        ),
      ),
    );
  }
}
