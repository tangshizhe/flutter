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
  List<Widget> _getData(){
    var tempList = listData.map((value){
      return ListTile(
        leading: Image.network(value["imageUrl"]),
        title:Text(value["title"]),
        subtitle: Text(value["author"]),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: this._getData()
    );
  }
}