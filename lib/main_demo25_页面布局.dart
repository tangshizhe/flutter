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
    return ListView(
      children: listData.map((value){
          return Card(
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16/9,
                  child: Image.network(value["imageUrl"],fit: BoxFit.cover,),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(value["imageUrl"],),
                  ),
                  title: Text(value["title"]),
                  subtitle: Text(value["descript"],maxLines: 2,overflow: TextOverflow.ellipsis,),
                ),
              ],
            ),
          );
        }
      ).toList(),
    );
  }
}
