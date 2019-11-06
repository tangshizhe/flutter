import 'package:flutter/material.dart';
import 'package:flutterapp/routes/Routes.dart';

import 'routes/Routes.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Tabs(),
      initialRoute: '/',//初始化时加载的路由
      onGenerateRoute: onGenerateRoute,
      // routes: {
      //   '/detail':(context)=>Detail(),
      // },
    );
  }
}

