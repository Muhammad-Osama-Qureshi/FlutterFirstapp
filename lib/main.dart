import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Osama's App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text("Awesome Osama"),
      ),
      body: Container(
        color: Colors.amber,
        child: Center(child: Text("Hi Osama Jani")),
      ),
    );
  }
}
