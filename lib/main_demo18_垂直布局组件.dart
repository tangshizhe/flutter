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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 400.0,
      height: 600.0,
      color: Colors.pink,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconContainer(Icons.search,color: Colors.blue,),
        IconContainer(Icons.home,color: Colors.green,),
        IconContainer(Icons.select_all,color: Colors.red,),
      ],
    )
    );
  }
}
class IconContainer extends StatelessWidget{
  double size=32.0;
  Color color = Colors.red;
  IconData icon;
  IconContainer(this.icon,{this.color,this.size});
  @override
  Widget build(BuildContext context){
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child: Center(
        child: Icon(this.icon,size: this.size,color: Colors.white,),
      ),
    );
  }
  
}