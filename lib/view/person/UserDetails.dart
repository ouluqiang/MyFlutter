import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:my_flutter/config/NavigatorConfig.dart';
import 'package:my_flutter/config/AppConfig.dart';
import 'package:my_flutter/config/PreferencesConfig.dart';
import 'package:my_flutter/config/NavigatorConfig.dart';
import 'UpdatePassword.dart';


class MyUserDetails extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyUserDetailsState();
  }

}

class MyUserDetailsState extends State<MyUserDetails> {

  String username = '';
  String email = '';

  @override
  Future initState() {
    // TODO: implement initState
    super.initState();
    _getUsername();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('用户信息'),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
            child: new Row(
              children: <Widget>[
                getHead(),
                new Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                  child: new Text(username,
                    style: new TextStyle(fontSize: 18.0),
                  ),
                )

              ],
            ),
          ),
          new Divider(),
          getItem(Icons.email, email),
          new Divider(),
          new GestureDetector(
            onTap: (){
              NavigatorConfig.getPushNavigator(context, new UpdatePassword());
            },
            child: getItem(Icons.class_, '修改密码'),
          ),

          new Divider(),
          new Container(
            margin: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
            child: new RaisedButton(
              padding: const EdgeInsets.fromLTRB(0.0, 14.0, 0.0, 14.0),
              onPressed: _handOutLogin,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child: new Text(
                '退出登录',
                style: AppConfig.getTextStype(context),
              ),
              color: AppConfig
                  .getThemeData(context)
                  .primaryColor,
            ),
          )
        ],
      ),
    );
  }

  _handOutLogin() async {
    SharedPreferences sp = await SpConfig.preferences;
    sp.clear();
    NavigatorConfig.getPopNavigator(context);
  }

  _getUsername() async {
    SharedPreferences sp = await SpConfig.preferences;
    String name = sp.get(SpConfig.USERNAME);
    String email = sp.get(SpConfig.EMAIL);
    String startEmail=email.substring(0,email.lastIndexOf('@')-1);
    String EndEmail=email.substring(email.lastIndexOf('@')-1,email.length);
    String e=startEmail.replaceAll(startEmail, '********');
    print(startEmail+'-----'+e+'---'+EndEmail);
    setState(() {
      this.username = name ?? '用户名';
      this.email = e+EndEmail ?? '';
    });
  }


  Widget getItem(IconData icon, String value) {
    return new Container(
      color: Colors.white,
      margin: const EdgeInsets.fromLTRB(22.0, 5.0, 10.0, 5.0),
      child: new Row(
        children: <Widget>[
          new Icon(icon,
            color: Colors.redAccent,
            size:28.0,),
          new Expanded(
              child: new Container(
                alignment: Alignment.centerRight,
                child: new Text(value,
                  style: new TextStyle(fontSize: 18.0),
                ),
              )),
          new Icon(
            Icons.chevron_right,
            color: Colors.black12,
            size:28.0,
          ),
        ],
      ),
    );
  }

  Widget getHead() {
    return new CircleAvatar(
      radius: 40.0,
      foregroundColor: Colors.red,
      backgroundImage: new NetworkImage(
        'https://ws1.sinaimg.cn/large/610dc034ly1fp9qm6nv50j20u00miacg.jpg',
      ),
    );
  }


}