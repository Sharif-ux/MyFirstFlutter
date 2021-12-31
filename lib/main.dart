import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:magang/Screens/Courses/courses.dart';
import 'package:magang/Screens/Homepage/home.dart';
import 'package:magang/Screens/Profile/profile.dart';
import 'package:magang/Screens/Rekomendation/rekomendation.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
      ),
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int index = 0;

  final screens = [
    Home(),
    Courses(),
    Rekomendation(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.video_collection_rounded, size: 30),
      Icon(Icons.favorite_rounded,size: 30),
      Icon(Icons.person_rounded, size: 30)
    ];
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        height: 60,
        index: index,
        items: items,
        onTap: (index) => setState(() {
          this.index = index;
        }),
      ),
    );
  }
}