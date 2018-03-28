import 'package:flutter/material.dart';

class User{

  User({this.name,this.age});

  String name;
  int age;
}

//回调
typedef void Call(User user,bool isNew);

class ViewItem extends StatelessWidget{

  ViewItem({User user,this.isNew,this.callback})
    :this.user=user,super(key:new ObjectKey(user));

  User user;
  Call callback;
  bool isNew;

  Color _getColor(){
    return isNew?Colors.red:Colors.blue;
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListTile(
      onTap: (){
        print('点击');
        callback(user,!isNew);
      },
      leading: new CircleAvatar(
        backgroundColor: _getColor(),
      ),
      title: new Column(
        children: <Widget>[
          new Text(
              '${user.name}',
            style: new TextStyle(
              color: _getColor(),
            ),
          ),
          new Text('年龄\n今年：${user.age}岁',
            style: new TextStyle(
              color: _getColor(),
            ),)
        ],
      ),
    );
  }


}
