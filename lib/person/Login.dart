import 'package:flutter/material.dart';


class MyLogin extends StatelessWidget {
  
  void _handLogin(){
    
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'login',
      home: new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text('登录'),
        ),
        body: new ListView(
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.all(50.0),
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
//                      height: 30.0,
//                          fit: BoxFit.fill,
                    alignment: Alignment.bottomCenter,),
                  new Flexible(

                    child: new Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                     child: new TextField( //输入框控件

                        decoration: new InputDecoration(
//                            border: InputBorder.none,  //隐藏下滑线
                          hintText: '请输入手机号',
                          labelText: '手机号',

                        ),
                        maxLength: 11,
                        maxLines: 1,
                        style: new TextStyle(
                            fontSize: 18.0,
                            color: Colors.red
                        ),
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
                          obscureText: true, //输入密码显示·
                          maxLines: 1,
                          maxLength: 16,
                          decoration: new InputDecoration(
                            hintText: '请输入密码',
                            labelText: '密码',
                          ),
                          style: new TextStyle(
                              fontSize: 18.0,
                              color: Colors.red
                          ),
                        ),
                      )

                  ),

                ],
              ),
            ),
            new Container(
              margin: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),

              child:new Material(
                borderRadius: new BorderRadius.circular(10.0),
                child: new RaisedButton(
                  padding: const EdgeInsets.fromLTRB(0.0, 14.0, 0.0, 14.0),
                  onPressed: _handLogin,

                  child: new Text(
                    '登录',
                    style: new TextStyle(
                      fontSize: 18.0,
                        color: Colors.white,

                    ),
                  ),
                  color: Colors.blue,

                ) ,
              ) ,
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
      ),
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