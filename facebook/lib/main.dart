import 'package:facebook/Pages/maincustom.dart';
import 'package:facebook/Pages/newsfeed.dart';
import 'package:facebook/Widget/newsfeed.post.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Newsfeed(),
    );
  }
}

