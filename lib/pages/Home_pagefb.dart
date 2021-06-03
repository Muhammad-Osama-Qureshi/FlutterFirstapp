import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/utils/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePageFB extends StatelessWidget {
  Future getData() async {
    var url = "https://jsonplaceholder.typicode.com/photos";
    var data;
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    print(data);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text("Muhammad Osama's App "),
          backgroundColor: Colors.purpleAccent,
          actions: [
            IconButton(
                icon: Icon(Icons.exit_to_app),
                onPressed: () {
                  Constants.prefs.setBool("loggedIn", false);
                  Navigator.pushReplacementNamed(context, "/login");
                })
          ],
        ),
        body: FutureBuilder(
          future: getData(),
          // ignore: missing_return
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Center(
                  child: Text("Fetch Something"),
                );
              case ConnectionState.active:
              case ConnectionState.waiting:
                return Center(
                  child: CircularProgressIndicator(),
                );
              case ConnectionState.done:
                if (snapshot.hasError) {
                  return Center(
                    child: Text("Some Error Occured"),
                  );
                }
                return ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text(snapshot.data[index]["title"]),
                          subtitle: Text("ID : ${snapshot.data[index]["id"]}"),
                          leading: Image.network(snapshot.data[index]["url"]),
                        ),
                      );
                    },
                    itemCount: snapshot.data.length);
            }
          },
        ),
        drawer: MyDrawer(),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.purpleAccent,
            onPressed: () {
              // mytext = _nameController.text;
              // mymail = _emailController.text;
              // setState(() {});
            },
            child: Icon(Icons.refresh)));
  }
}
