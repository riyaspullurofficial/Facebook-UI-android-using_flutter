import 'package:facebook/assets.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';
import '../widgets/avatar.dart';

class StorySection extends StatelessWidget {
  const StorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to Story",
            avatar: dq2,
            story: dq3,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "dq bro",
            avatar: dq1,
            story: post1,
            createStoryStatus: false,
            displayBoarder: true,
          ),
          StoryCard(
            labelText: "google",
            avatar: dq3,
            story: post3,
            createStoryStatus: false,
            displayBoarder: true,
          ),
          StoryCard(
            labelText: "amazon",
            avatar: dq3,
            story: post4,
            createStoryStatus: false,
            displayBoarder: true,
          ),
          StoryCard(
            labelText: "facebook",
            avatar: dq1,
            story: post1,
            createStoryStatus: false,
            displayBoarder: true,
          ),
          StoryCard(
            labelText: "yoyoyoyoyo",
            avatar: dq3,
            story: post3,
            createStoryStatus: false,
            displayBoarder: true,
          ),
          StoryCard(
            labelText: "jackie jong",
            avatar: dq3,
            story: post4,
            createStoryStatus: false,
            displayBoarder: true,
          ),

        ],
      ),
    );
  }
}
