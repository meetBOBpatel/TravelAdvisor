// import 'dart:html';
import 'package:travel_advisor/AuthService.dart';
import 'package:travel_advisor/SignupPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Travel Advisor"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(children: <Widget>[
          SizedBox(height: 25.0),
          Text(
            'Log in to start exploring National Parks!',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0),
          TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: "Email")),
          TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(labelText: "Password")),
          SizedBox(height: 20.0),

          // Could add error messages if wrong
          ElevatedButton(
              child: Text("LOG IN"),
              onPressed: () {
                context.read<AuthenticationService>().signIn(
                    email: emailController.text,
                    password: passwordController.text.trim());
              }),
          SizedBox(height: 10.0),
          TextButton(
              child: Text('Create an account'),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );
              }),
        ]),
      ),
    );
  }
}
