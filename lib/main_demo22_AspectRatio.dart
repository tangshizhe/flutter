import 'package:flutter/material.dart';
import 'res/listDate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("flutter Demodds"),
          ),
          body: HomeContent()),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 200,
      child: AspectRatio(
        aspectRatio: 2.0/1.0,
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
