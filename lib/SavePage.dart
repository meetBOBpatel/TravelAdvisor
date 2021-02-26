import 'package:flutter/material.dart';

class SavePage extends StatefulWidget {
  @override
  _SavePageState createState() => _SavePageState();
}

class _SavePageState extends State<SavePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Saved Page"),
      ),
      body: new Center(
        child: new Text(
            "This is Saved Page where you can add your favorite National Parks!"),
      ),
    );
  }
}
