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
  // 自定义方法
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 5,
      children: <Widget>[
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
        Text("这是一个文本"),
      ],
    );

  }
 
}