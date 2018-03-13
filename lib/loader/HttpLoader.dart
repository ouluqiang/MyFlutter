import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'HttpConfig.dart';
import 'package:my_flutter/view/home/HomePage.dart';

/**
 * 跳转界面
 */
getPushNavigator(BuildContext context,Widget widget) {
  Navigator.push(context,
      new MaterialPageRoute(builder: (BuildContext context) {
          return widget;
      })
  );
}

/**
 * 跳转界面，销毁当前界面
 */
getPushReplacementNavigator(BuildContext context,Widget widget) {
  Navigator.pushReplacement(
      context,
      new MaterialPageRoute(
          builder: (BuildContext context) {
            return widget;
          }
      )
  );
}

/**
 * 销毁当前界面跟dialog，popupwindow
 */
getPopNavigator(BuildContext context){
  Navigator.pop(context);
}

/**
 * 请求加载
 */
getLoad(BuildContext context) {
  showDialog(
      context: context,
      child: new AlertDialog(
        title: new Container(
          padding: const EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 0.0),
          child: new CircularProgressIndicator(),
        ),
        content: new Container(
          alignment: Alignment.center,
          child: new Text('正在加载'),
          height: 26.0,
        ),
      )
  );
}


getLogin(BuildContext context, String phone, String password,) {
  getLoad(context);
  var url = LOGIN + '?username=' + phone + '&password=' + password;
  Future<Response> response = get(url, headers: HEADS);
  response.then((response) async {
    print(response.body);
    getPopNavigator(context);
    getPushReplacementNavigator(context, new MyHomePage());
  }).catchError(() {
    getPopNavigator(context);
  });
}
