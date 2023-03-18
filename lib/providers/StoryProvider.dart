// ignore_for_file: prefer_final_fields

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../models/storyClass.dart';

class Items extends ChangeNotifier {
  List<Story> _ListSt = [
    Story(id: DateTime.now().toString(), imageURL: "AbC", watched: false),
    Story(id: DateTime.now().toString(), imageURL: "AbC", watched: false),
    Story(id: DateTime.now().toString(), imageURL: "AbC", watched: false),
    Story(id: DateTime.now().toString(), imageURL: "AbC", watched: false),
    Story(id: DateTime.now().toString(), imageURL: "AbC", watched: false),
  ];

  List<Story> get ItemList {
    return [..._ListSt];
  }

  // void add() {}
}
