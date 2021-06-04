import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/pages/HomePageSb.dart';

import 'package:flutter_application_1/pages/Login_page.dart';
import 'package:flutter_application_1/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Constants.prefs = await SharedPreferences.getInstance();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    color: Colors.amber,
    title: "Muhammad Osama App",
    home: Constants.prefs.getBool("loggedIn") == true
        ? HomePageSb()
        : Loginpage(),
    routes: {
      "/login": (context) => Loginpage(),
      "/Home": (context) => HomePage()
    },
  ));
}
