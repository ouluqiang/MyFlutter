import 'package:flutter/services.dart';


class MethodConfig{

 static final METHOD='AndroidMethod';
 static final TOAST='toast';


 static final MethodChannel methodChannel=new MethodChannel(METHOD);
 static handToast(String text)async {
    try {
      String s = await methodChannel.invokeMethod(TOAST, text);
      print('TOAST:'+s);
    }on PlatformException catch(e){

    }
  }

}




