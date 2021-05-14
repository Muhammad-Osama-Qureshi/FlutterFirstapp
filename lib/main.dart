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
              Center(child: Text("Hello Muhammad Osama's Here")),
              Center(child: Text("mosamarafique@gmail.com")),
              Container(
                child: Center(child: Text("My First")),
                padding: const EdgeInsets.all(8),
                width: 100,
                height: 100,
                color: Colors.redAccent,
              ),
              Container(
                  child: Center(child: Text("Flutter")),
                  padding: const EdgeInsets.all(8),
                  width: 100,
                  height: 100,
                  color: Colors.green),
              Container(
                child: Center(child: Text("Application")),
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
