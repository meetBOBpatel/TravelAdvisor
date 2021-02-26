import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';

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

  Set<Marker> scenicSpots = {};

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      scenicSpots.add(Marker(
        markerId: MarkerId('id-1'),
        position: LatLng(44.4605, -110.8281),
        infoWindow: InfoWindow(
            title: 'Old Faithful',
            snippet: 'Historic geyser and popular tourist attraction'),
      ));

      scenicSpots.add(Marker(
        markerId: MarkerId('id-2'),
        position: LatLng(44.9769, -110.6991),
        infoWindow: InfoWindow(
          title: 'Mammoth Hot Springs',
          snippet: 'Exciting thermal hot springs that can reach up to 165°F',
        ),
      ));

      scenicSpots.add(Marker(
        markerId: MarkerId('id-3'),
        position: LatLng(44.7977, -110.4344),
        infoWindow: InfoWindow(
          title: 'Mount Washburn',
          snippet: 'Mountain that peaks at 10,243 ft with an amazing view',
        ),
      ));

      scenicSpots.add(Marker(
        markerId: MarkerId('id-4'),
        position: LatLng(44.6249, -110.4336),
        infoWindow: InfoWindow(
          title: 'Mud Volcano',
          snippet: 'Steamy mud-filled hot springs with accessible  viewings',
        ),
      ));

      scenicSpots.add(Marker(
        markerId: MarkerId('id-5'),
        position: LatLng(44.4622, -110.3333),
        infoWindow: InfoWindow(
          title: 'YellowStone Lake',
          snippet: 'Largest high elevation lake in North America',
        ),
      ));

      scenicSpots.add(Marker(
        markerId: MarkerId('id-6'),
        position: LatLng(44.6438, -110.4555),
        infoWindow: InfoWindow(
          title: 'Hayden Valley',
          snippet: 'Beautiful valley filled with wildlife',
        ),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
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
  }
} // end mapPageState