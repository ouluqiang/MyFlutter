import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_flutter/bean/connotation/ConnotationContentBean.dart';
import 'package:my_flutter/config/CodeConfig.dart';
import 'package:my_flutter/loader/HttpLoader.dart';


class ConnotationSubscription extends StatefulWidget {

  ConnotationSubscription({String url}) :this.url=url;

  String url;


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ConnotationSubscriptionState();
  }

}

class ConnotationSubscriptionState extends State<ConnotationSubscription> {

  GlobalKey<RefreshIndicatorState> _key;
  List<DataBean> contentBean = <DataBean>[];

  String get url => widget.url;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _key == new GlobalKey<RefreshIndicatorState>();
    getConnotationContent(null);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _key.currentState.dispose();
    super.dispose();
  }

  getConnotationContent(Completer<Null> completer) async {
    ConnotationContentBean contentBean = await getConnotationTabContent(url);
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
          child: new ListView.builder(
              itemCount: contentBean.length,
              itemBuilder: (context, i) {
                DataBean bean = contentBean[i];
                return new ImageItem(bean: bean,);
              }),
          onRefresh: _handleRefresh);
    } else {
      return new Center(child: new CircularProgressIndicator(),);
    }
  }

}


class ImageItem extends StatefulWidget {

  ImageItem({this.bean});

  DataBean bean;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ImageItemState();
  }

}

class ImageItemState extends State<ImageItem> {

  DataBean get bean => widget.bean;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
                            color: Colors.red,
                            fontSize: 16.0,
                          ),
                        ),

                      ]
                  )
              ),
            ),
//            getImage(),

//            new GridView.builder(
//              itemCount: bean.group.middle_image.url_list.length,
//              shrinkWrap: true,
//                primary: false,
//                padding: const EdgeInsets.all(4.0),
//                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
//                  crossAxisCount: 3,
//                  mainAxisSpacing: 4.0,
//                  crossAxisSpacing: 4.0,
//                ),
//                itemBuilder: (context,i){
//                  return new Image.network(bean.group.middle_image.url_list[i].url);
//                }
//            ),

          ],
        ),
      ),

    );
  }

  Widget getImage() {
//    height: bean.group.middle_image.height,width: bean.group.middle_image.width,
//    print("第1 ${bean.group.middle_image.url_list[0].url}");
//    print("第2 ${bean.group.middle_image.url_list[1].url}");
//    print("第3 ${bean.group.middle_image.url_list[2].url}");
    return new Image.network(bean.group.middle_image.url_list[0].url,);
//    return new Image.network('http://pb3.pstatp.com/large/69c5000365122380c0d6');

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



