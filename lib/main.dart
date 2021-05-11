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
        appBar: AppBar(title: Text("Osama's App ")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                width: 100,
                height: 100,
                color: Colors.redAccent,
              ),
              Container(
                  padding: const EdgeInsets.all(8),
                  width: 100,
                  height: 100,
                  color: Colors.green),
              Container(
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
