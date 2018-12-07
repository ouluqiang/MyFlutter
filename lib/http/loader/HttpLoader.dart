import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart';
import 'package:my_flutter/config/CodeConfig.dart';
import 'package:my_flutter/http/HttpConfig.dart';
import 'package:my_flutter/bean/user/BaseBean.dart';
import 'package:my_flutter/config/MethodConfig.dart';
import 'package:my_flutter/bean/user/UserBean.dart';
import 'package:my_flutter/config/PreferencesConfig.dart';
import 'package:my_flutter/config/NavigatorConfig.dart';
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
    Map<String,dynamic> s=json.decode(response.body);
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
      Map<String, dynamic> map = json.decode(response.body);
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
    var body=json.encode(map);
    Response response = await post(url, body: body,headers: HttpBase.HEADS);
    Map<String,dynamic> s=json.decode(response.body);
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
    var body=json.encode(map);
    Response response = await post(url, body: body,headers: HttpBase.HEADS);
    Map<String,dynamic> s=json.decode(response.body);
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

    }else {
      var url = HttpBase.UPDATE_USER_PASSWORD + objectId;
      Map map = {'oldPassword': oldPassword, 'newPassword': newPassword};
      var body = json.encode(map);
      Response response = await post(url, body: body, headers: HttpBase.HEADS);
      Map<String, dynamic> s = json.decode(response.body);
      var baseBean = new BaseBean.fromJson(s);
      print('修改:${baseBean.code}');
      if (baseBean.code != null && baseBean.error != null) {
        NavigatorConfig.getPopNavigator(context);
        MethodConfig.handToast(baseBean.error);
      } else {
        MethodConfig.handToast(CodeConfig.SUCCEED);
        NavigatorConfig.getPopNavigator(context);
        NavigatorConfig.getPopNavigator(context);
      }
      return baseBean.code;
    }
  }


  /**
   * 邮箱找回密码
   */
  static Future<int> getRequestPasswordReset(BuildContext context, String email) async {
    getLoad(context);
    var url = HttpBase.REQUEST_PASSWORD_RESET;
    Map map={'email':email};
    var body=json.encode(map);
    Response response = await post(url, body: body,headers: HttpBase.HEADS);
    Map<String,dynamic> s=json.decode(response.body);
    var baseBean=new BaseBean.fromJson(s);
    print('修改:${baseBean.code}');
    if(baseBean.code!=null&&baseBean.error!=null){
      NavigatorConfig.getPopNavigator(context);
      MethodConfig.handToast(baseBean.error);
    }else{
      NavigatorConfig.getPopNavigator(context);
      showDialog<Null>(
        context: context,
        child: new AlertDialog(
          title: new Text('邮件已发送，请重置密码'),
          actions: <Widget>[
            new FlatButton(
                onPressed: () {
                  NavigatorConfig.getPopNavigator(context);
                  NavigatorConfig.getPopNavigator(context);
                },
                child: new Text('确定')
            ),
//            new FlatButton(onPressed: (){
//              Navigator.pop(context);
//            }, child: new Text('取消'))
          ],
        )
    );
    }
    return baseBean.code;
  }

  /**
   * 上传文件
   * {"cdn":"upyun","filename":"632521056@qq.com1528970733030.jpg'","url":"http://bmob-cdn-19977.b0.upaiyun.com/2018/06/14/395e02df40f2c3a280b3caa3f084c8f6.jpg'"}
   */
  static Future<int> getFiles(BuildContext context, String fileName) async {
    getLoad(context);
    SharedPreferences sp=await SpConfig.preferences;
    String emain=sp.getString(SpConfig.EMAIL);
    Map map={'data-binary':fileName};
    var body=json.encode(map);
    String value=fileName.substring(fileName.lastIndexOf('.')+1,fileName.length);
    int currentTime=new DateTime.now().millisecondsSinceEpoch;
    var url = HttpBase.FILES+emain+currentTime.toString()+'.'+value;
    Response response = await post(url, body: body,headers: HttpBase.getHeads(value));
    print('tu:'+response.body);
    Map<String,dynamic> s=json.decode(response.body);
    var baseBean=new BaseBean.fromJson(s);
    print('修改:${baseBean.code}');
    if(baseBean.code!=null&&baseBean.error!=null){
      NavigatorConfig.getPopNavigator(context);
      MethodConfig.handToast(baseBean.error);
    }else{
      NavigatorConfig.getPopNavigator(context);
    }
    return baseBean.code;
  }


}



