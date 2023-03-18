import 'package:flutter/material.dart';

class profileScreen extends StatelessWidget {
  // Size? md;
  // final double? mdh;
  // final double? mdw;

  // const profileScreen({super.key, @required this.mdh, @required this.mdw});

  String getRoute() => "profileScreen";

  @override
  Widget build(BuildContext context) {
    double mdh = MediaQuery.of(context).size.height;
    double mdw = MediaQuery.of(context).size.width;
    return Container(
      height: mdh,
      width: mdw,
      color: const Color.fromARGB(255, 32, 31, 36),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: const Color.fromARGB(255, 45, 43, 52),
              width: mdw,
              height: mdh * 0.3,
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "@UserName",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 40),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "  147\nFriends",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          child: Icon(
                            Icons.person,
                            size: 60,
                            color: Color.fromARGB(255, 200, 0, 255),
                          ),
                        ),
                      ),
                      const Text(
                        "  50\nPosts",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: 50,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: mdw / 4, childAspectRatio: 1),
                  itemBuilder: ((_, index) {
                    return Container(
                      height: mdh / 4,
                      width: mdh / 4,
                      child: Stack(
                        children: [
                          Icon(
                            size: mdw / 6,
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                          ),
                          Container(
                            color: Colors.black,
                            child: Text(
                              "#${index + 1}",
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 200, 0, 255),
                                  fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    );
                  })),
            )
          ]),
    );
  }
}
