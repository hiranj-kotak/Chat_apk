//packages
import 'package:flutter/material.dart';
import '../colors.dart' as colors;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//screens
//widgets
//providers

enum CallType { accepted, facetime, missed }

class CallTile extends StatelessWidget {
  final String name;
  final String time;
  final String lastMessage;
  final String imageurl;
  final bool isonline;
  final int msgCounter;
  final CallType Status;

  CallTile({
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.imageurl,
    required this.isonline,
    required this.msgCounter,
    required this.Status,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
                            style:
                                TextStyle(color: colors.greycolor.lightshade),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 120,
                      child: Row(
                        children: [
                          Status == CallType.facetime
                              ? Icon(
                                  FontAwesomeIcons.video,
                                  size: 15,
                                  color: colors.greycolor.lightshade,
                                )
                              : Status == CallType.accepted
                                  ? Icon(
                                      FontAwesomeIcons.phone,
                                      color: colors.greenColor,
                                      size: 15,
                                    )
                                  : Icon(
                                      FontAwesomeIcons.phone,
                                      color: Colors.redAccent,
                                      size: 15,
                                    ),
                          Text(
                            Status == CallType.facetime
                                ? ' Facetime'
                                : Status == CallType.accepted
                                    ? ' Call'
                                    : ' Missed Call',
                            style: Status == CallType.missed
                                ? TextStyle(color: Colors.redAccent)
                                : TextStyle(color: colors.greycolor.lightshade),
                          ),
                          Spacer(),
                          msgCounter > 0
                              ? Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Status == CallType.missed
                                          ? Colors.redAccent
                                          : Colors.white,
                                      gradient: Status == CallType.missed
                                          ? null
                                          : LinearGradient(
                                              colors: [
                                                colors
                                                    .greenGradadient.lightshade,
                                                colors
                                                    .greenGradadient.darkshade,
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
