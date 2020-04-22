import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:offline/views/home.dart';

void main() => runApp(MaterialApp(
      title: 'Trying Navigation App With ListView',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.indigoAccent,
        brightness: Brightness.light,
      ),
      home: Home(),
    ));
