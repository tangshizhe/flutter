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
    return Container(
      width: 300,
      height: 400,
      color: Colors.pink,
      child: Wrap(
      spacing: 10,
      runSpacing: 10,
      alignment: WrapAlignment.spaceAround,
      children: <Widget>[
        MyButton("这是1个按钮"),
        MyButton("这是2个按钮"),
        MyButton("这是3个按钮"),
        MyButton("这是4个按钮"),
        MyButton("这是5个按钮"),
        MyButton("这是6个按钮"),
        MyButton("这是7个按钮"),
        MyButton("这是8个按钮"),
        MyButton("这是9个按钮"),
        MyButton("这是10个按钮"),
        MyButton("这是11个按钮"),
        MyButton("这是12个按钮"),
      ],
    ),
    );
  }
}

class MyButton extends StatelessWidget{
  final String text;

  const MyButton(this.text,{Key key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: (){

      },
    );
  }
  
}
