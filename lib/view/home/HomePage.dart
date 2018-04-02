import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_flutter/loader/HttpLoader.dart';
import '../person/Login.dart';
import 'package:my_flutter/bean/xinwen/NewsBean.dart';
import 'package:my_flutter/bean/xinwen/NewsContext.dart';
import 'package:http/http.dart';
import 'package:my_flutter/loader/HttpConfig.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:my_flutter/config/CodeConfig.dart';
import 'package:my_flutter/view/person/UserDetails.dart';
import 'package:my_flutter/bean/connotation/ConnotationBean.dart';
import 'package:my_flutter/bean/connotation/ConnotationContentBean.dart' as ConnotationContentBean;
import 'package:video_player/video_player.dart';

class MyHomePage extends StatefulWidget {

  String titme = '首页';

  MyHomePage({Key key, this.titme}) :super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyHomePageState();
  }

}

class MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> key = new GlobalKey<ScaffoldState>();

  VideoPlayerController videoPlayerController;

  List<BottomNavigationBarItem> items;
  int _index = 0;
  List<Tab> tabs;
  TabController tabController;

//  News news;

  Widget _getButton() {
    if (_index == 0) {
      if (dataBean != null) {
        return new TabBar(
          tabs: tabs,
          controller: tabController,
          isScrollable: true,

        );
//      }else{
//        return new Center(
//          // 可选参数 child:
//          child: new CircularProgressIndicator(),
//        );
      } else {
        return null;
      }
    } else {
      return null;
    }
  }


  Widget _getContext() {
//    print('地址：${url}');
    if (contentBean != null) {
      print(contentBean.length);

      return new ListView.builder(
          itemCount: contentBean.length,
          itemBuilder: (context, i) {
            ConnotationContentBean.DataBean bean = contentBean[i];
            print("视频："+bean.group.mp4_url);
            videoPlayerController = new VideoPlayerController(bean.group.mp4_url);
            videoPlayerController.initialize();
            videoPlayerController.setLooping(true);
            videoPlayerController.play();
//            Size size = videoPlayerController.value.size;
            return new Card(
              color: Colors.white,

              elevation: 4.0,
              child: new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new Column(
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new Image.network('${bean.group.user.avatar_url}',
                          height: 20.0,
                          width: 20.0,
                        ),
                        new Padding(
                          padding: const EdgeInsets.fromLTRB(
                              10.0, 0.0, 0.0, 0.0),
                          child: new Text('${bean.group.user.name}'),
                        )
                        ,
                      ],
                    ),
                    new Container(
                      padding: const EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 0.0),
                      alignment: Alignment.topLeft,
                      child: new RichText(

                          text: new TextSpan(
                              text: '',
                              children: <TextSpan>[
                                new TextSpan(
                                  text: '##${bean.group.category_name}##',
                                  style: Theme
                                      .of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                    color: Colors.red,
                                    fontSize: 16.0,
                                  ),
                                ),
                                new TextSpan(
                                  text: '${bean.group.text}',
                                  style: Theme
                                      .of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                    color: Colors.red,
                                    fontSize: 16.0,
                                  ),
                                ),

                              ]
                          )
                      ),
                    ),
                    new GestureDetector(
                      onTap: (){
                        videoPlayerController.pause();
                        handToast("点击");
                      },
                      child: new Center(
                        child: new Padding(
                          padding: const EdgeInsets.all(10.0),

                          child: new AspectRatio(
//                            aspectRatio: size.width / size.height,
                              aspectRatio: 1280/720 ,
//                          child: new Image.network('${bean.group.large_cover.uri}'),
                            child: new VideoPlayer(videoPlayerController),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            );
          });
    } else {
      return new Center(child: new CircularProgressIndicator(),);
    }
  }


  List<ConnotationContentBean.DataBean> contentBean;

  getConnotationContent(DataBean bean) async {
    ConnotationContentBean
        .ConnotationContentBean contentBean = await getConnotationTabContent(
        bean.url);
    setState(() {
      this.contentBean = contentBean.data.data;
    });
  }

  Widget _getTabContent() {
    if (dataBean == null) {
//      return new Center(
//        // 可选参数 child:
//        child: new CircularProgressIndicator(),
//      );
      return null;
    } else {
      return new Padding(
        padding: const EdgeInsets.all(4.0),
//          child: new Card(
        child: _getContext(),
//            color: Colors.white,
//            elevation: 4.0,
//          ),
      );
//      return dataBean.map((bean){
//        getConnotationContent(bean);
//        return new Padding(
//          padding: const EdgeInsets.all(10.0),
//          child: new Card(
//            child: _getContext(),
//            color: Colors.white,
//            elevation: 4.0,
//          ),
//        );
//      }).toList();

//      return new ListView.builder(
//          itemCount: news.data.length,
//          itemBuilder: (context, index) {
//            Data data = news.data[index];
//            Map<String, dynamic> map = JSON.decode(data.content);
//            var contextBean = new ContextBean.fromJson(map);
////            print('${contextBean.middle_image.url}');
//            return new Container(
//              padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
//              child: new Column(
//
//                children: <Widget>[
//                  new Row(
//                    children: <Widget>[
//                      getImage(contextBean),
//                      new Expanded(
//                          child: new Text('${contextBean.title}')
//                      )
//                    ],
//                  ),
//                  new Divider(),
//                ],
//              ),
//            );
//          }
//      );
    }
  }


//  Widget _getContext() {
//    if (news == null) {
//      return new Center(
//        // 可选参数 child:
//        child: new CircularProgressIndicator(),
//      );
//    } else {
//      return new ListView.builder(
//          itemCount: news.data.length,
//          itemBuilder: (context, index) {
//            Data data = news.data[index];
//            Map<String, dynamic> map = JSON.decode(data.content);
//            var contextBean = new ContextBean.fromJson(map);
////            print('${contextBean.middle_image.url}');
//            return new Container(
//              padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
//              child: new Column(
//
//                children: <Widget>[
//                  new Row(
//                    children: <Widget>[
//                      getImage(contextBean),
//                      new Expanded(
//                          child: new Text('${contextBean.title}')
//                      )
//                    ],
//                  ),
//                  new Divider(),
//                ],
//              ),
//            );
//          }
//      );
//    }
//  }

  Widget getImage(ContextBean contextBean) {
    if (contextBean.middle_image != null &&
        contextBean.middle_image.url != null) {
      return new Image.network(
        '${contextBean.middle_image.url}',
        width: 20.0,
        height: 20.0,
      );
    } else {
      return new Image.asset(
        'asset/images/phone.png',
        width: 20.0,
        height: 20.0,
      );
    }
  }

  Widget _getBody() {
    if (_index == 0) {
      if (tabController != null) {
        return new TabBarView(

          controller: tabController,
          children: <Widget>[
            _getTabContent(),
            new Text('视频'),
            new Text('第一个312312'),
            new Text('第一个12312313'),
            new Text('视频'),
            new Text('第一个312312'),
            new Text('第一个12312313'),
          ]

//
          ,
        );
      } else {
        return null;
      }
    } else if (_index == 1) {
      return new SingleChildScrollView(
        child: new Text("as"),
      );
    } else {
      return new Text('第3个');
    }
  }

//  getXin() async {
////    var url = 'http://is.snssdk.com/api/news/feed/v51/?channel=&aid=&app_name=&version_code=&version_name=&device_platform=&ab_version=&ab_client=&ab_group=&ab_feature=&abflag=3&ssmix=a&device_type=&device_brand=&language=zh&os_api=&os_version=&openudid=1b8d5bf69dc4a561&manifest_version_code=&resolution=&dpi=&update_version_code=&_rticket=&category=news_hot&refer=1&count=20&min_behot_time=1491981025&last_refresh_sub_entrance_interval=1491981165&loc_mode=&loc_time=1491981000&latitude=&longitude=&city=&tt_from=pull&lac=&cid=&cp=&iid=0123456789&device_id=12345678952&ac=wifi';
////    print(url);
////    Response response =await get(url, headers: HEADS);
////      Map<String,dynamic> map=JSON.decode(response.body);
////      var news= new News.fromJson(map);
//    News news = await getXinwen(
//        context, 'news_hot', '1491981025', '1491981165', '1491981000');
//    print('请求：' + news.message);
////    print('${news.data}---}');
//    setState(() {
//      this.news = news;
//    });
//  }

  List<DataBean> dataBean;

  _getTab() async {
    ConnotationBean connotationBean = await getConnotationTab();
    print('请求：' + connotationBean.data[0].name);
    setState(() {
      this.dataBean = connotationBean.data;
    });
    tabs = <Tab>[];
    for (int i = 0; i < dataBean.length; i++) {
      tabs.add(new Tab(
        child: new Tab(text: '${dataBean[i].name}'),
      ));
    }
    tabController = new TabController(length: tabs.length, vsync: this);
    getConnotationContent(dataBean[0]);
  }

  Future<SharedPreferences> preferences = SharedPreferences.getInstance();
  String username = '';

  _sharedPreferences() async {
    SharedPreferences sp = await preferences;
    String name = sp.getString(USERNAME);
    setState(() {
      this.username = name ?? '用户名';
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //'category=news_hot&refer=1&count=20&min_behot_time=1491981025&last_refresh_sub_entrance_interval=1491981165&loc_mode=&loc_time=1491981000&latitude=&longitude=&city=&tt_from=pull&lac=&cid=&cp=&iid=0123456789&device_id=12345678952&ac=wifi';
//    getXin();
    _getTab();
    _sharedPreferences();
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
//    tabs = <Tab>[
////      new Tab(
////        text: '推荐',
////        icon: new Icon(Icons.title),
////      ),
////      new Tab(
////        text: '第一个',
////        icon: new Icon(Icons.title),
////      ),
////      new Tab(
////        text: '第一个',
////        icon: new Icon(Icons.title),
////      ),
////      new Tab(
////        text: '第一个',
////        icon: new Icon(Icons.title),
////      ),
//
//    ];

  }

  _hand() {
    showModalBottomSheet(context: context, builder: (BuildContext context) {
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

  Widget getHead() {
    if (username == '用户名') {
      return new Image.asset('asset/images/head.png',
        width: 80.0,
        height: 80.0,
      );
    } else {
      return new Image.network(
        'https://ws1.sinaimg.cn/large/610dc034ly1fp9qm6nv50j20u00miacg.jpg',
        width: 80.0,
        height: 80.0,
      );
    }
  }

  Widget _drawer() {
    return new Drawer(
      elevation: 30.0,
      child: new ListView(
        children: <Widget>[
          new Container(
            child: new Row(
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
                  child: new GestureDetector(
                    onTap: () async {
                      SharedPreferences sp = await preferences;
                      String token = sp.getString(SESSION_TOKEN);
                      String s = null;
                      if (token != null) {
                        s =
                        await getPushNavigator2(context, new MyUserDetails());
                      } else {
                        s = await getPushNavigator2(context, new MyLogin());
                      }
                      setState(() {
                        this.username = s ?? '用户名';
                      });
                    },
                    child: getHead(),
                  ),
                ),
                new Text('${username}',
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
    );
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
        onPressed: () {
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
      drawer: _drawer(),

      body: _getBody(),

    );
  }


}

