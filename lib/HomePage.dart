import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawer.dart';
import 'package:flutter_application_1/utils/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  var mymail = "mosamarafique@gmail.com";
  var mytext = "change me";
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    print(data);
    setState(() {});
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
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: data != null
                ? ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text(data[index]["title"]),
                          subtitle: Text("ID : ${data[index]["id"]}"),
                          leading: Image.network(data[index]["url"]),
                        ),
                      );
                    },
                    itemCount: data.length)
                : Center(
                    child: CircularProgressIndicator(),
                  )),
        drawer: MyDrawer(),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.purpleAccent,
            onPressed: () {
              mytext = _nameController.text;
              mymail = _emailController.text;
              setState(() {});
            },
            child: Icon(Icons.refresh)));
  }
}
