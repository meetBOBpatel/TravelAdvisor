// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:travel_advisor/CameraPage.dart';
import 'package:travel_advisor/HomePage.dart';
import 'package:travel_advisor/LoginPage.dart';
import 'package:travel_advisor/MapPage.dart';
import 'package:travel_advisor/SavePage.dart';
import 'package:travel_advisor/SettingsPage.dart';
import 'package:travel_advisor/AuthService.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:travel_advisor/StartupPage.dart';
import 'package:vm_service/vm_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return new MaterialApp(
    //   // home: MyBottomNavigationBar(),
    // );

    // provides AuthenticationService class and user stream from said class
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider(
          // gets access to getter from service
          create: (context) =>
              context.read<AuthenticationService>().authStateChanges,
        ),
      ],
      child: MaterialApp(
        title: 'Login',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: AuthenticationWrapper(),
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    // ***Need to find way to get back to Log In page if just signing up (creating the account)***
    // can maybe create their preferences there:
    // * Which state should be default when looking for NPs
    // * Their username
    // * We also need to add Saved/Favorites to Profile settings/pref
    if (firebaseUser != null) {
      return MyBottomNavigationBar();
    }
    return StartupPage();
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
