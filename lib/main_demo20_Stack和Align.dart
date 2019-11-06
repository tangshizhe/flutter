import 'package:flutter/material.dart';
import 'res/listDate.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter Demodds"),
        ),
        body:HomeContent()
      ),
    );
  }
  
}
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        height: 400,
          width: 300,
          color: Colors.red,
        child: Stack(
      children: <Widget>[
        Container(
          
        ),
        Align(
          alignment: Alignment.topRight,
          child: Text("我是一个文本",style: TextStyle(fontSize: 40,color: Colors.black,),),
        ),
        Align(
          alignment: Alignment(0, 0),
          child: Text("我是盒子"),
        ),
        
      ],
    ),
      ),
    );
  }
  
}
