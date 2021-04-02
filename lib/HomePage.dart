// import 'dart:html';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:travel_advisor/MapPage.dart';
import 'package:travel_advisor/ReadData.dart';
import 'package:travel_advisor/SavePage.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:travel_advisor/ScenicPages.dart';
import 'package:travel_advisor/UploadData.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'MapPage.dart';
import 'NavigatorTab.dart';

class HomePage extends StatefulWidget {
  HomePage({this.app});
  final FirebaseApp app;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final refDatabase = FirebaseDatabase.instance;

  @override
  Widget build(BuildContext context) {
    print("Static map variable is " + MapPage.x.toString() + " HomePage()");
    final reference = refDatabase.reference();

    void updateScenicSpots(String name) {
      switch (name) {
        case "Yellowstone National Park":
          {
            var name = [];
            name.addAll([
              "Mammoth Hot Springs",
              "Mount Washburn",
              "Mud Volcano",
              "Old Faithful",
              "Yellowstone Lake"
            ]);
            var img = [];
            img.addAll([
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/YS-MammothHotSprings.jpg?alt=media&token=17c6ccfd-f5aa-41ee-8feb-a2fd16dea20c",
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/YS-MountWashburn.jpg?alt=media&token=a73d72a5-2c46-4edf-86bb-84b1619a8627",
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/YS-MudVolcano.jpg?alt=media&token=f5bd6a70-fe3c-4d1c-a9d7-21602b5be9d0",
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/YS-OldFaithful.jpg?alt=media&token=8951026a-19b4-40e7-87ca-972cad1f9612",
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/YS-YellowstoneLake.jpg?alt=media&token=f0efe4b9-1a58-4deb-b869-749d23e41ab2"
            ]);
            var latitude = [];
            latitude.addAll([
              '44.9769', // mammoth
              '44.7977', // mt washburn
              '44.6249', // mud volcano
              '44.4605', // old faithful
              '44.4622' // ys lake
            ]);
            var longitude = [];
            longitude.addAll([
              '-110.6991', // mammoth
              '-110.4344', // mt washburn
              '-110.4336', // mud volcano
              '-110.8281', // old faithful
              '-110.3333' // ys lake
            ]);
            var desc = [];
            desc.addAll([
              'Exciting thermal hot springs that can reach up to 165°F',
              'Mountain that peaks at 10,243 ft with an amazing view',
              'Popular tourist hiking area',
              'Historic geyser and popular tourist attraction',
              'Largest high elevation lake in North America',
            ]);
            reference.child("Scenic Spots").remove();
            // uploads the data to database, then Scenic Spots will get data from database
            // and populate the Cards with correct scenic spots
            for (var i = 0; i < 5; i++) {
              UploadData uploadData = new UploadData(
                  name[i], latitude[i], longitude[i], img[i], desc[i]);
              uploadData.sendData();
            }
          }
          break;
        case "Bryce Canyon National Park":
          {
            var name = [];
            name.addAll([
              "Sunrise Point",
              "Bryce Point",
              "Mossy Window",
              "Farview Point",
              "Double Bridge"
            ]);
            var img = [];
            img.addAll([
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/BC-SunrisePoint.jpg?alt=media&token=8c16f434-6f84-428b-a099-9392a2ef31f7",
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/BC-BrycePoint.jpg?alt=media&token=c3317733-2fe3-4395-886c-18a7288d8457",
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/BC-MossyWindow.jpg?alt=media&token=b2a4811e-4acd-4bed-afe5-f2dbacd3ffd3",
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/BC-FairviewPoint.jpg?alt=media&token=740112fe-2719-440b-8b9c-0b3be68cf318",
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/BC-NaturalBridge.jpg?alt=media&token=72d6bcb5-375a-42d8-ba25-a60d23edf440"
            ]);
            var latitude = [];
            latitude.addAll([
              '37.62835', // sunrise
              '37.604361', // bryce
              '37.665472', // mossy
              '37.544306', // farview
              '37.620194' // double
            ]);
            var longitude = [];
            longitude.addAll([
              '-112.16293', // sunrise
              '-112.159528', // bryce
              '-112.112778', // mossy
              '-112.244278', // farview
              '-112.161417' // double
            ]);
            var desc = [];
            desc.addAll([
              'Beautiful view of the legendary rock formations', // sunrise
              'Enjoy an amazing view of Bryce amphitheater', // bryce
              'Rock formation view with a mossy outline', // mossy
              'Great view of valleys, rock ridges, and the sun', // farview
              'Naturally formed arched in the rock formations', // double
            ]);
            reference.child("Scenic Spots").remove();
            // uploads the data to database, then Scenic Spots will get data from database
            // and populate the Cards with correct scenic spots
            for (var i = 0; i < 6; i++) {
              UploadData uploadData = new UploadData(
                  name[i], latitude[i], longitude[i], img[i], desc[i]);
              uploadData.sendData();
            }
          }
          break;
        case "Yosemite National Park":
          {
            var name = [];
            name.addAll([
              "El Capitan",
              "Vernal Fall",
              "Glacier Point",
              "Mirror Lake",
              "Yosemite Falls"
            ]);
            var img = [];
            img.addAll([
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/YO-ElCapitan.jpg?alt=media&token=1b052e3f-826b-48c5-816d-459f6fe8db34",
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/YO-VernalFalls.jpg?alt=media&token=3dde39b3-9195-4ad3-973d-0f9219b42136",
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/YO-GlacierPoint.jpg?alt=media&token=b4d797bc-a466-46e6-ac67-3c1b7043774d",
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/YO-MirrorLake.jpg?alt=media&token=70b3a79c-b52c-4f61-b80f-b0aa3f94859c",
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/YO-YosemiteFalls.jpg?alt=media&token=97a3cae6-ce9d-4433-9b46-0b503c3ddd06"
            ]);
            var latitude = [];
            latitude.addAll(
                ['37.73395', '37.7275', '37.7274', '37.7485', '37.75671']);
            var longitude = [];
            longitude.addAll([
              '-119.63775', // capitan
              '-119.54388', // vernal
              '-119.57432', // glacier
              '-119.5491', // mirror
              '-119.59684' // falls
            ]);
            var desc = [];
            desc.addAll([
              'Must-see 3,000 ft mountain', // capitan
              'Popular hiking route with a waterfall', // vernal
              'Amazing view of the Half Dome and High Sieera', // glacier
              'Stunning mirror view of the Half Dome', // mirror
              'Legendary waterfall made up of three waterfalls', // falls
            ]);
            reference.child("Scenic Spots").remove();
            // uploads the data to database, then Scenic Spots will get data from database
            // and populate the Cards with correct scenic spots
            for (var i = 0; i < 6; i++) {
              UploadData uploadData = new UploadData(
                  name[i], latitude[i], longitude[i], img[i], desc[i]);
              uploadData.sendData();
            }
          }
          break;
        case "Zion National Park":
          {
            var name = [];
            name.addAll([
              "Zion Canyon",
              "Zion-Mount Carmel Highway",
              "Weeping Rock",
              "Lower Emerald Pools",
              "Checkerboard Mesa"
            ]);
            var img = [];
            img.addAll([
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/ZI-ZionHighway.jpg?alt=media&token=ba203b85-686b-4b18-8dc2-c86daa4badbc",
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/ZI-ZionCanyon.jpg?alt=media&token=26232440-06db-4e49-8efc-1b4d00a4d687",
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/ZI-WeepingRock.jpg?alt=media&token=8448b39c-943d-4f48-acd5-9030c53c0bcd",
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/ZI-EmeraldPools.jpg?alt=media&token=8c917c23-0617-45ca-ac09-040ce47bda7f",
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/ZI-CheckerboardMesa.jpg?alt=media&token=289dc46c-8eaa-420e-bdca-a65ef7f71bf5"
            ]);
            var latitude = [];
            latitude.addAll([
              '37.423717', // canyon
              '37.209935', // highway
              '37.271423', // weeping rock
              '37.248342', // emerald
              '37.225508' // checkerboard
            ]);
            var longitude = [];
            longitude.addAll([
              '-113.153551',
              '-112.956692',
              '-112.936527',
              '-112.9592784',
              '-112.880595'
            ]);
            var desc = [];
            desc.addAll([
              'Beautiful canyon with roads on the canyon floor', // canyon
              'Highway drive with amazing view of the mountainside', // highway
              'Dripping stone overhang with hanging gardens', // weeping rock
              'Gorgeous walkway through nature', // emerald
              'White-colored mesa with stones up the mountain side', // checkerboard
            ]);
            reference.child("Scenic Spots").remove();
            // uploads the data to database, then Scenic Spots will get data from database
            // and populate the Cards with correct scenic spots
            for (var i = 0; i < 6; i++) {
              UploadData uploadData = new UploadData(
                  name[i], latitude[i], longitude[i], img[i], desc[i]);
              uploadData.sendData();
            }
          }
          break;
        case "Mammoth National Park":
          {
            var name = [];
            name.addAll([
              "Mammoth Cave",
              "Fat Man's Misery",
              "Cedar Sink Trail",
              "Green River",
              "Tall Man's Misery"
            ]);
            var img = [];
            img.addAll([
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/ZI-ZionHighway.jpg?alt=media&token=ba203b85-686b-4b18-8dc2-c86daa4badbc",
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/ZI-ZionCanyon.jpg?alt=media&token=26232440-06db-4e49-8efc-1b4d00a4d687",
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/ZI-WeepingRock.jpg?alt=media&token=8448b39c-943d-4f48-acd5-9030c53c0bcd",
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/ZI-EmeraldPools.jpg?alt=media&token=8c917c23-0617-45ca-ac09-040ce47bda7f",
              "https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/ZI-CheckerboardMesa.jpg?alt=media&token=289dc46c-8eaa-420e-bdca-a65ef7f71bf5"
            ]);
            var latitude = [];
            latitude.addAll([
              '37.181609', // cave
              '37.181609', // fat
              '37.155766', // trail
              '37.167000', // green
              '37.181609' // tall
            ]);
            var longitude = [];
            longitude.addAll([
              '-86.150493',
              '-86.150493',
              '-86.160178',
              '-86.155328',
              '-86.150493'
            ]);
            var desc = [];
            desc.addAll([
              "Mysterious limestone cave with stunning visuals", // cave
              "Narrow passageway inside Mammoth Cave", // fat
              "Beautiful hiking location with a rock formation", // trail
              "25 mile river flowing through the park", // green
              "A short passageway inside Mammoth Cave" // tail
            ]);
            reference.child("Scenic Spots").remove();
            // uploads the data to database, then Scenic Spots will get data from database
            // and populate the Cards with correct scenic spots
            for (var i = 0; i < 6; i++) {
              UploadData uploadData = new UploadData(
                  name[i], latitude[i], longitude[i], img[i], desc[i]);
              uploadData.sendData();
            }
          }
          break;
        default:
          {}
          break;
      }
    }

    launchURL(String url) async {
      // if (await canLaunch(url)) {
      await launch(url);
      // } else {
      //   throw 'Could not launch $url';
      // }
    }

    showAlertDialog(BuildContext context, String title, String details,
        double L1, double L2, String Map) {
      // set up the buttons
      Widget b1 = TextButton(
        child: Text("Check out Scenic Spots!"),
        style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.teal,
            onSurface: Colors.grey),
        onPressed: () {
          updateScenicSpots(title);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ScenicPages()));
        },
      );
      Widget b2 = TextButton(
        child: Text("Download the offline map"),
        style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.teal,
            onSurface: Colors.grey),
        onPressed: () {
          launchURL(Map);
        }, // Maybe just push a widget of image on top
      );
      Widget b3 = TextButton(
        child: Text("Go to the Maps Page"),
        style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.teal,
            onSurface: Colors.grey),
        onPressed: () {
          MapPage.x = title;
          print("Title is $title");

          print(
              "Static map variable is " + MapPage.x.toString() + " HomePage()");
          //Navigator.pop(context, false);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MapPage()));
        },
      );
      Widget b4 = TextButton(
        child: Text("Navigate with Google Maps"),
        style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.teal,
            onSurface: Colors.grey),
        onPressed: () {
          MapsLauncher.launchQuery(title);
        },
      );

      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: Text(title, textAlign: TextAlign.center),
        content: Text(details),
        actions: [
          b1,
          b2,
          b3,
          b4,
        ],
        elevation: 5,
        backgroundColor: Colors.lightBlueAccent,
      );

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }

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
                      showAlertDialog(
                          context,
                          "Bryce Canyon National Park",
                          "Bryce Canyon National Park, a sprawling reserve in southern Utah, is known for crimson-colored hoodoos, which are spire-shaped rock formations. The park’s main road leads past the expansive Bryce Amphitheater, a hoodoo-filled depression lying below the Rim Trail hiking path. It has overlooks at Sunrise Point, Sunset Point, Inspiration Point and Bryce Point. Prime viewing times are around sunup and sundown.",
                          37.609181207224594,
                          -112.2324156093562,
                          "https://www.nps.gov/brca/planyourvisit/upload/2020-Bryce-Canyon-Visitor-Guide.jpg");
                    }, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed: () {
                            reference.child('National Parks').push().set({
                              'name': 'Bryce Canyon National Park',
                              'image':
                                  'https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/BryceCanyonNationalPark.jpg?alt=media&token=43f070be-dc81-4b9d-99e2-a40425a728ae',
                            }).asStream();

                            // UploadData uploadData = new UploadData(
                            //     'https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/BryceCanyonNationalPark.jpg?alt=media&token=7a39fc3a-c7e3-404b-b077-645b0df46658',
                            //     "Bryce Canyon National Park");

                            // uploadData.sendData();

                            ReadData readData = new ReadData();
                            readData.readData();
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
                    onPressed: () {
                      showAlertDialog(
                          context,
                          "Yosemite National Park",
                          "Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome. In Yosemite Village are shops, restaurants, lodging, the Yosemite Museum and the Ansel Adams Gallery, with prints of the photographer’s renowned black-and-white landscapes of the area.",
                          37.86509400479401,
                          -119.53811025826526,
                          "https://www.nps.gov/carto/hfc/carto/media/YOSEmap1.pdf");
                    }, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed: () {
                            reference.child('National Parks').push().set({
                              'name': 'Yosemite National Park',
                              'image':
                                  'https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/YosemiteNationalPark.jpg?alt=media&token=9dfd2878-567a-44ae-8d50-0798a779539d'
                            }).asStream();

                            ReadData readData = new ReadData();
                            readData.readData();
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
                    onPressed: () {
                      showAlertDialog(
                          context,
                          "Zion National Park",
                          "Zion National Park is a southwest Utah nature preserve distinguished by Zion Canyon’s steep red cliffs. Zion Canyon Scenic Drive cuts through its main section, leading to forest trails along the Virgin River. The river flows to the Emerald Pools, which have waterfalls and a hanging garden. Also along the river, partly through deep chasms, is Zion Narrows wading hike.",
                          37.29830302799651,
                          -113.02629649360782,
                          "https://www.nps.gov/zion/learn/news/upload/FY21-Spring-Infosheet-WEB.pdf");
                    }, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed: () {
                            reference.child('National Parks').push().set({
                              'name': 'Zion National Park',
                              'image':
                                  'https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/ZionNationalPark.jpg?alt=media&token=1c0f19a0-8295-4dce-8984-85e069d66804'
                            }).asStream();
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
                    onPressed: () {
                      showAlertDialog(
                          context,
                          "Mammoth Cave National Park",
                          "Mammoth Cave in Kentucky is the world's longest known cave system, with more than 400 miles explored, and one of the oldest tour attractions in North America. Mammoth Cave in Kentucky is the world's longest known cave system, with more than 400 miles explored, and one of the oldest tour attractions in North America.",
                          37.181515666902534,
                          -86.15049311470466,
                          "https://www.nps.gov/maca/planyourvisit/upload/Mammoth-Cave-National-Park-Visitor-Center-Area-Map.pdf");
                    }, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed: () {
                            reference.child('National Parks').push().set({
                              'name': 'Mammoth Cave National Park',
                              'image':
                                  'https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/MammothCaveNationalPark.jpg?alt=media&token=7a3bd64b-a1eb-42d9-8f00-0d575619e7db'
                            }).asStream();
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
                    onPressed: () {
                      showAlertDialog(
                          context,
                          "Glacier National Park",
                          "Glacier National Park is a 1,583-sq.-mi. wilderness area in Montana's Rocky Mountains, with glacier-carved peaks and valleys running to the Canadian border. It's crossed by the mountainous Going-to-the-Sun Road.",
                          48.759551328469826,
                          -113.7870381316923,
                          "https://s3.amazonaws.com/pom-static-yellowstonepark/public/GlacierNPMap_NPS.pdf");
                    }, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed: () {
                            reference.child('National Parks').push().set({
                              'name': 'Glacier National Park',
                              'image':
                                  'https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/GlacierNationalPark.jpg?alt=media&token=b67d35ff-a450-4313-a4ec-db99c79dbcce'
                            }).asStream();
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
                    onPressed: () {
                      showAlertDialog(
                          context,
                          "Grand Canyon National Park",
                          "Grand Canyon National Park, located in northwestern Arizona, is the 15th site in the United States to have been named as a national park. The park's central feature is the Grand Canyon, a gorge of the Colorado River, which is often considered one of the Wonders of the World.",
                          36.106801297266315,
                          -112.1145058845318,
                          "https://www.nps.gov/grca/planyourvisit/upload/GRCAmap2.pdf");
                    }, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed: () {
                            reference.child('National Parks').push().set({
                              'name': 'Grand Canyon National Park',
                              'image':
                                  'https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/GrandCanyonNationalPark.jpg?alt=media&token=92ceb52c-4e56-4404-85a5-3898324d8bc2'
                            }).asStream();
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
                    onPressed: () {
                      showAlertDialog(
                          context,
                          "Yellowstone National Park",
                          "Yellowstone National Park is a nearly 3,500-sq.-mile wilderness recreation area atop a volcanic hot spot. Mostly in Wyoming, the park spreads into parts of Montana and Idaho too. Yellowstone features dramatic canyons, alpine rivers, lush forests, hot springs and gushing geysers, including its most famous, Old Faithful. It's also home to hundreds of animal species, including bears, wolves, bison, elk and antelope. ",
                          44.428109498626114,
                          -110.58663193766971,
                          "https://www.nps.gov/yell/planyourvisit/upload/YELL_Tear-Off_Map2016.pdf");
                    }, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed: () {
                            reference.child('National Parks').push().set({
                              'name': 'Yellowstone National Park',
                              'image':
                                  'https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/YellowstoneNationalPark.jpg?alt=media&token=ad91642b-eb4a-4493-b3ca-818cb6963039'
                            }).asStream();
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
                              "assets/YellowstoneNationalPark.jpg",
                              height: 170,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text("Yellowstone",
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
                    onPressed: () {
                      showAlertDialog(
                          context,
                          "Grand Teton National Park",
                          "Grand Teton National Park boasts 310,000 acres of lush valley floors, mountain meadows, alpine lakes and the rising peaks of the Grand Teton Mountain Range. Located just north of Jackson, Wyoming, Grand Teton has a diverse and long-standing history that includes human use from more than 11,000 years ago.",
                          43.79134228736242,
                          -110.68050062007575,
                          "https://s3.amazonaws.com/pom-static-yellowstonepark/public/GrandTeton_park_map_2011-2.pdf");
                    }, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed: () {
                            reference.child('National Parks').push().set({
                              'name': 'Grand Teton National Park',
                              'image':
                                  'https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/GrandTetonNationalPark.jpg?alt=media&token=f4060eca-8e35-40eb-b71d-c1fc7f807df0'
                            }).asStream();
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
                    onPressed: () {
                      showAlertDialog(
                          context,
                          "Congaree National Park",
                          "Congaree National Park is a 26,276-acre American national park in central South Carolina, 18 miles southeast of the state capital, Columbia. The park preserves the largest tract of old growth bottomland hardwood forest left in the United States.",
                          33.7947990795592,
                          -80.78169003108532,
                          "https://www.nps.gov/cong/planyourvisit/upload/03032021-COSW_Trail_Guide_Map_back_prf3.pdf");
                    }, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed: () {
                            reference.child('National Parks').push().set({
                              'name': 'Congaree National Park',
                              'image':
                                  'https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/CongareeNationalPark.jpg?alt=media&token=834b5d18-7456-4013-bd9a-ade9cab01e02'
                            }).asStream();
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
                    onPressed: () {
                      showAlertDialog(
                          context,
                          "Indiana Dunes National Park",
                          "Indiana Dunes National Park hugs 15 miles of the southern shore of Lake Michigan and has much to offer. Whether you enjoy scouting for rare species of birds or flying kites on the sandy beach, the national park's 15,000 acres will continually enchant you.  Hikers will enjoy 50 miles of trails over rugged dunes, mysterious wetlands, sunny prairies, meandering rivers and peaceful forests. ",
                          41.65055743858551,
                          -87.0706590676887,
                          "https://www.in.gov/dnr/state-parks/files/dunes_trail.pdf");
                    }, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed: () {
                            reference.child('National Parks').push().set({
                              'name': 'Indiana Dunes National Park',
                              'image':
                                  'https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/IndianaDunesNationalPark.jpg?alt=media&token=82985c36-0b46-4c2f-976e-ff5f838de5db'
                            }).asStream();
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
                    onPressed: () {
                      showAlertDialog(
                          context,
                          "New River Gorge National Park",
                          "The New River Gorge National Park and Preserve is a unit of the United States National Park Service designed to protect and maintain the New River Gorge in southern West Virginia in the Appalachian Mountains.",
                          37.87895546929177,
                          -81.01797465855435,
                          "http://npmaps.com/wp-content/uploads/new-river-gorge-map.pdf");
                    }, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed: () {
                            reference.child('National Parks').push().set({
                              'name': 'New River Gorge National Park',
                              'image':
                                  'https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/NewRiverGorgeNationalPark.jpg?alt=media&token=e89c1b0f-deae-4ae4-bd75-9c6077c93a60'
                            }).asStream();
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
                              "assets/NewRiverGorgeNationalPark.jpg",
                              height: 170,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text("New River Gorge",
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
                    onPressed: () {
                      showAlertDialog(
                          context,
                          "Smokey Mountain National Park",
                          "The Great Smoky Mountains are a mountain range rising along the Tennessee–North Carolina border in the southeastern United States. They are a subrange of the Appalachian Mountains, and form part of the Blue Ridge Physiographic Province.",
                          35.616960486553594,
                          -83.48957841979197,
                          "https://www.nps.gov/grsm/planyourvisit/upload/grsmmap2-2.pdf");
                    }, // Open google maps and show direction Home to National Park
                    menuItems: [
                      FocusedMenuItem(
                          title: Text("Save"),
                          trailingIcon:
                              Icon(Icons.favorite_border, color: Colors.black),
                          onPressed: () {
                            reference.child('National Parks').push().set({
                              'name': 'Smokey Mountain National Park',
                              'image':
                                  'https://firebasestorage.googleapis.com/v0/b/traveladvisor-8c525.appspot.com/o/SmokeyMountainNationalPark.jpg?alt=media&token=d00033ae-f4a8-4468-85f0-6060451f410a'
                            }).asStream();
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
