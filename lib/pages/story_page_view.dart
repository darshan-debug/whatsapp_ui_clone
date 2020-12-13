import 'package:flutter/material.dart';

import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  final _controller=StoryController();
  final List<StoryItem> storyItems=[
    StoryItem.text(title: "Hii", backgroundColor:Colors.blue[600]),
    StoryItem.text(title: "Motu", backgroundColor:Colors.red[600]),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Material(child: StoryView(storyItems: storyItems, controller: _controller,onComplete: (){Navigator.pop(context);},));
  }
}