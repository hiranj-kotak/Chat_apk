//packages
import 'package:flutter/material.dart';
import '../colors.dart' as colors;
//screens
//widgets
//providers

class MessageField extends StatelessWidget {
  const MessageField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          border: Border.all(color: Colors.black12)),
      child: TextField(
        maxLines: 10,
        minLines: 1,
        cursorColor: colors.greenColor,
        style: TextStyle(color: colors.blackColor.lightshade),
        decoration: const InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding:
              EdgeInsets.only(left: 15, right: 15, top: 7, bottom: 7),
          hintText: "Respond...",
          hintStyle: TextStyle(color: Colors.black54),
        ),
      ),
    );
  }
}
