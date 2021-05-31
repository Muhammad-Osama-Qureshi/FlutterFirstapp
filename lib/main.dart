import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage.dart';

import 'package:flutter_application_1/Login_page.dart';

void main() {
  runApp(MaterialApp(
    color: Colors.amber,
    title: "Muhammad Osama App",
    home: Loginpage(),
    routes: {
      "/login": (context) => Loginpage(),
      "/Home": (context) => HomePage()
    },
  ));
}
