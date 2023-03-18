import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../screens/StoryScreen.dart';
import '../screens/chatScreen.dart';
import '../widgets/SingleStoryTile.dart';
// import 'package:team_project/models/messageTileClass.dart';
// import '../models/storyClass.dart';

class SingleMsgTile extends StatelessWidget {
  // SingleMsgTile({super.key});

  final String id;
  final String name;
  final String msg;
  final int ind;

  SingleMsgTile(
      {super.key,
      this.id = "00",
      this.name = "A",
      this.msg = "MM",
      required this.ind});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        children: [
          // ClipRRect(
          //   borderRadius: BorderRadius.all(Radius.circular(100)),
          //   child: Container(
          //     height: 80,
          //     width: 80,
          //     color: Color.fromARGB(255, 255, 255, 255),
          //   ),
          // ),
          GestureDetector(
            child: storyIcon(),
            onTap: () =>
                Navigator.of(context).pushNamed(const StoryScreen().getRoute()),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () =>
                Navigator.of(context).pushNamed(const chatScreen().getRoute()),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Name ${ind + 1}",
                  style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Message goes Here",
                  style: TextStyle(
                      color: Color.fromARGB(176, 255, 255, 255), fontSize: 15),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
