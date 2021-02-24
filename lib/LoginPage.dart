// import 'dart:html';
import 'package:travel_advisor/AuthService.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(children: <Widget>[
          SizedBox(height: 20.0),
          Text(
            'Login Information',
            style: TextStyle(fontSize: 20),
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
          SizedBox(height: 20.0),
          ElevatedButton(
            child: Text("SIGN UP"),
            onPressed: () {
              context.read<AuthenticationService>().signUp(
                  email: emailController.text,
                  password: passwordController.text.trim());
            },
          ),
        ]),
      ),
    );
  }
}
