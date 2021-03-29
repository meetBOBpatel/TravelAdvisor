import 'package:firebase_database/firebase_database.dart';

class UploadData {
  String image;
  String name;

  final dataRef = FirebaseDatabase.instance.reference();

  UploadData(String nationalParkImage, String nationalParkName) {
    this.image = nationalParkImage;
    this.name = nationalParkName;
  }

  void sendData() {
    dataRef.child("NationalPark").set({'name': name, 'image': image});
  }
}
