import 'package:flutter/material.dart';

class exploreScreen extends StatelessWidget {
  // Size? md;
  // final double? mdh;
  // final double? mdw;

  // const profileScreen({super.key, @required this.mdh, @required this.mdw});

  String getRoute() => "exploreScreen";

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
              height: mdh * 0.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        filled: true,
                        hintStyle:
                            TextStyle(color: Color.fromARGB(154, 0, 0, 0)),
                        hintText: "Search",
                        fillColor: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: 50,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: mdw / 3, childAspectRatio: 1),
                  itemBuilder: ((_, index) {
                    return Container(
                      height: mdh / 4,
                      width: mdh / 4,
                      child: Stack(
                        children: [
                          Center(
                            child: Icon(
                              size: mdw / 6,
                              Icons.content_copy,
                              color: Color.fromARGB(255, 54, 101, 244),
                            ),
                          ),
                          Container(
                            color: Colors.black,
                            child: Text(
                              "#${index + 1}",
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
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
