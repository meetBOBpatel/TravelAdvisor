import 'package:flutter/material.dart';
// Ali's Task
class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Map Page"),
      ),
      body: new Center(
        child: new Text("This is Map Page"),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
