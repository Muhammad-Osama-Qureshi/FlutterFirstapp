import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Muhammad Osama App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Muhammad Osama's App ")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Hello Muhammad Osama's Here"),
              Text("mosamarafique@gmail.com"),
              Container(
                child: Text("My"),
                padding: const EdgeInsets.all(8),
                width: 100,
                height: 100,
                color: Colors.redAccent,
              ),
              Container(
                  child: Text("First"),
                  padding: const EdgeInsets.all(8),
                  width: 100,
                  height: 100,
                  color: Colors.green),
              Container(
                child: Text("Flutter App"),
                padding: const EdgeInsets.all(8),
                width: 100,
                height: 100,
                color: Colors.tealAccent,
              ),
            ],
          ),
        ));
  }
}
