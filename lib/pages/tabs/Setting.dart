import 'package:flutter/material.dart';
class Setting extends StatefulWidget {
  Setting({Key key}) : super(key: key);

  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  List list = new List();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children:this.list.map((value){
            return ListTile(
              title: Text(value),
            );
          }).toList()
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text("按钮"),
          onPressed: (){
            setState(() {
             this.list.add("新增数据1");
             this.list.add("新增数据2"); 
            });
          },
        ),
        RaisedButton(
          child: Text("跳转到AppBarDemoPage页面"),
          onPressed: (){
            Navigator.pushNamed(context,'/appBardemo');
          },
        )
      ],
    );
  }
}