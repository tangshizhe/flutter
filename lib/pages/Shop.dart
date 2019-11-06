import 'package:flutter/material.dart';

class ProductInfo extends StatefulWidget {
  Map arguments;
  ProductInfo({Key key,this.arguments}) : super(key: key);

  _ProductInfoState createState() => _ProductInfoState(arguments:this.arguments);
}

class _ProductInfoState extends State<ProductInfo> {
  Map arguments;
  _ProductInfoState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child:
                TabBar(
                  indicatorColor: Colors.blue,
                  isScrollable: true,
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: <Widget>[
                    Tab(text: "热销",),
                    Tab(text: "推荐1",),
                    Tab(text: "推荐2",),
                    Tab(text: "推荐3",),
                    Tab(text: "推荐4",),
                    Tab(text: "推荐5",),
                    Tab(text: "推荐6",),
                    Tab(text: "推荐7",),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              child: Scaffold(
                
                body: Text("pid=${arguments["pid"]}"),
              ),
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("aaaaa"),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("bbbbbb"),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("cccccc"),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("dddddd"),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("eeeeee"),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("ffffff"),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("gggggg"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// 