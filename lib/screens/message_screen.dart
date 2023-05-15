//packages
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../colors.dart' as colors;
//screens
//widgets
import '../widgets/message_screen_header.dart';
import '../widgets/circular_button.dart';
import '../widgets/circular_text_field.dart';
import '../widgets/text_message.dart';
//providers
import '../providers/user.dart';

class MessageScreen extends StatefulWidget {
  static const String route = "/message";

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  final sc = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      sc.jumpTo(sc.position.maxScrollExtent);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, Object> obj =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;

    final User u = obj["users"] as User;
    return Scaffold(
        body: Column(
      children: [
        MessageHeader(u: u),
        const Divider(
          thickness: 1,
        ),
        Expanded(
            child: ListView(
          controller: sc,
          scrollDirection: Axis.vertical,
          children: [
            TextMessage(
                Message:
                    "what is your name eufhwuibuidsvbsduibsdivsidvbsdiuvhdsuivhsdivhsdiuvhsduivhsdivhsdvhsdvi",
                fromfriend: true),
            TextMessage(Message: "My name is Hiranj", fromfriend: false),
            TextMessage(Message: "My name is Hiranj", fromfriend: false),
            TextMessage(Message: "My name is Hiranj", fromfriend: false),
            TextMessage(Message: "My name is Hiranj", fromfriend: false),
            TextMessage(Message: "My name is Hiranj", fromfriend: false),
            TextMessage(Message: "My name is Hiranj", fromfriend: false),
            TextMessage(Message: "My name is Hiranj", fromfriend: false),
            TextMessage(Message: "My name is Hiranj", fromfriend: false),
            TextMessage(Message: "My name is Hiranj", fromfriend: false),
            TextMessage(Message: "My name is Hiranj", fromfriend: false),
            TextMessage(Message: "My name is Hiranj", fromfriend: false),
            TextMessage(Message: "My name is Hiranj", fromfriend: false),
            TextMessage(Message: "My name is Hiranj", fromfriend: false),
            TextMessage(Message: "My name is Hiranj", fromfriend: false),
            TextMessage(Message: "My name is Hiranj", fromfriend: false),
            TextMessage(Message: "My name is Hiranj", fromfriend: false),
            TextMessage(Message: "My name is Hiranj", fromfriend: false),
            TextMessage(Message: "My name is Hiranj", fromfriend: false),
            TextMessage(Message: "My name is Hiranj", fromfriend: true),
          ],
        )),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(children: [
              CircularButton(icondata: Icons.gif),
              SizedBox(width: 8),
              Expanded(child: MessageField()),
              SizedBox(width: 8),
              CircularButton(icondata: Icons.mic),
              SizedBox(width: 8),
              CircularButton(icondata: FontAwesomeIcons.ellipsis),
            ]),
          ),
        )
      ],
    ));
  }
}
