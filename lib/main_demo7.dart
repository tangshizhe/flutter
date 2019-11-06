import 'package:flutter/material.dart';
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
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Image.asset('images/timg.jpg'),
          title: Text("今天周五"),
          subtitle: Text("cbfvdvbfdbvnfdjbfdns难吃是回复大V粗大深V的 超大手笔成都市传收到成都市催的v大V大V放大"),
          trailing: Icon(Icons.bookmark_border,color: Colors.red,size: 40,),
        ),
      ],
    );
  }
}