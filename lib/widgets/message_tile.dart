//packages
import 'package:flutter/material.dart';
import '../colors.dart' as colors;
//screens
import '../screens/message_screen.dart';
//widgets
//providers
import '../providers/user.dart';

class MessageTile extends StatelessWidget {
  final User u;
  final String time;
  final String lastMessage;
  final int msgCounter;

  MessageTile(
      {required this.u,
      required this.time,
      required this.lastMessage,
      required this.msgCounter});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          MessageScreen.route,
          arguments: {"users": u},
        );
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(u.picture),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  u.isonline
                      ? Positioned(
                          bottom: 3,
                          right: 3,
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: colors.greenColor,
                                border: Border.all(
                                    color: colors.backgroundColor, width: 2)),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 120,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${u.firstName} ${u.lastName}",
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                          Text(
                            time,
                            style:
                                TextStyle(color: colors.greycolor.lightshade),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 120,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            lastMessage,
                            style:
                                TextStyle(color: colors.greycolor.lightshade),
                          ),
                          msgCounter > 0
                              ? Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      colors: [
                                        colors.greenGradadient.lightshade,
                                        colors.greenGradadient.darkshade,
                                      ],
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      msgCounter.toString(),
                                      style: TextStyle(
                                          color: colors.backgroundColor,
                                          fontSize: 16),
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
