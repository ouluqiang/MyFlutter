import 'package:flutter/material.dart';
import 'package:my_flutter/widget/my/MyListItem.dart';

class MyListView extends StatefulWidget{

  MyListView({this.users,Key key}):super(key:key);

  List<User> users;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyListViewState();
  }
}

class MyListViewState extends State<MyListView>{

  Set<User> userSet=new Set<User>();

  void _tap(User user,bool isNew){
    setState((){
      if(isNew){
        userSet.add(user);
      }else{
        userSet.remove(user);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
        itemCount: widget.users.length,
        itemBuilder: (context ,index){
          return new ViewItem(
            user: widget.users[index],
            callback: _tap,
            isNew: userSet.contains(widget.users[index]),
          );
        }
    );
  }

}