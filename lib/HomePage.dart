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


showAlertDialog(BuildContext context, String title, String details) {

  // set up the buttons
  Widget b1 = TextButton(
    child: Text("button 1"),
    onPressed:  () {},
  );
  Widget b2 = TextButton(
    child: Text("button 2"),
    onPressed:  () {},
  );
  Widget b3 = TextButton(
    child: Text("button 3"),
    onPressed:  () {},
  );
  Widget b4 = TextButton(
    child: Text("button 3"),
    onPressed:  () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(details),
    actions: [
      b1,b2,b3,b4,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
  
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(
            "National Parks",
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.grey[850],
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
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (conext) => MapPage()));
                      showAlertDialog(context, "BryceCanyon National", "THis is good" ); 
                    }, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed:
                              () {
                                
                              } // Add this National Park to Saved Page
                          )
                    ],
                    child: Card(
                      color: Colors.brown[900],
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
                          Text("Bryce Canyon",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey[200])),
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
                        () {}, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed:
                              () {} // Add this National Park to Saved Page
                          )
                    ],
                    child: Card(
                      color: Colors.brown[900],
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
                          Text("Yosemite",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey[200]))
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
                        () {}, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed:
                              () {} // Add this National Park to Saved Page
                          )
                    ],
                    child: Card(
                      color: Colors.brown[900],
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
                          Text("Zion",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey[200]))
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
                        () {}, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed:
                              () {} // Add this National Park to Saved Page
                          )
                    ],
                    child: Card(
                      color: Colors.brown[900],
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
                          Text("Mammoth Cave",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey[200]))
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
                        () {}, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed:
                              () {} // Add this National Park to Saved Page
                          )
                    ],
                    child: Card(
                      color: Colors.brown[900],
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
                          Text("Glacier",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey[200]))
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
                        () {}, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed:
                              () {} // Add this National Park to Saved Page
                          )
                    ],
                    child: Card(
                      color: Colors.brown[900],
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
                          Text("Grand Canyon",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey[200]))
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
                        () {}, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed:
                              () {} // Add this National Park to Saved Page
                          )
                    ],
                    child: Card(
                      color: Colors.brown[900],
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
                          Text("Yellow Stone",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey[200]))
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
                        () {}, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed:
                              () {} // Add this National Park to Saved Page
                          )
                    ],
                    child: Card(
                      color: Colors.brown[900],
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
                          Text("Grand Teton",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey[200]))
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
                        () {}, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed:
                              () {} // Add this National Park to Saved Page
                          )
                    ],
                    child: Card(
                      color: Colors.brown[900],
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
                          Text("Congaree",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey[200]))
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
                        () {}, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed:
                              () {} // Add this National Park to Saved Page
                          )
                    ],
                    child: Card(
                      color: Colors.brown[900],
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
                          Text("Indiana Dunes",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey[200]))
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
                        () {}, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed:
                              () {} // Add this National Park to Saved Page
                          )
                    ],
                    child: Card(
                      color: Colors.brown[900],
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
                          Text("New River Groge",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey[200]))
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
                        () {}, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed:
                              () {} // Add this National Park to Saved Page
                          )
                    ],
                    child: Card(
                      color: Colors.brown[900],
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
                          Text("Smokey Mountain",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey[200]))
                        ],
                      ),
                    ),
                  ),
                )),
          ],
        ),
        
        
        backgroundColor: Colors.brown);
  }
}
