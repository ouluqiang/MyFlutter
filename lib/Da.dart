import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:math';

class MyDaXian extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  {

  Text appbartext;

  ListView listView;


  List<String> widgets=["A","B","C","D","E","F","G","H","I","J","K","L","M","N"];
  MethodChannel methodChannel=new MethodChannel("AndroidMethod");

  Future<Null> _incrementCounter() async{
    return  showDialog(context: context,child:new AlertDialog(
      title: const Text("Dialog"),
      content: new Text("This is a Test Dialog!"),
      actions: <Widget>[
        new FlatButton(onPressed: (){
          Navigator.pop(context);
//          toast("Dismiss");
        }, child: const Text("OK"))
      ],
    ));
  }



  void toast(String text)async{
    Map<String,String> data={"text":text};
    String s=await methodChannel.invokeMethod("showToast",data);
  }

  Widget getRow(int i){
    return new GestureDetector(child:  new Padding(
      padding: new EdgeInsets.only(left: 10.0,right: 10.0,top: 40.0),
      child: new Text(widgets[i],style: new TextStyle(color: Colors.black),),
    ),onTap: (){
      toast("${widgets[i]}+Clicked");
    },);
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    appbartext=new Text(widget.title);
    listView=new ListView.builder(itemBuilder: (BuildContext context,int position){
      return getRow(position);
    },itemCount: widgets.length,scrollDirection:Axis.vertical ,addAutomaticKeepAlives: true,);
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: appbartext,
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child:listView ,
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
