import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:my_flutter/loader/HttpLoader.dart';


class MyUserDetails extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyUserDetailsState();
  }

}

class MyUserDetailsState extends State<MyUserDetails> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final ThemeData theme = Theme.of(context);
    final TextStyle textStyle = theme.textTheme.caption.copyWith(
        color: theme.textTheme.caption.color, fontSize: 18.0);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('用户信息'),
      ),
      body: new Container(
        child: new FlatButton(
            onPressed: () async{
              SharedPreferences sp=await SharedPreferences.getInstance();
              bool isClear=await sp.clear();
              if(isClear){
                getPopNavigator2(context,null);
              }
            },
            child: new Text(
              '退出登录',
              style: textStyle,
            )
        ),
      ),
    );
  }


}