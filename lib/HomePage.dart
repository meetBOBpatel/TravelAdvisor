// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:travel_advisor/MapPage.dart';
import 'package:travel_advisor/SavePage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


showAlertDialog(BuildContext context, String title, String details,double L1, double L2) {

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
    child: Text("Lonch Map"),
    onPressed:  () {
      MapsLauncher.launchCoordinates(L1, L2);
    },
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
                      showAlertDialog(context, "Bryce Canyon National Park ", "Bryce Canyon National Park, a sprawling reserve in southern Utah, is known for crimson-colored hoodoos, which are spire-shaped rock formations. The park’s main road leads past the expansive Bryce Amphitheater, a hoodoo-filled depression lying below the Rim Trail hiking path. It has overlooks at Sunrise Point, Sunset Point, Inspiration Point and Bryce Point. Prime viewing times are around sunup and sundown.", 37.609181207224594, -112.2324156093562); 
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
                        () {
                          showAlertDialog(context, "Yosemite National Park ", "Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome. In Yosemite Village are shops, restaurants, lodging, the Yosemite Museum and the Ansel Adams Gallery, with prints of the photographer’s renowned black-and-white landscapes of the area.", 37.86509400479401, -119.53811025826526); 
                        }, // Open google maps and show direction Home to National Park
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
                        () {
                          showAlertDialog(context, "Zion National Park", "Zion National Park is a southwest Utah nature preserve distinguished by Zion Canyon’s steep red cliffs. Zion Canyon Scenic Drive cuts through its main section, leading to forest trails along the Virgin River. The river flows to the Emerald Pools, which have waterfalls and a hanging garden. Also along the river, partly through deep chasms, is Zion Narrows wading hike.", 37.29830302799651, -113.02629649360782);
                        }, // Open google maps and show direction Home to National Park
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
                        () {
                          showAlertDialog(context, "Mammoth Cave National Park", "Mammoth Cave in Kentucky is the world's longest known cave system, with more than 400 miles explored, and one of the oldest tour attractions in North America. Mammoth Cave in Kentucky is the world's longest known cave system, with more than 400 miles explored, and one of the oldest tour attractions in North America.", 37.181515666902534, -86.15049311470466);
                        }, // Open google maps and show direction Home to National Park
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
                        () {
                          showAlertDialog(context, "Glacier National Park","Glacier National Park is a 1,583-sq.-mi. wilderness area in Montana's Rocky Mountains, with glacier-carved peaks and valleys running to the Canadian border. It's crossed by the mountainous Going-to-the-Sun Road." ,48.759551328469826, -113.7870381316923);
                        }, // Open google maps and show direction Home to National Park
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
                        () {
                          showAlertDialog(context,"Grand Canyon National Park" , "Grand Canyon National Park, located in northwestern Arizona, is the 15th site in the United States to have been named as a national park. The park's central feature is the Grand Canyon, a gorge of the Colorado River, which is often considered one of the Wonders of the World.", 36.106801297266315, -112.1145058845318);
                        }, // Open google maps and show direction Home to National Park
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
                        () {
                          showAlertDialog(context, "Yellow Stone National Park", "Yellowstone National Park is a nearly 3,500-sq.-mile wilderness recreation area atop a volcanic hot spot. Mostly in Wyoming, the park spreads into parts of Montana and Idaho too. Yellowstone features dramatic canyons, alpine rivers, lush forests, hot springs and gushing geysers, including its most famous, Old Faithful. It's also home to hundreds of animal species, including bears, wolves, bison, elk and antelope. ", 44.428109498626114, -110.58663193766971);
                        }, // Open google maps and show direction Home to National Park
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
                        () {
                          showAlertDialog(context, "Grand Teton National Park", "Grand Teton National Park boasts 310,000 acres of lush valley floors, mountain meadows, alpine lakes and the rising peaks of the Grand Teton Mountain Range. Located just north of Jackson, Wyoming, Grand Teton has a diverse and long-standing history that includes human use from more than 11,000 years ago.", 43.79134228736242, -110.68050062007575);
                        }, // Open google maps and show direction Home to National Park
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
                        () {
                          showAlertDialog(context, "Congaree National Park", "Congaree National Park is a 26,276-acre American national park in central South Carolina, 18 miles southeast of the state capital, Columbia. The park preserves the largest tract of old growth bottomland hardwood forest left in the United States.", 33.7947990795592, -80.78169003108532);
                        }, // Open google maps and show direction Home to National Park
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
                        () {
                          showAlertDialog(context,"Indiana Dunes National Park" , "Indiana Dunes National Park hugs 15 miles of the southern shore of Lake Michigan and has much to offer. Whether you enjoy scouting for rare species of birds or flying kites on the sandy beach, the national park's 15,000 acres will continually enchant you.  Hikers will enjoy 50 miles of trails over rugged dunes, mysterious wetlands, sunny prairies, meandering rivers and peaceful forests. ", 41.65055743858551, -87.0706590676887);
                        }, // Open google maps and show direction Home to National Park
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
                        () {
                          showAlertDialog(context, "New River Groge National Park", "The New River Gorge National Park and Preserve is a unit of the United States National Park Service designed to protect and maintain the New River Gorge in southern West Virginia in the Appalachian Mountains. ", 37.87895546929177, -81.01797465855435);
                        }, // Open google maps and show direction Home to National Park
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
                        () {
                          showAlertDialog(context, "Smokey Mountain National Park", "The Great Smoky Mountains are a mountain range rising along the Tennessee–North Carolina border in the southeastern United States. They are a subrange of the Appalachian Mountains, and form part of the Blue Ridge Physiographic Province.", 35.616960486553594, -83.48957841979197);
                        }, // Open google maps and show direction Home to National Park
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
