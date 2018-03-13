import 'package:flutter/services.dart';



final METHOD='AndroidMethod';
final TOAST='toast';

final USERNAME_NULL_NOT='用户名不能为空';
final PASSWORD_NULL_NOT='密码不能为空';


final MethodChannel methodChannel=new MethodChannel(METHOD);
handToast(String text)async {
  try {
    String s = await methodChannel.invokeMethod(TOAST, text);
    print('TOAST:'+s);
  }on PlatformException catch(e){

  }
}