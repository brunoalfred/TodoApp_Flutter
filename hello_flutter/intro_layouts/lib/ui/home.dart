import 'package:flutter/material.dart';
import 'package:intro_layouts/http/http_service.dart';

class Home extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Http Request'),
        centerTitle: true,
      ),
      body: 
        
    
    );
  }
}
