

import 'dart:async';

import 'package:flutter/material.dart';


class NavigatorConfig{

  /**
   * 跳转界面
   */
  static getPushNavigator(BuildContext context,Widget widget) {
    Navigator.push(context,
        new MaterialPageRoute(builder: (BuildContext context) {
          return widget;
        })
    );
  }
  static Future<String> getPushNavigatorString(BuildContext context,Widget widget) {
    return Navigator.push(context,
        new MaterialPageRoute<String>(builder: (BuildContext context) {
          return widget;
        })
    );
  }

  /**
   * 跳转界面，销毁当前界面
   */
  static getPushReplacementNavigator(BuildContext context,Widget widget) {
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
  static getPopNavigatorString(BuildContext context,String s){
    Navigator.pop(context,s);
  }

  static getPopNavigator(BuildContext context){
    Navigator.pop(context);
  }

}
