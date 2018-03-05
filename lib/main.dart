import 'package:flutter/material.dart';
import 'widget/NavigationIconView.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'home',
      theme: new ThemeData(
        primaryColor: Colors.red,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          centerTitle: true, //标题居中
          title: new Text("标题"),
          actions: <Widget>[
            new MyPopupMenu(),

          ],
        ),
        body: new Column(
          children: <Widget>[
//          new MyTab(),
            new Text("diyige"),
            new Text("diyige"),
            new Text("diyige"),
          ],
        ),
        bottomNavigationBar: new MyTab(),
      ),
    );
  }

}


class MyTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyTabState();
  }

}

class MyIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // 获取当前图标主题，创建与此图标主题相同的图标主题 
    final IconThemeData iconTheme = IconTheme.of(context);
    return new Container(
      margin: const EdgeInsets.all(4.0),
      width: iconTheme.size - 4.0,
      height: iconTheme.size - 4.0,
      decoration: new BoxDecoration(
          color: iconTheme.color
      ),
    );
  }

}


class MyTabState extends State<MyTab> with TickerProviderStateMixin {

  List<NavigationIconView> _navigationIconViews;
  BottomNavigationBarType _type = BottomNavigationBarType.shifting;
  int _index = 2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /**
     *
     */
    _navigationIconViews = <NavigationIconView>[
      new NavigationIconView(
        icon: new Icon(Icons.videogame_asset),
        title: new Text('阿三'),
        color: Colors.red,
        tick: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.videogame_asset),
        title: new Text('阿三'),
        color: Colors.red,
        tick: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.videogame_asset),
        title: new Text('阿三'),
        color: Colors.red,
        tick: this,
      ),
    ];
    for (NavigationIconView view in _navigationIconViews) {
      view.controller.addListener(_addController);
      _navigationIconViews[_index].controller.value = 1.0;
    }
  }

  void _addController() {
    setState(() {

    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    for (NavigationIconView view in _navigationIconViews) {
      view.controller.dispose();
    }
  }

  Widget _buidTransition() {
    List<FadeTransition> _trans = <FadeTransition>[];
    for (NavigationIconView view in _navigationIconViews) {
      _trans.add(view.transition(_type, context));
    }
    //排序
    _trans.sort((FadeTransition a, FadeTransition b) {
      Animation<double> aAnimation = a.opacity;
      Animation<double> bAnimation = a.opacity;
      double aValue = aAnimation.value;
      double bValue = bAnimation.value;
      return aValue.compareTo(bValue);
    });

    return new Stack(children: _trans,);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new BottomNavigationBar(
      items: _navigationIconViews.map((NavigationIconView view) => view.item)
          .toList(),
      currentIndex: _index,
      type: _type,
      onTap: (int index) {
        setState(() {
          _navigationIconViews[_index].controller.repeat();
          _index = index;
          _navigationIconViews[_index].controller.repeat();
        });
      },
    );
  }

}


/**
 * 弹出菜单
 */
class MyPopupMenu extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyPopupMenuState();
  }

}

class MyPopupMenuState extends State<MyPopupMenu> {

  BottomNavigationBarType _select;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new PopupMenuButton<BottomNavigationBarType>(
        onSelected: (BottomNavigationBarType s) {
          setState(() {
            _select = s;
            print(_select);
          });
        },

        itemBuilder: (BuildContext context) {
          return <PopupMenuItem<BottomNavigationBarType>>[
            new PopupMenuItem<BottomNavigationBarType>(
              child: new Text("第一个"),
              value: BottomNavigationBarType.shifting,

            ),
            new PopupMenuItem<BottomNavigationBarType>(
              child: new Text("第二个"),
              value: BottomNavigationBarType.fixed,
            ),
            new PopupMenuItem<BottomNavigationBarType>(
              child: new Text("第三个"),
              value: BottomNavigationBarType.fixed,
            ),
          ];
        }
    );
  }

}


//class MyApp extends StatelessWidget{
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new MaterialApp(
//      title: 'app',
////      home:new MyBody(),
//
//      home: new Scaffold(
//        appBar: new AppBar(
//          leading: new IconButton(
//              icon: new Icon(Icons.backup),
//              tooltip: 'menu',
//              onPressed: null
//          ),
//          title: new Text("标题++"),
//          actions: <Widget>[
//            new IconButton(icon: new Icon(Icons.remove), onPressed: null)
//          ],
//        ),
//        body: new Center(
////          child: new MyImage(),
////          child: new MyBody(),
////          child: new MyButton(),
////          child: new MyEdite(),
//        
////          child: new Row(
////            children: <Widget>[
//////               new MyButton(),
//////               new MyEdite(),
////
////            ],
////          ),
//        
////          child: new MyListView(
////            users: <User>[
////              new User(name: "user1"),
////              new User(name: "user2"),
////              new User(name: "user3"),
////            ],
////          ),
//        
////          child: new ListView(
////            scrollDirection: Axis.horizontal,
////            children: <Widget>[
////              new Container(
////                child: new ListTile(
////                  leading: new Icon(Icons.call),
////                  title: new Text("c"),
////                ),
////                width: 160.0,
////                color: Colors.red,
////              ),
////              new Container(
////                child: new ListTile(
////                  leading: new Icon(Icons.call),
////                  title: new Text("c"),
////                ),
////                width: 160.0,
////                color: Colors.blue,
////              ),
////              new Container(
////                child: new ListTile(
////                  leading: new Icon(Icons.call),
////                  title: new Text("c"),
////                ),
////                width: 160.0,
////                color: Colors.green,
////              ),
////              new Container(
////                child: new ListTile(
////                  leading: new Icon(Icons.call),
////                  title: new Text("c"),
////                ),
////                width: 160.0,
////                color: Colors.yellow,
////              ),
////              new Container(
////                child: new ListTile(
////                  leading: new Icon(Icons.call),
////                  title: new Text("c"),
////                ),
////                width: 160.0,
////                color: Colors.orange,
////              ),
////            ],
////          ),
//        
//          child: new ListView.builder(
//              itemCount: messages.length,
//              itemBuilder:(context,index){
//                final msg=messages[index];
//                return new ListTile(
//                  leading: new CircleAvatar(
//                    child: new Text(msg.send[0]),
//                  ),
//                  title: new Text(msg.send),
//                  subtitle: new Text('${msg.send} -- ${msg.subOjbect} -- ${msg.body}'),
//                  isThreeLine: true,
//                );
//              }
//          ),
//        ),
//        floatingActionButton: new FloatingActionButton(
//            child: new Text("a"),
//            onPressed: null,
//        ),
//      ),
//    );
//  }
//
//}
//
//class Message{
//
//  Message({this.send,this.subOjbect,this.body});
//
//  String send;
//  String subOjbect;
//  String body;
//
//}
//
//final messages=[
//  new Message(
//      send: 'a',
//      subOjbect: 'b',
//      body: 'c'
//    ),
//  new Message(
//      send: 'a2',
//      subOjbect: 'b2',
//      body: 'c2'
//    ),
//  new Message(
//      send: 'a3',
//      subOjbect: 'b3',
//      body: 'c3'
//    ),
//  new Message(
//      send: 'a4',
//      subOjbect: 'b4',
//      body: 'c4'
//    ),
//  new Message(
//      send: 'a5',
//      subOjbect: 'b5',
//      body: 'c5'
//    ),
//];
//
//
//
//class MyImage extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new Image.network(
//        'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true'
//    );
//  }
//
//}
//
//
//
//
//class User{
//
//  User({this.name});
//
//  final String name;
//}
//
//typedef void Call(User user,bool falg);
//
//class MyListItem extends StatelessWidget{
//
//  MyListItem({User user,this.falg,this.call})
//      :user=user,super(key:new ObjectKey(user));
//
//  final User user;
//  final bool falg;
//  final Call call;
//
//  Color _getColor(BuildContext context){
//    return falg?Colors.black54:Theme.of(context).primaryColor;
//  }
//
//  TextStyle _getTextStyle(BuildContext context){
//    if(!falg)
//      return null;
//    return new TextStyle(
//      color: Colors.red,
//      decoration: TextDecoration.lineThrough,
//    );
//  }
//
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new ListTile(
//      onTap: (){
//        call(user,!falg);
//      },
//      leading: new CircleAvatar(
//        backgroundColor: _getColor(context),
//        child: new Text(user.name[0]),
//      ),
//      title: new Text(user.name,style: _getTextStyle(context),),
//    );
//  }
//
//}
//
//class MyListView extends StatefulWidget{
//
//  MyListView({Key key,this.users})
//    :super(key:key);
//
//  List<User> users;
//
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return new MyListViewState();
//  }
//
//
//}
//
//class MyListViewState extends State<MyListView>{
//
//  Set<User> _users=new Set<User>();
//
//  void _handShow(User user,bool falg){
//    setState((){
//      if(falg){
//        _users.add(user);
//      }else{
//        _users.remove(user);
//      }
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
////    return new Scaffold(
////        appBar: new AppBar(
////          title: new Text("白哦提"),
////        ),
////      body: new ListView(
////        padding: new EdgeInsets.all(8.0),
////        children: widget.users.map((User user){
////          return new MyListItem(
////            user: user,
////            falg: users.contains(user),
////            call: _handShow,
////          );
////        }).toList(),
////      ),
////    );
//    return new ListView(
//        padding: new EdgeInsets.all(8.0),
//        children: widget.users.map((User user){
//          return new MyListItem(
//            user: user,
//            falg: _users.contains(user),
//            call: _handShow,
//          );
//        }).toList());
//  }
//
//}
//
//
//
//
//class MyEditState extends StatelessWidget{
//
//  MyEditState({this.number});
//
//  final int number;
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new Text('数字：$number');
//  }
//
//}
//
//class MyEdit extends StatelessWidget{
//
//  MyEdit({this.onpass});
//
//  VoidCallback onpass;
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new RaisedButton(
//        onPressed: onpass,
//        child: new Text('ab'),
//    );
//  }
//
//
//
//}
//
//
//class MyEdite extends StatefulWidget{
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return new _MyEditState();
//  }
//
//}
//
//
//
//
//class _MyEditState extends State<MyEdite>{
//
//  int _number=0;
//
//  void _numberAdd(){
//    setState((){
//      _number++;
//    });
//  }
//  
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new Row(
//      children: <Widget>[
//        new RaisedButton(
//            child: new Text("0"),
//            onPressed: _numberAdd,
//        ),
//        new Text('count: $_number'),
//        new MyEditState(number: _number,),
//        new MyEdit(onpass: _numberAdd,),
//      ],
//    );
//  }
//
//}
//
//
///**
// *  触摸事件
// */
//class MyButton extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new GestureDetector(
//      child: new Container(
//        height: 100.0,
//        padding: const EdgeInsets.all(8.0),
//        margin: const EdgeInsets.symmetric(horizontal: 8.0),
//        decoration: new BoxDecoration(
//          borderRadius: new BorderRadius.circular(5.0),
//          color: Colors.lightGreen[500],
//        ),
//        child: new Center(
//          child: new Text("asf"),
//        ),
//      ),
//      onTap: (){
//        print("点击");
//
//      },
//    );
//  }
//
//}
//
//class MyBody extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new Material(
//      child: new Column(
//        children: <Widget>[
//          new MyBar(
//            title:new Text("标题")
//          ),
//          new Expanded(
//              child: new Center(
//                child: new Text("neirong"),
//              )
//          ),
//        ],
//      ),
//    );
//  }
//
//}
//
//class MyBar extends StatelessWidget{
//
//  final Widget title;
//  MyBar({this.title});
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return  new Container(
//      height: 56.0,
//      padding: const EdgeInsets.symmetric(horizontal: 8.0),
//      decoration: new BoxDecoration(color: Colors.blue[500]),
//      child: new Row(
//        children: <Widget>[
//          new IconButton(
//              icon: new Icon(Icons.menu),
//              tooltip: 'menu',
//              onPressed: null
//          ),
//          new Expanded(
//              child: title,
//          ),
//          new IconButton(
//              icon: new Icon(Icons.title),
//              tooltip: 'right',
//              onPressed: null,
//          )
//        ],
//      ),
//    );
//  }
//
//}


//import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
//
//void main()=>runApp(new MyApp());
//
//class MyApp extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
////    final wordPair=new WordPair.random();
//
//    return new MaterialApp(
//      title: 'my',
//      theme: new ThemeData(
//        primaryColor: Colors.red,
//      ),
////      home: new Scaffold(
////        appBar: new AppBar(
////          title: new Text("标题"),
////        ),
////        body: new Center(
//////          child: new Text("内容:"+wordPair.asPascalCase),
////
////          child: new RandomWords(),
////        ),
////      ),
//      home: new RandomWords(),
//    );
//  }
//
//}
//
//
//class RandomWords extends StatefulWidget{
//
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return new RandomWordsState();
//  }
//
//}
//
//class RandomWordsState extends State<RandomWords>{
//
//  final _pairs= <WordPair>[]; //list集合值
//  final _save=new Set<WordPair>(); //收藏的集合值
//  final _font=const TextStyle(fontSize: 18.0);//设置文字大小
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
////    final wordPair=new WordPair.random();
////    return new Text("内容:"+wordPair.asPascalCase);
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('listView'),
//        actions: <Widget>[
//          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSave)
//        ],
//      ),
//      body: _buildList(), //实现无限滑动listview
//    );
//  }
//
//  void _pushSave(){
//    Navigator.of(context).push(
//      new MaterialPageRoute(
//          builder: (context){
//            final tiles=_save.map(
//                    (pair){
//                  return new ListTile(
//                    title: new Text(
//                      pair.asPascalCase,
//                      style: _font,
//                    ),
//                  );
//                }
//            );
//            final divide=ListTile.divideTiles(
//                context:context,
//                tiles: tiles,
//            ).toList();
//            return new Scaffold(
//              appBar: new AppBar(
//                title: new Text('新界面'),
//              ),
//              body: new ListView(children: divide,),
//            );
//          },
//      ),
//    );
//  }
//
//  Widget _buildList(){
//    return new ListView.builder(
//      padding: const EdgeInsets.all(14.0),
//      itemBuilder: (context,i){
//        if(i.isOdd){
//          return new Divider();
//        }
//        final index=i ~/ 2;
//        if(index>=_pairs.length){
//          _pairs.addAll(generateWordPairs().take(10));
//        }
//        return _buildIiem(_pairs[index]);
//      },
//    );
//  }
//
//  Widget _buildIiem(WordPair pair){
//    final isSave=_save.contains(pair);
//    return new ListTile(
//      title: new Text(
//        pair.asPascalCase,
//        style: _font,
//      ),
//      trailing: new Icon(
//        isSave? Icons.favorite:Icons.favorite_border,
//        color: isSave?Colors.red:null,
//      ),
//      onTap: (){
//        setState((){
//          if(isSave){
//            _save.remove(pair);
//          }else{
//            _save.add(pair);
//          }
//        });
//      },
//    );
//  }
//
//}


//import 'package:flutter/material.dart';
//
//void main() => runApp(new MyApp());
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter Demo',
//      theme: new ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
//        // counter didn't reset back to zero; the application is not restarted.
//        primarySwatch: Colors.blue,
//      ),
//      home: new MyHomePage(title: 'Flutter Demo Home Page'),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  // This widget is the home page of your application. It is stateful, meaning
//  // that it has a State object (defined below) that contains fields that affect
//  // how it looks.
//
//  // This class is the configuration for the state. It holds the values (in this
//  // case the title) provided by the parent (in this case the App widget) and
//  // used by the build method of the State. Fields in a Widget subclass are
//  // always marked "final".
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => new _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // This method is rerun every time setState is called, for instance as done
//    // by the _incrementCounter method above.
//    //
//    // The Flutter framework has been optimized to make rerunning build methods
//    // fast, so that you can just rebuild anything that needs updating rather
//    // than having to individually change instances of widgets.
//    return new Scaffold(
//      appBar: new AppBar(
//        // Here we take the value from the MyHomePage object that was created by
//        // the App.build method, and use it to set our appbar title.
//        title: new Text(widget.title),
//      ),
//      body: new Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//        child: new Column(
//          // Column is also layout widget. It takes a list of children and
//          // arranges them vertically. By default, it sizes itself to fit its
//          // children horizontally, and tries to be as tall as its parent.
//          //
//          // Invoke "debug paint" (press "p" in the console where you ran
//          // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
//          // window in IntelliJ) to see the wireframe for each widget.
//          //
//          // Column has various properties to control how it sizes itself and
//          // how it positions its children. Here we use mainAxisAlignment to
//          // center the children vertically; the main axis here is the vertical
//          // axis because Columns are vertical (the cross axis would be
//          // horizontal).
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            new Text(
//              'You have pushed the button this many times:',
//            ),
//            new Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: new FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: new Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
//    );
//  }
//}
