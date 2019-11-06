import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  Category({Key key}) : super(key: key);

  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
      crossAxisCount: 2,//一行显示的数量
      // crossAxisSpacing: 10.0,
      // mainAxisSpacing: 10.0,
      // childAspectRatio: 1.7,//宽和高的比例
      // padding: EdgeInsets.all(10),
      children:<Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(10,10,0,0),
          child: Image.network('https://www.itying.com/images/flutter/1.png',fit: BoxFit.cover,),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10,10,0,0),
          child: Image.network('https://www.itying.com/images/flutter/2.png',fit: BoxFit.cover,),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10,10,0,0),
          child: Image.network('https://www.itying.com/images/flutter/3.png',fit: BoxFit.cover,),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10,10,0,0),
          child: Image.network('https://www.itying.com/images/flutter/4.png',fit: BoxFit.cover,),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10,10,0,0),
          child: Image.network('https://www.itying.com/images/flutter/5.png',fit: BoxFit.cover,),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10,10,0,0),
          child: Image.network('https://www.itying.com/images/flutter/6.png',fit: BoxFit.cover,),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10,10,0,0),
          child: Image.network('https://www.itying.com/images/flutter/7.png',fit: BoxFit.cover,),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10,10,0,0),
          child: Image.network('https://www.itying.com/images/flutter/1.png',fit: BoxFit.cover,),
        ),
      ]
    )
    ),
    );
  }
}