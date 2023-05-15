//packages
import 'package:flutter/material.dart';
import '../colors.dart' as colors;
//screens
//widgets
import './gradient_icon.dart';
//providers
import '../providers/user.dart';

class MessageHeader extends StatelessWidget {
  final User u;
  MessageHeader({
    required this.u,
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 26,
          ),
          Column(children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
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
                                        color: colors.backgroundColor,
                                        width: 2)),
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${u.firstName} ${u.lastName}",
                        style: TextStyle(
                            color: colors.blackColor.darkshade,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        "online",
                        style: TextStyle(
                          color: colors.blackColor.lightshade,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: RadiantGradientMask(
                            child: Icon(
                              Icons.phone_outlined,
                              color: Colors.white,
                            ),
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: RadiantGradientMask(
                            child: Icon(
                              Icons.videocam_outlined,
                              size: 25,
                              color: Colors.white,
                            ),
                          )),
                    ],
                  )
                ],
              ),
            )
          ]),
        ],
      ),
    );
  }
}
