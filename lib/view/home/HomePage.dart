import 'package:flutter/material.dart';
import 'package:my_flutter/loader/HttpLoader.dart';
import '../person/Login.dart';

class MyHomePage extends StatefulWidget {

  String titme = '首页';

  MyHomePage({Key key, this.titme}) :super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyHomePageState();
  }

}

class MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  GlobalKey<ScaffoldState> key=new GlobalKey<ScaffoldState>();

  List<BottomNavigationBarItem> items;
  int _index = 0;
  List<Tab> tabs;
  TabController tabController;

  Widget _getButton(){
    if (_index == 0) {
      return new TabBar(
        tabs: tabs,
        controller: tabController,
//          isScrollable: true,
      );
    }else{
      return null;
    }

  }

  Widget _getBody() {
    if (_index == 0) {
      return new TabBarView(
        controller: tabController,
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(10.0),
              child: new Card(
                child: new Text('新闻'),
                color: Colors.white,
                elevation: 4.0,
              ),
            ),

            new Text('视频'),
            new Text('第一个312312'),
            new Text('第一个12312313'),
          ],
      );
    } else if (_index == 1) {
      return new Text('第2个');
    } else {
      return new Text('第3个');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //'category=news_hot&refer=1&count=20&min_behot_time=1491981025&last_refresh_sub_entrance_interval=1491981165&loc_mode=&loc_time=1491981000&latitude=&longitude=&city=&tt_from=pull&lac=&cid=&cp=&iid=0123456789&device_id=12345678952&ac=wifi';
    getXinwen(context, 'news_hot', '1491981025', '1491981165', '1491981000');
    items = <BottomNavigationBarItem>[
      new BottomNavigationBarItem(
        icon: new Icon(Icons.videogame_asset),
        title: new Text('首页'),
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.zoom_out_map),
        title: new Text('阿二'),
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.tab_unselected),
        title: new Text('阿三'),
      ),
    ];
    tabs=<Tab>[
      new Tab(
        text: '第一个',
        icon: new Icon(Icons.title),
      ),
      new Tab(
        text: '第一个',
        icon: new Icon(Icons.title),
      ),
      new Tab(
        text: '第一个',
        icon: new Icon(Icons.title),
      ),
      new Tab(
        text: '第一个',
        icon: new Icon(Icons.title),
      ),

    ];
    tabController=new TabController(length: tabs.length, vsync: this);
  }

  _hand(){
    showModalBottomSheet(context: context, builder: (BuildContext context){

      return new Container(
        child: new Column(
          children: <Widget>[
            new Text('拍照'),
            new Divider(),
            new Text('从本地获取'),
            new Divider(),
            new Container(
              height: 4.0,
              color: Colors.white,
            ),
            new Divider(),
            new Text('取消'),

          ],
        ),
      );
    });
    // showModalBottomSheet<T>：显示模态质感设计底部面板
//    showModalBottomSheet<Null>(context:context, builder:(BuildContext context) {
//      return new Container(
//          child: new Padding(
//              padding: const EdgeInsets.all(32.0),
//              child: new Text(
//                  '这是模态底部面板，点击任意位置即可关闭',
//                  textAlign: TextAlign.center,
//                  style: new TextStyle(
//                      color: Theme.of(context).accentColor,
//                      fontSize: 24.0
//                  )
//              )
//          )
//      );
//    });
  
      //底部永久显示的
//    key.currentState.showBottomSheet((BuildContext context){
//      final ThemeData themeData = Theme.of(context);
//      return new Container(
//          decoration: new BoxDecoration(
//              border: new Border(top: new BorderSide(color: themeData.disabledColor))
//          ),
//          child: new Padding(
//              padding: const EdgeInsets.all(32.0),
//              child: new Text(
//                  '这是一个持久性的底部面板，向下拖动即可将其关闭',
//                  textAlign: TextAlign.center,
//                  style: new TextStyle(
//                      color: themeData.accentColor,
//                      fontSize: 24.0
//                  )
//              )
//          )
//      );
//    });

//    showBottomSheet(context: context , builder: (BuildContext context){
//      final ThemeData themeData = Theme.of(context);
//      return new Container(
//          decoration: new BoxDecoration(
//              border: new Border(top: new BorderSide(color: themeData.disabledColor))
//          ),
//          child: new Padding(
//              padding: const EdgeInsets.all(32.0),
//              child: new Text(
//                  '这是一个持久性的底部面板，向下拖动即可将其关闭',
//                  textAlign: TextAlign.center,
//                  style: new TextStyle(
//                      color: themeData.accentColor,
//                      fontSize: 24.0
//                  )
//              )
//          )
//      );
//    });

  }


  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      key: key,
      appBar: new AppBar(
        centerTitle: true,
        title: new Text('首页'),
        bottom: _getButton(),
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: (){
            _hand();
          },

      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: items,
        currentIndex: _index,
        onTap: (i) {
          setState(() {
            _index = i;
          });
        },
      ),
      drawer: new Drawer(
        elevation: 30.0,
        child: new ListView(
          children: <Widget>[
            new Container(
              child: new Row(
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
                    child: new GestureDetector(
                      onTap: (){
                        getPushNavigator(context, new MyLogin());
                      },
                      child: new Image.asset('asset/images/head.png',
                        width: 80.0,
                        height: 80.0,
                      ),
                    ),
                  ),
                  new Text('用户名',
                    style: new TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            new Divider(),
            new ListTile(
              leading: new Icon(Icons.list),
              title: new Text('第一个'),
            ),
            new Divider(),
            new ListTile(
              leading: new Icon(Icons.list),
              title: new Text('第2个'),
            ),
            new Divider(),
            new ListTile(
              leading: new Icon(Icons.list),
              title: new Text('第3个'),
            ),
            new Divider(),
            new ListTile(
              leading: new Icon(Icons.list),
              title: new Text('第4个'),
            ),
            new Divider(),
          ],
        ),
      ),

      body: _getBody(),
    );
  }


}

