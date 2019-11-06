import 'package:flutter/material.dart';
import '../pages/Detail.dart';
import '../pages/Tabs.dart';
import '../pages/Shop.dart';
import '../pages/AppBardDemo.dart';
import '../pages/TabBarcontroller.dart';
import '../pages/User.dart';
//配置路由
final routes ={
    '/':(context,{arguments}) => Tabs(),
    '/detail':(context,{arguments}) => Detail(arguments: arguments),
    '/shop':(context,{arguments}) => ProductInfo(arguments:arguments),
    '/appBardemo':(context,{arguments}) => AppBarDemoPage(),
    "/tabbarcontroller":(context,{argument}) => TabBarControllerpage(),
    "/user":(context,{argument}) => UserPage(),
      };
    
   
  // 固定写法
var onGenerateRoute=(RouteSettings settings) {
    // If you push the PassArguments route
    final String name = settings.name;
    final Function pageCountentBuilder = routes[name];
        if (pageCountentBuilder !=null) {
          // Cast the arguments to the correct type: ScreenArguments.
          if(settings.arguments!=null){
            final Route route = MaterialPageRoute(
              builder: (context) => 
                pageCountentBuilder(context,arguments:settings.arguments));
                return route;
          }else{
            final Route route = MaterialPageRoute(
              builder: (context) => pageCountentBuilder(context)
            );
            return route;
          }

          // Then, extract the required data from the arguments and
          // pass the data to the correct screen.
          
        }
      };