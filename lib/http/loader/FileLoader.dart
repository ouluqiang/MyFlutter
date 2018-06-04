import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';


class MyFile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return new MyFileState();
  }

}



class MyFileState extends State<MyFile> {

  int _count;

  Future<int> _getReadFile() async{
    try {
      File file = await _getLoadFile();
      String s = await file.readAsString();
      return int.parse(s);
    }catch(e){
      return 0;
    }
  }

  Future<File> _getLoadFile() async {
    String dir=(await getApplicationDocumentsDirectory()).path;//文件目录
    print(dir);
    return new File('$dir/z.txt');
  }
  Future<Null> _getWrite() async {
    setState((){
      _count++;
    });
    await (await _getLoadFile()).writeAsString('$_count');
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getReadFile().then((int count){
      this._count=count;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      child: new Text('${_count==null?0:'$_count'}?'),
      onTap: _getWrite,
    );
  }



}
