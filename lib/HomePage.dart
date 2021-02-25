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
          Container(child: Image.asset("assets/BryceCanyonNationalPark1.jpg")),
          Container(child: Image.asset("assets/YosemiteNationPark.jpg")),
          Container(child: Image.asset("assets/ZionNationalPark.jpg")),
          Container(child: Image.asset("assets/MammothCaveNationalPark.jpg")),
          Container(child: Image.asset("assets/GlacierNationalPark.jpg")),
          Container(child: Image.asset("assets/GrandCanyonNationalPark.jpg")),
          Container(child: Image.asset("assets/YellowstoneNationalPark.jpg")),
          Container(child: Image.asset("assets/GrandTetonNationalPark.jpg")),
          Container(child: Image.asset("assets/CongareeNationalPark.jpg")),
          Container(child: Image.asset("assets/IndianaDunesNationalPark.jpg")),
          Container(child: Image.asset("assets/NewRiverGrogeNationalPark.jpg")),
          Container(child: Image.asset("assets/SmokeyMountainNationalPark.jpg")),
         
        ],
      ),
      backgroundColor: Colors.blueGrey,
    );
  }
}
