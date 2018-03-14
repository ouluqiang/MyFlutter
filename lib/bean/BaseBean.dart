import 'package:json_annotation/json_annotation.dart';



class BaseBean<T>{

  BaseBean({this.message,this.data,this.total_number,this.has_more,this.login_status,
    this.show_et_status,this.post_content_hint,this.has_more_to_refresh,
    this.action_to_last_stick,this.feed_flag
  });

  String message;
  T data;
  int total_number;
  String has_more;
  int login_status;
  int show_et_status;
  String post_content_hint;
  bool has_more_to_refresh;
  int action_to_last_stick;
  int feed_flag;
/**
 * "total_number": 20,
    "has_more": true,
    "login_status": 0,
    "show_et_status": 0,
    "post_content_hint": "分享今日新鲜事",
    "has_more_to_refresh": true,
    "action_to_last_stick": 0,
    "feed_flag": 0,
    "tips": {
    "type": "app",
    "display_duration": 2,
    "display_info": "今日头条推荐引擎有20条更新",
    "display_template": "今日头条推荐引擎有%s条更新",
    "open_url": "",
    "web_url": "",
    "download_url": "",
    "app_name": "今日头条",
    "package_name": ""
    }
 */
}

class Data{

  Data({this.content,this.code});

  String content;
  String code;
}

class Tip{

  Tip({this.type,this.display_duration,this.display_info,this.display_template,this.open_url,
    this.web_url,this.download_url,this.app_name,this.package_name});

  String type;
  int display_duration;
  String display_info;
  String display_template;
  String open_url;
  String web_url;
  String download_url;
  String app_name;
  String package_name;
}