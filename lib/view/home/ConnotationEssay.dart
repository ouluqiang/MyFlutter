//import 'dart:async';
//
//import 'package:flutter/material.dart';
//import 'package:my_flutter/config/CodeConfig.dart';
//import 'package:my_flutter/loader/HttpConfig.dart';
//import 'package:my_flutter/loader/HttpLoader.dart';
//import 'package:video_player/video_player.dart';
//
//
//class ConnotationEssay extends StatefulWidget {
//
//  ConnotationEssay({String url}) :this.url=url;
//
//  String url;
//
//
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return new ConnotationEssayState();
//  }
//
//}
//
//class ConnotationEssayState extends State<ConnotationEssay> {
//
//  GlobalKey<RefreshIndicatorState> _key= new GlobalKey<RefreshIndicatorState>();
//  List<DataBean> contentBean = <DataBean>[];
//
//  String get url => widget.url;
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    getConnotationContent(null);
//  }
//
////  @override
////  void dispose() {
////    // TODO: implement dispose
////    _key.currentState.dispose();
////    super.dispose();
////  }
//
//  getConnotationContent(Completer<Null> completer) async {
//    ConnotationContentBean contentBean = await getConnotationTabContent(HttpConnotation.URL_ESSAY_PARAM);
//    setState(() {
//      this.contentBean.insertAll(0, contentBean.data.data);
//      if (completer != null) {
//        completer.complete(null);
//      }
//    });
//  }
//
//  Future<Null> _handleRefresh() {
//    Completer<Null> completer = new Completer<Null>();
//    getConnotationContent(completer);
//
//    return completer.future.then((_) {});
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return _getContext();
//  }
//
//
//  Widget _getContext() {
//    if (contentBean != null) {
//      return new RefreshIndicator(
//        key: _key,
//          child: new ListView.builder(
//              itemCount: contentBean.length,
//              itemBuilder: (context, i) {
//                DataBean bean = contentBean[i];
//                return new EssayItem(bean: bean,);
//              }),
//          onRefresh: _handleRefresh);
//    } else {
//      return new Center(child: new CircularProgressIndicator(),);
//    }
//  }
//
//}
//
//
//class EssayItem extends StatefulWidget {
//
//  EssayItem({this.bean});
//
//  DataBean bean;
//
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return new EssayItemState();
//  }
//
//}
//
//class EssayItemState extends State<EssayItem> {
//
//  DataBean get bean => widget.bean;
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//  }
//
//
//
//
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new Card(
//      color: Colors.white,
//      elevation: 4.0,
//      child: new Padding(
//        padding: const EdgeInsets.all(10.0),
//        child: new Column(
//
//          children: <Widget>[
//            new Row(
//              children: <Widget>[
//                new Image.network('${bean.group.user.avatar_url}',
//                  height: 20.0,
//                  width: 20.0,
//                ),
//                new Padding(
//                  padding: const EdgeInsets.fromLTRB(
//                      10.0, 0.0, 10.0, 0.0),
//                  child: new Text('${bean.group.user.name}'),
//                ),
//                getIcon(),
//              ],
//            ),
//            new Container(
//              padding: const EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 4.0),
//              alignment: Alignment.topLeft,
//              child: new RichText(
//
//                  text: new TextSpan(
//                      text: '',
//                      children: <TextSpan>[
//                        new TextSpan(
//                          text: '##${bean.group.category_name}##',
//                          style: Theme
//                              .of(context)
//                              .textTheme
//                              .caption
//                              .copyWith(
//                            color: Colors.red,
//                            fontSize: 16.0,
//                          ),
//                        ),
//                        new TextSpan(
//                          text: '${bean.group.text}',
//                          style: Theme
//                              .of(context)
//                              .textTheme
//                              .caption
//                              .copyWith(
//                            color: Colors.black,
//                            fontSize: 16.0,
//                          ),
//                        ),
//
//                      ]
//                  )
//              ),
//            ),
//
//          ],
//        ),
//      ),
//
//    );
//  }
//
//
//
//  Widget getIcon() {
//    if (bean.group.user.medals != null && bean.group.user.medals.length > 0) {
//      if (bean.group.user.medals[0].icon_url != null) {
//        return new Image.network('${bean.group.user.medals[0].icon_url}',
//          height: 20.0,
//          width: 20.0,
//        );
//      } else {
//        return new Image.network('${bean.group.user.medals[0].small_icon_url}',
//          height: 20.0,
//          width: 20.0,
//        );
//      }
//    } else {
//      return new Text('');
//    }
//  }
//
//
//}
//
//
//
