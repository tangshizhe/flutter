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
    return IconContainer(Icons.search,color: Colors.black,);
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