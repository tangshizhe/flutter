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
            child: Image.network("https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2322958746,1091158429&fm=26&gp=0.jpg",
              width: 800.0,
              height: 800.0,
              alignment: Alignment.topLeft,
              // fit: BoxFit.fill,
              repeat: ImageRepeat.repeat,
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
            // padding: EdgeInsets.fromLTRB(10, 30, 5, 0),
            alignment: Alignment.bottomLeft
          ),
        
    );
  }
}