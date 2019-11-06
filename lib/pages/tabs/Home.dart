import 'package:flutter/material.dart';
import '../../pages/Detail.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: ListView(children: <Widget>[
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
            ),
          ],
        ),
      ),
      Card(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 16/9,
              child: Image.network("https://www.itying.com/images/flutter/4.png",fit: BoxFit.cover,),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://www.itying.com/images/flutter/5.png",),
              ),
              title: Text("xxx"),
              subtitle: Text("xxxxxx"),
            ),
          ],
        ),
      ),
      Card(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 16/9,
              child: Image.network("https://www.itying.com/images/flutter/6.png",fit: BoxFit.cover,),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://www.itying.com/images/flutter/7.png",),
              ),
              title: Text("xxx"),
              subtitle: Text("xxxxxx"),
            ),
          ],
        ),
      ),
      Card(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 16/9,
              child: Image.network("https://www.itying.com/images/flutter/5.png",fit: BoxFit.cover,),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://www.itying.com/images/flutter/2.png",),
              ),
              title: Text("xxx"),
              subtitle: Text("xxxxxx"),
            ),
          ],
        ),
      ),
      RaisedButton(
        child: Text('点击跳转到详情页'),
        onPressed: (){
          Navigator.pushNamed(context, '/detail',arguments:{
            "id":123,
          });
        },
      ),
      RaisedButton(
        child: Text('点击跳转到Tabbarcontroller页面'),
        onPressed: (){
          Navigator.pushNamed(context, '/tabbarcontroller');
        },
      )
    ],),
    );
  }
}