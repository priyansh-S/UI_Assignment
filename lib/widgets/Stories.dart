import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/StoryProvider.dart';
import '../widgets/SingleStoryTile.dart';

class StoriesProducer extends StatelessWidget {
  const StoriesProducer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Items>(
      builder: (context, value, child) => ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: value.ItemList.length,
        itemBuilder: (context, index) {
          return storyIcon();
        },
      ),
    );
  }
}
