// ignore_for_file: invalid_required_named_param, non_constant_identifier_names

import 'package:flutter/cupertino.dart';

class Story {
  String Name;
  String ProfileUrl;
  String StoryUrl;

  Story(
      {@required this.Name = "Name", this.ProfileUrl = "", this.StoryUrl = ""});
}
