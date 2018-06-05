import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:my_flutter/config/PreferencesConfig.dart';
import 'package:my_flutter/config/NavigatorConfig.dart';
import 'package:my_flutter/view/person/UserDetails.dart';
import 'package:my_flutter/view/person/Login.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new StateMyDrawer();
  }
}

class StateMyDrawer extends State<MyDrawer> {
  String username = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _sharedPreferences();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _getDrawer();
  }

//
  _sharedPreferences() async {
    SharedPreferences sp = await SpConfig.preferences;
    String name = sp.getString(SpConfig.USERNAME);
    setState(() {
      this.username = name ?? '用户名';
    });
  }

  Widget _getDrawer() {
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
                      SharedPreferences sp = await SpConfig.preferences;
                      String token = sp.getString(SpConfig.SESSION_TOKEN);
                      String s = null;
                      if (token != null) {
                        s = await NavigatorConfig.getPushNavigatorString(
                            context, new MyUserDetails());
                      } else {
                        s = await NavigatorConfig.getPushNavigatorString(
                            context, new MyLogin());

                      }
                      NavigatorConfig.getPopNavigator(context);
                      setState(() {
                        this.username = s ?? '用户名';
                      });
                    },
                    child: getHead(),
                  ),
                ),
                new Text(
                  '${username}',
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
//          new Container(
//            margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
//            alignment: Alignment.center,
//            child: new RaisedButton(
//              child: new Text('退出登录'),
//                onPressed: () async {
//                  SharedPreferences sp = await SpConfig.preferences;
//                  bool isClear=await sp.clear();
//                  if(isClear){
//                    _sharedPreferences();
//                  }
//                }),
//          ),
        ],
      ),
    );
  }

  Widget getHead() {
    if (username == '用户名') {
      return new CircleAvatar(
        radius: 40.0,
        backgroundImage: new AssetImage('asset/images/head.png'),
        foregroundColor: Colors.red,
      );
    } else {
      return new CircleAvatar(
        radius: 40.0,
        foregroundColor: Colors.red,
        backgroundImage: new NetworkImage(
          'https://ws1.sinaimg.cn/large/610dc034ly1fp9qm6nv50j20u00miacg.jpg',
        ),
      );
    }
  }
}
