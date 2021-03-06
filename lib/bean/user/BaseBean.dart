import 'package:json_annotation/json_annotation.dart';


part 'package:my_flutter/bean/user/BaseBean.g.dart';

/**
 *      更新bean类
 *          flutter packages pub run build_runner build
 */

@JsonSerializable()
class BaseBean extends Object with _$BaseBeanSerializerMixin {

  int code;
  String error;

  BaseBean({this.code,this.error});

  factory BaseBean.fromJson(Map<String, dynamic> json) => _$BaseBeanFromJson(json);
}



