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
            AspectRatio(
              aspectRatio: 16/9,
              child: Image.network("https://www.itying.com/images/flutter/2.png",fit: BoxFit.cover,),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://www.itying.com/images/flutter/3.png",),
              ),
              title: Text("xxx"),
              subtitle: Text("xxxxxx"),
            )
          ],
        ),
      )
    ],);
  }
}
