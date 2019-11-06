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
    var tempList = listData.map((value){
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(value["imageUrl"]),
            SizedBox(height: 12,),
            Text(value['title'],
            textAlign:TextAlign.center,
            style: TextStyle(
              fontSize: 20
            ),
            )
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(233, 233, 233, 0.9),
            width: 1,
          )
        ),
      );
    });
    return tempList.toList();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 2,//一行显示的数量
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      // childAspectRatio: 0.7,//宽和高的比例
      padding: EdgeInsets.all(10),
      children: this._getListData()
    );

  }
 
}