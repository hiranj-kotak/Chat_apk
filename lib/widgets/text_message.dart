//packages
import 'package:flutter/material.dart';
import '../colors.dart' as colors;
//screens
//widgets
//providers

class TextMessage extends StatelessWidget {
  final String Message;
  final bool fromfriend;
  const TextMessage({
    required this.Message,
    required this.fromfriend,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: fromfriend
          ? const EdgeInsets.only(left: 8, bottom: 10)
          : const EdgeInsets.only(right: 8, bottom: 10),
      child: Row(
        mainAxisAlignment:
            fromfriend ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          Container(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.8),
            decoration: BoxDecoration(
                gradient: fromfriend
                    ? null
                    : LinearGradient(colors: [
                        colors.greenGradadient.lightshade,
                        colors.greenGradadient.darkshade,
                      ]),
                color: colors.greycolor.darkshade,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(fromfriend ? 0 : 40),
                    bottomRight: Radius.circular(fromfriend ? 40 : 0))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Text(
                Message,
                style:
                    TextStyle(color: fromfriend ? Colors.black : Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
