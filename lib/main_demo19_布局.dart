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
    return Column(
      children: <Widget>[
        
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 180,
                color: Colors.black,
                child: Text("你好flutter"),
              ),
            )
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                // padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                height: 180,
                child: Image.network("https://www.itying.com/images/flutter/3.png",fit: BoxFit.cover,),
              )
            ),
            SizedBox(width: 10,),
            Expanded(
              flex: 1,
              
              child: Container(
                height: 180,
                // padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                child: ListView(
                  children: <Widget>[
                    Container(
                      // padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      height: 85,
                      child: Image.network("https://www.itying.com/images/flutter/4.png",fit: BoxFit.cover,),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 85,
                      // padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                      child: Image.network("https://www.itying.com/images/flutter/5.png",fit: BoxFit.cover,),
                    )
                  ],
                )
              )

            ),
          ],
        )
      ],
    );
  }
}
