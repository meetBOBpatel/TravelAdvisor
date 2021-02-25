// import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: <Widget>[
          // Container(color: Colors.black, margin: EdgeInsets.all(10.0)),
          Container(
            child: Image.asset("assets/icon1.jpg"),
          ),
          Container(child: Image.asset("assets/icon2.jpg")),
          Container(child: Image.asset("assets/icon3.jpg")),
          Container(child: Image.asset("assets/icon4.jpg")),
          Container(child: Image.asset("assets/icon5.jpg")),
          Container(child: Image.asset("assets/icon6.jpg")),
          Container(child: Image.asset("assets/icon7.jpg")),
          Container(child: Image.asset("assets/icon8.jpg")),
          Container(child: Image.asset("assets/icon9.jpg")),
          Container(child: Image.asset("assets/icon10.jpg")),
          Container(child: Image.asset("assets/icon11.jpg")),
          Container(child: Image.asset("assets/icon12.jpg"))
        ],
      ),
      backgroundColor: Colors.blueGrey,
    );
  }
}
