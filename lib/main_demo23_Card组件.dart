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
    return ListView(children: <Widget>[
      Card(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text("张三",style: TextStyle(fontSize: 28),),
              subtitle: Text("高级工程师"),
            ),
            ListTile(
              title: Text("电话：18439509554",style: TextStyle(fontSize: 28),),
            ),
            ListTile(
              title: Text("地址：河南省郑州市",style: TextStyle(fontSize: 28),),
            ),
          ],
        ),
      ),
      Card(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text("李四",style: TextStyle(fontSize: 28),),
              subtitle: Text("高级工程师"),
            ),
            ListTile(
              title: Text("电话：18439509554",style: TextStyle(fontSize: 28),),
            ),
            ListTile(
              title: Text("地址：河南省郑州市",style: TextStyle(fontSize: 28),),
            ),
          ],
        ),
      ),
      Card(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text("王五",style: TextStyle(fontSize: 28),),
              subtitle: Text("高级工程师"),
            ),
            ListTile(
              title: Text("电话：18439509554",style: TextStyle(fontSize: 28),),
            ),
            ListTile(
              title: Text("地址：河南省郑州市",style: TextStyle(fontSize: 28),),
            ),
          ],
        ),
      ),
    ],);
  }
}
