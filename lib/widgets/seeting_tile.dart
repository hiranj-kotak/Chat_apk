//packages
import 'package:flutter/material.dart';
import '../colors.dart' as colors;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_switch/flutter_switch.dart';
//screens
//widgets
//providers

class Setting_tile extends StatefulWidget {
  final String title_txt;
  final IconData icon;
  final String type;
  Setting_tile(
      {required this.title_txt, required this.icon, required this.type});

  @override
  State<Setting_tile> createState() => _Setting_tileState();
}

class _Setting_tileState extends State<Setting_tile> {
  bool _isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Icon(
            widget.icon,
            color: colors.blackColor.lightshade,
          ),
          const SizedBox(
            width: 30,
          ),
          Text(
            widget.title_txt,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: widget.type == "switch"
                ? FlutterSwitch(
                    width: 50,
                    padding: 1,
                    activeColor: colors.greenColor,
                    height: 25,
                    value: _isSwitched,
                    onToggle: (val) {
                      setState(() {
                        _isSwitched = !_isSwitched;
                      });
                    })
                : IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
          ),
        ],
      ),
    );
  }
}
