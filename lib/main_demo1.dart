import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

// 自定义组件 
class MyApp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return HomeContent();
  }
  
}
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
    child:Text(
      '你好flutter111222',
      textDirection: TextDirection.ltr,

      style: TextStyle(
        fontSize: 40.0,
        color: Colors.red,
      ),
    )
  );
  }
  
}
