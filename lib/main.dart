// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:travel_advisor/CameraPage.dart';
import 'package:travel_advisor/HomePage.dart';
import 'package:travel_advisor/MapPage.dart';
import 'package:travel_advisor/SavePage.dart';
import 'package:travel_advisor/SettingsPage.dart';
import 'package:vm_service/vm_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  MyBottomNavigationBar({Key key}) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    MapPage(),
    SavePage(),
    CameraPage(),
    SettingsPage()
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.deepOrange,
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.map),
            label: "Map",
            backgroundColor: Colors.deepOrange,
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.save),
            label: "Save",
            backgroundColor: Colors.deepOrange,
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.camera),
            label: "Camera",
            backgroundColor: Colors.deepOrange,
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.settings),
            label: "Settings",
            backgroundColor: Colors.deepOrange,
          ),
        ],
      ),
    );
  }
}

















// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Travel Advisor",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Testing Navigation Bar'),
//         ),
//         body: Center(
//           child: Text('Hello world')),
//       ),
//     );
//   }
// }
