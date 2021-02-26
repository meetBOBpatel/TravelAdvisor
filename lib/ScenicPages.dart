import 'package:flutter/material.dart';

class ScenicPages extends StatefulWidget {
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<ScenicPages>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
      title: new Text("Scenic Spots Page"),
    ));
  }
}
