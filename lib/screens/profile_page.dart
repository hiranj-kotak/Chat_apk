//packages
import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart' as colors;
//screens
//widgets
//providers

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back),
                    constraints: BoxConstraints(maxHeight: 27, maxWidth: 27),
                  )
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colors.blackColor.darkshade,
                  // image: DecorationImage(
                  //   image: NetworkImage(ImageUrl),
                  //   fit: BoxFit.cover,
                  // ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              // Column(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(left: 22, bottom: 10),
              //       child: Row(
              //         children: [
              //           Text(
              //             "USERNAME",
              //             style: TextStyle(
              //                 fontWeight: FontWeight.w700,
              //                 color: colors.blackColor.lightshade),
              //           ),
              //         ],
              //       ),
              //     ),
              //     Container(
              //       height: 50,
              //       width: MediaQuery.of(context).size.width - 44,
              //       decoration: BoxDecoration(
              //           color: colors.greycolor.darkshade,
              //           borderRadius: BorderRadius.all(Radius.circular(10))),
              //       child: TextField(
              //         decoration: InputDecoration(border: InputBorder.none),
              //       ),
              //     ),
              //   ],
              // )
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 44),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text("USERNAME"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
