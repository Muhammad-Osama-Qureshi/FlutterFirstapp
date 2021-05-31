import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.purpleAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              children: [
                Form(
                    child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Please Enter Name",
                            labelText: "UserName"),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Please Enter Password",
                            labelText: "Password"),
                      )
                    ],
                  ),
                )),
                SizedBox(height: 20),
                // ignore: deprecated_member_use
                RaisedButton(
                    onPressed: () {},
                    child: Text("Sign In"),
                    color: Colors.redAccent,
                    textColor: Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
