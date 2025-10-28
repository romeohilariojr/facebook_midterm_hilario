import 'package:flutter/material.dart';
import 'package:facebook/Model/story.dart';
import 'package:facebook/Widget/createpost.dart';
import 'package:facebook/Widget/storieslist.dart';

class Newsfeed extends StatefulWidget {
  const Newsfeed({super.key});

  @override
  State<Newsfeed> createState() => _NewsfeedState();
}

class _NewsfeedState extends State<Newsfeed> {
  final List<StoryModel> stories = [
    StoryModel(
      id: '1',
      username: 'bebong',
      profileImagePath: 'assets/profile/prof1.jpg',
      storyImagePath: 'assets/myday/story1.jpg',
      timestamp: DateTime.now().subtract(const Duration(hours: 10)),
      isViewed: false,
    ),
    StoryModel(
      id: '2',
      username: 'ikasf',
      profileImagePath: 'assets/profile/prof2.jpg',
      storyImagePath: 'assets/myday/story2.jpg',
      timestamp: DateTime.now().subtract(const Duration(hours: 9)),
      isViewed: false,
    ),
    StoryModel(
      id: '3',
      username: 'sdgjk',
      profileImagePath: 'assets/profile/prof3.jpg',
      storyImagePath: 'assets/myday/story3.jpg',
      timestamp: DateTime.now().subtract(const Duration(hours: 8)),
      isViewed: false,
    ),
    StoryModel(
      id: '4',
      username: 'hssdjg',
      profileImagePath: 'assets/profile/prof4.jpg',
      storyImagePath: 'assets/myday/story4.jpg',
      timestamp: DateTime.now().subtract(const Duration(hours: 7)),
      isViewed: false,
    ),
    StoryModel(
      id: '5',
      username: 'aosjfd',
      profileImagePath: 'assets/profile/prof5.jpg',
      storyImagePath: 'assets/myday/story5.jpg',
      timestamp: DateTime.now().subtract(const Duration(hours: 6)),
      isViewed: false,
    ),
    StoryModel(
      id: '6',
      username: 'hahah',
      profileImagePath: 'assets/profile/prof6.jpg',
      storyImagePath: 'assets/myday/story6.jpg',
      timestamp: DateTime.now().subtract(const Duration(hours: 5)),
      isViewed: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/icon/logo.png",
          height: 80,
        ),
        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.search)),
          DrawerButton(),
        ],
      ),
      body: ListView(
        children: [
          const Createpost(),
          StoriesList(
            stories: stories,
            onStoryTap: (story) {
              // Handle story tap
            },
          ),
        ],
      ),
    );
  }
}
