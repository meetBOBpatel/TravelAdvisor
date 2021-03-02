// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:travel_advisor/MapPage.dart';
import 'package:travel_advisor/SavePage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("National Parks"),
        backgroundColor: Colors.blueGrey,
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: <Widget>[
          Container(
              height: 280,
              child: GridTile(
                child: FocusedMenuHolder(
                  menuWidth: MediaQuery.of(context).size.width * .5,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (conext) => MapPage()));
                  }, // want to open google maps with scenic spots filled up
                  menuItems: [
                    FocusedMenuItem(
                        title: Text("Save"),
                        trailingIcon:
                            Icon(Icons.favorite_border, color: Colors.black),
                        onPressed: () {} // want to add to favorite list
                        )
                  ],
                  child: Card(
                    color: Colors.blueGrey,
                    // margin: EdgeInsets.only(top: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Column(
                      children: <Widget>[
                        new SizedBox(
                          height: 7.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            "assets/BryceCanyonNationalPark1.jpg",
                            height: 170,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text("Bryce Canyon", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                ),
              )),
          Container(
              height: 280,
              child: GridTile(
                child: FocusedMenuHolder(
                  menuWidth: MediaQuery.of(context).size.width * .5,
                  onPressed:
                      () {}, // want to open google maps with scenic spots filled up
                  menuItems: [
                    FocusedMenuItem(
                        title: Text("Save"),
                        trailingIcon:
                            Icon(Icons.favorite_border, color: Colors.black),
                        onPressed: () {} // want to add to favorite list
                        )
                  ],
                  child: Card(
                    color: Colors.blueGrey,
                    // margin: EdgeInsets.only(top: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Column(
                      children: <Widget>[
                        new SizedBox(
                          height: 7.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            "assets/YosemiteNationalPark.jpg",
                            height: 170,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text("Yosemite", style: TextStyle(fontSize: 20))
                      ],
                    ),
                  ),
                ),
              )),
          Container(
              height: 280,
              child: GridTile(
                child: FocusedMenuHolder(
                  menuWidth: MediaQuery.of(context).size.width * .5,
                  onPressed:
                      () {}, // want to open google maps with scenic spots filled up
                  menuItems: [
                    FocusedMenuItem(
                        title: Text("Save"),
                        trailingIcon:
                            Icon(Icons.favorite_border, color: Colors.black),
                        onPressed: () {} // want to add to favorite list
                        )
                  ],
                  child: Card(
                    color: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Column(
                      children: <Widget>[
                        new SizedBox(
                          height: 7.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            "assets/ZionNationalPark.jpg",
                            height: 170,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text("Zion", style: TextStyle(fontSize: 20))
                      ],
                    ),
                  ),
                ),
              )),
          Container(
              height: 280,
              child: GridTile(
                child: FocusedMenuHolder(
                  menuWidth: MediaQuery.of(context).size.width * .5,
                  onPressed:
                      () {}, // want to open google maps with scenic spots filled up
                  menuItems: [
                    FocusedMenuItem(
                        title: Text("Save"),
                        trailingIcon:
                            Icon(Icons.favorite_border, color: Colors.black),
                        onPressed: () {} // want to add to favorite list
                        )
                  ],
                  child: Card(
                    color: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Column(
                      children: <Widget>[
                        new SizedBox(
                          height: 7.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            "assets/MammothCaveNationalPark.jpg",
                            height: 170,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text("Mammoth Cave", style: TextStyle(fontSize: 20))
                      ],
                    ),
                  ),
                ),
              )),
          Container(
              height: 280,
              child: GridTile(
                child: FocusedMenuHolder(
                  menuWidth: MediaQuery.of(context).size.width * .5,
                  onPressed:
                      () {}, // want to open google maps with scenic spots filled up
                  menuItems: [
                    FocusedMenuItem(
                        title: Text("Save"),
                        trailingIcon:
                            Icon(Icons.favorite_border, color: Colors.black),
                        onPressed: () {} // want to add to favorite list
                        )
                  ],
                  child: Card(
                    color: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Column(
                      children: <Widget>[
                        new SizedBox(
                          height: 7.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            "assets/GlacierNationalPark.jpg",
                            height: 170,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text("Glacier", style: TextStyle(fontSize: 20))
                      ],
                    ),
                  ),
                ),
              )),
          Container(
              height: 280,
              child: GridTile(
                child: FocusedMenuHolder(
                  menuWidth: MediaQuery.of(context).size.width * .5,
                  onPressed:
                      () {}, // want to open google maps with scenic spots filled up
                  menuItems: [
                    FocusedMenuItem(
                        title: Text("Save"),
                        trailingIcon:
                            Icon(Icons.favorite_border, color: Colors.black),
                        onPressed: () {} // want to add to favorite list
                        )
                  ],
                  child: Card(
                    color: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Column(
                      children: <Widget>[
                        new SizedBox(
                          height: 7.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            "assets/GrandCanyonNationalPark.jpg",
                            height: 170,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text("Grand Canyon", style: TextStyle(fontSize: 20))
                      ],
                    ),
                  ),
                ),
              )),
          Container(
              height: 280,
              child: GridTile(
                child: FocusedMenuHolder(
                  menuWidth: MediaQuery.of(context).size.width * .5,
                  onPressed:
                      () {}, // want to open google maps with scenic spots filled up
                  menuItems: [
                    FocusedMenuItem(
                        title: Text("Save"),
                        trailingIcon:
                            Icon(Icons.favorite_border, color: Colors.black),
                        onPressed: () {} // want to add to favorite list
                        )
                  ],
                  child: Card(
                    color: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Column(
                      children: <Widget>[
                        new SizedBox(
                          height: 7.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            "assets/YellowstoneNationalPark.jpg",
                            height: 170,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text("Yellow Stone", style: TextStyle(fontSize: 20))
                      ],
                    ),
                  ),
                ),
              )),
          Container(
              height: 280,
              child: GridTile(
                child: FocusedMenuHolder(
                  menuWidth: MediaQuery.of(context).size.width * .5,
                  onPressed:
                      () {}, // want to open google maps with scenic spots filled up
                  menuItems: [
                    FocusedMenuItem(
                        title: Text("Save"),
                        trailingIcon:
                            Icon(Icons.favorite_border, color: Colors.black),
                        onPressed: () {} // want to add to favorite list
                        )
                  ],
                  child: Card(
                    color: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Column(
                      children: <Widget>[
                        new SizedBox(
                          height: 7.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            "assets/GrandTetonNationalPark.jpg",
                            height: 170,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text("Grand Teton", style: TextStyle(fontSize: 20))
                      ],
                    ),
                  ),
                ),
              )),
          Container(
              height: 280,
              child: GridTile(
                child: FocusedMenuHolder(
                  menuWidth: MediaQuery.of(context).size.width * .5,
                  onPressed:
                      () {}, // want to open google maps with scenic spots filled up
                  menuItems: [
                    FocusedMenuItem(
                        title: Text("Save"),
                        trailingIcon:
                            Icon(Icons.favorite_border, color: Colors.black),
                        onPressed: () {} // want to add to favorite list
                        )
                  ],
                  child: Card(
                    color: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Column(
                      children: <Widget>[
                        new SizedBox(
                          height: 7.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            "assets/CongareeNationalPark.jpg",
                            height: 170,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text("Congaree", style: TextStyle(fontSize: 20))
                      ],
                    ),
                  ),
                ),
              )),
          Container(
              height: 280,
              child: GridTile(
                child: FocusedMenuHolder(
                  menuWidth: MediaQuery.of(context).size.width * .5,
                  onPressed:
                      () {}, // want to open google maps with scenic spots filled up
                  menuItems: [
                    FocusedMenuItem(
                        title: Text("Save"),
                        trailingIcon:
                            Icon(Icons.favorite_border, color: Colors.black),
                        onPressed: () {} // want to add to favorite list
                        )
                  ],
                  child: Card(
                    color: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Column(
                      children: <Widget>[
                        new SizedBox(
                          height: 7.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            "assets/IndianaDunesNationalPark.jpg",
                            height: 170,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text("Indiana Dunes", style: TextStyle(fontSize: 20))
                      ],
                    ),
                  ),
                ),
              )),
          Container(
              height: 280,
              child: GridTile(
                child: FocusedMenuHolder(
                  menuWidth: MediaQuery.of(context).size.width * .5,
                  onPressed:
                      () {}, // want to open google maps with scenic spots filled up
                  menuItems: [
                    FocusedMenuItem(
                        title: Text("Save"),
                        trailingIcon:
                            Icon(Icons.favorite_border, color: Colors.black),
                        onPressed: () {} // want to add to favorite list
                        )
                  ],
                  child: Card(
                    color: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Column(
                      children: <Widget>[
                        new SizedBox(
                          height: 7.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            "assets/NewRiverGrogeNationalPark.jpg",
                            height: 170,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text("New River Groge", style: TextStyle(fontSize: 20))
                      ],
                    ),
                  ),
                ),
              )),
          Container(
              height: 280,
              child: GridTile(
                child: FocusedMenuHolder(
                  menuWidth: MediaQuery.of(context).size.width * .5,
                  onPressed:
                      () {}, // want to open google maps with scenic spots filled up
                  menuItems: [
                    FocusedMenuItem(
                        title: Text("Save"),
                        trailingIcon:
                            Icon(Icons.favorite_border, color: Colors.black),
                        onPressed: () {} // want to add to favorite list
                        )
                  ],
                  child: Card(
                    color: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Column(
                      children: <Widget>[
                        new SizedBox(
                          height: 7.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            "assets/SmokeyMountainNationalPark.jpg",
                            height: 170,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text("Smokey Mountain", style: TextStyle(fontSize: 20))
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
      backgroundColor: Colors.black12,
    );
  }
}




                //   footer: Text(
                //     'Bryce Canyon',
                //     textAlign: TextAlign.center,
                //     style: TextStyle(background: Paint()..color = Colors.white),
                //   ),
                //   child: Image.asset("assets/BryceCanyonNationalPark1.jpg"),
                // )),
                // Container(
                //     child: GridTile(
                //   footer: Text(
                //     'Yosemite',
                //     textAlign: TextAlign.center,
                //     style: TextStyle(background: Paint()..color = Colors.white),
                //   ),
                //   child: Image.asset("assets/YosemiteNationPark.jpg"),
                // )),
                // Container(
                //     child: GridTile(
                //   footer: Text(
                //     'Zion',
                //     textAlign: TextAlign.center,
                //     style: TextStyle(background: Paint()..color = Colors.white),
                //   ),
                //   child: Image.asset("assets/ZionNationalPark.jpg"),
                // )),
                // Container(
                //     child: GridTile(
                //   footer: Text(
                //     'Mammoth Cave',
                //     textAlign: TextAlign.center,
                //     style: TextStyle(background: Paint()..color = Colors.white),
                //   ),
                //   child: Image.asset("assets/MammothCaveNationalPark.jpg"),
                // )),
                // Container(
                //     child: GridTile(
                //   footer: Text(
                //     'Glacier',
                //     textAlign: TextAlign.center,
                //     style: TextStyle(background: Paint()..color = Colors.white),
                //   ),
                //   child: Image.asset("assets/GlacierNationalPark.jpg"),
                // )),
                // Container(
                //     child: GridTile(
                //   footer: Text(
                //     'Grand Canyon',
                //     textAlign: TextAlign.center,
                //     style: TextStyle(background: Paint()..color = Colors.white),
                //   ),
                //   child: Image.asset("assets/GrandCanyonNationalPark.jpg"),
                // )),
                // Container(
                //     child: GridTile(
                //   footer: Text(
                //     'Yellow Stone',
                //     textAlign: TextAlign.center,
                //     style: TextStyle(background: Paint()..color = Colors.white),
                //   ),
                //   child: Image.asset("assets/YellowstoneNationalPark.jpg"),
                // )),
                // Container(
                //     child: GridTile(
                //   footer: Text(
                //     'Grand Teton',
                //     textAlign: TextAlign.center,
                //     style: TextStyle(background: Paint()..color = Colors.white),
                //   ),
                //   child: Image.asset("assets/GrandTetonNationalPark.jpg"),
                // )),
                // Container(
                //     child: GridTile(
                //   footer: Text(
                //     'Congaree National',
                //     textAlign: TextAlign.center,
                //     style: TextStyle(background: Paint()..color = Colors.white),
                //   ),
                //   child: Image.asset("assets/CongareeNationalPark.jpg"),
                // )),
                // Container(
                //     child: GridTile(
                //   footer: Text(
                //     'Indiana Dunes',
                //     textAlign: TextAlign.center,
                //     style: TextStyle(background: Paint()..color = Colors.white),
                //   ),
                //   child: Image.asset("assets/IndianaDunesNationalPark.jpg"),
                // )),
                // Container(
                //     child: GridTile(
                //   footer: Text(
                //     'New River Groge',
                //     textAlign: TextAlign.center,
                //     style: TextStyle(background: Paint()..color = Colors.white),
                //   ),
                //   child: Image.asset("assets/NewRiverGrogeNationalPark.jpg"),
                // )),
                // Container(
                //     child: GridTile(
                //   footer: Text(
                //     'Smokey Mountains',
                //     textAlign: TextAlign.center,
                //     style: TextStyle(background: Paint()..color = Colors.white),
                //   ),
                //   child: Image.asset("assets/SmokeyMountainNationalPark.jpg"),