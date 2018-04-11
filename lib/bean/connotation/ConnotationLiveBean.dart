//import 'package:flutter/material.dart';
//import 'package:json_annotation/json_annotation.dart';
//
//
//
//@JsonSerializable()
//class ConnotationLiveBean extends Object with _$ConnotationLiveBeanSerializerMixin{
//
//  int status_code;
//  ExtraBean extra;
//  List<DataBeanX> data;
//
//  ConnotationLiveBean({this.status_code,this.data,this.extra});
//
//
//  factory ConnotationLiveBean.fromJson(Map<String, dynamic> json) => _$ConnotationLiveBeanFromJson(json);
//
//}
//
//class ExtraBean {
//  /**
//   * log_pb : {"rid":"2018041017562901001502409540523D"}
//   * now : 1523354190892
//   * has_more : true
//   * is_backup : 0
//   * fatal_ids : []
//   * cost : 1479
//   * max_time : 1523354190889
//   * min_time : 0
//   * total : 20
//   * banner : {"position":2,"banners":[],"total":0}
//   */
//
//  LogPbBean log_pb;
//  int now;
//  bool has_more;
//  int is_backup;
//  int cost;
//  int max_time;
//  int min_time;
//  int total;
//  BannerBean banner;
////   List<?> fatal_ids;
//}
//
//
//class BannerBean {
//  /**
//   * position : 2
//   * banners : []
//   * total : 0
//   */
//
//  int position;
//  int total;
////   List<?> banners;
//}
