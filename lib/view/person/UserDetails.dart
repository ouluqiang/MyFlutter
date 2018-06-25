import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:my_flutter/config/NavigatorConfig.dart';
import 'package:my_flutter/config/AppConfig.dart';
import 'package:my_flutter/config/PreferencesConfig.dart';
import 'package:my_flutter/config/NavigatorConfig.dart';
import 'UpdatePassword.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_flutter/http/loader/HttpLoader.dart';



class MyUserDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyUserDetailsState();
  }
}

class MyUserDetailsState extends State<MyUserDetails> {
  String username = '';
  String email = '';
  File _image;

  @override
  Future initState() {
    // TODO: implement initState
    super.initState();
    _getUsername();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('用户信息'),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
            child: new Row(
              children: <Widget>[
                getHead(),
                new Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                  child: new Text(
                    username,
                    style: new TextStyle(fontSize: 18.0),
                  ),
                )
              ],
            ),
          ),
          _getDivider(),
          getItem(Icons.email, email),
          _getDivider(),
          new GestureDetector(
            onTap: () {
              NavigatorConfig.getPushNavigator(context, new UpdatePassword());
            },
            child: getItem(Icons.class_, '修改密码'),
          ),
          _getDivider(),
          new Container(
            margin: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
            child: new RaisedButton(
              padding: const EdgeInsets.fromLTRB(0.0, 14.0, 0.0, 14.0),
              onPressed: _handOutLogin,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child: new Text(
                '退出登录',
                style: AppConfig.getTextStype(context),
              ),
              color: AppConfig.getThemeData(context).primaryColor,
            ),
          )
        ],
      ),
    );
  }

  _handOutLogin() async {
    SharedPreferences sp = await SpConfig.preferences;
    sp.clear();
    NavigatorConfig.getPopNavigator(context);
  }

  _getUsername() async {
    SharedPreferences sp = await SpConfig.preferences;
    String name = sp.get(SpConfig.USERNAME);
    String email = sp.get(SpConfig.EMAIL);
    String startEmail = email.substring(0, email.lastIndexOf('@') - 1);
    String endEmail = email.substring(email.lastIndexOf('@') - 1, email.length);
    String e = startEmail.replaceAll(startEmail, '********');
    print(startEmail + '-----' + e + '---' + endEmail);
    setState(() {
      this.username = name ?? '用户名';
      this.email = e + endEmail ?? '';
    });
  }

  Widget getItem(IconData icon, String value) {
    return new Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(22.0, 10.0, 10.0, 10.0),
      child: new Row(
        children: <Widget>[
          new Icon(
            icon,
            color: Colors.redAccent,
            size: 28.0,
          ),
          new Expanded(
              child: new Container(
            alignment: Alignment.centerRight,
            child: new Text(
              value,
              style: new TextStyle(fontSize: 18.0),
            ),
          )),
          new Icon(
            Icons.chevron_right,
            color: Colors.black12,
            size: 28.0,
          ),
        ],
      ),
    );
  }

  Widget getHead() {
    return new GestureDetector(
      onTap: () {
        _handShowModalBottom();
      },
      child: getImageHead()

    );
  }

  Widget getImageHead(){
    if(_image==null){
      return new CircleAvatar(
          radius: 40.0,
          foregroundColor: Colors.red,
          backgroundImage: new NetworkImage(
            'https://ws1.sinaimg.cn/large/610dc034ly1fp9qm6nv50j20u00miacg.jpg',
          )
      );
    }else{
      return new CircleAvatar(
        radius: 40.0,
        foregroundColor: Colors.red,
        backgroundImage: new FileImage(_image)
      );

    }

  }

  _handShowModalBottom() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return new Container(
            height: 150.0,
            child: new Column(
              children: <Widget>[
                _getDivider(),
                new GestureDetector(
                  child: _getItem('拍照'),
                  onTap: (){
                    _getPickImage(ImageSource.camera);
                  },
                ),
//                new Container(
//                    padding: const EdgeInsets.all(5.0),
//                    child: new Text(
//                      '拍照',
//                      style: AppConfig.getTextStypeColor(context),
//                    )),
                _getDivider(),

                new GestureDetector(
                  child: _getItem('从本地获取'),
                  onTap: (){
                    _getPickImage(ImageSource.gallery);
                  },
                ),

//                new Container(
//                  padding: const EdgeInsets.all(0.0),
//                  child: new Text(
//                    '从本地获取',
//                    style: AppConfig.getTextStypeColor(context),
//                  ),
//                ),
                _getDivider(),
                new Container(
                  height: 6.0,
                  color: Colors.white,
                ),
                _getDivider(),
                new GestureDetector(
                  child: _getItem('取消'),
                  onTap: (){
                    NavigatorConfig.getPopNavigator(context);
                  },
                ),

//                new Text(
//                  '取消',
//                  style: AppConfig.getTextStypeColor(context),
//                ),
              ],
            ),
          );
        });
    // showModalBottomSheet<T>：显示模态质感设计底部面板
//    showModalBottomSheet<Null>(context:context, builder:(BuildContext context) {
//      return new Container(
//          child: new Padding(
//              padding: const EdgeInsets.all(32.0),
//              child: new Text(
//                  '这是模态底部面板，点击任意位置即可关闭',
//                  textAlign: TextAlign.center,
//                  style: new TextStyle(
//                      color: Theme.of(context).accentColor,
//                      fontSize: 24.0
//                  )
//              )
//          )
//      );
//    });

    //底部永久显示的
//    key.currentState.showBottomSheet((BuildContext context){
//      final ThemeData themeData = Theme.of(context);
//      return new Container(
//          decoration: new BoxDecoration(
//              border: new Border(top: new BorderSide(color: themeData.disabledColor))
//          ),
//          child: new Padding(
//              padding: const EdgeInsets.all(32.0),
//              child: new Text(
//                  '这是一个持久性的底部面板，向下拖动即可将其关闭',
//                  textAlign: TextAlign.center,
//                  style: new TextStyle(
//                      color: themeData.accentColor,
//                      fontSize: 24.0
//                  )
//              )
//          )
//      );
//    });

//    showBottomSheet(context: context , builder: (BuildContext context){
//      final ThemeData themeData = Theme.of(context);
//      return new Container(
//          decoration: new BoxDecoration(
//              border: new Border(top: new BorderSide(color: themeData.disabledColor))
//          ),
//          child: new Padding(
//              padding: const EdgeInsets.all(32.0),
//              child: new Text(
//                  '这是一个持久性的底部面板，向下拖动即可将其关闭',
//                  textAlign: TextAlign.center,
//                  style: new TextStyle(
//                      color: themeData.accentColor,
//                      fontSize: 24.0
//                  )
//              )
//          )
//      );
//    });
  }

  Widget _getItem(String name) {
    return new Container(
      alignment: Alignment.center,
      color: Colors.white,
      margin: const EdgeInsets.all(10.0),
      child: new Text(
        name,
        style: AppConfig.getTextStypeColor(context),
      ),
    );
  }


  Widget _getDivider(){
    return new Divider(height: 1.0,);
  }

  _getPickImage(ImageSource source)async {
    File image = await ImagePicker.pickImage(source: source);
    NavigatorConfig.getPopNavigator(context);
    print('图片：'+image.toString());
    HttpLoader.getFiles(context, image.toString());
//    ui.Image image = await boundary.toImage();
    // 注意：png是压缩后格式，如果需要图片的原始像素数据，请使用rawRgba
    setState(() {
      _image = image;
    });
  }

  //// 截图boundary，并且返回图片的二进制数据。
//  Future<Uint8List> _capturePng() async {
//    GlobalKey globalKey = new GlobalKey();
//    RenderRepaintBoundary boundary = globalKey.currentContext.findRenderObject();
//    ui.Image image = await boundary.toImage();
//    // 注意：png是压缩后格式，如果需要图片的原始像素数据，请使用rawRgba
//    ByteData byteData = await image.toByteData(format: ui.ImageByteFormat.png);
//    Uint8List pngBytes = byteData.buffer.asUint8List();
//    return pngBytes;
//  }

}
