import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_flutter/config/CodeConfig.dart';
import 'package:my_flutter/config/MethodConfig.dart';
import 'package:my_flutter/config/RegExpConfig.dart';
import 'package:my_flutter/http/loader/HttpLoader.dart';

class MyForgetPassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyForgetPasswordState();
  }

}


class MyForgetPasswordState extends State<MyForgetPassword> {

  String _email;
//  String _password;

  _handRequest() async {
    if (_email.isEmpty) {
      MethodConfig. handToast(CodeConfig.EMAIL_NULL_NOT);
      return;
    }
    if (RegExpConfig.getEmail(_email)) {
      MethodConfig.  handToast(CodeConfig.EMAIL_ERROR);
      return;
    }
    HttpLoader.getRequestPasswordReset(context, _email);
//    if (_password.isEmpty) {
//      return;
//    }
//    showDialog(
//        context: context,
//        child: new AlertDialog(
//          title: new Container(
//            padding: const EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 0.0),
//            child: new CircularProgressIndicator(),
//          ),
//          content: new Container(
//            alignment: Alignment.center,
//            child: new Text('正在加载'),
//            height: 26.0,
//          ) ,
//
//        )
//    );
////    var body = JSON.encode({'username': 'a1', 'password': '123456'});
////    print(body.toString());
//    var url = HttpBase.LOGIN + '?username=' + _phone + '&password=' + _password;
//    Future<Response> response = get(url, headers: HttpBase.HEADS);
//    response.then((response) {
//      print(response.body);
//      Navigator.pop(context);
//      Navigator.pushReplacement(
//          context,
//          new MaterialPageRoute(
//              builder: (BuildContext context){
//                return new MyHomePage();
//              }
//        )
//      );
//    }).catchError(() {
//      Navigator.of(context).pop();
//    });
//    Response response=await createHttpClient().get(
//        LOGIN+'?username='+_phone+'&password='+_password,
//        headers:httpHeads,
//    );
//    Response response=await createHttpClient().post(
//        USERS,
//        headers:httpHeads,
//      body: body
//    );
//    print(response.body.toString());

//    showDialog<Null>(
//        context: context,
//        child: new AlertDialog(
//          title: new Text('标的'),
//          content: new Text('${_phone}---${_password}'),
//          actions: <Widget>[
//            new FlatButton(
//                onPressed: () {
//                  Navigator.pop(context);
//                },
//                child: new Text('确定')
//            ),
//            new FlatButton(onPressed: (){
//              Navigator.pop(context);
//            }, child: new Text('取消'))
//          ],
//        )
//    );


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
        title: new Text('忘记密码'),
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
                        _email = str;
                      },

                      decoration: new InputDecoration(
//                            border: InputBorder.none,  //隐藏下滑线
                        hintText: '请输入邮箱',
                        labelText: '邮箱',

                      ),
                      maxLength: 20,
                      maxLines: 1,
                      style: textStyle
                      ,
                    ),
                  ),


                ),

              ],
            ),
          ),
//          new Padding(
//            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
//            child: new Row(
//
//              children: <Widget>[
//                new Image.asset(
//                  'asset/images/password.png',
//                  width: 22.0,
//                  height: 26.0,
//                  fit: BoxFit.fill,
////                    alignment: Alignment.bottomCenter,
//                ),
//                new Flexible(
//
//                    child: new Padding(
//                      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
//                      child: new TextField(
//                        onChanged: (str) {
//                          _password = str;
//                        },
//                        obscureText: true,
//                        //输入密码显示·
//                        maxLines: 1,
//                        maxLength: 16,
//                        decoration: new InputDecoration(
//                          hintText: '请输入密码',
//                          labelText: '密码',
//                        ),
//
//                        style: textStyle,
//
//                      ),
//                    )
//
//                ),
//
//              ],
//            ),
//          ),
          new Container(
            margin: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
            child: new RaisedButton(
              padding: const EdgeInsets.fromLTRB(0.0, 14.0, 0.0, 14.0),
              onPressed: _handRequest,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child: new Text('确定',
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