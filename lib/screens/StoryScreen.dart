// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:team_project/screens/homePageScreen.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({
    super.key,
  });

  String getRoute() => "StoryScreen";

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  double percent = 0;

  Timer? _timer;

  void DragDownClose(DragUpdateDetails val) {
    if (val.delta.dy >= 20) return Navigator.of(context).pop();
  }

  void StartTimer() {
    _timer = Timer.periodic(Duration(milliseconds: 1), (timer) {
      setState(() {
        percent += 0.001;
        // if (percent >= 1) Navigator.of(context).pop();
        // if (percent >= 1) {
        //   DragDownClose(DragUpdateDetails(
        //       delta: Offset(30, 30), globalPosition: Offset(10, 10)));
        // }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    StartTimer();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onVerticalDragUpdate: (val) {
      //   if (val.delta.dy >= 20) return Navigator.of(context).pop();
      // },
      onVerticalDragUpdate: (val) => DragDownClose(val),
      onTap: () => percent >= 1 ? Navigator.of(context).pop() : Null,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        "https://images.pexels.com/photos/1172064/pexels-photo-1172064.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                      ))),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).viewPadding.top + 2),
              child: Column(
                children: [
                  LinearProgressIndicator(
                    value: percent,
                    minHeight: 4,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        minRadius: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Jason Vorhees",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
