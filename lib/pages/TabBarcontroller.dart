import 'package:flutter/material.dart';
class TabBarControllerpage extends StatefulWidget {
  TabBarControllerpage({Key key}) : super(key: key);

  _TabBarControllerpageState createState() => _TabBarControllerpageState();
}

class _TabBarControllerpageState extends State<TabBarControllerpage> with SingleTickerProviderStateMixin {
  TabController _tabController; 



  @override
  void dispose(){  //组件销毁的时候触发的生命周期函数
    super.dispose();
    _tabController.dispose();
    print('111111');
  }
  void initState(){ //生命周期函数
    super.initState();//固定写法
    _tabController = new TabController( //实例化TabController
      vsync: this,
      length: 2,
    );
    _tabController.addListener((){
      print(_tabController.index);
    });
  }
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text("TabBar"),
           bottom: TabBar(
             controller: this._tabController,//需要在这里配置controller
             tabs: <Widget>[
               Tab(text: "热销",),
               Tab(text: "推荐",),
             ],
           ),
         ),
         body: TabBarView(
           controller: this._tabController,//需要在这里配置controller
           children: <Widget>[
             Center(child: Text("热销"),),
              Center(child: Text("推荐"),),
           ],
         ),
       ),
    );
  }
}