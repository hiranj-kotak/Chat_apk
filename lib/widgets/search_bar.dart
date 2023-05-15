//packages
import 'package:flutter/material.dart';
//screens
//widgets
//providers

class SearchBar extends StatelessWidget {
  final TextEditingController controller;
  const SearchBar({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      key: const ValueKey<int>(0),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Color.fromRGBO(142, 142, 147, .15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Theme(
                  key: key,
                  data: Theme.of(context).copyWith(primaryColor: Colors.black),
                  child: TextField(
                    controller: controller,
                    onSubmitted: (v) {},
                    onChanged: (v) {},
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.search,
                          size: 22,
                          color: Colors.black,
                        ),
                      ),
                      border: InputBorder.none,
                      hintText: "Search here...",
                      hintStyle: TextStyle(color: Colors.black),
                    ),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
