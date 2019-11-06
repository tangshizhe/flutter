import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  
  final arguments;
  Detail({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("详情页面"),
      ),
      body: Product(),
    );
  }
}
class Product extends StatefulWidget {
  Map arguments;
  Product({Key key,this.arguments}) : super(key: key);
  _ProductState createState() => _ProductState(arguments);
}

class _ProductState extends State<Product> {
  Map arguments;

  _ProductState(Map arguments);
  @override
  Widget build(BuildContext context) {
    return Container(
       child: RaisedButton(
         child: Text("点击加入购物车"),
         onPressed: (){
           Navigator.pushNamed(context, '/shop',arguments:{
             "pid":456
           });
         },
       )
    );
  }
}