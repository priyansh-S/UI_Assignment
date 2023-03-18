// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class storyIcon extends StatelessWidget {
  const storyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 9,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              border: Border.all(
                  width: 3, color: const Color.fromARGB(255, 255, 0, 0)),
            ),
            width: 100,
            height: 100,
            child: const Icon(
              Icons.person,
              color: Colors.white,
              size: 55,
            ),
            // color: Colors.red,
          ),
        ),
        const SizedBox(
          width: 9,
        ),
      ],
    );
  }
}
