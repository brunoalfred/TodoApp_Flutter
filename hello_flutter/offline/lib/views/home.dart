import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: new Text(
            "My App",
            style: new TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: new ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return new Card(
              child: ListTile(
                leading: Icon(Icons.account_box),
              ),
            );
          },
        ));
  }
}
