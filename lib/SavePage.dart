import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:travel_advisor/firebaseData.dart';
import 'firebaseData.dart';

class SavePage extends StatefulWidget {
  SavePage({this.app});
  final FirebaseApp app;

  @override
  _SavePageState createState() => _SavePageState();
}

class _SavePageState extends State<SavePage> {
  DatabaseReference databaseReference;

  @override
  void initState() {
    print("Inside init state");
    final FirebaseDatabase database = FirebaseDatabase(app: widget.app);

    databaseReference = database.reference().child('National Parks');
    print("end  init state");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Inside build");
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Saved National Parks"),
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
              child: new FirebaseAnimatedList(
                query: databaseReference,
                itemBuilder: (BuildContext context, DataSnapshot snapshot,
                    Animation<double> animation, int index) {
                  return new Card(
                    margin: EdgeInsets.all(10.0),
                    child: new Container(
                      padding: EdgeInsets.all(10.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Image.network(snapshot.value['image'],
                              fit: BoxFit.cover),
                          SizedBox(height: 10.0),
                          new Text(
                            snapshot.value['name'],
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
