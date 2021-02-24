import 'package:flutter/material.dart';
import 'package:travel_advisor/AuthService.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Settings Page"),
      ),
      body: new Center(
        child: Column(
          children: [
            Text("This is the Settings Page"),
            ElevatedButton(
              child: Text('Sign out'),
              onPressed: () {
                context.read<AuthenticationService>().signOut();
              },
            )
          ],
        ),
      ),
    );
  }
}
