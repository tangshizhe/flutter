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
class HomeContent extends StatefulWidget {
  HomeContent({Key key}) : super(key: key);

  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  int countNum = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20,),
        Chip(
          label: Text("${this.countNum}"),
        ),
        RaisedButton(
          child: Text("按钮"),
          onPressed: (){
           setState(() {
            this.countNum++; 
           });
          },
        )
      ],
    );
  }
}