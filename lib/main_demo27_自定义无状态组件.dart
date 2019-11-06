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
  // const HomeContent({Key key}) : super(key: key);
int countNum = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text("${this.countNum}"),
          SizedBox(height: 20,),
          RaisedButton(
            child: Text("按钮"),
            onPressed: (){
              this.countNum++;
              print(this.countNum);
            },
          )
        ],
      ),
    );
  }
}