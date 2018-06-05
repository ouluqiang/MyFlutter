//import 'package:json_annotation/json_annotation.dart';
//
//part 'package:my_flutter/bean/xinwen/NewsContext.g.dart';
//
//
///**
// * flutter packages pub run build_runner build
// */
//
//@JsonSerializable()
//class ContextBean extends Object with _$ContextBeanSerializerMixin {
//
//
//  int read_count;
//  String media_name;
//  int ban_comment;
//  String abstract;
//  int ban_bury;
//  bool has_video;
//  int article_type;
//  String tag;
//  bool has_m3u8_video;
//  String keywords;
//  String rid;
//  bool show_portrait_article;
//  int user_verified;
//  int aggr_type;
//  int cell_type;
//  int article_sub_type;
//  int bury_count;
//  String title;
//  int ignore_web_transform;
//  int source_icon_style;
//  int tip;
//  int hot;
//  String share_url;
//  int has_mp4_video;
//  String source;
//  int comment_count;
//  String article_url;
//  int share_count;
//  int publish_time;
//  int gallary_image_count;
//  int cell_layout_style;
////  long tag_id;
//  int tag_id;
//  String action_extra;
//  int video_style;
//  String verified_content;
//  String display_url;
////  long item_id;
//  int item_id;
//  bool is_subject;
//  bool show_portrait;
//  int repin_count;
//  int cell_flag;
//  String source_open_url;
//  int level;
//  int digg_count;
//  int behot_time;
////  long cursor;
//  int cursor;
//  String url;
//  int preload_web;
//  int user_repin;
//  bool has_image;
//  int item_version;
////  long group_id;
//  int group_id;
//  UserInfoBean user_info;
//  MediaInfoBean media_info;
//  MiddleImageBean middle_image;
//  List<ImageListBean> image_list;
//  List<FilterWordsBean> filter_words;
//  List<ActionListBean> action_list;
////  List<String> large_image_list;
//
//  ContextBean({this.read_count,this.media_name,this.ban_comment,this.abstract,this.ban_bury,this.has_video,this.article_type,this.tag,this.has_m3u8_video,this.keywords,this.rid,
//    this.show_portrait_article,this.user_verified,this.aggr_type,this.cell_type,this.article_sub_type,this.bury_count,this.title,this.ignore_web_transform,this.source_icon_style,
//    this.tip,this.hot,this.share_url,this.has_mp4_video,this.source,this.comment_count,this.article_url,this.share_count,this.publish_time,this.gallary_image_count,this.cell_layout_style,
//    this.tag_id,this.action_extra,this.video_style,this.verified_content,this.display_url,this.item_id,this.is_subject,this.show_portrait,this.repin_count,this.cell_flag,this.source_open_url,
//    this.level,this.digg_count,this.behot_time,this.cursor,this.url,this.preload_web,this.user_repin,this.has_image,this.item_version,this.group_id,
//    UserInfoBean user_info,MediaInfoBean media_info, MiddleImageBean middle_image, List<ImageListBean> image_list, List<FilterWordsBean> filter_words, List<ActionListBean> action_list,
////    List<String> large_image_list,
//  })
//    :this.user_info=user_info,this.media_info=media_info,this.middle_image=middle_image,this.image_list=image_list,this.filter_words=filter_words,this.action_list=action_list
////  ,this.large_image_list=large_image_list
//  ;
//
//
//  factory ContextBean.fromJson(Map<String, dynamic> json) => _$ContextBeanFromJson(json);
//}
//
//@JsonSerializable(createToJson: false)
//class UserInfoBean  {
//
//  String verified_content;
//  String avatar_url;
////  long user_id;
//  int user_id;
//  String name;
//  int follower_count;
//  bool follow;
//  String user_auth_info;
//  bool user_verified;
//  String description;
//  UserInfoBean();
//
//  factory UserInfoBean.fromJson(Map<String, dynamic> json) => _$UserInfoBeanFromJson(json);
//}
//
//@JsonSerializable(createToJson: false)
//class MediaInfoBean {
////  long user_id;
//  int user_id;
//  String verified_content;
//  String avatar_url;
////  long media_id;
//  int media_id;
//  String name;
//  int recommend_type;
//  bool follow;
//  String recommend_reason;
//  bool is_star_user;
//  bool user_verified;
//
//  MediaInfoBean();
//
//  factory MediaInfoBean.fromJson(Map<String, dynamic> json) => _$MediaInfoBeanFromJson(json);
//}
//
//
//@JsonSerializable(createToJson: false)
//class MiddleImageBean {
//  String url;
//  int width;
//  String uri;
//  int height;
//  List<UrlListBean> url_list;
//
//  MiddleImageBean();
//
//  factory MiddleImageBean.fromJson(Map<String, dynamic> json) => _$MiddleImageBeanFromJson(json);
//}
//
//@JsonSerializable(includeIfNull: false)
//class UrlListBean extends Object with _$UrlListBeanSerializerMixin {
//  String url;
//  UrlListBean();
//
//  factory UrlListBean.fromJson(Map<String, dynamic> json) => _$UrlListBeanFromJson(json);
//}
//
//
//@JsonSerializable(includeIfNull: false)
//class ImageListBean extends Object with _$ImageListBeanSerializerMixin{
//  String url;
//  int width;
//  String uri;
//  int height;
//  List<UrlListBeanX> url_list;
//
//  ImageListBean();
//
//  factory ImageListBean.fromJson(Map<String, dynamic> json) => _$ImageListBeanFromJson(json);
//}
//@JsonSerializable(includeIfNull: false)
//class UrlListBeanX extends Object with _$UrlListBeanXSerializerMixin{
//  String url;
//
//  UrlListBeanX();
//
//  factory UrlListBeanX.fromJson(Map<String, dynamic> json) => _$UrlListBeanXFromJson(json);
//}
//@JsonSerializable(includeIfNull: false)
//class FilterWordsBean extends Object with _$FilterWordsBeanSerializerMixin{
//  String id;
//  String name;
//  bool is_selected;
//
//  FilterWordsBean();
//
//  factory FilterWordsBean.fromJson(Map<String, dynamic> json) => _$FilterWordsBeanFromJson(json);
//}
//@JsonSerializable(includeIfNull: false)
//class ActionListBean extends Object with _$ActionListBeanSerializerMixin{
//  int action;
//  ExtraBean extra;
//  String desc;
//
//  ActionListBean();
//
//  factory ActionListBean.fromJson(Map<String, dynamic> json) => _$ActionListBeanFromJson(json);
//}
//@JsonSerializable(createToJson: false)
//class ExtraBean {
//
//  ExtraBean();
//
//  factory ExtraBean.fromJson(Map<String, dynamic> json) => _$ExtraBeanFromJson(json);
//}
//
//
