//packages
import 'package:flutter/material.dart';
import '../colors.dart' as colors;
//screens
//widgets
//providers

class MessageTile extends StatelessWidget {
  final String name;
  final String time;
  final String lastMessage;
  final String imageurl;
  final bool isonline;
  final int msgCounter;

  MessageTile({
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.imageurl,
    required this.isonline,
    required this.msgCounter,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    image: NetworkImage(imageurl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              isonline
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
                        name,
                        style: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                      Text(
                        time,
                        style: TextStyle(color: colors.greycolor.lightshade),
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
                        style: TextStyle(color: colors.greycolor.lightshade),
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
    );
  }
}
