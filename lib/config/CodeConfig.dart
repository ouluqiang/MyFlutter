import 'package:flutter/services.dart';



final SESSION_TOKEN='sessionToken';
final USERNAME='username';
final OBJECT_ID='objectId';



final METHOD='AndroidMethod';
final TOAST='toast';

final USERNAME_NULL_NOT='用户名不能为空';
final PASSWORD_NULL_NOT='密码不能为空';
final PASSWORD_LENGTH_NOT='密码必须大于6位';
final PASSWORD_EQUALS_NOT='两次输入密码不一致';
final ERROR='系统错误';


final MethodChannel methodChannel=new MethodChannel(METHOD);
handToast(String text)async {
  try {
    String s = await methodChannel.invokeMethod(TOAST, text);
    print('TOAST:'+s);
  }on PlatformException catch(e){

  }
}