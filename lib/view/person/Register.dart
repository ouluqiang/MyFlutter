import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter/loader/HttpConfig.dart';
import 'dart:convert';
import '../home/HomePage.dart';
import 'package:my_flutter/config/CodeConfig.dart';
import 'package:my_flutter/loader/HttpLoader.dart';
import 'package:my_flutter/bean/BaseBean.dart';

class MyRegister extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyRegisterState();
  }

}


class MyRegisterState extends State<MyRegister> {

  TextEditingController controller=new TextEditingController();
//  TextEditingController controller2=new TextEditingController();
//  TextEditingController controller3=new TextEditingController();

  String _phone;
  String _password;
  String _passwordNew;

  _handRegister() async {
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
    if (_passwordNew.isEmpty) {
      handToast(PASSWORD_NULL_NOT);
      return;
    }
    if (_passwordNew.length<6) {
      handToast(PASSWORD_LENGTH_NOT);
      return;
    }
    if (_password!=_passwordNew) {
      handToast(PASSWORD_EQUALS_NOT);
      return;
    }

    int code=await getRegister(context, _phone, _password);
    if(code!=null){
      controller.clear();
    }

  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
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
        title: new Text('注册'),
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
                      controller: controller,
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
//                        controller: controller2,
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
//                        controller: controller3,
                        onChanged: (str) {
                          _passwordNew = str;
                        },
                        obscureText: true,
                        //输入密码显示·
                        maxLines: 1,
                        maxLength: 16,
                        decoration: new InputDecoration(
                          hintText: '请再次输入密码',
                          labelText: '重复密码',
                        ),

                        style: textStyle,

                      ),
                    )

                ),

              ],
            ),
          ),
          new Container(
            margin: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
            child: new RaisedButton(
              padding: const EdgeInsets.fromLTRB(0.0, 14.0, 0.0, 14.0),
              onPressed: _handRegister,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child: new Text('注册',
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