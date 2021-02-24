import 'package:flutter/material.dart';
import 'package:travel_advisor/AuthService.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

// Defines corresponding State class, holds data related to form (LoginPage)
class _LoginPageState extends State<LoginPage> {
  // global key that uniquely identifies the Form widget, allows validation of form
  final _formKey = GlobalKey<FormState>();
  String _password;
  String _email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            Text(
              'Login Information',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20.0),
            TextFormField(
                onSaved: (value) => _email = value,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: "Email Address")),
            TextFormField(
                onSaved: (value) => _password = value,
                obscureText: true,
                decoration: InputDecoration(labelText: "Password")),
            SizedBox(height: 20.0),
            ElevatedButton(
                child: Text("LOG IN"),
                onPressed: () async {
                  // save fields of login page
                  final form = _formKey.currentState;
                  form.save();

                  // validate returns true if valid, or false if invalid
                  if (form.validate()) {
                    var result = await Provider.of<AuthService>(context)
                        .loginUser(email: _email, password: _password);
                    if (result == null) {}
                  }
                }),
          ],
        ),
      ),
    );
  }
}
