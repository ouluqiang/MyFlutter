import 'package:json_annotation/json_annotation.dart';

part 'package:my_flutter/bean/connotation/ConnotationBean.g.dart';


@JsonSerializable()
class ConnotationBean extends Object with _$ConnotationBeanSerializerMixin{

   int status_code;
   String message;
   @JsonKey(nullable: false)
   List<DataBean> data;


   ConnotationBean({this.status_code,this.message,List<DataBean> data}):this.data=data?? <DataBean>[];


   factory ConnotationBean.fromJson(Map<String, dynamic> json) => _$ConnotationBeanFromJson(json);
}

@JsonSerializable(includeIfNull: false)
class DataBean extends Object with _$DataBeanSerializerMixin{
  /**
   * double_col_mode : false
   * umeng_event : recommend
   * is_default_tab : true
   * url : http://lf.snssdk.com/neihan/stream/mix/v1/?content_type=-101
   * list_id : -101
   * refresh_interval : 1800
   * type : 1
   * name : 推荐
   */

  bool double_col_mode;
  String umeng_event;
  bool is_default_tab;
  String url;
  int list_id;
  int refresh_interval;
  int type;
  String name;

  DataBean();

  factory DataBean.fromJson(Map<String, dynamic> json) => _$DataBeanFromJson(json);
}