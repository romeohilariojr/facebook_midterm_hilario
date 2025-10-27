import 'package:facebook/Model/story.dart';
import 'package:facebook/Widget/createpost.dart';
import 'package:facebook/Widget/storieslist.dart';
import 'package:flutter/material.dart';

class Newsfeed extends StatefulWidget {
  const Newsfeed({super.key});

  @override
  State<Newsfeed> createState() => _NewsfeedState();
}

class _NewsfeedState extends State<Newsfeed> {
  List<StoryModel> stories = [
    StoryModel(
      id: '1',
      username: 'bebong',
      profileImagePath: 'assets',
      storyImagePath: 'assets/myday',
      timestamp: DateTime.now(). subtract(const Duration(hours: 10)),
      isViewed: false,),
    StoryModel(
      id: '1',
      username: 'ikasf',
      profileImagePath: 'assets',
      storyImagePath: 'assets/myday',
      timestamp: DateTime.now(). subtract(const Duration(hours: 10)),
      isViewed: false,),
    StoryModel(
      id: '1',
      username: 'sdgjk',
      profileImagePath: 'assets',
      storyImagePath: 'assets/myday',
      timestamp: DateTime.now(). subtract(const Duration(hours: 10)),
      isViewed: false,),
    StoryModel(
      id: '1',
      username: 'hssdjg',
      profileImagePath: 'assets',
      storyImagePath: 'assets/myday',
      timestamp: DateTime.now(). subtract(const Duration(hours: 10)),
      isViewed: false,),
    StoryModel(
      id: '1',
      username: 'aosjfd',
      profileImagePath: 'assets',
      storyImagePath: 'assets/myday',
      timestamp: DateTime.now(). subtract(const Duration(hours: 10)),
      isViewed: false,),
    StoryModel(
      id: '1',
      username: 'hahah',
      profileImagePath: 'assets',
      storyImagePath: 'assets/myday',
      timestamp: DateTime.now(). subtract(const Duration(hours: 10)),
      isViewed: false,),
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
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          DrawerButton(),
        ],
      ),
      body: Column(
        children: [Createpost(),
        StoriesList(
        stories: stories,
        onStoryTap: (story) {},
          ),
        ],
      )
    );
  }
}
