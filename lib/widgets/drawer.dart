import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Muhammad Osama"),
            accountEmail: Text("mosamarafique@gmail.com.."),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/20210526_000719.jpg"),
            ),
            decoration: BoxDecoration(color: Colors.purpleAccent),
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
    );
  }
}
