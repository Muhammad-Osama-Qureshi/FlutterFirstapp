import 'package:flutter/material.dart';

class Changenamecard extends StatelessWidget {
  const Changenamecard({
    Key key,
    @required this.mytext,
    @required this.mymail,
    @required TextEditingController nameController,
    @required TextEditingController emailController,
  })  : _nameController = nameController,
        _emailController = emailController,
        super(key: key);

  final String mytext;
  final String mymail;
  final TextEditingController _nameController;
  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset("assets/bg.jpg"),
          SizedBox(
            height: 20,
          ),
          Text(
            mytext,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Text(
            mymail,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _nameController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: "Type Name here",
                  labelText: "Name ",
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: "Type Email here",
                  labelText: "Email ",
                  border: OutlineInputBorder()),
            ),
          ),
        ],
      ),
    );
  }
}
