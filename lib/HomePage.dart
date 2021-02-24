import 'dart:html';

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
        body: 
        GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: <Widget>[
            // Container(color: Colors.black, margin: EdgeInsets.all(10.0)),
            Container(child: Image.asset("icon1.jpg"),
            ),
            Container(child: Image.asset("icon2.jpg")),
            Container(child: Image.asset("icon3.jpg")),
            Container(child: Image.asset("icon4.jpg")),
            Container(child: Image.asset("icon5.jpg")),
            Container(child: Image.asset("icon6.jpg")),
            Container(child: Image.asset("icon7.jpg")),
            Container(child: Image.asset("icon8.jpg")),
            Container(child: Image.asset("icon9.jpg")),
            Container(child: Image.asset("icon10.jpg")),
            Container(child: Image.asset("icon11.jpg")),
            Container(child: Image.asset("icon12.jpg"))
          ],
        ),

        backgroundColor: Colors.blueGrey,
        
        );
  }
}
