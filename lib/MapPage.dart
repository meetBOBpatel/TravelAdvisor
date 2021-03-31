import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:provider/provider.dart';
import '../model/MarkerInformationWindow.dart';
import '../model/MarkerInformation.dart';

// Ali's Task
class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  GoogleMapController mapController;
  // Holds initial position of map (in this case Yellowstone)
  final LatLng _initialPosition = const LatLng(
      44.423691, -110.588516); // Yellow stone coords: 44.4280° N, 110.5885° W

  // Set of markers for scenic spots
  Set<Marker> scenicSpots = {};


  final Map<String,MarkerInformation> _markerList = {
    "oldFaithful": MarkerInformation(
      'Old Faithful',
        "assets/YS-OldFaithful.jpg",
      'Historic geyser and popular tourist attraction',
       LatLng(44.4605, -110.8281)
    ),
    "mammothHotSprings": MarkerInformation(
        'Mammoth Hot Spring',
        "assets/YS-MammothHotSprings.jpg",
        'Exciting thermal hot springs that can reach up to 165°F',
        LatLng(44.9769, -110.6991)
    ),
    "mountWashburn": MarkerInformation(
        'Mount Washburn',
        "assets/YS-MountWashburn.jpg",
        'Mountain that peaks at 10,243 ft with an amazing view',
        LatLng(44.7977, -110.4344)
    ),
    "mudVolcano": MarkerInformation(
        'Mud Volcano',
        "assets/YS-MudVolcano.jpg",
        'Historic geyser and popular tourist attraction',
        LatLng(44.6249, -110.4336)
    ),
    "yelllowStoneLake": MarkerInformation(
        'YellowStone Lake',
        "assets/YS-YellowstoneLake.jpg",
        'Largest high elevation lake in North America',
        LatLng(44.4622, -110.3333)
    ),
    "haydenValley": MarkerInformation(
        'Hayden Valley',
        "assets/YS-HaydenValley.jpg",
        'Beautiful valley filled with wildlife',
        LatLng(44.6438, -110.4555)
    )
  };

  final double _infoWindowWidth = 250;
  final double _markerOffset = 170;

  @override
  Widget build(BuildContext context) {
    final providerObject = Provider.of<MarkerInformationWindow>(context, listen:false);
    _markerList.forEach((key, value) {
      scenicSpots.add(
        Marker(
            markerId: MarkerId(value.name),
            position: value.location,
            onTap:(){
              providerObject.updateInfoWindow(
                context,
                mapController,
                value.location,
                _infoWindowWidth,
                _markerOffset,
                );
              providerObject.updateMarkerInformation(value);
              providerObject.updateVisibility(true);
              providerObject.rebuildInfoWindow();
            }, // onTap
          ),
      );
    });
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Map Page"),
        ),
        body: Container(
          child: Consumer<MarkerInformationWindow>(
            builder: (context, model, child){
              return Stack(
                children: [
                  child,
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Visibility(
                      visible: providerObject.showInfoWindow,
                      child: (providerObject.markerInformation == null ||
                        !providerObject.showInfoWindow)
                        ? Container()
                        : Container(
                          margin: EdgeInsets.only(
                            left: providerObject.leftMargin,
                            top: providerObject.topMargin,
                          ),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.green,
                                      Colors.brown,
                                    ],
                                    end: Alignment.bottomCenter,
                                    begin: Alignment.topCenter,
                                  ),

                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.0,1.0),
                                      blurRadius: 6.0
                                    ),
                                  ],
                                ),
                                height: 115,
                                width: 250,
                                padding: EdgeInsets.all(15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      providerObject.markerInformation.image,
                                      height: 75,
                                    ),
                                    SizedBox(width:10,),
                                    Column(
                                      children: [
                                        Text(
                                          providerObject.markerInformation.name,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                          ),
                                        ),
                                        FlatButton(
                                          onPressed:(){
                                            print(providerObject.markerInformation.name);
                                          },
                                          child: Text('More Information'),
                                          color: Colors.blue,
                                          textColor: Colors.white,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                    ),
                  ),
                ],
              );
            },
            child: Positioned(
              child: GoogleMap(
                  onTap:(position){
                    if( providerObject.showInfoWindow){
                      providerObject.updateVisibility(false);
                      providerObject.rebuildInfoWindow();
                    }
                  },
                  onCameraMove: (position){
                    if ( providerObject.markerInformation != null) {
                      providerObject.updateInfoWindow(context, mapController,
                          providerObject.markerInformation.location,
                          _infoWindowWidth, _markerOffset);
                      providerObject.rebuildInfoWindow();
                    }
                  },
                  onMapCreated: (GoogleMapController controller){
                    mapController = controller;
                  },
                  markers: scenicSpots,
                  initialCameraPosition: CameraPosition(
                    target: _initialPosition,
                    zoom: 9.0,
                  ),
                ),
            ),
          ),
        )
    );
  }
} // end mapPageState


/* Old Scaffold, with workings markers + button to navigate via google map app
  return new Scaffold(
          appBar: new AppBar(
            title: new Text("Map Page"),
          ),
          body: Stack(
            children: <Widget>[
              GoogleMap(
                onMapCreated: _onMapCreated,
                markers: scenicSpots,
                initialCameraPosition: CameraPosition(
                  target: _initialPosition,
                  zoom: 9.0,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                // add your floating action button
                child: FloatingActionButton(
                  onPressed: () => {
                    MapsLauncher.launchCoordinates(
                        44.423691, -110.588516, 'Yellowstone')
                  },
                  child: Icon(Icons.map),
                ),
              ),
            ],
          ));
 */

// Onmap with scenic spots added
// void _onMapCreated(GoogleMapController controller) {
//   // mapController = controller;
//   // setState(() {
//   //   scenicSpots.add(Marker(
//   //     markerId: MarkerId('id-1'),
//   //     position: LatLng(44.4605, -110.8281),
//   //     infoWindow: InfoWindow(
//   //         title: 'Old Faithful',
//   //         snippet: 'Historic geyser and popular tourist attraction'),
//   //         onTap: (){
//   //           print("PRESSED MARKER!");
//   //         }
//   //   ));
//   //
//   //   scenicSpots.add(Marker(
//   //     markerId: MarkerId('id-2'),
//   //     position: LatLng(44.9769, -110.6991),
//   //     infoWindow: InfoWindow(
//   //       title: 'Mammoth Hot Springs',
//   //       snippet: 'Exciting thermal hot springs that can reach up to 165°F',
//   //       onTap: (){
//   //         print("PRESSED MARKER!");
//   //       }
//   //     ),
//   //   ));
//   //
//   //   scenicSpots.add(Marker(
//   //     markerId: MarkerId('id-3'),
//   //     position: LatLng(44.7977, -110.4344),
//   //     infoWindow: InfoWindow(
//   //       title: 'Mount Washburn',
//   //       snippet: 'Mountain that peaks at 10,243 ft with an amazing view',
//   //       onTap: (){
//   //         print("PRESSED MARKER!");
//   //       }
//   //     ),
//   //   ));
//   //
//   //   scenicSpots.add(Marker(
//   //     markerId: MarkerId('id-4'),
//   //     position: LatLng(44.6249, -110.4336),
//   //     infoWindow: InfoWindow(
//   //       title: 'Mud Volcano',
//   //       snippet: 'Steamy mud-filled hot springs with accessible  viewings',
//   //       onTap: (){
//   //         print("PRESSED MARKER!");
//   //       }
//   //     ),
//   //   ));
//   //
//   //   scenicSpots.add(Marker(
//   //     markerId: MarkerId('id-5'),
//   //     position: LatLng(44.4622, -110.3333),
//   //     infoWindow: InfoWindow(
//   //       title: 'YellowStone Lake',
//   //       snippet: 'Largest high elevation lake in North America',
//   //       onTap: (){
//   //         print("PRESSED MARKER!");
//   //       }
//   //     ),
//   //   ));
//   //
//   //   scenicSpots.add(Marker(
//   //     markerId: MarkerId('id-6'),
//   //     position: LatLng(44.6438, -110.4555),
//   //     infoWindow: InfoWindow(
//   //       title: 'Hayden Valley',
//   //       snippet: 'Beautiful valley filled with wildlife',
//   //       onTap: (){
//   //         print("PRESSED MARKER!");
//   //       }
//   //     ),
//   //   ));
//   // });
// } // end onMapCreated