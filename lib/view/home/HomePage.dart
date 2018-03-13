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
            new Text('第一个12231'),
            new Text('第一个12'),
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
    items = <BottomNavigationBarItem>[
      new BottomNavigationBarItem(
        icon: new Icon(Icons.videogame_asset),
        title: new Text('阿一'),
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
      appBar: new AppBar(
        centerTitle: true,
        title: new Text('首页'),
        bottom: _getButton(),
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

