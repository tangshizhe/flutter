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
    return Center(
          child:Container(
            child: Text('fcwvdvdfvdf00彻底深V发大V发大V辅导深V辅导',
            textAlign: TextAlign.left,//显示方向，相当于js的text-align
            overflow: TextOverflow.fade,//字体显示长度，相当于js里面的overflow
            // maxLines: 1,最多显示几行
            // textScaleFactor: 2,字体放大两倍
            style: TextStyle(
              fontSize: 30.0,//字体大小
              fontWeight: FontWeight.w500,//字体粗细
              fontStyle: FontStyle.italic,//斜体字
              // decoration: TextDecoration.lineThrough,//字体删除线
              decorationColor: Colors.blue,//字体删除线颜色
            ),
            ),
            
            width: 300.0,//盒子宽度
            height: 300.0,//盒子高度
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10)
              ),
              color: Colors.red,
              border: Border.all(
                color: Colors.blue,
                width: 2.0
              )
            ),
            padding: EdgeInsets.fromLTRB(10, 30, 5, 0),
            alignment: Alignment.bottomLeft
          ),
        
    );
  }
}