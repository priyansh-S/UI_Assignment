// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_1.dart';
import '../screens/profileScreen.dart';

// ignore: camel_case_types
class chatScreen extends StatelessWidget {
  const chatScreen({super.key});

  String getRoute() => "chatScreen";

  @override
  Widget build(BuildContext context) {
    Widget SendChat() {
      return ChatBubble(
        shadowColor: Colors.black,
        backGroundColor: const Color.fromARGB(255, 32, 31, 36),
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        alignment: Alignment.topRight,
        clipper: ChatBubbleClipper1(
          type: BubbleType.sendBubble,
        ),
        child: Container(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
          child: const Text(
            "Hello! This is just to check the sender's message!",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      );
    }

    Widget ReceiveChat() {
      return ChatBubble(
        shadowColor: Colors.black,
        backGroundColor: const Color.fromARGB(255, 32, 31, 36),
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        clipper: ChatBubbleClipper1(
          type: BubbleType.receiverBubble,
        ),
        // alignment: Alignment.topRight,
        child: Container(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
          child: const Text(
            "Hello!!",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      );
    }

    List list = [
      SendChat(),
      SendChat(),
      ReceiveChat(),
      SendChat(),
      ReceiveChat(),
      ReceiveChat(),
      ReceiveChat(),
      SendChat(),
      ReceiveChat(),
      SendChat(),
      SendChat(),
      ReceiveChat(),
      ReceiveChat(),
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 48, 47, 47),
      appBar: AppBar(
        shadowColor: Colors.black,
        leading: Padding(
          padding: EdgeInsets.only(left: 10),
          child: GestureDetector(
              onTap: (() =>
                  Navigator.of(context).pushNamed(profileScreen().getRoute())),
              child: CircleAvatar(backgroundColor: Colors.green)),
        ),
        automaticallyImplyLeading: false,
        elevation: 5,
        backgroundColor: const Color.fromARGB(255, 48, 47, 47),
        title: Text(
          "Chat",
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 27),
        ),
      ),
      body: Container(
        // color: Colors.white,
        child: ListView(
          reverse: true,
          children: [for (final element in list.reversed.toList()) element],
        ),
      ),
    );
  }
}
