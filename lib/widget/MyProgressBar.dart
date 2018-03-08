import 'package:flutter/material.dart';

class MyProgressBar extends StatelessWidget{

  MyProgressBar({this.min,this.max});

  int max;
  int min;

  Align _getAlign(BuildContext context,String s){
    return new Align(
      alignment: FractionalOffset.topLeft,
      child: new Text(s,
        style: new TextStyle(
          color: Colors.blue,
          height: 1.5,
          fontSize: 18.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Column(
        children: <Widget>[
          _getAlign(context,'$min/$max'),
          new LinearProgressIndicator(
            value: min/max,
          )
        ],
      ),
    );
  }


}
