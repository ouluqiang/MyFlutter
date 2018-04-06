import 'package:flutter/material.dart';
import 'package:my_flutter/bean/connotation/ConnotationContentBean.dart';
import 'package:my_flutter/config/CodeConfig.dart';
import 'package:video_player/video_player.dart';


class Connotation extends StatefulWidget{

  Connotation({List<DataBean> contentBean}):this.contentBean=contentBean;

  List<DataBean> contentBean;


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ConnotationState();
  }

}

class ConnotationState extends State<Connotation>{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _getContext();
  }

  Widget _getContext() {
    if (widget.contentBean != null) {
      print(widget.contentBean.length);

      return new ListView.builder(
          itemCount: widget.contentBean.length,
          itemBuilder: (context, i) {
            DataBean bean = widget.contentBean[i];
            return new Video(bean: bean,);
          });
    } else {
      return new Center(child: new CircularProgressIndicator(),);
    }
  }

}


class Video extends StatefulWidget{

  Video({this.bean});

  DataBean bean;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new VideoState();
  }

}

class VideoState extends State<Video>{

  VideoPlayerController _controller;
  DataBean get bean=>widget.bean;
  bool _isPlaying = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("视频：" + bean.group.mp4_url);
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
//    _controller.play();
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    _controller.setVolume(0.0);
    _controller.removeListener((){
      final bool isPlaying = _controller.value.isPlaying;
      if (isPlaying != _isPlaying) {
        setState(() {
          _isPlaying = isPlaying;
        });
      }
    });
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
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
                      10.0, 0.0, 0.0, 0.0),
                  child: new Text('${bean.group.user.name}'),
                )
                ,
              ],
            ),
            new Container(
              padding: const EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 0.0),
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
                            color: Colors.red,
                            fontSize: 16.0,
                          ),
                        ),

                      ]
                  )
              ),
            ),
            new GestureDetector(
              onTap: () {
                _controller.value.isPlaying ? _controller.pause() : _controller.play();
              },
              child: new AspectRatio(
//                            aspectRatio: size.width / size.height,
                aspectRatio: 1280 / 720,
//                          child: new Image.network('${bean.group.large_cover.uri}'),
                child: new Stack(
                    children: <Widget>[
                      new VideoPlayer(_controller),
                      new Center(

                        child: getVideo(),
                      ),
                    ],
                )
              ),
            ),

          ],
        ),
      ),

    );
  }

 Widget getVideo(){
    if(_isPlaying){
//      return  new Icon(Icons.pause,size: 20.0, color: Colors.red,);
      return  null;
    }else{
      return  new Icon(Icons.play_arrow,size: 20.0, color: Colors.red,);
    }

  }

}

