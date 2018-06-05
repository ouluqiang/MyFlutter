import 'package:flutter/material.dart';
import 'package:my_flutter/view/home/MyDrawer.dart';


class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new StateMyHomePage();
  }



}

class StateMyHomePage extends State<MyHomePage>{

  List<BottomNavigationBarItem> items;
  int _currentIndex=0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    items=<BottomNavigationBarItem>[
      new BottomNavigationBarItem(icon: new Icon(Icons.filter_1), title: new Text("第一个")),
      new BottomNavigationBarItem(icon: new Icon(Icons.filter_2), title: new Text("第二个")),
      new BottomNavigationBarItem(icon: new Icon(Icons.filter_3), title: new Text("第三个")),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("首页"),
      ),
      bottomNavigationBar: new BottomNavigationBar(
          items: items,
        currentIndex: _currentIndex,
        onTap: (i){
            setState(() {
              this._currentIndex=i;
            });
        },
      ),
      body: _getBody(),
      drawer: new MyDrawer(),
    );
  }

  Widget _getBody(){
    return new IndexedStack(
      index: _currentIndex,
      children: <Widget>[
        new Text("diyige"),
        new Text("dierge"),
        new Text("disange"),
      ],
    );
  }

}


//import 'dart:async';
//import 'dart:convert';
//
//import 'package:flutter/material.dart';
//import 'package:my_flutter/loader/HttpLoader.dart';
//import '../person/Login.dart';
//import 'package:my_flutter/bean/xinwen/NewsBean.dart';
//import 'package:my_flutter/bean/xinwen/NewsContext.dart';
//import 'package:http/http.dart';
//import 'package:my_flutter/loader/HttpConfig.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//import 'package:my_flutter/config/CodeConfig.dart';
//import 'package:my_flutter/view/person/UserDetails.dart';
//import 'package:video_player/video_player.dart';
//
//class MyHomePage extends StatefulWidget {
//
//  String titme = '首页';
//
//  MyHomePage({Key key, this.titme}) :super(key: key);
//
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return new MyHomePageState();
//  }
//
//}
//
//class MyHomePageState extends State<MyHomePage>
//    with SingleTickerProviderStateMixin {
//  GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();
//
//  VideoPlayerController videoPlayerController;
//
//  List<BottomNavigationBarItem> items;
//  int _index = 0;
//  List<Tab> tabs;
//  TabController tabController;
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    _sharedPreferences();
//    items = <BottomNavigationBarItem>[
//      new BottomNavigationBarItem(
//        icon: new Icon(Icons.videogame_asset),
//        title: new Text('首页'),
//      ),
//      new BottomNavigationBarItem(
//        icon: new Icon(Icons.zoom_out_map),
//        title: new Text('阿二'),
//      ),
//      new BottomNavigationBarItem(
//        icon: new Icon(Icons.tab_unselected),
//        title: new Text('阿三'),
//      ),
//    ];
//
//
//  }
//
//  @override
//  void dispose() {
//    // TODO: implement dispose
//    tabController.dispose();
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//
//    return new Scaffold(
//      key: _key,
//      appBar: new AppBar(
//        centerTitle: true,
//        title: new Text('首页'),
//        bottom: _getButton(),
//      ),
//      floatingActionButton: new FloatingActionButton(
//        onPressed: () {
//          _hand();
//        },
//
//      ),
//      bottomNavigationBar: new BottomNavigationBar(
//        items: items,
//        currentIndex: _index,
//        onTap: (i) {
//          setState(() {
//            _index = i;
//          });
//        },
//      ),
//      drawer: _drawer(),
//
//      body: _getBody(),
//
//    );
//  }
//
//
//  Widget _getButton() {
//    if (_index == 0) {
////      if (dataBean != null) {
////        return new TabBar(
////          tabs: tabs,
////          controller: tabController,
////          isScrollable: true,
////
////        );
//////      }else{
//////        return new Center(
//////          // 可选参数 child:
//////          child: new CircularProgressIndicator(),
//////        );
////      } else {
////        return null;
////      }
//      return null;
//    } else {
//      return null;
//    }
//  }
//
//
//
//  Widget getImage(ContextBean contextBean) {
//    if (contextBean.middle_image != null &&
//        contextBean.middle_image.url != null) {
//      return new Image.network(
//        '${contextBean.middle_image.url}',
//        width: 20.0,
//        height: 20.0,
//      );
//    } else {
//      return new Image.asset(
//        'asset/images/phone.png',
//        width: 20.0,
//        height: 20.0,
//      );
//    }
//  }
//
//  Widget _getBody() {
//    if (_index == 0) {
//      if (tabController != null) {
//        return new TabBarView(
//
//          controller: tabController,
//          children: <Widget>[
//            new Text('推荐'),
//            new Text('视频'),
//            new Text('第一个312312'),
//            new Text('第一个12312313'),
//          ]
//        );
//      } else {
//        return null;
//      }
//    } else if (_index == 1) {
//      return new SingleChildScrollView(
//        child: new Text("as"),
//      );
//    } else {
//      return new Text('第3个');
//    }
//  }
//
//
//
//
//  Future<SharedPreferences> preferences = SharedPreferences.getInstance();
//  String username = '';
//
//  _sharedPreferences() async {
//    SharedPreferences sp = await preferences;
//    String name = sp.getString(USERNAME);
//    setState(() {
//      this.username = name ?? '用户名';
//    });
//  }
//
//
//
//  _hand() {
//    showModalBottomSheet(context: context, builder: (BuildContext context) {
//      return new Container(
//        child: new Column(
//          children: <Widget>[
//            new Text('拍照'),
//            new Divider(),
//            new Text('从本地获取'),
//            new Divider(),
//            new Container(
//              height: 4.0,
//              color: Colors.white,
//            ),
//            new Divider(),
//            new Text('取消'),
//
//          ],
//        ),
//      );
//    });
//    // showModalBottomSheet<T>：显示模态质感设计底部面板
////    showModalBottomSheet<Null>(context:context, builder:(BuildContext context) {
////      return new Container(
////          child: new Padding(
////              padding: const EdgeInsets.all(32.0),
////              child: new Text(
////                  '这是模态底部面板，点击任意位置即可关闭',
////                  textAlign: TextAlign.center,
////                  style: new TextStyle(
////                      color: Theme.of(context).accentColor,
////                      fontSize: 24.0
////                  )
////              )
////          )
////      );
////    });
//
//    //底部永久显示的
////    key.currentState.showBottomSheet((BuildContext context){
////      final ThemeData themeData = Theme.of(context);
////      return new Container(
////          decoration: new BoxDecoration(
////              border: new Border(top: new BorderSide(color: themeData.disabledColor))
////          ),
////          child: new Padding(
////              padding: const EdgeInsets.all(32.0),
////              child: new Text(
////                  '这是一个持久性的底部面板，向下拖动即可将其关闭',
////                  textAlign: TextAlign.center,
////                  style: new TextStyle(
////                      color: themeData.accentColor,
////                      fontSize: 24.0
////                  )
////              )
////          )
////      );
////    });
//
////    showBottomSheet(context: context , builder: (BuildContext context){
////      final ThemeData themeData = Theme.of(context);
////      return new Container(
////          decoration: new BoxDecoration(
////              border: new Border(top: new BorderSide(color: themeData.disabledColor))
////          ),
////          child: new Padding(
////              padding: const EdgeInsets.all(32.0),
////              child: new Text(
////                  '这是一个持久性的底部面板，向下拖动即可将其关闭',
////                  textAlign: TextAlign.center,
////                  style: new TextStyle(
////                      color: themeData.accentColor,
////                      fontSize: 24.0
////                  )
////              )
////          )
////      );
////    });
//
//  }
//
//  Widget getHead() {
//    if (username == '用户名') {
//      return new Image.asset('asset/images/head.png',
//        width: 80.0,
//        height: 80.0,
//      );
//    } else {
//      return new Image.network(
//        'https://ws1.sinaimg.cn/large/610dc034ly1fp9qm6nv50j20u00miacg.jpg',
//        width: 80.0,
//        height: 80.0,
//      );
//    }
//  }
//
//  Widget _drawer() {
//    return new Drawer(
//      elevation: 30.0,
//      child: new ListView(
//        children: <Widget>[
//          new Container(
//            child: new Row(
//              children: <Widget>[
//                new Padding(
//                  padding: const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
//                  child: new GestureDetector(
//                    onTap: () async {
//                      SharedPreferences sp = await preferences;
//                      String token = sp.getString(SESSION_TOKEN);
//                      String s = null;
//                      if (token != null) {
//                        s =
//                        await getPushNavigator2(context, new MyUserDetails());
//                      } else {
//                        s = await getPushNavigator2(context, new MyLogin());
//                      }
//                      setState(() {
//                        this.username = s ?? '用户名';
//                      });
//                    },
//                    child: getHead(),
//                  ),
//                ),
//                new Text('${username}',
//                  style: new TextStyle(
//                    fontSize: 20.0,
//                  ),
//                ),
//              ],
//            ),
//          ),
//          new Divider(),
//          new ListTile(
//            leading: new Icon(Icons.list),
//            title: new Text('第一个'),
//          ),
//          new Divider(),
//          new ListTile(
//            leading: new Icon(Icons.list),
//            title: new Text('第2个'),
//          ),
//          new Divider(),
//          new ListTile(
//            leading: new Icon(Icons.list),
//            title: new Text('第3个'),
//          ),
//          new Divider(),
//          new ListTile(
//            leading: new Icon(Icons.list),
//            title: new Text('第4个'),
//          ),
//          new Divider(),
//        ],
//      ),
//    );
//  }
//
//
//
//}
//
