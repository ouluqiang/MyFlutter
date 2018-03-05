import 'package:flutter/material.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    return new Image.network(
//        'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
////        width: 100%,
////        height: 100%,
//    );
    return new Image.asset('asset/images/launch.png',fit: BoxFit.cover,);
  }


}