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
          Container(child: GridTile (
                      footer: Text('Bryce Canyon', textAlign: TextAlign.center ),
                    
                      child: Image.asset("assets/BryceCanyonNationalPark1.jpg"),
                      )
                    ),
          Container(child: GridTile (
                      footer: Text('Yosemite', textAlign: TextAlign.center),
                      child: Image.asset("assets/YosemiteNationPark.jpg"),
                      )
                    ),
          Container(child: GridTile (
                      footer: Text('Zion', textAlign: TextAlign.center),
                      child: Image.asset("assets/ZionNationalPark.jpg"),
                      )
                    ),
          Container(child: GridTile (
                      footer: Text('Mammoth Cave', textAlign: TextAlign.center),
                      child: Image.asset("assets/MammothCaveNationalPark.jpg"),
                      )
                    ),
          Container(child: GridTile (
                      footer: Text('Glacier', textAlign: TextAlign.center),
                      child: Image.asset("assets/GlacierNationalPark.jpg"),
                      )
                    ),
          Container(child: GridTile (
                      footer: Text('Grand Canyo', textAlign: TextAlign.center),
                      child: Image.asset("assets/GrandCanyonNationalPark.jpg"),
                      )
                    ),
          Container(child: GridTile (
                      footer: Text('Yellow Stone', textAlign: TextAlign.center),
                      child: Image.asset("assets/YellowstoneNationalPark.jpg"),
                      )
                    ),

          Container(child: GridTile (
                      footer: Text('Grand Teton', textAlign: TextAlign.center),
                      child: Image.asset("assets/GrandTetonNationalPark.jpg"),
                      )
                    ),

          Container(child: GridTile (
                      footer: Text('Congaree National', textAlign: TextAlign.center),
                      child: Image.asset("assets/CongareeNationalPark.jpg"),
                      )
                    ),
          Container(child: GridTile (
                      footer: Text('Indiana Dunes', textAlign: TextAlign.center),
                      child: Image.asset("assets/IndianaDunesNationalPark.jpg"),
                      )
                    ),
          
          Container(child: GridTile (
                      footer: Text('New River Grog', textAlign: TextAlign.center),
                      child: Image.asset("assets/NewRiverGrogeNationalPark.jpg"),
                      )
                    ),
          Container( child: GridTile
                      ( 
                        footer: Text('Smokey Mountains', textAlign: TextAlign.center),
                        child: Image.asset("assets/SmokeyMountainNationalPark.jpg"),
                      )
                    ),
        ],
      ),
      backgroundColor: Colors.black12,
    );
  }
}
