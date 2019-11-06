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
  
  List list = new List();
  HomeContent(){
    for(var i=0;i<20;i++){
      this.list.add("我是$i列表");
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount:this.list.length,
      itemBuilder: (context,index){
        return ListTile(
          title: Text(this.list[index]),
        );
      },
    );
  }
}