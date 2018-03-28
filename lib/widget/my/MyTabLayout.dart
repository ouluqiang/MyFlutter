//import 'package:flutter/material.dart';
//
//class Tab{
//
//  Tab({this.name,this.color,this.icon});
//
//  String name;
//  Color color;
//  IconData icon;
//
//
//}
//
//List<Tab> list=<Tab>[
//  new Tab(name: '第一个',color: Colors.blue,icon: Icons.remove),
//  new Tab(name: '第一个',color: Colors.red,icon: Icons.title),
//  new Tab(name: '第一个',color: Colors.black,icon: Icons.add),
//];
//
//String text='好好学习，天天向上';
//
//class MyPage extends StatefulWidget{
//
//  MyPage(Key key,String title):super(key:key);
//
//  String title;
//
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return new MyPageState();
//  }
//
//}
//
//class MyPageState extends State<MyPage> with SingleTickerProviderStateMixin{
//
//  GlobalKey<ScaffoldState> globalKey=new GlobalKey<ScaffoldState>();
//  TabController controller;
//  Tab tab;
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    controller=new TabController(length: list.length, vsync: this);
//    controller.addListener(_handTabSelect);
//    tab=list[0];
//  }
//
//  @override
//  void dispose() {
//    // TODO: implement dispose
//    super.dispose();
//    controller.dispose();
//  }
//
//  void _handTabSelect(){
//    setState((){
//      tab=list[controller.index];
//    });
//  }
//
//  void showText(){
//    globalKey.currentState.showBottomSheet((context)=>new Container(
//      decoration: new BoxDecoration(
//        border: new Border(top: new BorderSide(color: Theme.of(context).dividerColor))
//      ),
//      child: new Padding(padding: const EdgeInsets.all(8.0),
//        child: new Text(text),
//      ),
//    ));
//  }
//
//  Widget _getBuildCard(Tab tab){
//    return new Builder(builder: (context)=>new Container(
//      key: new ValueKey<String>(tab.name),
//      padding: const EdgeInsets.fromLTRB(50.0, 50.0, 50.0, 100.0),
//      child: new Card(
//        child: new Text(tab.name,
//          style: new TextStyle(color: tab.color),
//        ),
//      ),
//    ));
//
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new MaterialApp(
//      title: '卡片',
//      home: new Scaffold(
//
//        appBar: new AppBar(
//          centerTitle: true,
//          title: new Text('卡牌'),
//          bottom: new TabBar(
//            controller: controller,
////              tabs: list.map((Tab page) {
////                return new Tab(
////                  name: page.label,
////                );
////              }).toList()
//          ),
//        ),
//
//      ),
//    );
//  }
//
//
//
//
//}
//
//
//enum TabsDemoStyle {
//  iconsAndText,
//  iconsOnly,
//  textOnly
//}
///*
// * 页面类
// *  图标
// *  文本
// */
//class _Page {
//  _Page({
//    this.icon,
//    this.text,
//  });
//  final IconData icon;
//  final String text;
//}
//// 存储所有页面的列表
//final List<_Page> _allPages = <_Page>[
//  new _Page(icon: Icons.event, text: 'EVENT'),
//  new _Page(icon: Icons.home, text: 'HOME'),
//  new _Page(icon: Icons.android, text: 'ANDROID'),
//  new _Page(icon: Icons.alarm, text: 'ALARM'),
//  new _Page(icon: Icons.face, text: 'FACE'),
//  new _Page(icon: Icons.language, text: 'LANGUAGE'),
//];
//class ScrollableTabsDemo extends StatefulWidget {
//  @override
//  _ScrollableTabsDemoState createState() => new _ScrollableTabsDemoState();
//}
//// 继承SingleTickerProviderStateMixin，提供单个Ticker（每个动画帧调用它的回调一次）
//class _ScrollableTabsDemoState extends State<ScrollableTabsDemo> with SingleTickerProviderStateMixin {
//  /*
//   * 在TabBar和TabBarView之间的坐标选项卡选择
//   *  TabBar：质感设计控件，显示水平的一行选项卡
//   *  TabBarView：可分布列表，显示与当前所选标签对应的控件
//   */
//  TabController _controller;
//  TabsDemoStyle _demoStyle = TabsDemoStyle.iconsAndText;
//
//  @override
//  void initState() {
//    super.initState();
//    /*
//     * 创建一个对象，用于管理TabBar和TabBarView所需的状态
//     *  length：选项卡的总数，存储所有页面的列表中的元素个数
//     */
//    _controller = new TabController(vsync: this, length: _allPages.length);
//  }
//
//  // 释放对象使用的资源
//  @override
//  void dispose() {
//    super.dispose();
//    _controller.dispose();
//  }
//
//  void changeDemoStyle(TabsDemoStyle style) {
//    setState(() {
//      _demoStyle = style;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // 获取当前主题的控件前景色
//    final Color iconColor = Theme
//        .of(context)
//        .accentColor;
//    return new Scaffold(
//        appBar: new AppBar(
//          title: new Text('可滚动的标签页'),
//          actions: <Widget>[
//            new PopupMenuButton<TabsDemoStyle>(
//                onSelected: changeDemoStyle,
//                itemBuilder: (BuildContext context) =>
//                <PopupMenuItem<TabsDemoStyle>>[
//                  new PopupMenuItem<TabsDemoStyle>(
//                      value: TabsDemoStyle.iconsAndText,
//                      child: new Text('图标和文本')
//                  ),
//                  new PopupMenuItem<TabsDemoStyle>(
//                      value: TabsDemoStyle.iconsOnly,
//                      child: new Text('仅图标')
//                  ),
//                  new PopupMenuItem<TabsDemoStyle>(
//                      value: TabsDemoStyle.textOnly,
//                      child: new Text('仅文本')
//                  )
//                ]
//            ),
//          ],
//          bottom: new TabBar(
//            // 控件的选择和动画状态
//            controller: _controller,
//            // 标签栏是否可以水平滚动
//            isScrollable: true,
//            // 标签控件的列表
//            tabs: _allPages.map((_Page page) {
//              switch (_demoStyle) {
//                case TabsDemoStyle.iconsAndText:
//                  return new Tab(text: page.text, icon: new Icon(page.icon));
//                case TabsDemoStyle.iconsOnly:
//                  return new Tab(icon: new Icon(page.icon));
//                case TabsDemoStyle.textOnly:
//                  return new Tab(text: page.text);
//              }
//            }).toList(),
//          ),
//        ),
//        body: new TabBarView(
//          // 控件的选择和动画状态
//          controller: _controller,
//          // 每个标签一个控件
//          children: _allPages.map((_Page page) {
//            return new Container(
//                key: new ObjectKey(page.icon),
//                padding: const EdgeInsets.all(12.0),
//                // 质感设计卡片
//                child: new Card(
//                    child: new Center(
//                        child: new Icon(
//                          page.icon,
//                          color: iconColor,
//                          size: 128.0,
//                        )
//                    )
//                )
//            );
//          }).toList(),
//        )
//    );
//  }
//}