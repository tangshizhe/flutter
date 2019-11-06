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
  List<Widget> _getListData(){
    List<Widget> list = new List();
    for(var i=0; i<20;i++){
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          '这是第$i条数据',
         style: TextStyle(
           color: Colors.white,
           fontSize: 15.0
         ),
        ),
        color:Colors.blue, 
      ));
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 2,//一行显示的数量
      crossAxisSpacing: 20.0,
      mainAxisSpacing: 20.0,
      childAspectRatio: 0.7,//宽和高的比例
      padding: EdgeInsets.all(10),
      children: this._getListData()
    );

  }
 
}