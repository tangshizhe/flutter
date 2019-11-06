import 'package:flutter/material.dart';
import 'tabs/Category.dart';
import 'tabs/Home.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _pageList = [
    HomePage(),
    Category(),
    Setting(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("flutter Demodds"),
          ),
          body:this._pageList[this._currentIndex],
          bottomNavigationBar:BottomNavigationBar(
            iconSize: 25.0,//图片大小
            fixedColor: Colors.red,//选中之后的颜色
            type: BottomNavigationBarType.fixed,//配置底部tabs可以有多个按钮
            currentIndex: this._currentIndex,
            onTap: (int index){
              setState(() {
               this._currentIndex = index; 
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("首页")
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.camera),
                title: Text("分类")
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text("设置")
              ),
            ],
          ),
          drawer: Drawer( //左侧边栏
            child:Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child:UserAccountsDrawerHeader(
                        currentAccountPicture: CircleAvatar(
                          backgroundImage: NetworkImage("https://www.itying.com/images/flutter/3.png"),
                        ),
                        accountName: Text("tang"),
                        accountEmail: Text("2417024719@qq.com"),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://www.itying.com/images/flutter/2.png"),
                            fit: BoxFit.cover
                          )
                        ),
                      )
                    )
                  ],
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.home),
                  ),
                  title: Text("我的空间"),
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.people),
                  ),
                  title: Text("用户中心"),
                  onTap: (){
                    Navigator.of(context).pop();//隐藏侧边栏
                    Navigator.pushNamed(context,'/user');
                  },
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.settings),
                  ),
                  title: Text("设置中心"),
                ),
              ],
            ),
          ),
          endDrawer: Drawer(//右侧边栏
            child: Text('你好flutter'),
          ),
    );
  }
}