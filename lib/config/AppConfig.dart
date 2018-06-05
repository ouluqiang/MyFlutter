import 'package:flutter/material.dart';

class AppConfig{

 static TextStyle getTextStype(BuildContext context){
    return   getThemeData(context).textTheme.caption.copyWith(
        color: Colors.white, fontSize: 18.0);
  }

 static TextStyle getTextStypeColor(BuildContext context){
    return   getThemeData(context).textTheme.caption.copyWith(
        color: getThemeData(context).textTheme.caption.color, fontSize: 18.0);
  }

 static ThemeData getThemeData(BuildContext context){
    return  Theme.of(context);
  }

}