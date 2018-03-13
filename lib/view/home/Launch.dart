import 'package:flutter/material.dart';
import '../person/Login.dart';
import 'dart:async';
import 'package:my_flutter/loader/HttpLoader.dart';
import 'HomePage.dart';


class MyLaunch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyLaunchState();
  }

}


class MyLaunchState extends State<MyLaunch> {

  int se = 4;
  Timer timer;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer = new Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      print('${timer.tick}----${se}');
      if (se == 1) {
        timer.cancel();
        getPushReplacementNavigator(context, new MyHomePage());
      } else {
        setState(() {
          this.se--;
        });
      }
    });
  }


//  _handNavigator(){
//    Navigator.pushReplacement(
//        context,
//        new MaterialPageRoute(builder: (BuildContext context){
//          return new MyLogin();
//        })
//    );
//  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    return new Image.network(
//        'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
////        width: 100%,
////        height: 100%,
//    );
    return new Stack(
      fit: StackFit.passthrough,
      children: <Widget>[
        new Image.asset('asset/images/launch.png', fit: BoxFit.fill,),
        new Container(
          alignment: Alignment.topRight,
          margin: const EdgeInsets.fromLTRB(0.0, 50.0, 25.0, 0.0),
          child: new RaisedButton(
            onPressed: () =>
                getPushReplacementNavigator(context, new MyLogin()),
            child: new Text('跳过 ${se}'),
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(12.0),
            ),
          ),
        )

      ],
    );
//    return new Image.asset('asset/images/launch.png',fit: BoxFit.cover,);
  }


}