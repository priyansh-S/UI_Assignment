import 'package:flutter/material.dart';

import '../widgets/MessageProducer.dart';
// import '../widgets/Stories.dart';

// ignore: camel_case_types
class homePageScreen extends StatelessWidget {
  String getRoute() => "homePageScreen";

  final double? mdh;
  final double? mdw;

  const homePageScreen({super.key, @required this.mdh, @required this.mdw});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(10),
      height: mdh,
      width: mdw,
      color: const Color.fromARGB(255, 32, 31, 36),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
              Color.fromARGB(255, 16, 15, 17),
              Color.fromARGB(255, 50, 48, 57)
            ])),
            // color: Colors.white,
            width: mdw,
            height: mdh! * 0.14,
          ),
          const SizedBox(
            height: 10,
          ),
          // const Text(
          //   "   Stories",
          //   style: TextStyle(
          //       color: Colors.white, fontWeight: FontWeight.w400, fontSize: 27),
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          // const SizedBox(
          //   height: 120,
          //   child: StoriesProducer(),
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          const Text(
            "   Messages",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 27),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: const MessageProducer(),
              // height: 120,
            ),
          ),
        ],
      ),
    );
  }
}
