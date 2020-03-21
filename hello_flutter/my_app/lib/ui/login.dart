import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LoginState();
  }
}

class LoginState extends State<Login> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text("Login",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: new Container(
        color: Colors.orangeAccent,
        alignment: Alignment.topCenter,
        child: new Column(
          children: <Widget>[
            new Image.asset(
              "assets/face.png",
              width: 90.0,
              height: 90.0,
              color: Colors.greenAccent,
            ),
            new Container(
              height: 180,
              width: 500.0,
              color: Colors.orangeAccent,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _userController,
                    decoration: new InputDecoration(
                        hintText: "Username",
                        icon: new Icon(
                          Icons.person_pin,
                          color: Colors.blue,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.greenAccent,
                        )),
                  ),
                  new TextField(
                    controller: _passController,
                    decoration: new InputDecoration(
                        hintText: "password",
                        icon: new Icon(
                          Icons.lock_open,
                          color: Colors.blue,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.greenAccent,
                        )),
                  ),
                  new Row(
                    children: <Widget>[
                      new RaisedButton.icon(
                        onPressed: () {
                          print("Sent!");
                        },
                        color: Colors.lightBlue,
                        icon: Icon(
                          Icons.send,
                          color: Colors.green,
                        ),
                        label: new Text("Send"),
                      ),
                      new RaisedButton.icon(
                        onPressed: () {
                          print('canceled');
                        },
                        color: Colors.lightBlue,
                        icon: Icon(
                          Icons.cancel,
                          color: Colors.red,
                        ),
                        label: new Text("cancel"),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
