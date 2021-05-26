import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    color: Colors.amber,
    title: "Muhammad Osama App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Muhammad Osama's App "),
          backgroundColor: Colors.amberAccent,
        ),
        body: Container(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Muhammad Osama"),
                accountEmail: Text("mosamarafique@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1503443207922-dff7d543fd0e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=282&q=80"),
                ),
                decoration: BoxDecoration(color: Colors.amber),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Account"),
                subtitle: Text("Personal"),
                trailing: Icon(Icons.edit),
              ),
              ListTile(
                  leading: Icon(Icons.account_balance),
                  title: Text("Balance"),
                  subtitle: Text("IN dOLLARS"),
                  trailing: Icon(Icons.money))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.edit,
            )));
  }
}
