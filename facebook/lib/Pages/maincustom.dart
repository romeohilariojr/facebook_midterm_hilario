import 'package:facebook/Pages/friends.dart';
import 'package:facebook/Pages/marketplace.dart';
import 'package:facebook/Pages/menu.dart';
import 'package:facebook/Pages/newsfeed.dart';
import 'package:facebook/Pages/notification.dart';
import 'package:facebook/Pages/reels.dart';
import 'package:flutter/material.dart';

class MainCustomPage extends StatefulWidget {
  const MainCustomPage({super.key});

  @override
  State<MainCustomPage> createState() => _MainCustomPageState();
}

class _MainCustomPageState extends State<MainCustomPage> {
  int selectedIndex = 0;

  List pages = const [
    Newsfeed(),
    FriendsPages(),
    Reelspages(),
    Marketplace(),
    Menupages(),
    NotificationPage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Friends"),
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video),
            label: "Reels",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_convenience_store_rounded),
            label: "Market",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage("assets/profile/pro1.jpg"),
            ),
            label: ''
          ),
        ],
      ),
    );
  }
}
