import 'package:flutter/material.dart';
import 'package:my_flutter/config/AppConfig.dart';
import 'package:my_flutter/config/CodeConfig.dart';
import 'package:my_flutter/config/MethodConfig.dart';
import 'package:my_flutter/http/loader/HttpLoader.dart';


class UpdatePassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new StateUpdatePassword();
  }
}

class StateUpdatePassword extends State<UpdatePassword> {
  String _oldPassword = '';
  String _newPassword = '';
  String _newPassword2 = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("修改密码"),
      ),
      body: _getBody(),
    );
  }

  Widget _getBody() {
    return new ListView(
      children: <Widget>[
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
                    _oldPassword = str;
                  },
                  obscureText: true,
                  //输入密码显示·
                  maxLines: 1,
                  maxLength: 16,
                  decoration: new InputDecoration(
                    hintText: '请输入原密码',
                    labelText: '原密码',
                  ),

                  style: AppConfig.getTextStypeColor(context),
                ),
              )),
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
                    _newPassword = str;
                  },
                  obscureText: true,
                  //输入密码显示·
                  maxLines: 1,
                  maxLength: 16,
                  decoration: new InputDecoration(
                    hintText: '请输入新密码',
                    labelText: '新密码',
                  ),

                  style: AppConfig.getTextStypeColor(context),
                ),
              )),
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
                    _newPassword2 = str;
                  },
                  obscureText: true,
                  //输入密码显示·
                  maxLines: 1,
                  maxLength: 16,
                  decoration: new InputDecoration(
                    hintText: '请再次输入新密码',
                    labelText: '新密码',
                  ),

                  style: AppConfig.getTextStypeColor(context),
                ),
              )),
            ],
          ),
        ),
        new Container(
          margin: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
          child: new RaisedButton(
            padding: const EdgeInsets.fromLTRB(0.0, 14.0, 0.0, 14.0),
            onPressed: _handUpdate,
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0),
            ),
            child: new Text(
              '确定',
              style: AppConfig.getTextStype(context),
            ),
            color: AppConfig.getThemeData(context).primaryColor,
          ),
        ),
      ],
    );
  }

  _handUpdate() {
    if (_oldPassword.isEmpty) {
      MethodConfig.handToast(CodeConfig.PASSWORD_NULL_NOT);
      return;
    }
    if (_oldPassword.length<6) {
      MethodConfig. handToast(CodeConfig.PASSWORD_LENGTH_NOT);
      return;
    }
    if (_newPassword.isEmpty) {
      MethodConfig. handToast(CodeConfig.PASSWORD_NULL_NOT);
      return;
    }
    if (_newPassword.length<6) {
      MethodConfig. handToast(CodeConfig.PASSWORD_LENGTH_NOT);
      return;
    }
    if (_newPassword2.isEmpty) {
      MethodConfig. handToast(CodeConfig.PASSWORD_NULL_NOT);
      return;
    }
    if (_newPassword2.length<6) {
      MethodConfig. handToast(CodeConfig.PASSWORD_LENGTH_NOT);
      return;
    }
    if (_newPassword!=_newPassword2) {
      MethodConfig. handToast(CodeConfig.PASSWORD_EQUALS_NOT);
      return;
    }
    HttpLoader.getUpdatePassword(context, _oldPassword, _newPassword);
  }
}
