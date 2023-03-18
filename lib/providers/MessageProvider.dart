// ignore_for_file: prefer_final_fields

import 'package:flutter/cupertino.dart';
import '../models/messageTileClass.dart';

class Messages extends ChangeNotifier {
  List<MsgTile> _ListMsg = [
    MsgTile(id: DateTime.now().toString(), name: "Nme", Msg: "Hiiiiii!"),
    MsgTile(id: DateTime.now().toString(), name: "Nme", Msg: "Hiiiiii!"),
    MsgTile(id: DateTime.now().toString(), name: "Nme", Msg: "Hiiiiii!"),
    MsgTile(id: DateTime.now().toString(), name: "Nme", Msg: "Hiiiiii!"),
    MsgTile(id: DateTime.now().toString(), name: "Nme", Msg: "Hiiiiii!"),
    MsgTile(id: DateTime.now().toString(), name: "Nme", Msg: "Hiiiiii!"),
    MsgTile(id: DateTime.now().toString(), name: "Nme", Msg: "Hiiiiii!"),
  ];

  List<MsgTile> get ItemList {
    return [..._ListMsg];
  }

  // void add() {}
}
