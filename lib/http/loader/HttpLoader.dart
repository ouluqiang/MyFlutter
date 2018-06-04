import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:my_flutter/http/HttpConfig.dart';
import 'package:my_flutter/view/home/HomePage.dart';
import 'package:my_flutter/bean/user/BaseBean.dart';
import 'package:my_flutter/bean/xinwen/NewsBean.dart';
import 'package:my_flutter/config/MethodConfig.dart';
import 'package:my_flutter/bean/user/UserBean.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:my_flutter/config/PreferencesConfig.dart';
import 'package:my_flutter/config/NavigatorConfig.dart';



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


Future<int> getLogin(BuildContext context, String phone, String password) async {
  getLoad(context);
  var url = HttpBase.LOGIN + '?username=' + phone + '&password=' + password;
  Response response = await get(url, headers: HttpBase.HEADS);
  Map<String,dynamic> s=JSON.decode(response.body);
  var baseBean=new BaseBean.fromJson(s);
  print(response.body);
  if(baseBean.code!=null&&baseBean.error!=null){
    getPopNavigator(context);
    handToast(baseBean.error);
  }else{
    Map<String,dynamic> s=JSON.decode(response.body);
    var userBean=new UserBean.fromJson(s);
    SharedPreferences sp=await SharedPreferences.getInstance();
    sp.setString(SpConfig.SESSION_TOKEN, userBean.sessionToken);
    sp.setString(SpConfig.USERNAME, userBean.username);
    sp.setString(SpConfig.OBJECT_ID, userBean.objectId);
    getPopNavigator(context);
    getPopNavigator2(context,userBean.username);
//    getPushReplacementNavigator(context, new MyHomePage());
  }
  return baseBean.code;
}


Future<String> getCheckSession(BuildContext context) async {
  SharedPreferences sp=await SharedPreferences.getInstance();
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

Future<int> getRegister(BuildContext context, String phone, String password) async {
  getLoad(context);
  var url = HttpBase.USERS;
  Map map={'username':phone,'password':password};
  var body=JSON.encode(map);
  Response response = await post(url, body: body,headers: HttpBase.HEADS);
  Map<String,dynamic> s=JSON.decode(response.body);
    var baseBean=new BaseBean.fromJson(s);
    print(baseBean.code);
  if(baseBean.code!=null&&baseBean.error!=null){
    getPopNavigator(context);
    handToast(baseBean.error);
  }else{
    getPopNavigator(context);
    getPopNavigator(context);
  }
  return baseBean.code;
}

//Future<ConnotationBean> getConnotationTab() async {
//  String url=HttpConnotation.URL_CONNOTATION_TAB;
//  Response response = await get(url);
//  print(response.body);
//  Map<String,dynamic> map=JSON.decode(response.body);
//  var connotation= new ConnotationBean.fromJson(map);
//  return connotation;
//}
//Future<ConnotationContentBean> getConnotationTabContent(String url) async {
////  Response response = await get(url);
//
////  String url=HttpConnotation.URL_VIDEO;
////  String url=HttpConnotation.URL_PIC;
////  String url=HttpConnotation.URL_ESSAY;
//print('url:${url}');
//  Response response = await get(url);
//  print('body:${response.body}');
//  Map<String,dynamic> map=JSON.decode(response.body);
//  var connotation= new ConnotationContentBean.fromJson(map);
////  return connotation;
//return connotation;
//}


//Future<News> getXinwen(BuildContext context, String category, String min_behot_time,String last_refresh_sub_entrance_interval,
//    String loc_time) async {
//  var url = SNSSDK_PARAM+'&category=news_hot&refer=1&count=20&min_behot_time=1491981025&last_refresh_sub_entrance_interval=1491981165&loc_mode=&loc_time=1491981000&latitude=&longitude=&city=&tt_from=pull&lac=&cid=&cp=&iid=0123456789&device_id=12345678952&ac=wifi';
//  print(url);
//  Response response = await get(url);
//
////    print(response.body);
//    Map<String,dynamic> map=JSON.decode(response.body);
//    var news= new News.fromJson(map);
//    return news;
//}


