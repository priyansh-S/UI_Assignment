import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:team_project/models/messageTileClass.dart';
import '../providers/MessageProvider.dart';
import '../widgets/SingleMsgTile.dart';
// import 'package:team_project/providers/StoryProvider.dart';
// import 'package:team_project/widgets/SingleStory.dart';

class MessageProducer extends StatelessWidget {
  const MessageProducer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Messages>(
      builder: (context, value, child) => ListView.builder(
        // scrollDirection: Axis.horizontal,
        itemCount: value.ItemList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
            child: SingleMsgTile(
              ind: index,
            ),
          );
        },
      ),
    );
  }
}
