import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
const NotificationPage({super.key});

@override
State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Notifications'),
actions: [
IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
IconButton(onPressed: () {}, icon: Icon(Icons.search)),
],
),
body: Column(
children: [
ListTile(
leading: CircleAvatar(
backgroundImage: AssetImage('assets/profile/prof1.jpg'),
radius: 25,
),
title: Text('HAHA shared your post'),
subtitle: Text('2 hours ago'),
trailing: Icon(Icons.more_vert),
),
Divider(),

ListTile(
leading: CircleAvatar(
backgroundImage: AssetImage('assets/profile/prof2.jpg'),
radius: 25,
),
title: Text('Bebong commented on your photo'),
subtitle: Text('5 hours ago'),
trailing: Icon(Icons.more_vert),
),
Divider(),

ListTile(
leading: CircleAvatar(
backgroundImage: AssetImage('assets/profile/prof3.jpg'),
radius: 25,
),
title: Text('Kingkong sent you a friend request'),
subtitle: Text('1 day ago'),
trailing: Icon(Icons.more_vert),
),
],
),
);
}
}