import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_flutter/bean/connotation/ConnotationContentBean.dart';
import 'package:my_flutter/config/CodeConfig.dart';
import 'package:my_flutter/loader/HttpConfig.dart';
import 'package:my_flutter/loader/HttpLoader.dart';
import 'package:video_player/video_player.dart';


class ConnotationPersonalShow extends StatefulWidget {

  ConnotationPersonalShow({String url}) :this.url=url;

  String url;


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ConnotationPersonalShowState();
  }

}

class ConnotationPersonalShowState extends State<ConnotationPersonalShow> {

  GlobalKey<RefreshIndicatorState> _key= new GlobalKey<RefreshIndicatorState>();
  List<DataBean> contentBean = <DataBean>[];

  String get url => widget.url;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getConnotationContent(null);
  }

//  @override
//  void dispose() {
//    // TODO: implement dispose
//    _key.currentState.dispose();
//    super.dispose();
//  }

  getConnotationContent(Completer<Null> completer) async {
    ConnotationContentBean contentBean = await getConnotationTabContent(HttpConnotation.URL_PERSONAL_SHOW_PARAM);
    setState(() {
      this.contentBean.insertAll(0, contentBean.data.data);
      if (completer != null) {
        completer.complete(null);
      }
    });
  }

  Future<Null> _handleRefresh() {
    Completer<Null> completer = new Completer<Null>();
    getConnotationContent(completer);

    return completer.future.then((_) {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _getContext();
  }


  Widget _getContext() {
    if (contentBean != null) {
      return new RefreshIndicator(
        key: _key,
          child: new ListView.builder(
              itemCount: contentBean.length,
              itemBuilder: (context, i) {
                DataBean bean = contentBean[i];
                return new PersonalShowItem(bean: bean,);
              }),
          onRefresh: _handleRefresh);
    } else {
      return new Center(child: new CircularProgressIndicator(),);
    }
  }

}


class PersonalShowItem extends StatefulWidget {

  PersonalShowItem({this.bean});

  DataBean bean;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new PersonalShowItemState();
  }

}

class PersonalShowItemState extends State<PersonalShowItem> {

  DataBean get bean => widget.bean;
  VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("视频：" + bean.group.mp4_url);
    init();
//    _controller.play();
  }

  init() {
    if(bean.group.mp4_url!=null){
      _controller=new VideoPlayerController(bean.group.mp4_url);
      _controller.addListener(() {
        final bool isPlaying = _controller.value.isPlaying;
        if (isPlaying != _isPlaying) {
          setState(() {
            _isPlaying = isPlaying;
          });
        }
      });
      _controller.initialize();
      _controller.setLooping(true);
      _controller.setVolume(1.0);
    }

  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    dea();
    super.deactivate();
  }

  dea() {
    if(_controller!=null) {
      _controller.setVolume(0.0);
      _controller.removeListener(() {
        final bool isPlaying = _controller.value.isPlaying;
        if (isPlaying != _isPlaying) {
          setState(() {
            _isPlaying = isPlaying;
          });
        }
      });
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    dis();
    super.dispose();
  }

  void dis() {
    if(_controller!=null) {
      _controller.dispose();
    }
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Card(
      color: Colors.white,
      elevation: 4.0,
      child: new Padding(
        padding: const EdgeInsets.all(10.0),
        child: new Column(

          children: <Widget>[
            new Row(
              children: <Widget>[
                new Image.network('${bean.group.user.avatar_url}',
                  height: 20.0,
                  width: 20.0,
                ),
                new Padding(
                  padding: const EdgeInsets.fromLTRB(
                      10.0, 0.0, 10.0, 0.0),
                  child: new Text('${bean.group.user.name}'),
                ),
                getIcon(),
              ],
            ),
            new Container(
              padding: const EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 4.0),
              alignment: Alignment.topLeft,
              child: new RichText(

                  text: new TextSpan(
                      text: '',
                      children: <TextSpan>[
                        new TextSpan(
                          text: '##${bean.group.category_name}##',
                          style: Theme
                              .of(context)
                              .textTheme
                              .caption
                              .copyWith(
                            color: Colors.red,
                            fontSize: 16.0,
                          ),
                        ),
                        new TextSpan(
                          text: '${bean.group.text}',
                          style: Theme
                              .of(context)
                              .textTheme
                              .caption
                              .copyWith(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),

                      ]
                  )
              ),
            ),
              getVideo(),

          ],
        ),
      ),

    );
  }

  Widget getVideo() {
    if(_controller!=null) {
      return new GestureDetector(
        onTap: () {
          _controller.value.isPlaying ? _controller.pause() : _controller
              .play();
        },
        child: new AspectRatio(
            aspectRatio: 1280 / 720,

            child: new Container(
              color: Colors.black,
              child: new Stack(
                children: <Widget>[
                  new VideoPlayer(_controller),
                  new Center(

                    child: Video(),
                  ),
                ],
              ),
            )
        ),
      );
    }else{
      return null;
    }
  }


  Widget Video(){
    if(_isPlaying){
      return  null;
    }else{
      return  new Icon(Icons.play_arrow,size: 20.0, color: Colors.red,);
    }

  }


  Widget getIcon() {
    if (bean.group.user.medals != null && bean.group.user.medals.length > 0) {
      if (bean.group.user.medals[0].icon_url != null) {
        return new Image.network('${bean.group.user.medals[0].icon_url}',
          height: 20.0,
          width: 20.0,
        );
      } else {
        return new Image.network('${bean.group.user.medals[0].small_icon_url}',
          height: 20.0,
          width: 20.0,
        );
      }
    } else {
      return new Text('');
    }
  }


}



