import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:my_flutter/config/CodeConfig.dart';
import 'package:my_flutter/config/RegExpConfig.dart';
import 'package:my_flutter/http/HttpConfig.dart';
import 'package:my_flutter/view/home/HomePage.dart';
import 'package:my_flutter/bean/user/BaseBean.dart';
import 'package:my_flutter/bean/xinwen/NewsBean.dart';
import 'package:my_flutter/config/MethodConfig.dart';
import 'package:my_flutter/bean/user/UserBean.dart';
import 'package:my_flutter/config/PreferencesConfig.dart';
import 'package:my_flutter/config/NavigatorConfig.dart';
import 'package:my_flutter/config/PreferencesConfig.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HttpLoader{

  /**
   * 请求加载
   */
  static getLoad(BuildContext context) {
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


  /***
   * 登录
   */
  static Future<int> getLogin(BuildContext context, String phone, String password) async {
    getLoad(context);

    var url = HttpBase.LOGIN + '?username=' + phone + '&password=' + password;

    Response response = await get(url, headers: HttpBase.HEADS,).timeout(new Duration(seconds: 20),onTimeout: (){
      NavigatorConfig.getPopNavigator(context);
      MethodConfig.handToast(CodeConfig.TIMEOUT);
    });
    Map<String,dynamic> s=JSON.decode(response.body);
    var baseBean=new BaseBean.fromJson(s);
    print('登录:${response.body}');
    if(baseBean.code!=null&&baseBean.error!=null){
      NavigatorConfig.getPopNavigator(context);
      MethodConfig.handToast(baseBean.error);
    }else{
//      Map<String,dynamic> s=JSON.decode(response.body);
      var userBean=new UserBean.fromJson(s);
      NavigatorConfig.getPopNavigator(context);
      if(userBean.emailVerified){
        SharedPreferences sp=await SpConfig.preferences;
        sp.setString(SpConfig.SESSION_TOKEN, userBean.sessionToken);
        sp.setString(SpConfig.USERNAME, userBean.username);
        sp.setString(SpConfig.OBJECT_ID, userBean.objectId);
        sp.setString(SpConfig.EMAIL, userBean.email);
        NavigatorConfig.getPopNavigatorString(context,userBean.username);
      }else{
        MethodConfig.handToast(CodeConfig.EMAIL_VERIFIED);
      }
    }
    return baseBean.code;
  }


  /**
   * token验证
   */
  static Future<String> getCheckSession(BuildContext context) async {
    SharedPreferences sp=await SpConfig.preferences;
    String objectId=sp.getString(SpConfig.OBJECT_ID);
    String token=sp.getString(SpConfig.SESSION_TOKEN);
//  print(objectId);
    if(objectId!=null) {
      var url = HttpBase.CHECK_SESSION + objectId;
      HttpBase.HEADS.addAll({HttpBase.TOKEN_KEY:token});
      Response response = await get(url, headers: HttpBase.HEADS);
      Map<String, dynamic> map = JSON.decode(response.body);
      print(response.body);
      String msg=map['msg'];
      return msg;
    }
    return '';
  }

  /**
   * 注册
   */
  static Future<int> getRegister(BuildContext context, String email,String nickname, String password) async {
    getLoad(context);
    var url = HttpBase.USERS;
    Map map={'email':email,'username':nickname,'password':password};
    var body=JSON.encode(map);
    Response response = await post(url, body: body,headers: HttpBase.HEADS);
    Map<String,dynamic> s=JSON.decode(response.body);
    var baseBean=new BaseBean.fromJson(s);
    print('注册:${baseBean.code}');
    if(baseBean.code!=null&&baseBean.error!=null){
      NavigatorConfig.getPopNavigator(context);
      MethodConfig.handToast(baseBean.error);
    }else{
      getRequestEmailVerify(context, email);
      NavigatorConfig.getPopNavigator(context);
      NavigatorConfig.getPopNavigator(context);
    }
    return baseBean.code;
  }

  /**
   * 认证注册邮箱
   */
  static Future<int> getRequestEmailVerify(BuildContext context, String email) async {
//    getLoad(context);
    var url = HttpBase.REQUEST_EMAIL_VERIFY;
    Map map={'email':email};
    var body=JSON.encode(map);
    Response response = await post(url, body: body,headers: HttpBase.HEADS);
    Map<String,dynamic> s=JSON.decode(response.body);
    var baseBean=new BaseBean.fromJson(s);
    print('邮件:${baseBean.code}   ${baseBean.error}');
//    if(baseBean.code!=null&&baseBean.error!=null){
//      getPopNavigator(context);
//      MethodConfig.handToast(baseBean.error);
//    }else{
//      getPopNavigator(context);
//      getPopNavigator(context);
//    }
    return baseBean.code;
  }

  /**
   * 修改密码
   */
  static Future<int> getUpdatePassword(BuildContext context, String oldPassword,String newPassword) async {
    getLoad(context);
    SharedPreferences sp=await SpConfig.preferences;
    String objectId=sp.getString(SpConfig.OBJECT_ID);
    if(objectId.isEmpty){
      NavigatorConfig.getPopNavigator(context);
      return;
    }
    var url = HttpBase.UPDATE_USER_PASSWORD+objectId;
    Map map={'oldPassword':oldPassword,'newPassword':newPassword};
    var body=JSON.encode(map);
    Response response = await post(url, body: body,headers: HttpBase.HEADS);
    Map<String,dynamic> s=JSON.decode(response.body);
    var baseBean=new BaseBean.fromJson(s);
    print('修改:${baseBean.code}');
    if(baseBean.code!=null&&baseBean.error!=null){
      NavigatorConfig.getPopNavigator(context);
      MethodConfig.handToast(baseBean.error);
    }else{
      MethodConfig.handToast(CodeConfig.SUCCEED);
      NavigatorConfig.getPopNavigator(context);
      NavigatorConfig.getPopNavigator(context);
    }
    return baseBean.code;
  }

}



