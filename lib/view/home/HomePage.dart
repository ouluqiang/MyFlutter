import 'package:flutter/material.dart';

class MyHome extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyHomeState();
  }

}

class MyHomeState extends State<MyHome>{

  List<BottomNavigationBarItem> items;
  int _index=0;

  Widget _getWidget(){
    if(_index==0){
      return new Text('第一个');
    }else if(_index==1){
      return new Text('第2个');
    }else{
      return new Text('第3个');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    items=<BottomNavigationBarItem>[
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
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text('首页'),
        ),
        bottomNavigationBar: new BottomNavigationBar(
            items: items,
            currentIndex: _index,
          onTap: (i){
              setState((){
                _index=i;
              });
          },
        ),
        body: _getWidget(),
    );
  }



}

