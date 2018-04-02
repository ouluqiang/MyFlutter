import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter/loader/HttpConfig.dart';
import 'dart:convert';
import '../home/HomePage.dart';
import 'Register.dart';
import 'ForgetPassword.dart';
import 'dart:math';
import 'package:my_flutter/config/CodeConfig.dart';
import 'package:my_flutter/loader/HttpLoader.dart';
import 'package:my_flutter/bean/user/BaseBean.dart';

class MyLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyLoginState();
  }

}


class MyLoginState extends State<MyLogin> {

  String _phone='';
  String _password='';

//  MethodChannel methodChannel=new MethodChannel(METHOD);

//  _handToast(String text)async {
//    try {
//      String s = await methodChannel.invokeMethod(TOAST, text);
//      print(s);
//    }on PlatformException catch(e){
//
//    }
//  }

  _handLogin() async {
    if (_phone.isEmpty) {
      handToast(USERNAME_NULL_NOT);
      return;
    }
    if (_password.isEmpty) {
      handToast(PASSWORD_NULL_NOT);
      return;
    }
    if (_password.length<6) {
      handToast(PASSWORD_LENGTH_NOT);
      return;
    }
    int code=await getLogin(context, _phone, _password);


  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final ThemeData theme = Theme.of(context);
    final TextStyle textStyle = theme.textTheme.caption.copyWith(
        color: theme.textTheme.caption.color, fontSize: 18.0);

    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text('登录'),
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 20.0),
            alignment: Alignment.center,
            child: new Image.asset('asset/images/head.png'),

          ),
          new Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: new Row(
              children: <Widget>[
                new Image.asset(
                  'asset/images/phone.png',
                  width: 22.0,
                  fit: BoxFit.fill,
                  alignment: Alignment.bottomCenter,),
                new Flexible(
                  child: new Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                    child: new TextField( //输入框控件

                      onChanged: (str) {
                        _phone = str;
                      },

                      decoration: new InputDecoration(
//                            border: InputBorder.none,  //隐藏下滑线
                        hintText: '请输入账号',
                        labelText: '账号',

                      ),
                      maxLength: 11,
                      maxLines: 1,
                      style: textStyle
                      ,
                    ),
                  ),


                ),

              ],
            ),
          ),
          new Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: new Row(

              children: <Widget>[
                new Image.asset(
                  'asset/images/password.png',
                  width: 22.0,
                  height: 26.0,
                  fit: BoxFit.fill,
//                    alignment: Alignment.bottomCenter,
                ),
                new Flexible(

                    child: new Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                      child: new TextField(
                        onChanged: (str) {
                          _password = str;
                        },
                        obscureText: true,
                        //输入密码显示·
                        maxLines: 1,
                        maxLength: 16,
                        decoration: new InputDecoration(
                          hintText: '请输入密码',
                          labelText: '密码',
                        ),

                        style: textStyle,

                      ),
                    )

                ),

              ],
            ),
          ),
          new Row(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 14.0, 0.0, 14.0),
                child: new GestureDetector(
                  child: new Text('注册',
                    style: new TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  onTap: () {
                    print('注册');
                    getPushNavigator(context, new MyRegister());
                  },
                ),
              ),
//              new Flexible(
//                child: new Padding(
//                    padding: const EdgeInsets.fromLTRB(0.0, 14.0, 20.0, 14.0),
//                    child: new Align(
//                      alignment: Alignment.centerRight,
//                      child: new GestureDetector(
//                        child: new Text('忘记密码?'),
//                        onTap: () {
//                          print('忘记密码');
//                          getPushNavigator(context, new MyForgetPassword());
//                        },
//                      ),
//                    )
//                ),
//              ),


            ],
          ),
          new Container(
            margin: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
            child: new RaisedButton(
              padding: const EdgeInsets.fromLTRB(0.0, 14.0, 0.0, 14.0),
              onPressed: _handLogin,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child: new Text(
                '登录',
                style: theme.textTheme.caption.copyWith(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              color: theme.primaryColor,
            ),
          )

        ],
      ),

//        body: new Column(
//          children: <Widget>[
//            new Container(
//              margin: const EdgeInsets.all(50.0),
//              alignment: Alignment.center,
//              child: new Image.asset('asset/images/head.png'),
//            ),
//            new Padding(
//              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
//              child: new Row(
//
//                children: <Widget>[
//                  new Image.asset('asset/images/phone.png'),
//                  new Flexible(
//
//                      child: new Padding(
//                        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
//                        child: new TextField(
//
//                          decoration: new InputDecoration(
////                              hintText: '请输入手机号',
//                              labelText: '手机号',
//                          ),
//                        ),
//                      )
//
//                  ),
//
//                ],
//              ),
//            ),
//            new Padding(
//              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
//              child: new Row(
//
//                children: <Widget>[
//                  new Image.asset('asset/images/phone.png'),
//                  new Flexible(
//
//                      child: new Padding(
//                        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
//                        child: new TextField(
//
//                          decoration: new InputDecoration(
////                              hintText: '请输入手机号',
//                            labelText: '密码',
//                          ),
//                        ),
//                      )
//
//                  ),
//
//                ],
//              ),
//            ),
//
//
//          ],
//        ),
    );
  }

}


class MyEditText extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyEditTextState();
  }

}

class MyEditTextState extends State<MyEditText> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new TextField(

    );
  }

}